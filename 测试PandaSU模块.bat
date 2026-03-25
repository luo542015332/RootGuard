@echo off
chcp 65001 >nul
echo ========================================
echo   PandaSU-System-Helper v3 测试脚本
echo ========================================
echo.

:: 检查 ADB 连接
echo [1/6] 检查设备连接...
adb devices
for /f "skip=1 tokens=1" %%a in ('adb devices^|findstr /i "device"') do set DEVICE=%%a
if not defined DEVICE (
    echo.
    echo [错误] 未检测到设备！
    echo 请确保：
    echo   1. 手机已开启 USB 调试
    echo   2. 用 USB 连接电脑
    echo   3. 在手机上点击"允许 USB 调试"
    echo.
    pause
    exit /b 1
)
echo [OK] 找到设备: %DEVICE%
echo.

:: 提取模块到手机
echo [2/6] 推送模块到手机...
adb push "C:\Users\Administrator\Desktop\PandaSU-System-Helper-v3.zip" /sdcard/Download/
if %errorlevel% neq 0 (
    echo [错误] 推送失败！
    pause
    exit /b 1
)
echo [OK] 模块已推送
echo.

:: 提取当前日志
echo [3/6] 清空日志缓存...
adb logcat -c
echo [OK] 日志已清空
echo.

:: 提示用户安装模块
echo [4/6] 请手动安装模块...
echo.
echo   步骤：
echo   1. 打开 KernelSU 管理器
echo   2. 点击右上角 - 从本地安装
echo   3. 选择 /sdcard/Download/PandaSU-System-Helper-v3.zip
echo   4. 安装后重启手机
echo.
set /p CONFIRM="按回车键继续测试..."
echo.

:: 等待设备重启
echo [5/6] 检查模块状态...
adb wait-for-device
adb shell "ls -la /data/adb/modules/PandaSU-System-Helper/"
echo.

:: 提取日志
echo [6/6] 提取日志...
echo.
echo === PandaSU 相关日志 ===
adb logcat -d | findstr /i "PandaSU panda zygisk"
echo.
echo === 检测结果 ===
adb shell "getprop ro.debuggable"
adb shell "getprop ro.secure"
adb shell "getprop ro.build.tags"
echo.

echo ========================================
echo   测试完成
echo ========================================
pause
