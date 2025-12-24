#!/usr/bin/env python3
"""自動化 SemcCameraUI 首次啟動權限授予。

功能：
- 清除應用程式資料
- 啟動 CameraActivity
- 重複轉儲 UI 層次結構並點擊常見的「允許」按鈕
- 捕獲 logcat 和螢幕截圖以供後續檢查

無外部 Python 依賴。

使用方法：
  python tool/test_permission_allow.py
  python tool/test_permission_allow.py --serial <deviceSerial>
"""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import time
import zlib
from dataclasses import dataclass
from typing import Optional, Tuple

PKG = "com.sonyericsson.android.camera"
ACTIVITY = "com.sonyericsson.android.camera/.CameraActivity"
LAUNCH_CMD = (
    "am start -W -a android.intent.action.MAIN -c android.intent.category.LAUNCHER "
    f"-n {ACTIVITY}"
)

REVOKE_PERMISSIONS = [
    "android.permission.CAMERA",
    "android.permission.RECORD_AUDIO",
    "android.permission.ACCESS_FINE_LOCATION",
    "android.permission.ACCESS_COARSE_LOCATION",
    "android.permission.READ_EXTERNAL_STORAGE",
    "android.permission.WRITE_EXTERNAL_STORAGE",
]


def _detect_adb_bin() -> str:
    env = os.environ.get("ADB")
    if env:
        return env
    win_adb = "/mnt/f/Android/platform-tools/adb.exe"
    if os.path.exists(win_adb):
        return win_adb
    found = shutil.which("adb")
    return found or "adb"


ADB_BIN = _detect_adb_bin()

# Common permission controller resource-ids and texts across Android versions/locales.
ALLOW_RES_IDS = [
    "com.android.permissioncontroller:id/permission_allow_button",
    "com.android.permissioncontroller:id/permission_allow_foreground_only_button",
    "com.android.permissioncontroller:id/permission_allow_one_time_button",
    "com.android.packageinstaller:id/permission_allow_button",
    "com.android.packageinstaller:id/permission_allow_foreground_only_button",
]
ALLOW_TEXTS = [
    "允許",
    "允許一次",
    "允許僅在使用期間",
    "使用應用程式時",
    "僅這一次",
    "在使用期間",
    "Allow",
    "Allow only while using the app",
    "Allow one time",
    "While using the app",
]

# Sony camera first-run UI elements (observed on device).
SONY_TUTORIAL_NO_RES_ID = "com.sonyericsson.android.camera:id/tutorial_no_button"
SONY_TUTORIAL_YES_RES_ID = "com.sonyericsson.android.camera:id/tutorial_yes_button"
SONY_FACING_SWITCH_RES_ID = "com.sonyericsson.android.camera:id/primary_shortcut_facing"


def prepare_device(serial: Optional[str]) -> None:
    # 盡力而為：喚醒螢幕、解除鎖屏、收起面板。
    adb_shell(serial, "input keyevent KEYCODE_WAKEUP", check=False)
    adb_shell(serial, "wm dismiss-keyguard", check=False)
    adb_shell(serial, "cmd statusbar collapse", check=False)
    adb_shell(serial, "input keyevent HOME", check=False)


def run(
    cmd: list[str],
    *,
    check: bool = True,
    capture: bool = True,
    text: bool = True,
    timeout_s: Optional[float] = None,
) -> subprocess.CompletedProcess:
    if text:
        return subprocess.run(
            cmd,
            check=check,
            capture_output=capture,
            text=True,
            encoding="utf-8",
            errors="replace",
            timeout=timeout_s,
        )
    return subprocess.run(cmd, check=check, capture_output=capture, text=False, timeout=timeout_s)


def adb(serial: Optional[str], *args: str, check: bool = True, timeout_s: Optional[float] = 15.0) -> str:
    cmd = [ADB_BIN]
    if serial:
        cmd += ["-s", serial]
    cmd += list(args)
    cp = run(cmd, check=check, timeout_s=timeout_s)
    return (cp.stdout or "").strip()


