@echo off
echo ================================================
echo PandaSU 一键隔离功能测试脚本
echo 创建时间: 2026-03-30
echo 版本: v3.0.2
echo ================================================
echo.

echo [1/5] 检查ADB设备连接...
adb devices | findstr "695b931f"
if %ERRORLEVEL% NEQ 0 (
    echo ❌ 设备未连接，请检查USB调试
    pause
    exit /b 1
)
echo ✅ 设备已连接

echo.
echo [2/5] 检查PandaSU应用状态...
adb -s 695b931f shell dumpsys package com.rootguard.app | findstr "versionName"
echo ✅ 应用版本已确认

echo.
echo [3/5] 启动PandaSU应用...
adb -s 695b931f shell am start -n com.rootguard.app/.MainActivity
echo ✅ 应用已启动

echo.
echo [4/5] 等待应用加载（5秒）...
timeout /t 5 >nul

echo.
echo [5/5] 提取PandaSU日志查看一键隔离按钮状态...
adb -s 695b931f logcat -d | findstr /C:"DetectorScanCard" /C:"IsolationScreen" /C:"autoIsolate" /C:"OneClick" | head -10

echo.
echo ================================================
echo 测试完成！
echo 请打开PandaSU应用：
echo 1. 进入"Root隔离"页面
echo 2. 检查是否看到"📋 一键隔离所有用户应用"按钮
echo 3. 点击按钮测试功能
echo ================================================
echo.

echo 按任意键启动ADB日志监控（按Ctrl+C退出）...
pause >nul

echo.
echo [监控模式] 开始实时监控PandaSU日志...
echo 按Ctrl+C退出监控
echo.
adb -s 695b931f logcat | findstr /C:"IsolationScreen" /C:"一键隔离" /C:"startOneClickIsolation" /C:"applyIsolation"