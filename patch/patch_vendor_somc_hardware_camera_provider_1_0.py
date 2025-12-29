#!/usr/bin/env python3
"""修補 vendor.somc.hardware.camera.provider@1.0.so（32-bit/arm）的決定性二進位 patch。

目標
- 避免 cacaoserver 在 getInterfaces() callback 路徑中，因 provider 對錯誤物件指標呼叫
    RefBase::incStrong()/decStrong() 而觸發 SIGSEGV。

作法
- 將該 blob 的 PLT stub：
    - android::RefBase::incStrong@plt
    - android::RefBase::decStrong@plt
    patch 成「立即 return」：`bx lr; nop; nop`

注意
- 這會改變 refcount 行為，可能造成物件生命週期不符合原設計（例如：泄漏）。
- 這是一種 bring-up / 穩定性 workaround，用來先把相機流程跑起來，以便後續縮小根因。

本檔案刻意只保留 blob 特有資訊：
- 原始檔：patch/original/vendor.somc.hardware.camera.provider@1.0.so
- 目標檔：vendor/sony/.../proprietary/.../system/lib/vendor.somc.hardware.camera.provider@1.0.so
- 要修改的 bytes（PATCHES）

其餘共用流程（路徑推導、expected-bytes 驗證、套 patch、寫檔、輸出格式）
統一由 patch_utils.run_patcher() 處理。
"""

from __future__ import annotations

import sys

from patch_utils import Patch, run_patcher


# ARM (A32) PLT entry is 12 bytes (3 instructions).
# Original pattern in this blob:
#   add r12, pc, #0, #12
#   add r12, r12, #36864
#   ldr pc, [r12, #xxxx]!
_PATCHED_RET = bytes.fromhex("1eff2fe10000a0e10000a0e1")


_BLOB_NAME = "vendor.somc.hardware.camera.provider@1.0.so"
_DST_RELPATHS = (
    "vendor/sony/yoshino-common/proprietary/system/lib/vendor.somc.hardware.camera.provider@1.0.so",
)


def main() -> int:
    # Computed from .rel.plt JUMP_SLOT indices and .plt layout for this blob:
    # - incStrong@plt entry offset: 0xADB4
    # - decStrong@plt entry offset: 0xADC0
    patches: tuple[Patch, ...] = (
        Patch(
            offset=0xADB4,
            originals=(bytes.fromhex("00c68fe20eca8ce2a0febce5"),),
            patched=_PATCHED_RET,
            desc="No-op RefBase::incStrong@plt",
        ),
        Patch(
            offset=0xADC0,
            originals=(bytes.fromhex("00c68fe20eca8ce298febce5"),),
            patched=_PATCHED_RET,
            desc="No-op RefBase::decStrong@plt",
        ),
    )

    return run_patcher(
        script_file=__file__,
        blob_name=_BLOB_NAME,
        dst_relpaths=_DST_RELPATHS,
        patches=patches,
        check_only=False,
    )


if __name__ == "__main__":
    sys.exit(main())
