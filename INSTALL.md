# RootGuard APK 安装指南

## 📱 安装前准备

### 1. 启用开发者选项

**Android 8.0+:**
1. 设置 → 关于手机
2. 连续点击「版本号」7 次
3. 返回设置 → 系统 → 开发者选项

### 2. 启用 USB 调试

1. 设置 → 系统 → 开发者选项
2. 开启「USB 调试」
3. 连接电脑时选择「文件传输」或「传输文件」

### 3. 安装 ADB 工具

**Windows:**
```powershell
# 使用 Chocolatey
choco install adb

# 或使用 Scoop
scoop install adb
```

**Mac:**
```bash
brew install android-platform-tools
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt install android-tools-adb

# Fedora
sudo dnf install android-tools
```

---

## 🔌 连接设备

### 检查设备连接

```bash
adb devices
```

输出示例：
```
List of devices attached
ABC123DEF456    device
```

如果显示 `unauthorized`，请在手机上允许 USB 调试。

---

## 📥 安装 APK

### 方式一：使用 ADB 命令

```bash
# 安装 Debug APK
adb install app/build/outputs/apk/debug/app-debug.apk

# 如果已安装，使用 -r 参数覆盖安装
adb install -r app/build/outputs/apk/debug/app-debug.apk

# 安装 Release APK
adb install app/build/outputs/apk/release/app-release.apk
```

### 方式二：使用安装脚本

**Windows:**
```powershell
# 运行安装脚本
.\install.ps1

# 或指定 APK 路径
.\install.ps1 -ApkPath "C:\path\to\app-debug.apk"
```

**Linux/Mac:**
```bash
# 运行安装脚本
chmod +x install.sh
./install.sh

# 或指定 APK 路径
./install.sh /path/to/app-debug.apk
```

### 方式三：手动安装

1. 将 APK 文件复制到手机存储
2. 在手机上使用文件管理器找到 APK
3. 点击安装
4. 允许「未知来源」安装（首次安装时）

---

## 🔧 常见问题

### 1. 安装失败：INSTALL_FAILED_ALREADY_EXISTS

**原因**: 应用已安装

**解决**:
```bash
# 先卸载旧版本
adb uninstall com.rootguard.app

# 然后重新安装
adb install app-debug.apk
```

### 2. 安装失败：INSTALL_FAILED_VERSION_DOWNGRADE

**原因**: 已安装版本比要安装的版本新

**解决**:
```bash
# 强制覆盖安装（保留数据）
adb install -r -d app-debug.apk
```

### 3. 安装失败：INSTALL_FAILED_INVALID_APK

**原因**: APK 文件损坏或不完整

**解决**:
- 重新下载/构建 APK
- 检查文件完整性

### 4. 设备未授权

**现象**: `adb devices` 显示 `unauthorized`

**解决**:
1. 断开 USB 连接
2. 在手机上：设置 → 开发者选项 → 撤销 USB 调试授权
3. 重新连接 USB
4. 在手机上允许调试

### 5. ADB 未找到设备

**现象**: `adb devices` 显示为空

**解决**:
1. 检查 USB 线是否正常
2. 更换 USB 端口
3. 安装设备驱动（Windows）
4. 检查是否开启 USB 调试

---

## 🚀 快速安装脚本

### Windows PowerShell 脚本 (install.ps1)

```powershell
param(
    [string]$ApkPath = "app/build/outputs/apk/debug/app-debug.apk"
)

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "    RootGuard APK 安装工具" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# 检查 ADB
$adb = Get-Command adb -ErrorAction SilentlyContinue
if (-not $adb) {
    Write-Host "[❌ 错误] 未找到 ADB" -ForegroundColor Red
    Write-Host ""
    Write-Host "请安装 ADB 工具："
    Write-Host "  1. 安装 Android Studio"
    Write-Host "  2. 或运行: choco install adb"
    exit 1
}

Write-Host "[✓] ADB 检测通过" -ForegroundColor Green
Write-Host ""

# 检查 APK 文件
if (-not (Test-Path $ApkPath)) {
    Write-Host "[❌ 错误] 未找到 APK 文件: $ApkPath" -ForegroundColor Red
    Write-Host ""
    Write-Host "请先构建 APK 或指定正确的路径"
    exit 1
}

Write-Host "[✓] APK 文件存在" -ForegroundColor Green
Write-Host "    路径: $ApkPath" -ForegroundColor Gray
Write-Host ""

# 检查设备
Write-Host "[...] 检查设备连接..." -ForegroundColor Yellow
$devices = adb devices | Select-String "device$"

if (-not $devices) {
    Write-Host "[❌ 错误] 未找到连接的设备" -ForegroundColor Red
    Write-Host ""
    Write-Host "请检查："
    Write-Host "  1. USB 线是否连接"
    Write-Host "  2. 是否开启 USB 调试"
    Write-Host "  3. 是否允许调试授权"
    exit 1
}

$deviceCount = ($devices -split "`n").Count
Write-Host "[✓] 找到 $deviceCount 个设备" -ForegroundColor Green
Write-Host ""

