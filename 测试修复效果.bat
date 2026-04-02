@echo off
chcp 65001 >nul
echo ============================================
echo PandaSU v3.0.1 修复测试脚本
echo ============================================
echo.

echo 1. 检查设备连接状态...
adb devices
echo.

echo 2. 检查 PandaSU 安装状态...
adb shell pm list packages | findstr rootguard
echo.

echo 3. 检查应用版本信息...
adb shell dumpsys package com.rootguard.app | findstr "versionName"
echo.

echo 4. 检查应用运行状态...
adb shell ps | findstr com.rootguard.app
echo.

echo 5. 测试 Root 权限检测（从应用获取日志）...
echo 正在启动应用并获取日志...
timeout /t 3 /nobreak >nul
adb shell am start -n com.rootguard.app/.MainActivity
echo 等待5秒让应用初始化...
timeout /t 5 /nobreak >nul
echo.

echo 6. 获取应用日志...
adb logcat -d | findstr /C:"PandaSU" /C:"RootGuard" /C:"RootHider" /C:"RootEnvironmentDetector" | tail -20 > app_log.txt
if exist app_log.txt (
    echo 最近20条相关日志：
    type app_log.txt
) else (
    echo 未找到相关日志
)
echo.

echo 7. 手动测试 SQLite3 和 mount 命令修复...
echo a) 检查设备上 sqlite3 命令：
adb shell "which sqlite3"
echo.

echo b) 检查设备上 mount 命令：
adb shell "which mount"
echo.

echo c) 检查 Magisk 命令：
adb shell "which magisk"
echo.

echo ============================================
echo 测试完成！
echo 请检查以上输出，特别是：
echo 1. 应用是否正常运行 (PID 不为空)
echo 2. 是否有错误日志
echo 3. SQLite3 和 mount 命令是否可用
echo ============================================
echo 按任意键退出...
pause >nul