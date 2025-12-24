#!/usr/bin/env python3
import pathlib
import shlex
import subprocess

adb_cmd = "/mnt/f/Android/platform-tools/adb.exe"

repo_root = pathlib.Path(__file__).resolve().parents[1]
apk_path = str(repo_root / "apk_out" / "SemcCameraUI-xxhdpi-release.apk")
target_path = "/system/priv-app/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release.apk"
reboot = True

commands = [
    f"{adb_cmd} devices",
    f"{adb_cmd} root",
    f"{adb_cmd} remount",
    f"{adb_cmd} push {shlex.quote(apk_path)} {shlex.quote(target_path)}"
]

if reboot:
    commands.append(f"{adb_cmd} reboot")

for cmd in commands:
    print(f"Executing: {cmd}")
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    print(result.stdout.strip())
    if result.stderr:
        print(result.stderr.strip())
    if result.returncode != 0:
        print(f"Command failed: {cmd}")
        break