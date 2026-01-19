#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
from pathlib import Path
import re
import sys
import time
import xml.etree.ElementTree as ET
from dataclasses import dataclass
from typing import Optional

TOOLS_DIR = Path(__file__).resolve().parents[2]  # other -> test_camera -> tools
sys.path.insert(0, str(TOOLS_DIR))

from Common.adb import Adb  # noqa: E402


adb = Adb()


@dataclass(frozen=True)
class UINode:
    resource_id: Optional[str]
    content_desc: Optional[str]
    bounds: Optional[tuple[int, int, int, int]]  # x1,y1,x2,y2

    @property
    def center(self) -> Optional[tuple[int, int]]:
        if not self.bounds:
            return None
        x1, y1, x2, y2 = self.bounds
        return ((x1 + x2) // 2, (y1 + y2) // 2)


def _parse_bounds(bounds_str: str) -> Optional[tuple[int, int, int, int]]:
    # "[x1,y1][x2,y2]"
    try:
        a, b = bounds_str.strip()[1:-1].split("][")
        x1, y1 = map(int, a.split(","))
        x2, y2 = map(int, b.split(","))
        return x1, y1, x2, y2
    except Exception:
        return None


def dump_ui_xml() -> str:
    p = adb.exec_out(["uiautomator", "dump", "/dev/tty"], check=True, timeout=30)
    s = p.stdout or ""

    # 1) 只抽出 <hierarchy ...> ... </hierarchy>
    m = re.search(r"(<hierarchy\b.*?</hierarchy>)", s, flags=re.DOTALL)
    if not m:
        return ""
    xml = m.group(1)

    # 2) 修復少了開頭引號的 resource-id（你這台 dump 真的會吐出這種破 XML）
    #    resource-id=com.xxx:id/yyy"  -> resource-id="com.xxx:id/yyy"
    xml = re.sub(
        r'resource-id=([^\s">]+)"',
        r'resource-id="\1"',
        xml,
    )

    return xml.strip()


def parse_nodes(xml: str) -> list[UINode]:
    try:
        root = ET.fromstring(xml)
    except Exception:
        return []

    out: list[UINode] = []
    for node in root.iter("node"):
        rid = node.attrib.get("resource-id") or None
        cd = node.attrib.get("content-desc") or None
        b = node.attrib.get("bounds")
        bounds = _parse_bounds(b) if b else None
        out.append(UINode(resource_id=rid, content_desc=cd, bounds=bounds))
    return out


def sha1_text(s: str) -> str:
    return hashlib.sha1(s.encode("utf-8", errors="ignore")).hexdigest()


def get_current_focus() -> str:
    # 常見輸出含 "mCurrentFocus=Window{... u0 pkg/.Activity}"
    p = adb.shell("dumpsys window | grep mCurrentFocus", check=False)
    return (p.stdout or "").strip()


def get_resumed_activity() -> str:
    # 新舊 Android 可能不同，抓關鍵字即可
    p = adb.shell(
        "dumpsys activity activities | grep -E 'mResumedActivity|ResumedActivity'",
        check=False,
    )
    return (p.stdout or "").strip()


def tap(x: int, y: int) -> None:
    adb.shell(f"input tap {x} {y}", check=True)


def summarize_sets(nodes: list[UINode]) -> tuple[set[str], set[str]]:
    rids: set[str] = set()
    cds: set[str] = set()
    for n in nodes:
        if n.resource_id:
            rids.add(n.resource_id)
        if n.content_desc:
            cds.add(n.content_desc)
    return rids, cds


def main() -> None:
    default = "com.sonyericsson.android.camera:id/contextual_setting_shortcut"

    ap = argparse.ArgumentParser(
        description="Test what a resource_id 'does' by tapping its UI node and diffing before/after."
    )
    ap.add_argument(
        "resource_id",
        nargs="?",
        default=default,
        help="target resource-id, e.g. com.sonyericsson.android.camera:id/contextual_setting_shortcut",
    )
    ap.add_argument(
        "--index",
        type=int,
        default=0,
        help="if multiple nodes match the same resource_id, choose which one (default: 0)",
    )
    ap.add_argument(
        "--sleep",
        type=float,
        default=0.6,
        help="sleep seconds after tap before re-dump (default: 0.6)",
    )
    args = ap.parse_args()

    rid = args.resource_id

    print(f"[Target] resource_id = {rid}")
    print("=== BEFORE ===")
    focus_before = get_current_focus()
    resumed_before = get_resumed_activity()

    xml_before = dump_ui_xml()
    h_before = sha1_text(xml_before)
    nodes_before = parse_nodes(xml_before)

    matches = [n for n in nodes_before if n.resource_id == rid]
    if not matches:
        print("找不到這個 resource_id 的 node（目前畫面）。")
        print("提示：先切到正確畫面再跑，或確認 resource_id 是否打對。")
        return

    idx = args.index
    if idx < 0 or idx >= len(matches):
        print(f"index 超出範圍：目前找到 {len(matches)} 個匹配，index={idx}")
        return

    target = matches[idx]
    print(f"match count = {len(matches)}, use index = {idx}")
    print(f"content-desc = {target.content_desc!r}")
    print(f"bounds = {target.bounds}")
    c = target.center
    if not c:
        print("這個 node 沒有 bounds，無法 tap。")
        return
    x, y = c
    print(f"tap center = ({x}, {y})")

    print(f"mCurrentFocus: {focus_before}")
    print(f"mResumedActivity: {resumed_before}")
    print(f"ui_sha1: {h_before}")

    # tap
    print("\n[TAP]")
    tap(x, y)
    time.sleep(args.sleep)

    print("\n=== AFTER ===")
    focus_after = get_current_focus()
    resumed_after = get_resumed_activity()

    xml_after = dump_ui_xml()
    h_after = sha1_text(xml_after)
    nodes_after = parse_nodes(xml_after)

    print(f"mCurrentFocus: {focus_after}")
    print(f"mResumedActivity: {resumed_after}")
    print(f"ui_sha1: {h_after}")

    changed = (
        (h_before != h_after)
        or (focus_before != focus_after)
        or (resumed_before != resumed_after)
    )
    print(f"\n[Changed?] {changed}")

    # rough diff
    rids_before, cds_before = summarize_sets(nodes_before)
    rids_after, cds_after = summarize_sets(nodes_after)

    added_rids = sorted(rids_after - rids_before)
    removed_rids = sorted(rids_before - rids_after)
    added_cds = sorted(cds_after - cds_before)
    removed_cds = sorted(cds_before - cds_after)

    def show_list(title: str, items: list[str], limit: int = 30):
        if not items:
            return
        print(f"\n{title} (show up to {limit}):")
        for s in items[:limit]:
            print("  -", s)
        if len(items) > limit:
            print(f"  ... ({len(items) - limit} more)")

    show_list("[Diff] added resource_id", added_rids)
    show_list("[Diff] removed resource_id", removed_rids)
    show_list("[Diff] added content-desc", added_cds)
    show_list("[Diff] removed content-desc", removed_cds)

    # If focus changed, highlight it
    if focus_before != focus_after:
        print("\n[Focus changed]")
        print("  before:", focus_before)
        print("  after :", focus_after)

    if resumed_before != resumed_after:
        print("\n[Resumed activity changed]")
        print("  before:", resumed_before)
        print("  after :", resumed_after)


if __name__ == "__main__":
    main()
