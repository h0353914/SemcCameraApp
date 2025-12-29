#!/usr/bin/env python3

import subprocess

reboot = False
adb = "/mnt/f/Android/platform-tools/adb.exe"
base_path = "/home/h/lineageos/vendor/sony/yoshino-common/proprietary/"
paths = [
    "/system/lib64/libcacao_client.so",
    "/system/lib/libcacao_service.so",
    "/system/lib/vendor.somc.hardware.camera.provider@1.0.so"
]

cmds = [
    f"{adb} devices",
    f"{adb} root",
    f"{adb} wait-for-device",
    f"{adb} remount",
]
for local in paths:
    cmds.append(f"{adb} push {base_path}{local} {local}")
if reboot:
    cmds.append(f"{adb} reboot")

for cmd in cmds:
    print(f"Executing: {cmd}")
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    if result.stdout.strip():
        print(result.stdout.strip())
    if result.stderr.strip():
        print(result.stderr.strip())
    if result.returncode != 0:
        print(f"Command failed: {cmd}")
        exit(result.returncode)