# 获取设备信息
Write-Host "[...] 获取设备信息..." -ForegroundColor Yellow
$deviceInfo = adb shell getprop ro.product.model
$androidVersion = adb shell getprop ro.build.version.release
Write-Host "    设备: $deviceInfo" -ForegroundColor Gray
Write-Host "    Android: $androidVersion" -ForegroundColor Gray
Write-Host ""

# 检查是否已安装
Write-Host "[...] 检查应用状态..." -ForegroundColor Yellow
$packageInfo = adb shell pm list packages | Select-String "com.rootguard.app"

if ($packageInfo) {
    Write-Host "[!] 应用已安装，将覆盖安装" -ForegroundColor Yellow
    $installArgs = "-r"
} else {
    Write-Host "[✓] 新安装" -ForegroundColor Green
    $installArgs = ""
}

Write-Host ""

# 安装 APK
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "[...] 正在安装 APK..." -ForegroundColor Yellow
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

$installOutput = adb install $installArgs "$ApkPath" 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "[✓] 安装成功！" -ForegroundColor Green
    Write-Host ""
    
    # 启动应用
    $startApp = Read-Host "是否立即启动应用? (Y/n)"
    if ($startApp -ne 'n') {
        Write-Host ""
        Write-Host "[...] 启动应用..." -ForegroundColor Yellow
        adb shell am start -n com.rootguard.app/.MainActivity
        Write-Host "[✓] 应用已启动" -ForegroundColor Green
    }
} else {
    Write-Host ""
    Write-Host "[❌ 安装失败]" -ForegroundColor Red
    Write-Host ""
    Write-Host "错误信息:" -ForegroundColor Red
    Write-Host $installOutput -ForegroundColor Red
    Write-Host ""
    Write-Host "可能的解决方案："
    Write-Host "  1. 检查 APK 是否完整"
    Write-Host "  2. 卸载旧版本后重试"
    Write-Host "  3. 检查设备存储空间"
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "🐼 RootGuard - 熊猫主题 Root 管理器" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

pause
```

### Linux/Mac Bash 脚本 (install.sh)

```bash
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
    exit 1
fi

echo -e "${GREEN}[✓] ADB 检测通过${NC}"
echo ""

# 检查 APK 文件
if [ ! -f "$APK_PATH" ]; then
    echo -e "${RED}[❌ 错误] 未找到 APK 文件: $APK_PATH${NC}"
    echo ""
    echo "请先构建 APK 或指定正确的路径"
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
    echo "  2. 是否开启 USB 调试"
    echo "  3. 是否允许调试授权"
    exit 1
fi

echo -e "${GREEN}[✓] 找到 $devices 个设备${NC}"
echo ""

# 获取设备信息
echo -e "${YELLOW}[...] 获取设备信息...${NC}"
device_info=$(adb shell getprop ro.product.model)
android_version=$(adb shell getprop ro.build.version.release)
echo "    设备: $device_info"
echo "    Android: $android_version"
echo ""

# 检查是否已安装
echo -e "${YELLOW}[...] 检查应用状态...${NC}"
if adb shell pm list packages | grep -q "com.rootguard.app"; then
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

if adb install $INSTALL_ARGS "$APK_PATH"; then
    echo ""
    echo -e "${GREEN}[✓] 安装成功！${NC}"
    echo ""
    
    # 启动应用
    read -p "是否立即启动应用? (Y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Nn]$ ]]; then
        echo ""
        echo -e "${YELLOW}[...] 启动应用...${NC}"
        adb shell am start -n com.rootguard.app/.MainActivity
        echo -e "${GREEN}[✓] 应用已启动${NC}"
    fi
else
    echo ""
    echo -e "${RED}[❌ 安装失败]${NC}"
    echo ""
    echo "可能的解决方案："
    echo "  1. 检查 APK 是否完整"
    echo "  2. 卸载旧版本后重试"
    echo "  3. 检查设备存储空间"
fi

echo ""
echo -e "${CYAN}==========================================${NC}"
echo -e "${CYAN}🐼 RootGuard - 熊猫主题 Root 管理器${NC}"
echo -e "${CYAN}==========================================${NC}"
echo ""
```

---

## 📋 安装后检查清单

- [ ] 应用图标显示正常
- [ ] 应用能正常打开
- [ ] 首页显示 Root 状态
- [ ] 能正常获取 Root 权限
- [ ] 模块管理功能正常
- [ ] 主题切换正常

---

## 🔧 卸载应用

```bash
# 使用 ADB 卸载
adb uninstall com.rootguard.app

# 保留数据卸载（可重新安装恢复）
adb shell pm uninstall -k com.rootguard.app
```

---

## 📞 获取帮助

如果安装遇到问题：

1. 检查 ADB 版本：`adb version`
2. 检查设备连接：`adb devices -l`
3. 查看详细日志：`adb logcat | grep RootGuard`
4. 提交 Issue 到项目仓库
