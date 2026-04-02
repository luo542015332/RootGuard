@echo off
echo PandaSU v3.0.1 安装验证
echo ==========================
echo.

echo 1. 验证APK文件存在...
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo   找到 APK: app\build\outputs\apk\debug\app-debug.apk
    for %%F in ("app\build\outputs\apk\debug\app-debug.apk") do echo   文件大小: %%~zF 字节
) else (
    echo   错误: 未找到 APK 文件
)
echo.

echo 2. 验证ADB设备连接...
adb devices > adb_devices.txt
findstr "device" adb_devices.txt >nul
if errorlevel 1 (
    echo   警告: 没有设备连接
    echo   请确保设备已通过USB连接并启用USB调试
) else (
    echo   设备已连接
    type adb_devices.txt | findstr "device"
)
echo.

echo 3. 验证应用包已安装...
adb shell pm list packages | findstr rootguard > installed_pkg.txt
if errorlevel 1 (
    echo   警告: 未检测到 PandaSU 已安装
) else (
    echo   PandaSU 已安装
    type installed_pkg.txt
)
echo.

echo 4. 验证应用版本...
adb shell dumpsys package com.rootguard.app | findstr "versionName" > version.txt
if exist version.txt (
    echo   安装版本:
    type version.txt
) else (
    echo   无法获取版本信息
)
echo.

echo 5. 清理临时文件...
del adb_devices.txt installed_pkg.txt version.txt 2>nul
echo.

echo 安装验证完成！
echo 如果看到任何警告，请检查设备连接状态。
pause