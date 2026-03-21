#!/bin/bash

# RootGuard APK 安装工具

APK_PATH="${1:-app/build/outputs/apk/debug/app-debug.apk}"

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}==========================================${NC}"
echo -e "${CYAN}    RootGuard APK 安装工具${NC}"
echo -e "${CYAN}==========================================${NC}"
echo ""

# 检查 ADB
if ! command -v adb &> /dev/null; then
    echo -e "${RED}[❌ 错误] 未找到 ADB${NC}"
    echo ""
    echo "请安装 ADB 工具："
    echo "  Mac: brew install android-platform-tools"
    echo "  Ubuntu: sudo apt install android-tools-adb"
    echo "  Fedora: sudo dnf install android-tools"
    exit 1
fi

echo -e "${GREEN}[✓] ADB 检测通过${NC}"
echo ""

# 检查 APK 文件
if [ ! -f "$APK_PATH" ]; then
    echo -e "${RED}[❌ 错误] 未找到 APK 文件: $APK_PATH${NC}"
    echo ""
    echo "请先构建 APK 或指定正确的路径"
    echo ""
    echo "示例:"
    echo "  ./install.sh"
    echo "  ./install.sh /path/to/app-debug.apk"
    exit 1
fi

echo -e "${GREEN}[✓] APK 文件存在${NC}"
echo -e "    路径: $APK_PATH"
echo ""

# 检查设备
echo -e "${YELLOW}[...] 检查设备连接...${NC}"
devices=$(adb devices | grep -c "device$")

if [ "$devices" -eq 0 ]; then
    echo -e "${RED}[❌ 错误] 未找到连接的设备${NC}"
    echo ""
    echo "请检查："
    echo "  1. USB 线是否连接"
    echo "  2. 是否开启 USB 调试（设置 → 开发者选项 → USB 调试）"
    echo "  3. 是否允许调试授权（手机上会弹出提示）"
    echo ""
    echo "如果首次连接，请在手机上允许 USB 调试"
    exit 1
fi

echo -e "${GREEN}[✓] 找到 $devices 个设备${NC}"
echo ""

# 获取设备信息
echo -e "${YELLOW}[...] 获取设备信息...${NC}"
device_info=$(adb shell getprop ro.product.model)
android_version=$(adb shell getprop ro.build.version.release)
device_info=$(echo "$device_info" | tr -d '\r')
android_version=$(echo "$android_version" | tr -d '\r')
echo -e "    设备: $device_info"
echo -e "    Android: $android_version"
echo ""

# 检查是否已安装
echo -e "${YELLOW}[...] 检查应用状态...${NC}"
if adb shell pm list packages 2>/dev/null | grep -q "com.rootguard.app"; then
    echo -e "${YELLOW}[!] 应用已安装，将覆盖安装${NC}"
    INSTALL_ARGS="-r"
else
    echo -e "${GREEN}[✓] 新安装${NC}"
    INSTALL_ARGS=""
fi

echo ""

# 安装 APK
echo -e "${CYAN}==========================================${NC}"
echo -e "${YELLOW}[...] 正在安装 APK...${NC}"
echo -e "${CYAN}==========================================${NC}"
echo ""

if adb install $INSTALL_ARGS "$APK_PATH" 2>&1; then
    echo ""
    echo -e "${GREEN}[✓] 安装成功！${NC}"
    echo ""
    
    # 显示应用信息
    echo -e "应用信息:${CYAN}"
    echo -e "  包名: com.rootguard.app"
    echo -e "  名称: RootGuard"
    echo -e "${NC}"
    
    # 启动应用
    read -p "是否立即启动应用? (Y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Nn]$ ]]; then
        echo ""
        echo -e "${YELLOW}[...] 启动应用...${NC}"
        adb shell am start -n com.rootguard.app/.MainActivity 2>/dev/null
        echo -e "${GREEN}[✓] 应用已启动${NC}"
    fi
else
    echo ""
    echo -e "${RED}[❌ 安装失败]${NC}"
    echo ""
    echo -e "可能的解决方案：${YELLOW}"
    echo "  1. 检查 APK 是否完整（文件大小是否正常）"
    echo "  2. 卸载旧版本: adb uninstall com.rootguard.app"
    echo "  3. 检查设备存储空间是否充足"
    echo "  4. 检查设备是否已 Root（Magisk 是否安装）"
fi

echo ""
echo -e "${CYAN}==========================================${NC}"
echo -e "${CYAN}🐼 RootGuard - 熊猫主题 Root 管理器${NC}"
echo -e "${CYAN}==========================================${NC}"
echo ""