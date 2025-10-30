#!/usr/bin/env python3
import os
import subprocess
import re
import sys
import shutil
import zipfile


def get_min_sdk_version(
    apk_path, aapt2_path="~/lineageos/out/host/linux-x86/bin/aapt2"
):
    aapt2_path = aapt2_path.replace("~", os.path.expanduser("~"))
    cmd = [aapt2_path, "dump", "badging", apk_path]
    result = subprocess.run(
        cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    )
    if result.returncode != 0:
        raise RuntimeError(f"aapt2 failed: {result.stderr}")
    minSdkVersion_match = re.search(r"minSdkVersion:'(\d+)'", result.stdout)
    versionName_match = re.search(r"versionName='([0-9]+\.[0-9]+)", result.stdout)
    if minSdkVersion_match and versionName_match:
        minSdkVersion = minSdkVersion_match.group(1)
        versionName = versionName_match.group(1)
        return minSdkVersion, versionName
    return None, None


# 用法範例
apk_file = sys.argv[1]
md5_output = "62c3521253d5d9e6588b76dec6a380c9"
min_sdk, version_name = get_min_sdk_version(apk_file)


if min_sdk and version_name:
    folder_name = f"{min_sdk}_{version_name}"
    if not os.path.exists(folder_name):
        os.makedirs(folder_name)
    # 移動 apk_file 到新資料夾
    target_apk = os.path.join(folder_name, "SemcCameraUI-xxhdpi-release.apk")
    shutil.move(apk_file, target_apk)
    print(f"Created folder: {folder_name} and moved {apk_file}")
    # 執行 apksigner 驗證
    apksigner_path = os.path.expanduser("~/lineageos/out/host/linux-x86/bin/apksigner")
    apksigner_cmd = [apksigner_path, "verify", "--print-certs", target_apk]
    apksigner_result = subprocess.run(
        apksigner_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    )
    # 只顯示 MD5 digest
    md5_match = re.search(r"MD5 digest: ([0-9a-fA-F]+)", apksigner_result.stdout)
    if md5_match:
        md5 = md5_match.group(1)
        print(f"MD5: {md5}\t{'是' if md5 == md5_output else '否'}")
    else:
        print("MD5 not found in apksigner output.")
    if apksigner_result.returncode != 0:
        print("apksigner failed:")
        print(apksigner_result.stderr)
    # 解壓 apk
    with zipfile.ZipFile(target_apk, "r") as zip_ref:
        zip_ref.extractall(folder_name)
    print(f"Unzipped {target_apk} in {folder_name}")
    # 執行 baksmali d classes.dex -o smali_out
    classes_dex = os.path.join(folder_name, "classes.dex")
    smali_out_dir = os.path.join(folder_name, "smali_out")
    baksmali_cmd = ["baksmali", "d", classes_dex, "-o", smali_out_dir]
    result = subprocess.run(
        baksmali_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    )
    if result.returncode == 0:
        print(f"baksmali finished: {smali_out_dir}")
    else:
        print(f"baksmali failed: {result.stderr}")
else:
    print("Failed to get minSdkVersion or versionName.")
