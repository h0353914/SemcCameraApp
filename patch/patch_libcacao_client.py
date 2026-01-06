#!/usr/bin/env python3
"""修復 64 位元 libcacao_client.so，避免相機在 RefBase::incStrong 相關路徑 SIGSEGV。

本檔案刻意只保留「blob 特有」資訊：
- 原始檔：patch/original/libcacao_client.so
- 目標檔：vendor/sony/.../proprietary/.../lib64/libcacao_client.so
- 要修改的 bytes（PATCHES）

其餘共用流程（找 ANDROID_BUILD_TOP、驗證 expected-bytes、套 patch、寫出檔案與統一輸出）
都放在 patch_utils.py 的 run_patcher()。

修正內容摘要（依 tombstone/backtrace 與 A/B 測試整理）：
- 擴大 MemoryHeapBase / MemoryBase 的配置大小到 0x100（避免 64-bit 結構差異造成越界/覆寫）。
- 修正 incStrong(this) 呼叫點的 this 指標計算：
    讓 x0 指向 RefBase 子物件（x0 = x8 + 0x58）並維持 stack local（local_398）的行為一致。
"""

from __future__ import annotations

import sys

from patch_utils import Patch, run_patcher


# 提示：以下每個補丁條目對應 libcacao_client.so 中需要修復的已知位置，用於解決相機穩定性問題
PATCHES: tuple[Patch, ...] = (
    Patch(
        offset=0x11A68,
        originals=(bytes.fromhex("000d8052"),),  # mov w0, #0x68
        patched=bytes.fromhex("00208052"),  # mov w0, #0x100
        desc="allocMemory：MemoryHeapBase 配置大小 0x68->0x100",
    ),
    Patch(
        offset=0x11AB4,
        originals=(bytes.fromhex("00098052"),),  # mov w0, #0x48
        patched=bytes.fromhex("00208052"),  # mov w0, #0x100
        desc="allocMemory：MemoryBase 配置大小 0x48->0x100",
    ),
    Patch(
        offset=0x11A90,
        originals=(
            bytes.fromhex("09015ff8"),  # ldur x9, [x8, #-0x10]
            bytes.fromhex("09815ef8"),  # ldur x9, [x8, #-0x18] (先前嘗試)
        ),
        patched=bytes.fromhex("09015ff8"),  # ldur x9, [x8, #-0x10]
        desc="allocMemory：offset-to-top 讀取恢復 vtable[-0x10] (x9<-x8)",
    ),
    Patch(
        offset=0x11A9C,
        originals=(
            bytes.fromhex("08015ff8"),  # ldur x8, [x8, #-0x10]
            bytes.fromhex("08815ef8"),  # ldur x8, [x8, #-0x18] (先前嘗試)
        ),
        patched=bytes.fromhex("08015ff8"),  # ldur x8, [x8, #-0x10]
        desc="allocMemory：offset-to-top 讀取恢復 vtable[-0x10] (x8<-x8)",
    ),
    Patch(
        offset=0x11AA8,
        originals=(
            bytes.fromhex("29015ff80001098b"),  # ldur x9, [x9, #-0x10]; add x0, x8, x9
            bytes.fromhex("a06201911f2003d5"),  # add x0, x21, #0x58; nop (舊版 patch)
            bytes.fromhex("006101911f2003d5"),  # add x0, x8, #0x58; nop (新版 patch)
            bytes.fromhex("29815ef80001098b"),  # ldur x9, [x9, #-0x18]; add x0, x8, x9
            bytes.fromhex("806201911f2003d5"),  # add x0, x20, #0x58; nop (誤判 x20 為物件指標)
        ),
        patched=bytes.fromhex("006101911f2003d5"),  # add x0, x8, #0x58; nop
        desc=(
            "allocMemory：第一個 incStrong(this) 改用 RefBase 子物件："
            "x0 = x8 + 0x58 (tombstone 顯示 *(x8+0x60) 像是有效 mRefs 指標)"
        ),
    ),
    Patch(
        offset=0x11ADC,
        originals=(
            bytes.fromhex("08815ef8a002088b"),  # ldur x8, [x8, #-0x18]; add x0, x21, x8
            bytes.fromhex("a0e200911f2003d5"),  # add x0, x21, #0x38; nop (先前嘗試)
        ),
        patched=bytes.fromhex("08815ef8a002088b"),
        desc="allocMemory：第二個 incStrong(this) 恢復原本 offset-to-top 計算",
    ),
    Patch(
        offset=0x1362C,
        originals=(bytes.fromhex("000e8052"), bytes.fromhex("000d8052")),  # mov w0, #0x70 or #0x68
        patched=bytes.fromhex("00208052"),  # mov w0, #0x100
        desc="MemoryHeapBase 配置大小 0x70 or 0x68->0x100",
    ),
    Patch(
        offset=0x13674,
        originals=(bytes.fromhex("000a8052"), bytes.fromhex("00098052")),  # mov w0, #0x50 or #0x48
        patched=bytes.fromhex("00208052"),  # mov w0, #0x100
        desc="MemoryBase 配置大小 0x50 or 0x48->0x100",
    ),
    Patch(
        offset=0x13648,
        originals=(
            bytes.fromhex(
            "a80240f909815ef8a902098be90700f908815ef8a802088b090140f929815ef80001098be1230091"
            ),
            bytes.fromhex(
            "a80240f9e123009109815ef8a902098be90700f908815ef8a802088b090140f929815ef80001098b"
            ),
        ),
        patched=bytes.fromhex(
            "a80240f909815ef8a002098bf50700f9e12300911f2003d51f2003d51f2003d51f2003d51f2003d5"
        ),
        desc="getCaps：在調整後的指標上呼叫 incStrong，但將 x21 儲存到 local_398",
    ),
)


_BLOB_NAME = "libcacao_client.so"
_DST_RELPATHS = ("/home/h/lineageos/vendor/sony/yoshino-common/proprietary/system/lib64/libcacao_client.so",)


def main() -> int:
    return run_patcher(
        script_file=__file__,
        blob_name=_BLOB_NAME,
        dst_relpaths=_DST_RELPATHS,
        patches=PATCHES,
        check_only=False,
    )


if __name__ == "__main__":
    sys.exit(main())