def adb_shell(serial: Optional[str], command: str, check: bool = True, timeout_s: Optional[float] = 15.0) -> str:
    return adb(serial, "shell", command, check=check, timeout_s=timeout_s)


def adb_wait_ready(serial: Optional[str], timeout_s: float = 30.0) -> None:
    """等待設備在 `adb devices` 中顯示為 'device'。

    某些設置可能在 `adb wait-for-device` 上掛起（伺服器/傳輸怪癖），
    所以我們改為輪詢。
    """

    deadline = time.time() + timeout_s
    while time.time() < deadline:
        try:
            if serial:
                state = adb(serial, "get-state", check=False).strip()
                if state == "device":
                    return
            else:
                out = adb(None, "devices", check=True)
                lines = [ln.strip() for ln in out.splitlines()]
                for ln in lines[1:]:
                    if not ln:
                        continue
                    parts = re.split(r"\s+", ln)
                    if len(parts) >= 2 and parts[1] == "device":
                        return
        except Exception:
            pass
        time.sleep(0.5)
    raise TimeoutError("adb device not ready within timeout")


@dataclass
class Bounds:
    left: int
    top: int
    right: int
    bottom: int

    def center(self) -> Tuple[int, int]:
        return ((self.left + self.right) // 2, (self.top + self.bottom) // 2)


BOUNDS_RE = re.compile(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]")


def parse_bounds(bounds: str) -> Optional[Bounds]:
    m = BOUNDS_RE.fullmatch(bounds)
    if not m:
        return None
    left, top, right, bottom = map(int, m.groups())
    return Bounds(left, top, right, bottom)


def uiautomator_dump(serial: Optional[str]) -> str:
    # Dump to a predictable path and cat it.
    adb_shell(serial, "uiautomator dump /sdcard/uidump.xml", check=False, timeout_s=12.0)
    xml = adb_shell(serial, "cat /sdcard/uidump.xml", check=False, timeout_s=12.0)
    return xml


def find_allow_targets(ui_xml: str) -> list[Bounds]:
    # 通過正則表達式進行非常小的類 XPath 匹配：
    # - 匹配 resource-id 在 ALLOW_RES_IDS 中的節點
    # - 或 text/content-desc 在 ALLOW_TEXTS 中的節點
    targets: list[Bounds] = []

    def add_bounds(b: Optional[Bounds]) -> None:
        if not b:
            return
        targets.append(b)

    for res_id in ALLOW_RES_IDS:
        # resource-id="..." ... bounds="[x,y][x,y]"
        pattern = re.compile(
            r"<node[^>]*resource-id=\"" + re.escape(res_id) + r"\"[^>]*bounds=\"([^\"]+)\"",
            re.IGNORECASE,
        )
        for m in pattern.finditer(ui_xml):
            add_bounds(parse_bounds(m.group(1)))

    for text in ALLOW_TEXTS:
        # text="..." ... bounds="..." OR content-desc="..." ... bounds="..."
        pattern = re.compile(
            r"<node[^>]*(?:text|content-desc)=\"" + re.escape(text) + r"\"[^>]*bounds=\"([^\"]+)\"",
            re.IGNORECASE,
        )
        for m in pattern.finditer(ui_xml):
            add_bounds(parse_bounds(m.group(1)))

    # De-dup by center.
    seen = set()
    uniq: list[Bounds] = []
    for b in targets:
        c = b.center()
        if c in seen:
            continue
        seen.add(c)
        uniq.append(b)
    return uniq


def find_first_by_res_id(ui_xml: str, res_id: str) -> Optional[Bounds]:
    pattern = re.compile(
        r"<node[^>]*resource-id=\"" + re.escape(res_id) + r"\"[^>]*bounds=\"([^\"]+)\"",
        re.IGNORECASE,
    )
    m = pattern.search(ui_xml)
    if not m:
        return None
    return parse_bounds(m.group(1))


def dismiss_sony_first_run(serial: Optional[str]) -> bool:
    """Best-effort: dismiss Sony camera's first-run tutorial prompt."""

    xml = uiautomator_dump(serial)
    b = find_first_by_res_id(xml, SONY_TUTORIAL_NO_RES_ID)
    if b is None:
        b = find_first_by_res_id(xml, SONY_TUTORIAL_YES_RES_ID)
    if b is None:
        return False

    x, y = b.center()
    input_tap(serial, x, y)
    time.sleep(1.0)
    return True


def switch_to_front_camera(serial: Optional[str]) -> bool:
    """Best-effort: tap the facing shortcut twice to switch to front camera."""

    xml = uiautomator_dump(serial)
    b = find_first_by_res_id(xml, SONY_FACING_SWITCH_RES_ID)
    if b is None:
        return False

    x, y = b.center()
    input_tap(serial, x, y)
    time.sleep(0.2)
    input_tap(serial, x, y)
    time.sleep(1.0)
    return True


def input_tap(serial: Optional[str], x: int, y: int) -> None:
    adb_shell(serial, f"input tap {x} {y}")


def take_screencap_png(serial: Optional[str]) -> bytes:
    # exec-out 保留二進制。
    cmd = [ADB_BIN]
    if serial:
        cmd += ["-s", serial]
    cmd += ["exec-out", "screencap", "-p"]
    cp = subprocess.run(cmd, check=True, capture_output=True, timeout=20)
    return cp.stdout


def png_mean_luma(png_bytes: bytes) -> Optional[float]:
    """計算 PNG 的平均亮度 (0..255)，支援常見的 8 位 RGB/RGBA。"""

    if not png_bytes.startswith(b"\x89PNG\r\n\x1a\n"):
        return None

    pos = 8
    width = height = None
    bit_depth = color_type = None
    idat = bytearray()

    def read_u32(b: bytes, o: int) -> int:
        return int.from_bytes(b[o : o + 4], "big")

    while pos + 8 <= len(png_bytes):
        length = read_u32(png_bytes, pos)
        ctype = png_bytes[pos + 4 : pos + 8]
        pos += 8
        data = png_bytes[pos : pos + length]
        pos += length
        pos += 4  # crc

        if ctype == b"IHDR":
            width = read_u32(data, 0)
            height = read_u32(data, 4)
            bit_depth = data[8]
            color_type = data[9]
        elif ctype == b"IDAT":
            idat += data
        elif ctype == b"IEND":
            break

    if width is None or height is None or bit_depth is None or color_type is None:
        return None
    if bit_depth != 8:
        return None

    # color_type: 2=RGB, 6=RGBA
    if color_type == 2:
        bpp = 3
    elif color_type == 6:
        bpp = 4
    else:
        return None

    try:
        raw = zlib.decompress(bytes(idat))
    except Exception:
        return None

    stride = width * bpp
    expected = height * (1 + stride)
    if len(raw) < expected:
        return None

    def paeth(a: int, b: int, c: int) -> int:
        p = a + b - c
        pa = abs(p - a)
        pb = abs(p - b)
        pc = abs(p - c)
        if pa <= pb and pa <= pc:
            return a
        if pb <= pc:
            return b
        return c

    prev = bytearray(stride)
    total = 0
    count = 0
    idx = 0

    for _ in range(height):
        f = raw[idx]
        idx += 1
        line = bytearray(raw[idx : idx + stride])
        idx += stride

        if f == 0:
            pass
        elif f == 1:  # Sub
            for i in range(stride):
                left = line[i - bpp] if i >= bpp else 0
                line[i] = (line[i] + left) & 0xFF
        elif f == 2:  # Up
            for i in range(stride):
                line[i] = (line[i] + prev[i]) & 0xFF
        elif f == 3:  # Average
            for i in range(stride):
                left = line[i - bpp] if i >= bpp else 0
                up = prev[i]
                line[i] = (line[i] + ((left + up) // 2)) & 0xFF
        elif f == 4:  # Paeth
            for i in range(stride):
                left = line[i - bpp] if i >= bpp else 0
                up = prev[i]
                up_left = prev[i - bpp] if i >= bpp else 0
                line[i] = (line[i] + paeth(left, up, up_left)) & 0xFF
        else:
            return None

        # 使用 Rec.709 近似計算亮度：0.2126 R + 0.7152 G + 0.0722 B
        for px in range(0, stride, bpp):
            r = line[px]
            g = line[px + 1]
            b = line[px + 2]
            y = (54 * r + 183 * g + 19 * b) >> 8
            total += y
            count += 1

        prev = line

    return total / max(count, 1)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--serial", help="adb device serial")
    ap.add_argument("--timeout", type=float, default=25.0, help="seconds to try tapping allow")
    args = ap.parse_args()

    out_dir = os.path.abspath("tool/test_tmp")
    os.makedirs(out_dir, exist_ok=True)

    adb_wait_ready(args.serial)
    prepare_device(args.serial)
    adb_shell(args.serial, "logcat -c")

    # 清除應用程式資料。
    adb_shell(args.serial, f"pm clear {PKG}")
    prepare_device(args.serial)
    adb_shell(args.serial, LAUNCH_CMD, timeout_s=20.0)

    deadline = time.time() + args.timeout
    tapped = 0
    last_xml = ""

    while time.time() < deadline:
        time.sleep(0.7)
        xml = uiautomator_dump(args.serial)
        if xml:
            last_xml = xml
        targets = find_allow_targets(xml)
        if not targets:
            continue
        # Tap all candidates (some dialogs have multiple options).
        for b in targets:
            x, y = b.center()
            input_tap(args.serial, x, y)
            tapped += 1
            time.sleep(0.4)

    # 進入相機後，先關掉首跑教學（若出現），避免截到教學白屏/遮罩。
    for _ in range(3):
        if not dismiss_sony_first_run(args.serial):
            break

    # 切到前鏡頭（避免後鏡頭環境太暗導致「看起來黑」的誤判）。
    switch_to_front_camera(args.serial)

    # 給應用程式一點時間來渲染預覽。
    time.sleep(2.0)

    # 捕獲螢幕截圖和 logcat。
    png = take_screencap_png(args.serial)
    shot_path = os.path.join(out_dir, "after_allow.png")
    with open(shot_path, "wb") as f:
        f.write(png)

    log = adb(args.serial, "logcat", "-d")
    log_path = os.path.join(out_dir, "logcat.txt")
    with open(log_path, "w", encoding="utf-8") as f:
        f.write(log)

    focus = adb_shell(
        args.serial,
        "dumpsys window | grep -E 'mCurrentFocus|mFocusedApp' | head -n 4",
        check=False,
        timeout_s=12.0,
    )
    with open(os.path.join(out_dir, "focus.txt"), "w", encoding="utf-8") as f:
        f.write(focus)

    if tapped == 0 and last_xml:
        with open(os.path.join(out_dir, "uidump_last.xml"), "w", encoding="utf-8") as f:
            f.write(last_xml)

    mean = png_mean_luma(png)
    mean_str = "unknown" if mean is None else f"{mean:.2f}"

    summary = (
        f"tapped_allow={tapped}\n"
        f"screenshot={shot_path}\n"
        f"logcat={log_path}\n"
        f"mean_luma={mean_str} (0..255; lower means darker)\n"
    )
    print(summary)

    # 啟發式：如果平均亮度 < ~8，它基本上是黑色的。
    if mean is not None and mean < 8.0:
        print("RESULT=LIKELY_BLACK_SCREEN")
        return 2

    print("RESULT=OK_OR_NOT_BLACK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
