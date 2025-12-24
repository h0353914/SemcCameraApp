#!/usr/bin/env python3
import os
import pathlib
import subprocess
import shutil
from sign_apk import sign_apk

repo_root = pathlib.Path(__file__).resolve().parents[1]
java_cmd = repo_root / "../../../prebuilts/jdk/jdk11/linux-x86/bin/java"

apk_file = repo_root / "apk_out" / "SemcCameraUI-xxhdpi-release.apk"
folder_name = "SemcCameraUI-xxhdpi-release"

if not (repo_root /  folder_name).exists():
    print(f"資料夾 {folder_name} 不存在，請先反編譯 APK")
    exit(1)
# 處理 apk
target_folder = repo_root / folder_name
print(f"處理資料夾: {target_folder} 並打包到 {apk_file}")
# 執行 apktool b 打包 APK
apktool_cmd = [
    java_cmd,
    "-jar",
    os.path.join(os.path.dirname(__file__), "apktool.jar"),
    "b",
    target_folder,
    "-o",
    apk_file,
]
result = subprocess.run(
    apktool_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
)
if result.returncode == 0:
    print(f"apktool 打包完成: {apk_file}")
    try:
        signed = sign_apk(apk_in=apk_file)
        print(f"簽署完成: {signed}")
        # 複製到 vendor/sony/yoshino-common/proprietary/system/priv-app/SemcCameraUI-xxhdpi-release/
        android_top = os.path.join(repo_root, "../../../../")
        vendor_dir = os.path.join(
            android_top,
            "vendor/sony/yoshino-common/proprietary/system/priv-app/SemcCameraUI-xxhdpi-release",
        )
        os.makedirs(vendor_dir, exist_ok=True)
        vendor_apk = os.path.join(vendor_dir, "SemcCameraUI-xxhdpi-release.apk")
        shutil.copy(signed, vendor_apk)
        print(f"複製完成: {vendor_apk}")
    except Exception as e:
        print(f"簽署失敗: {e}")
        exit(1)
else:
    print(f"apktool 打包失敗: {result.stderr}")
