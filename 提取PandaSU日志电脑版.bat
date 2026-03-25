@echo off
chcp 65001 >nul
echo ========================================
echo   PandaSU 模块日志提取 (电脑版)
echo ========================================
echo.

:: 设置 ADB 路径
set ADB="c:\Users\Administrator\WorkBuddy\20260323124426\platform-tools\adb.exe"

:: 检查设备
echo [1] 检查设备连接...
%ADB% devices
for /f "skip=1 tokens=1" %%a in ('%ADB% devices^|findstr /i "device"') do set DEVICE=%%a
if not defined DEVICE (
    echo.
    echo [错误] 未检测到设备！
    echo 请确保手机已开启 USB 调试并连接电脑
    pause
    exit /b 1
)
echo [OK] 设备已连接
echo.

:: 模块状态
echo [2] 检查模块状态...
%ADB% shell "if [ -f '/data/adb/modules/PandaSU-System-Helper/zygisk/arm64-v8a/libpanda.so' ]; then echo '模块已安装'; ls -la /data/adb/modules/PandaSU-System-Helper/zygisk/arm64-v8a/libpanda.so; else echo '模块未安装'; fi"
echo.

:: ZygiskNext
echo [3] 检查 ZygiskNext...
%ADB% shell "if [ -f '/data/adb/modules/zygisksu/lib64/libzygisk.so' ]; then echo 'ZygiskNext 已安装'; else echo 'ZygiskNext 未安装'; fi"
echo.

:: 系统属性
echo [4] 系统属性...
%ADB% shell "echo ro.debuggable=$(getprop ro.debuggable)"
%ADB% shell "echo ro.secure=$(getprop ro.secure)"
%ADB% shell "echo ro.build.tags=$(getprop ro.build.tags)"
echo.

:: Logcat 日志
echo [5] 提取 Logcat 日志...
echo.
echo === Logcat 中的 PandaSU 日志 ===
%ADB% logcat -d -t 500 | findstr /i "panda zygisk PandaSU"
echo.

echo === 最近 20 条相关日志 ===
%ADB% logcat -d | findstr /i "panda" | tail -20
echo.

:: dmesg
echo [6] 检查 dmesg...
%ADB% shell "dmesg | grep -i panda | tail -20"
echo.

echo ========================================
echo   提取完成
echo ========================================
pause