#!/usr/bin/env bash
# build.sh — CatVodSpider Linux 一键编译脚本
# 等效于 Windows 下的 build.bat + jar/genJar.bat
#
# 用法:
#   ./build.sh          # 编译并生成 custom_spider.jar
#   ./build.sh clean    # 清理后重新编译
#
# 前置要求:
#   - JDK 17+
#   - Android SDK (compileSdk 36, build-tools 36.0.0)
#   - java 命令可用 (用于 apktool)
#
# 产物位置:
#   app/build/outputs/apk/release/app-release-unsigned.apk  (APK)
#   jar/custom_spider.jar                                    (最终产物)
#   jar/custom_spider.jar.md5                                (MD5 校验)

set -euo pipefail

# ============================================================
# 路径定义
# ============================================================
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

APKTOOL_JAR="jar/3rd/apktool_2.11.0.jar"
APK_PATH="app/build/outputs/apk/release/app-release-unsigned.apk"
SMALI_DIR="jar/Smali_classes"
SPIDER_JAR_DIR="jar/spider.jar"
OUTPUT_JAR="jar/custom_spider.jar"
OUTPUT_MD5="jar/custom_spider.jar.md5"

# ============================================================
# 颜色输出
# ============================================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

info()  { echo -e "${GREEN}[INFO]${NC}  $*"; }
warn()  { echo -e "${YELLOW}[WARN]${NC}  $*"; }
error() { echo -e "${RED}[ERROR]${NC} $*"; }

# ============================================================
# 前置检查
# ============================================================
check_prerequisites() {
    local missing=0

    # 检查 Java
    if ! command -v java &>/dev/null; then
        error "未找到 java 命令，请安装 JDK 17+"
        missing=1
    fi

    # 检查 apktool
    if [ ! -f "$APKTOOL_JAR" ]; then
        error "未找到 apktool: $APKTOOL_JAR"
        missing=1
    fi

    # 检查 gradlew
    if [ ! -f "./gradlew" ]; then
        error "未找到 gradlew"
        missing=1
    fi

    if [ $missing -ne 0 ]; then
        error "请安装缺失的依赖后重试"
        exit 1
    fi

    # 给 gradlew 加执行权限
    chmod +x ./gradlew

    info "前置检查通过"
}

# ============================================================
# 清理函数
# ============================================================
cleanup_temp() {
    info "清理临时文件..."
    rm -rf "$SMALI_DIR"
    rm -rf "$SPIDER_JAR_DIR/smali/com/github/catvod/spider"
    rm -rf "$SPIDER_JAR_DIR/smali/com/github/catvod/js"
    rm -rf "$SPIDER_JAR_DIR/org/slf4j"
    rm -rf "$SPIDER_JAR_DIR/build"
    rm -rf "$SPIDER_JAR_DIR/dist"
}

# ============================================================
# 第1步：Gradle 编译 APK
# ============================================================
build_apk() {
    info "===== 第1步：编译 Android APK (assembleRelease) ====="
    ./gradlew assembleRelease --no-daemon

    if [ ! -f "$APK_PATH" ]; then
        error "编译失败，未找到 APK: $APK_PATH"
        exit 1
    fi
    info "APK 编译成功: $APK_PATH"
}

# ============================================================
# 第2步：从 APK 提取 smali 并打包 custom_spider.jar
# ============================================================
gen_jar() {
    info "===== 第2步：生成 custom_spider.jar ====="

    # 清理旧产物
    rm -f "$OUTPUT_JAR"
    rm -rf "$SMALI_DIR"

    # 用 apktool 反编译 APK (仅提取 classes)
    info "反编译 APK 提取 smali..."
    java -jar "$APKTOOL_JAR" d -f --only-main-classes "$APK_PATH" -o "$SMALI_DIR"

    # 清理 spider.jar 模板中的旧 smali
    rm -rf "$SPIDER_JAR_DIR/smali/com/github/catvod/spider"
    rm -rf "$SPIDER_JAR_DIR/smali/com/github/catvod/js"
    rm -rf "$SPIDER_JAR_DIR/smali/org/slf4j"

    # 创建目标目录
    mkdir -p "$SPIDER_JAR_DIR/smali/com/github/catvod/"
    mkdir -p "$SPIDER_JAR_DIR/smali/org/slf4j/"

    # 移动编译后的 smali 到 spider.jar 模板
    info "移动 smali 文件到 spider.jar 模板..."

    if [ -d "$SMALI_DIR/smali/com/github/catvod/spider" ]; then
        mv "$SMALI_DIR/smali/com/github/catvod/spider" "$SPIDER_JAR_DIR/smali/com/github/catvod/"
    else
        warn "未找到 spider smali 目录，跳过"
    fi

    if [ -d "$SMALI_DIR/smali/com/github/catvod/js" ]; then
        mv "$SMALI_DIR/smali/com/github/catvod/js" "$SPIDER_JAR_DIR/smali/com/github/catvod/"
    else
        warn "未找到 js smali 目录，跳过"
    fi

    if [ -d "$SMALI_DIR/smali/org/slf4j" ]; then
        cp -r "$SMALI_DIR/smali/org/slf4j/"* "$SPIDER_JAR_DIR/smali/org/slf4j/"
    else
        warn "未找到 slf4j smali 目录，跳过"
    fi

    # 用 apktool 重新打包
    info "重新打包为 JAR..."
    java -jar "$APKTOOL_JAR" b "$SPIDER_JAR_DIR" -c

    if [ ! -f "$SPIDER_JAR_DIR/dist/dex.jar" ]; then
        error "打包失败，未找到 $SPIDER_JAR_DIR/dist/dex.jar"
        exit 1
    fi

    # 移动到最终产物位置
    mv "$SPIDER_JAR_DIR/dist/dex.jar" "$OUTPUT_JAR"

    # 计算 MD5
    if command -v md5sum &>/dev/null; then
        md5sum "$OUTPUT_JAR" | awk '{print $1}' > "$OUTPUT_MD5"
    elif command -v md5 &>/dev/null; then
        md5 -q "$OUTPUT_JAR" > "$OUTPUT_MD5"
    else
        warn "未找到 md5sum 或 md5 命令，跳过 MD5 计算"
    fi

    # 清理临时文件
    cleanup_temp

    info "===== 生成完成 ====="
    info "产物: $OUTPUT_JAR"
    if [ -f "$OUTPUT_MD5" ]; then
        info "MD5:  $(cat "$OUTPUT_MD5")"
    fi
}

# ============================================================
# 主流程
# ============================================================
main() {
    echo ""
    echo "╔══════════════════════════════════════════╗"
    echo "║    CatVodSpider Linux Build Script       ║"
    echo "╚══════════════════════════════════════════╝"
    echo ""

    # 处理 clean 参数
    if [ "${1:-}" = "clean" ]; then
        info "执行 clean..."
        ./gradlew clean --no-daemon 2>/dev/null || true
        cleanup_temp
        rm -f "$OUTPUT_JAR" "$OUTPUT_MD5"
        info "清理完成"
        echo ""
    fi

    check_prerequisites
    build_apk
    gen_jar

    echo ""
    info "全部完成！🎉"
    echo ""
}

main "$@"
