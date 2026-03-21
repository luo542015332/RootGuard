#!/bin/bash

# RootGuard 构建脚本
# Android Root 权限管理器

echo "=========================================="
echo "   RootGuard 构建脚本"
echo "   Android Root 权限管理器"
echo "=========================================="
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查 Java
if ! command -v java &> /dev/null; then
    echo -e "${RED}[❌ 错误] 未找到 Java${NC}"
    echo ""
    echo "请先安装 JDK 17："
    echo "https://adoptium.net/temurin/releases/?version=17"
    exit 1
fi

echo -e "${GREEN}[✓] Java 环境检测通过${NC}"
echo ""

# 检查 Gradle Wrapper
if [ ! -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    echo -e "${YELLOW}[⚠️ 警告] 未找到 Gradle Wrapper${NC}"
    echo "正在尝试使用系统 Gradle..."
    
    if ! command -v gradle &> /dev/null; then
        echo -e "${RED}[❌ 错误] 未找到 Gradle${NC}"
        echo "请安装 Gradle 或手动下载 wrapper"
        exit 1
    else
        echo -e "${GREEN}[✓] 使用系统 Gradle${NC}"
        GRADLE_CMD="gradle"
    fi
else
    echo -e "${GREEN}[✓] Gradle Wrapper 检测通过${NC}"
    GRADLE_CMD="./gradlew"
fi

echo ""
echo "=========================================="
echo "[1/2] 正在构建 Debug APK..."
echo "=========================================="
echo ""

$GRADLE_CMD assembleDebug

if [ $? -ne 0 ]; then
    echo ""
    echo -e "${RED}[❌ 错误] Debug 构建失败${NC}"
    echo ""
    echo "可能的解决方案："
    echo "1. 检查网络连接（需要下载依赖）"
    echo "2. 配置国内镜像源"
    echo "3. 检查 Android SDK 路径"
    exit 1
fi

echo ""
echo -e "${GREEN}[✓] Debug APK 构建成功！${NC}"
echo ""

# 询问是否构建 Release
echo "=========================================="
echo "[2/2] 是否构建 Release APK？"
echo "=========================================="
echo ""
echo "注意：Release 构建需要签名配置"
echo ""
read -p "是否继续? (y/N): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    echo "正在构建 Release APK..."
    
    $GRADLE_CMD assembleRelease
    
    if [ $? -ne 0 ]; then
        echo ""
        echo -e "${YELLOW}[⚠️ 警告] Release 构建失败${NC}"
        echo "可能原因：未配置签名密钥"
        echo ""
        echo "请参考 BUILD.md 配置签名"
    else
        echo ""
        echo -e "${GREEN}[✓] Release APK 构建成功！${NC}"
    fi
fi

echo ""
echo "=========================================="
echo "          构建完成！🎉"
echo "=========================================="
echo ""
echo "📦 APK 文件位置："
echo ""

# 显示 Debug APK 信息
if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    echo "[Debug]   app/build/outputs/apk/debug/app-debug.apk"
    ls -lh app/build/outputs/apk/debug/app-debug.apk | awk '{print "          大小:", $5}'
else
    echo "[Debug]   未找到"
fi

echo ""

# 显示 Release APK 信息
if [ -f "app/build/outputs/apk/release/app-release.apk" ]; then
    echo "[Release] app/build/outputs/apk/release/app-release.apk"
    ls -lh app/build/outputs/apk/release/app-release.apk | awk '{print "          大小:", $5}'
else
    echo "[Release] 未构建或未找到"
fi

echo ""
echo "=========================================="
echo "🐼 RootGuard - 熊猫主题 Root 管理器"
echo "=========================================="
echo ""