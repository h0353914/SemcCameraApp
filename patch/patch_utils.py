from __future__ import annotations

"""二進位 blob 直寫 patch 的共用工具（給本資料夾的 patch_*.py 使用）。

本 repo 的工作流通常是：
1) `extract-files.sh` 把 vendor blob 取出（或放到 patch/original/）。
2) 用本資料夾的 patch 腳本，把 `original/` 裡的原始 blob 套上固定 offset patch。
3) 把 patched blob 寫回 `vendor/sony/.../proprietary/...`，再進行編譯或 push 到裝置驗證。

設計重點
- **可重現 / 決定性**：只做「固定 offset + 固定 bytes」替換，避免依賴反組譯器或符號表。
- **安全性**：每個 patch 都帶有 `originals`（允許多種已知版本的 bytes），實際寫入前必須比對。
- **可回退**：同一組 patch 可用 `mode='revert'` 回到 originals（可指定 originals 的 index）。
- **共用邏輯集中**：patch_*.py 盡量只保留三件事：
        1) 原始 blob 檔名（在 patch/original/ 下）
        2) 目標輸出路徑（通常在 vendor/sony/.../proprietary/ 下）
        3) 需要修改的 patch bytes（Patch 定義）

注意
- 這些工具假設 patch 腳本位置在：
        $TOP/device/sony/SemcCameraUI/patch/
    因此可用 `android_top_from_here(..., levels=4)` 推回 ANDROID_BUILD_TOP。
"""

from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence


class PatchError(ValueError):
    pass


def android_top_from_here(here: Path, *, levels: int = 4) -> Path:
    """Return ANDROID_BUILD_TOP based on a known script location.

    In this repo layout, patch scripts live under:
      $TOP/device/sony/SemcCameraUI/patch/
    so `levels=4` maps patch/ -> SemcCameraUI -> sony -> device -> $TOP.
    """

    resolved = here.resolve()
    if resolved.is_file():
        resolved = resolved.parent
    for _ in range(levels):
        resolved = resolved.parent
    return resolved


@dataclass(frozen=True)
class Patch:
    offset: int
    originals: tuple[bytes, ...]
    patched: bytes
    desc: str


def src_under_original_dir(script_file: Path, blob_name: str) -> Path:
    """取得 patch/original 下的 blob 路徑。

    依照本 repo 慣例：patch 腳本與 `original/` 同層。
    """

    base_dir = Path(script_file).resolve().parent
    return base_dir / "original" / blob_name


def dsts_from_android_top(script_file: Path, dst_relpaths: Sequence[str], *, levels: int = 4) -> list[Path]:
    """把多個「相對於 ANDROID_BUILD_TOP」的路徑轉成絕對 Path。"""

    android_top = android_top_from_here(Path(script_file), levels=levels)
    return [android_top / rel for rel in dst_relpaths]


def _ensure_consistent_lengths(p: Patch) -> int:
    if not p.originals:
        raise PatchError(f"patch entry has no originals at 0x{p.offset:06X}")
    expected_len = len(p.originals[0])
    if any(len(o) != expected_len for o in p.originals):
        raise PatchError(f"patch entry has inconsistent original lengths at 0x{p.offset:06X}")
    if len(p.patched) != expected_len:
        raise PatchError(
            f"patch entry patched length {len(p.patched)} != original length {expected_len} at 0x{p.offset:06X}"
        )
    return expected_len


def apply_patches_to_bytes(
    data: bytes,
    patches: Sequence[Patch],
    *,
    mode: str = "patch",
    revert_original_index: int = 0,
) -> bytes:
    """Apply or revert patches to a bytes blob.

    mode:
      - "patch": originals -> patched
      - "revert": patched -> originals[revert_original_index]
    """

    if mode not in {"patch", "revert"}:
        raise ValueError("mode must be 'patch' or 'revert'")
    out = bytearray(data)

    for p in patches:
        n = _ensure_consistent_lengths(p)
        if p.offset < 0 or p.offset + n > len(out):
            raise PatchError(
                f"file too small for patch at 0x{p.offset:06X}: need {p.offset + n} bytes, have {len(out)}"
            )
        cur = bytes(out[p.offset : p.offset + n])

        if mode == "patch":
            if cur == p.patched:
                continue
            if cur not in p.originals:
                raise PatchError(
                    f"unexpected bytes at 0x{p.offset:06X}: {cur.hex()} "
                    f"(expected one of {[o.hex() for o in p.originals]} or already patched {p.patched.hex()})"
                )
            out[p.offset : p.offset + n] = p.patched
        else:  # revert
            if cur in p.originals:
                continue
            if cur != p.patched:
                raise PatchError(
                    f"unexpected bytes at 0x{p.offset:06X}: {cur.hex()} "
                    f"(expected patched {p.patched.hex()} or one of originals {[o.hex() for o in p.originals]})"
                )
            try:
                original = p.originals[revert_original_index]
            except IndexError as exc:
                raise PatchError(
                    f"revert_original_index {revert_original_index} out of range for patch at 0x{p.offset:06X}"
                ) from exc
            out[p.offset : p.offset + n] = original

    return bytes(out)


