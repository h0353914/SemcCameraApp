#!/usr/bin/env python3
import argparse
from Common.build_common import build_and_sign_apk
from Common.push_common import push

FOLDER_NAME = "SemcCameraUI-xxhdpi-release"
reboot = False

def main():
    parser = argparse.ArgumentParser(description=f"Build and push {FOLDER_NAME}")
    parser.add_argument("-b", "--build", action="store_true", help="Only build and sign the APK")
    parser.add_argument("-p", "--push", action="store_true", help="Only push the APK to the device")
    args = parser.parse_args()

    # Default logic: if no arguments, do both
    do_build = args.build or not (args.build or args.push)
    do_push = args.push or not (args.build or args.push)

    if do_build:
        build_and_sign_apk(FOLDER_NAME)
    
    if do_push:
        push(FOLDER_NAME, reboot)

if __name__ == "__main__":
    main()
