@echo off
REM ========================================
REM PandaSU 版本检查脚本
REM ========================================

echo ========================================
echo   PandaSU 版本检查工具
echo ========================================
echo.

echo 检查 PandaSU 应用版本...
adb shell dumpsys package com.rootguard.app | findstr "versionName\|versionCode"
echo.

echo 检查应用安装路径...
adb shell pm path com.rootguard.app
echo.

echo 检查应用信息...
adb shell pm list packages -f | findstr "com.rootguard.app"
echo.

pause
