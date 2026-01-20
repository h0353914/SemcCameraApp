import argparse
import os
from pathlib import Path
import subprocess
import sys
import time
from typing import Iterable

from key import ClickTarget, find_click_target, load_click_targets

TOOLS_DIR = Path(__file__).resolve().parents[1]  # other -> test_camera -> tools
sys.path.insert(0, str(TOOLS_DIR))

from Common.adb import Adb  # noqa: E402
from test_camera.uiagent_client import (  # noqa: E402
    click,
    click_child_under_rid,
    click_if_exists,
    is_uiagent_installed,
    wait_exists,
    wait_exists_rid,
    wait_then_click,
)

ADB = Adb()

UI_AGENT_DIR = Path(__file__).resolve().parent / "UiAgentService"
UI_AGENT_APK = (
    UI_AGENT_DIR / "app" / "build" / "outputs" / "apk" / "debug" / "app-debug.apk"
)
ANDROID_SDK = Path.home() / "Android" / "Sdk"
UIAGENT_ACCESSIBILITY_COMPONENT = (
    "com.example.uiagent/com.example.uiagent.UiAgentAccessibilityService"
)
CAMERA_PACKAGE_NAME = "com.sonyericsson.android.camera"


def build_uiagent() -> None:
    print("UiAgentService APK 不存在，開始編譯...")
    env = os.environ.copy()
    env["ANDROID_HOME"] = str(ANDROID_SDK)
    env["ANDROID_SDK_ROOT"] = str(ANDROID_SDK)

    subprocess.run(
        ["./gradlew", ":app:assembleDebug"],
        cwd=UI_AGENT_DIR,
        env=env,
        check=True,
    )


def install_uiagent() -> None:
    print("正在安裝 UiAgentService...")
    ADB.run(["install", "-r", str(UI_AGENT_APK)])


def ensure_uiagent_available() -> None:
    if is_uiagent_installed():
        return

    if not UI_AGENT_APK.exists():
        build_uiagent()

    if not UI_AGENT_APK.exists():
        raise FileNotFoundError(f"無法找到 {UI_AGENT_APK}")

    install_uiagent()


def click_camera_mode(*, pick: str) -> bool:
    """
    切換 Sony 相機模式（拍照 / 錄影）。

    pick:
      - "left"  → 拍照模式
      - "right" → 錄影模式
    """
    rid = "com.sonyericsson.android.camera:id/application_navigator"
    wait_exists_rid(rid=rid)
    return click_child_under_rid(
        rid=rid,
        pick=pick,
        index=0,
    )


def ensure_uiagent_accessibility_or_prompt() -> None:
    component = UIAGENT_ACCESSIBILITY_COMPONENT

    enabled_flag = ADB.get_setting_secure("accessibility_enabled")
    services = ADB.get_setting_secure("enabled_accessibility_services")

    enabled_flag = (enabled_flag or "").strip()
    services = (services or "").strip()
    services_norm = "" if (not services or services.lower() == "null") else services
    parts = [p for p in services_norm.split(":") if p]

    is_enabled = enabled_flag == "1"
    in_services = component in parts

    if is_enabled and in_services:
        return

    print("⚠️ UiAgent 無障礙服務尚未啟用，請手動開啟。")

    # 方便：直接跳到無障礙設定頁（不保證所有 ROM 都一樣，但通常可用）
    ADB.shell("am start -a android.settings.ACCESSIBILITY_SETTINGS", check=False)

    # 直接中止，避免後面 exists/click 沒作用讓你誤判
    raise SystemExit("")


def launch_camera() -> None:
    """Launch the stock Sony camera app so we can interact with its UI."""
    print("啟動相機應用程式...")
    ADB.shell(
        "am start -a android.media.action.STILL_IMAGE_CAMERA -p com.sonyericsson.android.camera",
        check=True,
    )
    time.sleep(0.5)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Automate taking a photo with the stock camera app."
    )
    parser.add_argument(
        "--clear-data",
        "-c",
        dest="clear_data",
        action="store_true",
        help="Clear the camera app data before interacting with it (default: do nothing).",
    )
    return parser.parse_args()


def prepare_device() -> None:
    ADB.shell("input keyevent KEYCODE_WAKEUP", check=True)  # 喚醒裝置
    ADB.shell("wm dismiss-keyguard", check=True)  # 解鎖裝置


def ensure_uiagent_ready() -> None:
    ensure_uiagent_available()  # 確認 UiAgent 已安裝
    ensure_uiagent_accessibility_or_prompt()  # 確認無障礙服務已啟用


def reset_camera_state(click_targets: Iterable[ClickTarget]) -> None:
    print(f"清除 {CAMERA_PACKAGE_NAME} 的資料...")
    ADB.shell(f"pm clear {CAMERA_PACKAGE_NAME}", check=False)

    launch_camera()

    print("嘗試處理權限彈窗（按下允許）...")
    # 純 UiAgentService 版：直接用 click(ClickTarget)
    click(find_click_target("使用期間允許", click_targets))
    click(find_click_target("使用期間允許", click_targets))
    click(find_click_target("允許檔案存取", click_targets))


def remove_dcim_directory() -> None:
    ADB.shell("rm -rf /sdcard/DCIM/", check=False)


def stop_camera() -> None:
    ADB.shell(f"am force-stop {CAMERA_PACKAGE_NAME}", check=False)


def has_saved_photo(timeout_ms: int = 3000, interval_ms: int = 200) -> bool:
    """
    在 timeout_ms 時間內輪詢檢查 DCIM 是否出現照片檔案。
    只要在期限內找到就立刻回傳 True，否則回傳 False。
    """
    deadline = time.monotonic() + timeout_ms / 1000.0

    while time.monotonic() < deadline:
        result = ADB.shell("ls -R /sdcard/DCIM", check=False)
        output = (result.stdout or "").lower()

        if any(ext in output for ext in (".jpg", ".jpeg")):
            return True

        time.sleep(interval_ms / 1000.0)

    return False


def main() -> None:
    key_path = Path(__file__).parent / "key.json"  # load keys
    click_targets = load_click_targets(key_path)  # load click targets
    儲存地點否 = find_click_target("儲存地點否", click_targets)
    拍照鍵 = find_click_target("拍照鍵", click_targets)
    模式 = find_click_target("模式", click_targets)

    args = parse_args()
    ensure_uiagent_ready()  # 確認 UiAgent 已安裝且無障礙服務已啟用
    stop_camera()  # 停止相機應用程式
    remove_dcim_directory()  # 刪除 DCIM 目錄
    prepare_device()  # 喚醒並解鎖裝置
    if args.clear_data:
        reset_camera_state(click_targets)
    else:
        launch_camera()

    click_if_exists(儲存地點否)

    # 開始測試拍照流程
    wait_then_click(拍照鍵)
    wait_exists(模式)
    print("有照片?", has_saved_photo())
    
    # # 開始測試錄影流程
    # click_camera_mode(pick="right")  # 切到錄影模式
    # wait_exists(模式)
    # # time.sleep(1)
    # wait_then_click(拍照鍵)
    # time.sleep(10)
    # wait_then_click(拍照鍵)
    # # print("有照片?", has_saved_photo())


if __name__ == "__main__":
    main()
