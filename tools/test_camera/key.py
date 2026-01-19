from __future__ import annotations

from dataclasses import dataclass
import sys
from typing import Iterable, Optional
import json
from pathlib import Path

TOOLS_DIR = Path(__file__).resolve().parents[1]  # other -> test_camera -> tools
sys.path.insert(0, str(TOOLS_DIR))


@dataclass(frozen=True)
class UILabelDef:
    """
    一個 UI 定義（resource_id 版本）：
    - 只保留 resource_id
    - content-desc / bounds 一律忽略
    """

    key_name: str
    resource_id: Optional[str]


@dataclass(frozen=True)
class ClickTarget:
    """
    展開後的原子單位：只包含 resource_id。
    """

    key_name: str
    resource_id: str


def load_label_defs(path: Path) -> list[UILabelDef]:
    """
    讀取 key.json（key:value 格式），轉成 UILabelDef。
    """
    if not path.exists():
        raise FileNotFoundError(f"label json not found: {path}")

    with path.open("r", encoding="utf-8") as f:
        data = json.load(f)

    defs: list[UILabelDef] = []

    if not isinstance(data, dict):
        raise ValueError("label json must be an object")

    for key_name, rid in data.items():
        key_name = str(key_name or "")
        rid = rid if isinstance(rid, str) and rid.strip() else None

        # 只支援 resource_id；沒有 rid 就跳過
        if not rid:
            continue

        defs.append(
            UILabelDef(
                key_name=key_name,
                resource_id=rid,
            )
        )

    return defs


def expand(defs: Iterable[UILabelDef]) -> set[ClickTarget]:
    """
    只保留 resource_id。
    """
    out: set[ClickTarget] = set()

    for d in defs:
        if not d.resource_id:
            continue
        out.add(
            ClickTarget(
                key_name=d.key_name,
                resource_id=d.resource_id,
            )
        )

    return out


def find_click_target(key_name: str, targets: Iterable[ClickTarget]) -> ClickTarget:
    """
    只回傳「指定 key_name 對應的 ClickTarget」。

    假設：
    - 走到這裡代表「邏輯上應該只有一個 target」
    - 不負責確認 UI 上是否真的存在
    - UI 點不到是上層 click / adb 的責任
    """
    candidates = [t for t in targets if t.key_name == key_name]

    if not candidates:
        raise LookupError(f"No ClickTarget with resource_id for key_name={key_name!r}")

    if len(candidates) > 1:
        raise LookupError(f"Multiple ClickTargets found for key_name={key_name!r}")

    return candidates[0]


def load_click_targets(key_path: Path) -> set[ClickTarget]:
    """
    從指定的 key.json 載入 label 定義並展開成可點擊目標集合
    """
    label_defs = load_label_defs(key_path)
    return expand(label_defs)
