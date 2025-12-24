#!/usr/bin/env python3
import os
import subprocess

repo_root = os.path.dirname(__file__)
java_cmd = os.path.join(repo_root, "../../../../prebuilts/jdk/jdk11/linux-x86/bin/java")

apk_file = os.path.join(
    repo_root,
    "..",
    "apk_out",
    "SemcCameraUI-xxhdpi-release.apk",
)
folder_name = "SemcCameraUI-xxhdpi-release"

if not os.path.exists(folder_name):
    os.makedirs(folder_name)
# 處理 apk
target_apk = apk_file
print(f"已創建資料夾: {folder_name} 並處理 {apk_file}")
# 執行 apktool d 反編譯 APK
apktool_cmd = [
    java_cmd,
    "-jar",
    os.path.join(os.path.dirname(__file__), "apktool.jar"),
    "d",
    target_apk,
    "-o",
    folder_name,
    "-f",
]
result = subprocess.run(
    apktool_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
)
if result.returncode == 0:
    print(f"apktool 反編譯完成: {folder_name}")
else:
    print(f"apktool 反編譯失敗: {result.stderr}")
