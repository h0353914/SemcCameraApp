import dataclasses
import json
from pathlib import Path
import sys

from key import find_click_target, load_click_targets

TOOLS_DIR = Path(__file__).resolve().parents[1]  # other -> test_camera -> tools
sys.path.insert(0, str(TOOLS_DIR))

from Common.adb import Adb  # noqa: E402
from test_camera.uiagent_client import click, exists, get_current_screen_click_targets  # noqa: E402

ADB = Adb()

UI_AGENT_DIR = Path(__file__).resolve().parent / "UiAgentService"
UI_AGENT_APK = (
    UI_AGENT_DIR / "app" / "build" / "outputs" / "apk" / "debug" / "app-debug.apk"
)
ANDROID_SDK = Path.home() / "Android" / "Sdk"
UI_AGENT_ACCESSIBILITY_COMPONENT = (
    "com.example.uiagent/com.example.uiagent.UiAgentAccessibilityService"
)
CAMERA_PACKAGE_NAME = "com.sonyericsson.android.camera"
DEFAULT_OUTPUT = Path(__file__).resolve().parent / "click_targets.json"


def save_click_targets(targets: list, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    serializable_targets = [dataclasses.asdict(target) for target in targets]
    with output.open("w", encoding="utf-8") as stream:
        json.dump(serializable_targets, stream, ensure_ascii=False, indent=2)

# key_path = Path(__file__).parent / "key.json"
# click_targets = load_click_targets(key_path)
targets = get_current_screen_click_targets()
save_click_targets(targets, DEFAULT_OUTPUT)


# 儲存地點否=find_click_target("儲存地點否", click_targets)
# print(exists(儲存地點否))
# a=find_click_target("使用期間允許", click_targets)
# print(a)
# click(a)
# b=find_click_target("使用期間允許", click_targets)
# print(b)
# click(b)
# c=find_click_target("允許檔案存取", click_targets)
# print(c)
# click(c)


# t = find_click_target("拍照鍵", click_targets)
# print(exists(t))
# click(t)
# # key = "com.android.permissioncontroller:id/permission_allow_foreground_only_button"
# # a = list_rids()
# # b = list_rids_fallback_uiautomator()
# # print("a:", key in a)
# # print("b:", key in b)
# # print("a", a)
# # print("b", b)

# # click_rid_anywhere(key) 
