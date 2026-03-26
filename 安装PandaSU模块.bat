@echo off
chcp 65001 >nul
echo ========================================
echo   PandaSU模块安装脚本
echo ========================================
echo.

set MODULE_ZIP=PandaSU-System-Helper-v2.3.0.zip
set DESKTOP_PATH=%USERPROFILE%\Desktop\%MODULE_ZIP%

echo 正在推送模块到设备...
if not exist "%DESKTOP_PATH%" (
    echo ✗ 未找到模块文件：%DESKTOP_PATH%
    echo 请先将 %MODULE_ZIP% 放到桌面
    pause
    exit /b 1
)

adb push "%DESKTOP_PATH%" /sdcard/PandaSU-System-Helper-v2.3.0.zip
if %errorlevel% neq 0 (
    echo ✗ 推送失败
    pause
    exit /b 1
)

echo.
echo 正在安装模块...
adb shell "su -c magisk --install-module /sdcard/PandaSU-System-Helper-v2.3.0.zip" 2>nul

if %errorlevel% equ 0 (
    echo ✓ 模块安装命令已发送
    echo.
    echo 请在Magisk APP中确认模块已启用，然后重启设备
) else (
    echo ✗ 安装失败，请确保：
    echo   1. 设备已root
    echo   2. Magisk已安装
    echo   3. ADB调试已开启
)

echo.
echo 正在清理临时文件...
adb shell "rm -f /sdcard/PandaSU-System-Helper-v2.3.0.zip" 2>nul

pause
