#!/usr/bin/env python3

from pathlib import Path
import shlex
import subprocess

adb = "/mnt/f/Android/platform-tools/adb.exe"
ANDROID_TOP = Path("/home/h/lineageos")
PRIV_APP_DIR = ANDROID_TOP / "vendor/sony/yoshino-common/proprietary/system/priv-app"
ADB_PRIV_APP_DIR = "/system/priv-app"

def push(folder_name, reboot=False):
    adb_target_path = ADB_PRIV_APP_DIR + "/" + folder_name + "/" + f"{folder_name}.apk"
    local_apk_path = PRIV_APP_DIR / folder_name / f"{folder_name}.apk"
    commands = [
        f"{adb} devices",
        f"{adb} root",
        f"{adb} remount",
        f"{adb} push {shlex.quote(str(local_apk_path))} {shlex.quote(adb_target_path)}",
    ]

    if reboot:
        commands.append(f"{adb} reboot")

    for cmd in commands:
        print(f"Executing: {cmd}")
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        print(result.stdout.strip())
        if result.stderr:
            print(result.stderr.strip())
        if result.returncode != 0:
            print(f"Command failed: {cmd}")
            break
