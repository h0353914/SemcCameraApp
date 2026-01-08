#!/usr/bin/env python3

from pathlib import Path

from .adb import Adb

ANDROID_TOP = Path("/home/h/lineageos")
PRIV_APP_DIR = ANDROID_TOP / "vendor/sony/yoshino-common/proprietary/system/priv-app"
ADB_PRIV_APP_DIR = "/system/priv-app"

def push(folder_name, reboot=False):
    adb = Adb()

    adb_target_path = ADB_PRIV_APP_DIR + "/" + folder_name + "/" + f"{folder_name}.apk"
    local_apk_path = PRIV_APP_DIR / folder_name / f"{folder_name}.apk"
    commands = [
        ["devices"],
        ["root"],
        ["remount"],
        ["push", str(local_apk_path), adb_target_path],
    ]

    if reboot:
        commands.append(["reboot"])

    base_cmd = [adb.adb_path] + (["-s", adb.serial] if adb.serial else [])

    for args in commands:
        cmd_display = " ".join(base_cmd + args)
        print(f"Executing: {cmd_display}")
        try:
            result = adb.run(args, check=False)
        except Exception as exc:
            print(str(exc))
            print(f"Command failed: {cmd_display}")
            break

        if result.stdout:
            print(result.stdout.strip())
        if result.stderr:
            print(result.stderr.strip())
        if result.returncode != 0:
            print(f"Command failed: {cmd_display}")
            break
