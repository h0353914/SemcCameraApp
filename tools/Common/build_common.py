from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
import subprocess

from sign_apk import sign_apk

ANDROID_TOP = Path("/home/h/lineageos")
PRIV_APP_DIR = ANDROID_TOP / "vendor/sony/yoshino-common/proprietary/system/priv-app"

REPO_ROOT = Path(__file__).resolve().parents[2]
APKTOOL_JAR = REPO_ROOT / "tools" / "apktool.jar"
DEFAULT_JAVA_CMD = str(ANDROID_TOP / "prebuilts/jdk/jdk11/linux-x86/bin/java")


@dataclass(frozen=True)
class ApktoolBuildError(RuntimeError):
    cmd: list[str]
    returncode: int
    stdout: str
    stderr: str

    def __str__(self) -> str:
        details = self.stderr.strip() or self.stdout.strip() or "未知錯誤"
        return f"apktool 打包失敗 (exit={self.returncode}): {details}"


def build_and_sign_apk(folder_name: str) -> str:
    target_folder = REPO_ROOT / folder_name
    output_dir = PRIV_APP_DIR / folder_name
    output_dir.mkdir(parents=True, exist_ok=True)

    output_apk = output_dir / f"{folder_name}.apk"
    print(f"處理資料夾: {target_folder} \n打包到 {output_apk}")

    result = _run_apktool(target_folder, output_apk, DEFAULT_JAVA_CMD)
    if result.returncode != 0:
        raise ApktoolBuildError(
            cmd=result.args if isinstance(result.args, list) else [str(result.args)],
            returncode=result.returncode,
            stdout=result.stdout or "",
            stderr=result.stderr or "",
        )

    print(f"apktool 打包完成: {output_apk}")
    signed = sign_apk(apk_in=str(output_apk))
    print(f"簽署完成: {signed}")
    return signed


def _run_apktool(
    source_dir: Path, output_apk: Path, java_executable: str
) -> subprocess.CompletedProcess[str]:
    if not APKTOOL_JAR.exists():
        raise FileNotFoundError(f"apktool.jar not found: {APKTOOL_JAR}")

    cmd = [
        java_executable,
        "-jar",
        str(APKTOOL_JAR),
        "b",
        str(source_dir),
        "-o",
        str(output_apk),
    ]
    return subprocess.run(cmd, capture_output=True, text=True)
