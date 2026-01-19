from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Optional

from key import ClickTarget

# ------------------------------------------------------------
# 導入既有的 Adb wrapper 以便呼叫 adb 功能
# ------------------------------------------------------------
TOOLS_DIR = Path(__file__).resolve().parents[1]  # other -> test_camera -> tools
sys.path.insert(0, str(TOOLS_DIR))

from Common.adb import Adb  # noqa: E402

ADB = Adb()


# ------------------------------------------------------------
# UiAgent broadcast 設定（用於透過 am broadcast 與 UiAgent 互動）
# ------------------------------------------------------------
UIAGENT_PKG = "com.example.uiagent"
UIAGENT_RCV = ".UiAgentCmdReceiver"
UIAGENT_ACTION = "com.example.uiagent.CMD"


# ------------------------------------------------------------
# 低階：透過 am broadcast 發送命令並解析返回的 result-data
# ------------------------------------------------------------
def _broadcast(
    *,
    cmd: str,
    rid: Optional[str] = None,
    timeout_ms: Optional[int] = None,
    pick: Optional[str] = None,
    index: Optional[int] = None,
) -> dict:
    """使用 adb shell am broadcast 呼叫 UiAgentService（純 UiAgent 方案）。

    回傳：解析後的 JSON dict（來自 setResultData）
    """

    args: list[str] = [
        "shell",
        "am",
        "broadcast",
        "-n",
        f"{UIAGENT_PKG}/{UIAGENT_RCV}",
        "-a",
        UIAGENT_ACTION,
        "--es",
        "cmd",
        cmd,
    ]

    if rid:
        args += ["--es", "rid", rid]
    if timeout_ms is not None:
        args += ["--ei", "timeout_ms", str(int(timeout_ms))]
    if pick is not None:
        args += ["--es", "pick", str(pick)]
    if index is not None:
        args += ["--ei", "index", str(int(index))]

    p = ADB.run(args, check=True)
    out = (p.stdout or "") + "\n" + (p.stderr or "")

    # am broadcast 會輸出： data="{...}"
    m = re.search(r'data="(.*)"', out)
    if not m:
        raise RuntimeError(f"UiAgent: no result data\n{out}")

    try:
        return json.loads(m.group(1))
    except Exception as e:
        raise RuntimeError(f"UiAgent: invalid JSON\n{m.group(1)}") from e


# ------------------------------------------------------------
# 檢查是否安裝
# ------------------------------------------------------------
def is_uiagent_installed() -> bool:
    """檢查裝置上是否已安裝 UiAgentService（Broadcast 版）。"""
    package = UIAGENT_PKG
    p = ADB.run(["shell", "cmd", "package", "list", "packages", package], check=True)
    return (p.stdout or "").strip() == f"package:{package}"


# ------------------------------------------------------------
# 高階 API（封裝常用 UiAgent 指令）
# ------------------------------------------------------------
def ping() -> dict:
    """發送 ping 命令以驗證 UiAgent 連線"""
    return _broadcast(cmd="ping")


def exists_rid(rid: str) -> bool:
    """查詢指定 rid 的元件是否存在"""
    resp = _broadcast(cmd="exists_rid", rid=rid)
    return bool(resp.get("exists", False))


def click_rid(rid: str) -> bool:
    """觸發 rid 所對應元件的點擊事件"""
    resp = _broadcast(cmd="click_rid", rid=rid)
    return bool(resp.get("clicked", False))


def wait_exists_rid(rid: str, timeout_ms: int = 1200) -> bool:
    """等待 rid 元件出現，直到超時"""
    resp = _broadcast(cmd="wait_exists_rid", rid=rid, timeout_ms=timeout_ms)
    return bool(resp.get("exists", False))


def list_rids(*, dedupe: bool = True) -> list[str]:
    """從 UiAgent 取得「目前畫面所有 resource-id（rid）」清單。"""
    resp = _broadcast(cmd="list_rids")
    rids = resp.get("rids", [])
    if not isinstance(rids, list):
        raise RuntimeError(f"UiAgent: invalid rids type: {type(rids)}")

    out: list[str] = []
    seen: set[str] = set()
    for it in rids:
        if not isinstance(it, str):
            continue
        s = it.strip()
        if not s:
            continue
        if dedupe:
            if s in seen:
                continue
            seen.add(s)
        out.append(s)
    return out


# ------------------------------------------------------------
# 只用 UiAgent：用上層 rid 找子樹 clickable 按鈕
# ------------------------------------------------------------
def click_child_under_rid(
    rid: str,
    *,
    pick: str = "left",
    index: int = 0,
) -> bool:
    """用「上層 resource-id」去點沒有 resource-id 的子按鈕（純 UiAgent）。

    pick：
    - left  : 選 x 最小（最左）
    - right : 選 x 最大（最右）
    - index : 依 service 掃描順序選第 index 個 (0-based)
    """
    resp = _broadcast(
        cmd="click_child_under_rid",
        rid=rid,
        pick=pick,
        index=index,
    )
    return bool(resp.get("clicked", False))





# ------------------------------------------------------------
# ClickTarget 相容層（你目前的測試流程常用）
# ------------------------------------------------------------
def click(target: ClickTarget) -> None:
    """只用 resource_id 進行點擊。"""
    click_rid(target.resource_id)


def exists(target: ClickTarget) -> bool:
    """只用 resource_id 查詢存在。"""
    return exists_rid(target.resource_id)


def wait_exists(target: ClickTarget, timeout_ms: int = 5000) -> bool:
    """只用 resource_id 等待。"""
    return wait_exists_rid(target.resource_id, timeout_ms=timeout_ms)


def wait_then_click(
    wait_target: ClickTarget,
    click_target: Optional[ClickTarget] = None,
    timeout_ms: int = 5000,
) -> None:
    """先等待 wait_target 出現，再點擊 click_target。"""
    if click_target is None:
        click_target = wait_target
    wait_exists(wait_target, timeout_ms=timeout_ms)
    click(click_target)


def click_if_exists(click_target: ClickTarget) -> bool:
    if exists(click_target):
        click(click_target)
        return True
    return False
