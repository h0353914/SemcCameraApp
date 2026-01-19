#!/usr/bin/env python3
import argparse
import json
import xml.etree.ElementTree as ET
from collections import defaultdict
from pathlib import Path


# -------------------------
# 固定設定
# -------------------------

KEY_NAME = ""
UI_DIR = "ui_xml"
UI_GLOB = "ui*.xml"
OUT_FILE = "key.json"


# -------------------------
# strings.xml helpers
# -------------------------

def load_strings(path: Path) -> dict[str, str]:
    if not path.exists():
        return {}
    try:
        root = ET.parse(path).getroot()
    except Exception:
        return {}

    out: dict[str, str] = {}
    for s in root.findall("string"):
        name = s.attrib.get("name")
        if name:
            out[name] = "".join(s.itertext()).strip()
    return out


def invert_strings(mapping: dict[str, str]) -> dict[str, list[str]]:
    inv: dict[str, list[str]] = defaultdict(list)
    for k, v in mapping.items():
        inv[v].append(k)
    return inv


def expand_cd_only(cds: set[str], zh_inv, en) -> list[str]:
    """
    只在「沒有 resource_id」時使用
    zh-rTW -> en
    """
    out: list[str] = []
    for cd in sorted(cds):
        names = zh_inv.get(cd)
        if names:
            name = names[0]
            eng = en.get(name)
            if eng and eng not in out:
                out.append(eng)
        if cd not in out:
            out.append(cd)
    return out


# -------------------------
# UI XML parsing
# -------------------------

def extract_nodes(path: Path) -> list[dict]:
    out: list[dict] = []
    try:
        root = ET.parse(path).getroot()
    except Exception:
        return out

    for node in root.iter("node"):
        rid = node.attrib.get("resource-id") or None
        cd = node.attrib.get("content-desc") or None
        if rid or cd:
            out.append({"resource_id": rid, "content_desc": cd})
    return out


# -------------------------
# main
# -------------------------

def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--keep-resource-only",
        action="store_true",
        help="keep entries that only have resource_id but no zh-rTW content-desc",
    )
    args = ap.parse_args()

    base = Path(__file__).resolve().parent

    ui_files = sorted((base / UI_DIR).glob(UI_GLOB))
    if not ui_files:
        raise RuntimeError("No UI XML files found")

    res = (base / ".." / ".." / "SemcCameraUI-xxhdpi-release" / "res").resolve()
    zh = load_strings(res / "values-zh-rTW" / "strings.xml")
    en = load_strings(res / "values-en" / "strings.xml")

    zh_inv = invert_strings(zh)
    zh_set = set(zh_inv.keys())

    rid_to_zh_cds: dict[str, set[str]] = defaultdict(set)
    cd_only: set[str] = set()

    for xml in ui_files:
        for n in extract_nodes(xml):
            rid = n["resource_id"]
            cd = n["content_desc"]

            if rid:
                if cd and cd in zh_set:
                    rid_to_zh_cds[rid].add(cd)
                else:
                    rid_to_zh_cds.setdefault(rid, set())
            else:
                if cd:
                    cd_only.add(cd)

    output: list[dict] = []

    # 有 resource_id 的
    for rid in sorted(rid_to_zh_cds):
        zhs = sorted(rid_to_zh_cds[rid])

        if not zhs and not args.keep_resource_only:
            continue

        entry = {
            "key_name": KEY_NAME,
            "resource_id": rid,
        }
        if zhs:
            entry["content_desc"] = zhs
        output.append(entry)

    # 沒 resource_id 的
    for cd in sorted(cd_only):
        cds = expand_cd_only({cd}, zh_inv, en)
        output.append(
            {
                "key_name": KEY_NAME,
                "content_desc": cds,
            }
        )

    out = base / OUT_FILE
    out.write_text(
        json.dumps(output, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    print(f"Wrote {len(output)} entries -> {out}")


if __name__ == "__main__":
    main()
