#!/usr/bin/env python3
"""修復 libcacao_service.so (32-bit/arm) 以避免 cacaoserver 在 RefBase::incStrong/decStrong 相關路徑 SIGSEGV。

背景（根據 tombstone/backtrace）：
- cacaoserver 在處理 cacao 結果時會進入 libcacao_service.so，最後在 libutils 的
  android::RefBase::incStrong() 觸發 SIGSEGV。

策略（可快速 ADB 驗證）：
- 提供多個可切換 patch 群組，方便 A/B 測試與回退。
- 早期做法是 no-op RefBase::incStrong/decStrong 的 PLT stub（不一定能涵蓋所有崩潰路徑）。
- 目前較接近根因的做法：修正 sp<IMemoryHeap> 的 vtable offset 讀取（-12 → -8），避免把指標算歪
    變成指到 libbinder 的 rodata/vtable，導致 MemoryBase 建構時在 RefBase::incStrong 爆掉。

注意：
- 這會讓 libcacao_service.so 內所有對 incStrong/decStrong 的呼叫變成空操作。
  可能造成 refcount 行為改變（例如：泄漏或生命週期不同）。
  但通常比「直接崩潰卡住」更容易先把拍照流程跑起來，用於驗證與縮小問題。

已針對此 blob 版本驗證：
- build-id: a668d80859c86563dfc51e28683f3961

注意：本工具使用「expected-bytes 驗證」來確保只對符合的 blob 版本套用，避免錯位寫壞檔案。
"""

from __future__ import annotations

import sys

from patch_utils import Patch, flatten_patches, run_patcher


# ARM (A32) instructions, little-endian bytes
# Original PLT stub patterns (3 instructions):
#   add r12, pc, #0, #12
#   add r12, r12, #36864
#   ldr pc, [r12, #xxxx]!
_ORIG_INCSTRONG_PLT_STUB = bytes.fromhex("00c68fe209ca8ce2b4febce5")
_ORIG_DECSTRONG_PLT_STUB = bytes.fromhex("00c68fe209ca8ce29cfebce5")

# Patched stub (3 instructions):
#   bx lr
#   mov r0, r0   (nop)
#   mov r0, r0   (nop)
_PATCHED_RET = bytes.fromhex("1eff2fe10000a0e10000a0e1")

# Thumb (T32) NOP (16-bit) x2
_PATCHED_THUMB_NOPS_32 = bytes.fromhex("00bf00bf")

# Thumb (T16) early-return: movs r0,#0 ; bx lr
_PATCHED_THUMB_RET0 = bytes.fromhex("00207047")


