FROM mcr.microsoft.com/devcontainers/base:ubuntu

# 安装 JDK 17
RUN apt-get update && apt-get install -y --no-install-recommends \
    openjdk-17-jdk \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# 设置 Java 环境变量
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# 创建 Android SDK 目录
ENV ANDROID_HOME=/usr/local/lib/android/sdk
ENV ANDROID_SDK_ROOT=${ANDROID_HOME}
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools

# 下载 Android Command Line Tools
RUN cd /tmp \
    && curl -sL -o cmdline-tools.zip \
       "https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip" \
    && unzip -q cmdline-tools.zip \
    && mv cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
    && rm cmdline-tools.zip

# 将 SDK 工具加入 PATH
ENV PATH="${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools:${PATH}"

# 安装所需的 Android SDK 组件（版本对齐 Gradle 需求）
RUN yes | sdkmanager --licenses > /dev/null 2>&1 \
    && sdkmanager \
       "platforms;android-36.1" \
       "build-tools;35.0.0" \
       "platform-tools"

# ★ 关键修复：让 vscode 用户对 SDK 目录有写权限
RUN chmod -R a+rw ${ANDROID_HOME}
