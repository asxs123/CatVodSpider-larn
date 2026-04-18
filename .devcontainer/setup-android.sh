#!/usr/bin/env bash
# .devcontainer/setup-android.sh — Codespaces postCreate 钩子
# 容器创建后自动运行，确保 Android SDK 环境完整

set -euo pipefail

echo "===== 检查 Android SDK 环境 ====="

ANDROID_HOME="${ANDROID_HOME:-/usr/local/lib/android/sdk}"

# 如果 sdkmanager 存在且 license 已接受，跳过
if [ -x "${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager" ]; then
    echo "[OK] Android SDK cmdline-tools 已安装"
    
    # 确保所需的 platform 和 build-tools 存在
    if [ ! -d "${ANDROID_HOME}/platforms/android-36" ]; then
        echo "[INFO] 安装 platforms;android-36 ..."
        yes | sdkmanager --licenses > /dev/null 2>&1 || true
        sdkmanager "platforms;android-36" "build-tools;36.0.0"
    fi
else
    echo "[WARN] sdkmanager 未找到，请检查 Dockerfile 是否正确安装了 Android SDK"
fi

echo "===== 环境检查完成 ====="
java -version
echo "ANDROID_HOME=${ANDROID_HOME}"
