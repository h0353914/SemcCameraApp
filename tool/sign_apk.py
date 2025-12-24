#!/usr/bin/env python3
import os
import shutil
import subprocess
import tempfile
from typing import Optional

repo_root = os.path.dirname(__file__)
java_cmd = os.path.join(repo_root, "../../../../prebuilts/jdk/jdk11/linux-x86/bin/java")


def _abs_from_tool(rel_path: str) -> str:
    return os.path.normpath(os.path.join(os.path.dirname(__file__), rel_path))


def _resolve_java_executable(custom_path: Optional[str]) -> str:
    candidate = custom_path or java_cmd
    return candidate if candidate and os.path.exists(candidate) else "java"


def _find_signing_resources() -> tuple[str, str, str, Optional[str]]:
    signapk_jar = _abs_from_tool("../../../../out/host/linux-x86/framework/signapk.jar")
    if not os.path.exists(signapk_jar):
        raise FileNotFoundError(f"signapk.jar not found: {signapk_jar}")

    pub_key = _abs_from_tool("../../../../build/target/product/security/platform.x509.pem")
    priv_key = _abs_from_tool("../../../../build/target/product/security/platform.pk8")
    if not os.path.exists(pub_key) or not os.path.exists(priv_key):
        raise FileNotFoundError(
            f"Platform keys not found. Expected:\n  {pub_key}\n  {priv_key}"
        )

    conscrypt_so = _abs_from_tool("../../../../out/host/linux-x86/lib64/libconscrypt_openjdk_jni.so")
    if not os.path.exists(conscrypt_so):
        conscrypt_so = _abs_from_tool("../../../../prebuilts/sdk/tools/linux/lib64/libconscrypt_openjdk_jni.so")
        if not os.path.exists(conscrypt_so):
            conscrypt_so = None

    return signapk_jar, pub_key, priv_key, conscrypt_so


def _prepare_conscrypt_dir(conscrypt_so: Optional[str]) -> str:
    conscrypt_dir = tempfile.mkdtemp(prefix="conscrypt_lib_")
    if conscrypt_so:
        os.symlink(conscrypt_so, os.path.join(conscrypt_dir, "libconscrypt_openjdk_jni-linux-x86_64.so"))
        os.symlink(conscrypt_so, os.path.join(conscrypt_dir, "libconscrypt_openjdk_jni.so"))
    return conscrypt_dir


def sign_apk(
    apk_in: Optional[str] = None,
    apk_out: Optional[str] = None,
    alignment: int = 4,
    java_executable: Optional[str] = None,
) -> str:
    target_apk = os.path.abspath(apk_in or _abs_from_tool("../apk_out/SemcCameraUI-xxhdpi-release.apk"))
    if not os.path.isfile(target_apk):
        raise FileNotFoundError(f"Input APK not found: {target_apk}")

    resolved_java = _resolve_java_executable(java_executable)
    signapk_jar, pub_key, priv_key, conscrypt_so = _find_signing_resources()
    tmp_out = os.path.abspath(apk_out) if apk_out else target_apk + ".signed.tmp"

    conscrypt_dir = _prepare_conscrypt_dir(conscrypt_so)
    try:
        cmd = [
            resolved_java,
            f"-Djava.library.path={conscrypt_dir}",
            "-jar",
            signapk_jar,
            "-a",
            str(alignment),
            pub_key,
            priv_key,
            target_apk,
            tmp_out,
        ]

        print("Executing:")
        print(" ".join(cmd))
        result = subprocess.run(cmd, text=True, capture_output=True)
        if result.stdout:
            print(result.stdout.rstrip())
        if result.stderr:
            print(result.stderr.rstrip())
        if result.returncode != 0:
            raise subprocess.CalledProcessError(result.returncode, cmd)

    finally:
        shutil.rmtree(conscrypt_dir)

    final_apk = os.path.abspath(apk_out) if apk_out else target_apk
    if apk_out:
        print(f"Signed APK: {final_apk}")
        return final_apk

    shutil.move(tmp_out, target_apk)
    print(f"Signed APK (in-place): {final_apk}")
    return final_apk