def verify_patches_on_bytes(data: bytes, patches: Sequence[Patch], *, allow_original: bool, allow_patched: bool) -> None:
    """Validate that each patch site matches allowed states."""

    for p in patches:
        n = _ensure_consistent_lengths(p)
        if p.offset < 0 or p.offset + n > len(data):
            raise PatchError(
                f"file too small for patch at 0x{p.offset:06X}: need {p.offset + n} bytes, have {len(data)}"
            )
        cur = data[p.offset : p.offset + n]
        if allow_patched and cur == p.patched:
            continue
        if allow_original and cur in p.originals:
            continue
        raise PatchError(
            f"unexpected bytes at 0x{p.offset:06X}: {cur.hex()} "
            f"(allowed:"
            f"{' originals' if allow_original else ''}"
            f"{' patched' if allow_patched else ''};"
            f" originals={[o.hex() for o in p.originals]}, patched={p.patched.hex()})"
        )


def patch_file_copy_multi(
    *,
    src: Path,
    dsts: Sequence[Path],
    patches: Sequence[Patch],
    check_only: bool,
    verify_dst_when_check: bool = True,
) -> None:
    """Read once, patch once, write to many destinations.

    使用情境
    - 一份 `original/*.so` 需要同時輸出到多個位置（例如 vendor/ 與 out/）。

    行為
    - 讀取 `src` 後，先驗證每個 patch offset 的 bytes 必須符合：
        - originals 其中之一（未套 patch），或
        - 已經是 patched（允許重跑腳本）
    - 然後輸出 patched bytes 到每個 `dsts`。
    - 若 `check_only=True`：
        - 不寫檔
        - 若目標檔案存在且 `verify_dst_when_check=True`，則會比對內容必須完全一致
          （用於 CI / 快速確認「目前 vendor blob 是否已是期望狀態」）。
    """

    if not src.is_file():
        raise FileNotFoundError(src)
    if not dsts:
        raise ValueError("dsts must not be empty")

    src_data = src.read_bytes()
    verify_patches_on_bytes(src_data, patches, allow_original=True, allow_patched=True)
    out_data = apply_patches_to_bytes(src_data, patches, mode="patch")

    if check_only:
        if verify_dst_when_check:
            for dst in dsts:
                if dst.exists():
                    dst_data = dst.read_bytes()
                    if dst_data != out_data:
                        raise PatchError(f"destination differs: {dst}")
        return

    for dst in dsts:
        dst.parent.mkdir(parents=True, exist_ok=True)
        dst.write_bytes(out_data)


def run_patcher(
    *,
    script_file: Path,
    blob_name: str,
    dst_relpaths: Sequence[str],
    patches: Sequence[Patch],
    check_only: bool = False,
    android_top_levels: int = 4,
) -> int:
    """給 patch_*.py 使用的標準 main()。

    patch 腳本只需要提供：
    - `blob_name`：在 `patch/original/` 下的檔名
    - `dst_relpaths`：輸出目標（相對於 ANDROID_BUILD_TOP）
    - `patches`：要套用的 Patch 清單

    其餘工作（路徑推導、檔案存在性、驗證、寫入、錯誤訊息格式）都集中在這裡。
    """

    src = src_under_original_dir(Path(script_file), blob_name)
    dsts = dsts_from_android_top(Path(script_file), dst_relpaths, levels=android_top_levels)

    if not src.exists():
        raise SystemExit(f"Missing original blob: {src}")

    try:
        patch_file_copy_multi(src=src, dsts=dsts, patches=patches, check_only=check_only)
        for dst in dsts:
            print(f"OK: {dst} (patched from {src})")
    except Exception as exc:
        # 這裡統一把錯誤格式化，讓每支腳本輸出一致。
        raise SystemExit(f"FAIL: {blob_name}: {exc}") from exc

    return 0


def patch_file_inplace(
    path: Path,
    patches: Sequence[Patch],
    *,
    check_only: bool,
    revert: bool = False,
    cleanup_patches: Sequence[Patch] = (),
) -> None:
    if not path.is_file():
        raise FileNotFoundError(path)

    data = path.read_bytes()

    # Optional cleanup: revert some older experimental patches if present.
    if not revert and cleanup_patches:
        for p in cleanup_patches:
            _ensure_consistent_lengths(p)
        # allow either state; we'll only overwrite when it matches p.patched
        data2 = bytearray(data)
        for p in cleanup_patches:
            n = len(p.patched)
            cur = data2[p.offset : p.offset + n]
            if bytes(cur) == p.patched:
                data2[p.offset : p.offset + n] = p.originals[0]
        data = bytes(data2)

    mode = "revert" if revert else "patch"
    new_data = apply_patches_to_bytes(data, patches, mode=mode)

    if check_only:
        return
    if new_data != data:
        path.write_bytes(new_data)


def patch_file_copy(
    *,
    src: Path,
    dst: Path,
    patches: Sequence[Patch],
    check_only: bool,
    verify_dst_when_check: bool = True,
) -> None:
    """Read from `src` (expected originals) and write patched output to `dst`."""

    if not src.is_file():
        raise FileNotFoundError(src)

    src_data = src.read_bytes()
    # Ensure source is patchable (original or already patched is acceptable for reuse).
    verify_patches_on_bytes(src_data, patches, allow_original=True, allow_patched=True)
    out_data = apply_patches_to_bytes(src_data, patches, mode="patch")

    if check_only:
        if verify_dst_when_check and dst.exists():
            dst_data = dst.read_bytes()
            if dst_data != out_data:
                raise PatchError(f"destination differs: {dst}")
        return

    dst.parent.mkdir(parents=True, exist_ok=True)
    dst.write_bytes(out_data)


def flatten_patches(groups: Iterable[Sequence[Patch]]) -> tuple[Patch, ...]:
    return tuple(p for g in groups for p in g)