PATCH_GROUPS: dict[str, tuple[Patch, ...]] = {
    "plt": (
        Patch(
            # Verified in current blob: _ZNK7android7RefBase9incStrongEPKv@plt
            offset=0x7D00,
            originals=(_ORIG_INCSTRONG_PLT_STUB,),
            patched=_PATCHED_RET,
            desc="No-op PLT stub for RefBase::incStrong (avoid SIGSEGV)",
        ),
        Patch(
            # Verified in current blob: _ZNK7android7RefBase9decStrongEPKv@plt
            offset=0x7D24,
            originals=(_ORIG_DECSTRONG_PLT_STUB,),
            patched=_PATCHED_RET,
            desc="No-op PLT stub for RefBase::decStrong (avoid SIGSEGV)",
        ),
    ),
    # Root-ish fix: avoid relying on compiler-specific vtable offset entries.
    # In multiple tombstones, sp<IMemoryHeap> ctor ends up computing a bogus pointer
    # (points into libbinder rodata/vtable), then later RefBase::incStrong crashes.
    #
    # We force the computed offset to 0 by replacing the 32-bit load
    #   ldr.w r0, [r0, #-12]
    # with
    #   movs r0, #0
    #   nop
    # This makes the rest of the ctor treat the interface/base offset as 0.
    "sp_fix_vtbl": (
        Patch(
            offset=0x98E2,
            originals=(
                bytes.fromhex("50f80c0c"),  # original
                bytes.fromhex("50f80c08"),  # bad experiment (may be on-device)
            ),
            patched=bytes.fromhex("002000bf"),
            desc="sp<IMemoryHeap> ctor: force vtable offset=0 (1/3)",
        ),
        Patch(
            offset=0x98EC,
            originals=(
                bytes.fromhex("50f80c0c"),
                bytes.fromhex("50f80c08"),
            ),
            patched=bytes.fromhex("002000bf"),
            desc="sp<IMemoryHeap> ctor: force vtable offset=0 (2/3)",
        ),
        Patch(
            offset=0x98F6,
            originals=(
                bytes.fromhex("50f80c0c"),
                bytes.fromhex("50f80c08"),
            ),
            patched=bytes.fromhex("002000bf"),
            desc="sp<IMemoryHeap> ctor: force vtable offset=0 (3/3)",
        ),
        Patch(
            # If sp_ctor_nop 曾經套用，這裡順便把 callsite 還原成原本的 BL。
            offset=0x98FC,
            originals=(
                bytes.fromhex("00bf00bf"),  # NOPs (patched)
                bytes.fromhex("03f096ff"),  # already restored
            ),
            patched=bytes.fromhex("03f096ff"),
            desc="Restore Thumb BL in sp<IMemoryHeap> ctor (re-enable incStrong call)",
        ),
    ),
    "sp_ctor_nop": (
        Patch(
            # Callsite seen in tombstone: pc 0x000098fd (Thumb bit set) inside
            # android::sp<android::IMemoryHeap>::sp<android::MemoryHeapBase>(android::MemoryHeapBase*)
            # Replace Thumb BL with NOPs to avoid calling RefBase::incStrong on a bad pointer.
            offset=0x98FC,
            originals=(bytes.fromhex("03f096ff"),),
            patched=_PATCHED_THUMB_NOPS_32,
            desc="No-op Thumb BL in sp<IMemoryHeap> ctor (avoid RefBase::incStrong crash)",
        ),
    ),
    "allocmemory": (
        Patch(
            # Quick-stability workaround: make allocMemory() return null immediately.
            # Symbol value: 0x9509 (Thumb) → file offset starts at 0x9508.
            offset=0x9508,
            originals=(bytes.fromhex("2de9f041"),),
            patched=_PATCHED_THUMB_RET0,
            desc="Early-return Client::allocMemory() to avoid MemoryBase/incStrong crash",
        ),
    ),
    # Workaround for intermittent SIGSEGV in:
    #   android::CacaoService::getJpegBufferSize(cacao::ImageSize)
    # Observed as pc 0x0000a9d0 (+0x50) with fault addr 0x01000060.
    #
    # We avoid the risky table/field dereference by returning a conservative fixed size.
    # Using 0x02000000 (32 MiB) is intentionally larger than the typical logged sizes (~13-17 MiB).
    "jpeg_bufsize_guard": (
        Patch(
            offset=0xA980,
            originals=(bytes.fromhex("2de9f04798b0dff8"),),
            patched=bytes.fromhex("02200006704700bf"),
            desc="getJpegBufferSize(): return fixed 32MiB buffer size",
        ),
    ),
}

# 預設採用：
# - plt：避免 RefBase::incStrong/decStrong 相關 SIGSEGV/ABRT（bring-up workaround）
# - sp_fix_vtbl：修正 sp<IMemoryHeap> vtable offset 計算（更接近根因）
# - jpeg_bufsize_guard：避免 getJpegBufferSize 走到危險的解參考
DEFAULT_PATCH_GROUPS = ("plt", "sp_fix_vtbl", "jpeg_bufsize_guard")
DEFAULT_PATCHES = flatten_patches(PATCH_GROUPS[g] for g in DEFAULT_PATCH_GROUPS)


# 只保留 blob 名稱與目標路徑；其餘（路徑推導、驗證、寫檔、統一輸出）由 patch_utils.run_patcher 處理。
_BLOB_NAME = "libcacao_service.so"
_DST_RELPATHS = ("/home/h/lineageos/vendor/sony/yoshino-common/proprietary/system/lib/libcacao_service.so",)


def main() -> int:
    # 預設採用 DEFAULT_PATCHES：
    # - 包含 plt + sp_fix_vtbl（以及其 restore）
    # - 排除 allocmemory（那是較激進的快速 workaround）
    return run_patcher(
        script_file=__file__,
        blob_name=_BLOB_NAME,
        dst_relpaths=_DST_RELPATHS,
        patches=DEFAULT_PATCHES,
        check_only=False,
    )


if __name__ == "__main__":
    sys.exit(main())
