@echo off
chcp 65001 >nul
echo ========================================
echo   PandaSU模块卸载脚本
echo ========================================
echo.

echo 正在卸载模块...
adb shell "su -c magisk --remove-module zygisk_pandasu" 2>nul

if %errorlevel% equ 0 (
    echo ✓ 模块卸载命令已发送
    echo.
    echo 请在Magisk APP中确认卸载完成，然后重启设备
) else (
    echo ✗ 卸载失败，请确保：
    echo   1. 设备已root
    echo   2. Magisk已安装
    echo   3. ADB调试已开启
)

echo.
pause
