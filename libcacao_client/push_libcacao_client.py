#!/usr/bin/env python3

import subprocess

reboot = True
adb = "/mnt/f/Android/platform-tools/adb.exe"
base_path = "~/lineageos/out/target/product/poplar_kddi/symbols/"
paths = [
    "vendor/lib64/libcacao_client.so",
    "vendor/lib64/libcacao_client_real.so",
]

cmds = [
    f"{adb} devices",
    f"{adb} root",
    f"{adb} wait-for-device",
    f"{adb} remount",
]
for local in paths:
    remote = f"system/lib64/{local.split('/')[-1]}"
    cmds.append(f"{adb} push {base_path}{local} {remote}")
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