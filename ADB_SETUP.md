# ADB 快速安装指南

## 📥 下载 ADB

### Windows（推荐）

**方式一：使用 Chocolatey（最快）**
```powershell
# 以管理员身份运行 PowerShell
choco install adb
```

**方式二：使用 Scoop**
```powershell
scoop install adb
```

**方式三：手动下载**
1. 访问：https://developer.android.com/studio/releases/platform-tools
2. 下载 `platform-tools-windows-xxxxxxxx.zip`
3. 解压到 `C:\platform-tools`
4. 添加环境变量：
   ```powershell
   [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\platform-tools", "User")
   ```

### Mac

```bash
brew install android-platform-tools
```

### Linux

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install android-tools-adb

# Fedora
sudo dnf install android-tools
```

---

## 🔧 验证安装

```bash
adb version
```

应该输出：
```
Android Debug Bridge version 1.0.41
Version xx.x.x-xxxxxxx
Installed as C:\platform-tools\adb.exe
```

---

## 📱 连接手机并安装

### 步骤 1：开启 USB 调试

1. 设置 → 关于手机 → 连续点击「版本号」7 次
2. 返回 → 系统 → 开发者选项 → 开启「USB 调试」

### 步骤 2：连接手机

1. 用 USB 线连接手机和电脑
2. 手机上选择「文件传输」或「传输文件」
3. 允许 USB 调试授权（手机上会弹出提示）

### 步骤 3：检查连接

```bash
adb devices
```

应该显示：
```
List of devices attached
ABC123DEF456    device
```

### 步骤 4：安装 APK

```bash
# 进入 RootGuard 目录
cd RootGuard

# 安装 Debug APK
adb install app/build/outputs/apk/debug/app-debug.apk

# 如果已安装，覆盖安装
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

### 步骤 5：启动应用

```bash
adb shell am start -n com.rootguard.app/.MainActivity
```

---

## ⚡ 一键安装脚本

创建 `quick-install.bat`：

```batch
@echo off
echo ==========================================
echo RootGuard 快速安装工具
echo ==========================================
echo.

:: 检查 ADB
adb version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未找到 ADB，请先安装
    echo.
    echo 安装方法：
    echo 1. choco install adb
    echo 2. 或访问 https://developer.android.com/studio/releases/platform-tools
    pause
    exit /b 1
)

echo [✓] ADB 已安装
echo.

:: 检查设备
echo [..] 检查设备连接...
adb devices | findstr "device$" >nul
if errorlevel 1 (
    echo [错误] 未找到设备
    echo.
    echo 请检查：
    echo 1. USB 线是否连接
    echo 2. 是否开启 USB 调试
    echo 3. 是否允许调试授权
    pause
    exit /b 1
)

echo [✓] 设备已连接
echo.

:: 安装 APK
echo [..] 安装 RootGuard...
adb install -r app/build/outputs/apk/debug/app-debug.apk

if errorlevel 1 (
    echo [错误] 安装失败
    pause
    exit /b 1
)

echo [✓] 安装成功！
echo.

:: 启动应用
echo [..] 启动应用...
adb shell am start -n com.rootguard.app/.MainActivity

echo [✓] 完成！
echo ==========================================
pause
```

---

## 🎯 最快安装流程

**如果你已经有 ADB：**

```bash
# 1. 连接手机（开启 USB 调试）
# 2. 运行以下命令：

cd RootGuard
adb install -r app/build/outputs/apk/debug/app-debug.apk
adb shell am start -n com.rootguard.app/.MainActivity
```

**完成！** 🎉

---

## ❓ 常见问题

### Q: 提示 "device unauthorized"
**A:** 手机上会弹出「允许 USB 调试吗？」，点击「允许」

### Q: 提示 "INSTALL_FAILED_ALREADY_EXISTS"
**A:** 使用 `-r` 参数覆盖安装：
```bash
adb install -r app-debug.apk
```

### Q: 提示 "adb 不是内部或外部命令"
**A:** ADB 未添加到 PATH，使用完整路径：
```bash
C:\platform-tools\adb.exe install app-debug.apk
```

---

## 📞 需要帮助？

如果安装遇到问题：
1. 检查 ADB 版本：`adb version`
2. 检查设备连接：`adb devices -l`
3. 查看详细日志：`adb logcat | findstr RootGuard`
