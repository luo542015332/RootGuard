@echo off
chcp 65001 >nul
echo ==========================================
echo RootGuard 日志提取工具
echo ==========================================
echo.

:: 检查 ADB
adb version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未找到 ADB，请先安装
    echo.
    echo 安装方法：
    echo 1. choco install adb
    echo 2.  scoop install adb
    echo 3.  手动下载：https://developer.android.com/studio/releases/platform-tools
    pause
    exit /b 1
)

echo [✓] ADB 已安装
echo.

:: 检查设备连接
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

:: 创建日志目录
set LOG_DIR=logs
if not exist %LOG_DIR% mkdir %LOG_DIR%

:: 设置日志文件名
set TIMESTAMP=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%
set LOG_FILE=%LOG_DIR%\rootguard_%TIMESTAMP%.log

echo [..] 正在提取日志...
echo.

:: 提取 RootGuard 应用日志
echo === RootGuard 应用日志 === > %LOG_FILE%
echo 提取时间: %date% %time% >> %LOG_FILE%
echo ========================================== >> %LOG_FILE%
echo. >> %LOG_FILE%

:: 方法1: 使用包名过滤（推荐）
echo --- 方法1: 包名过滤 --- >> %LOG_FILE%
adb shell pidof com.rootguard.app > temp_pid.txt
set /p PID=<temp_pid.txt
del temp_pid.txt

if "%PID%"=="" (
    echo [警告] 应用未运行，无法获取 PID >> %LOG_FILE%
) else (
    echo 应用 PID: %PID% >> %LOG_FILE%
    adb logcat -d --pid=%PID% >> %LOG_FILE% 2>&1
)

echo. >> %LOG_FILE%
echo --- 方法2: 关键字过滤 --- >> %LOG_FILE%
adb logcat -d | findstr "RootGuard" >> %LOG_FILE% 2>&1

echo. >> %LOG_FILE%
echo --- 方法3: 完整系统日志 --- >> %LOG_FILE%
adb logcat -d >> %LOG_FILE% 2>&1

echo. >> %LOG_FILE%
echo --- 设备信息 --- >> %LOG_FILE%
echo 设备型号: >> %LOG_FILE%
adb shell getprop ro.product.model >> %LOG_FILE% 2>&1
echo Android 版本: >> %LOG_FILE%
adb shell getprop ro.build.version.release >> %LOG_FILE% 2>&1
echo. >> %LOG_FILE%

echo [✓] 日志已保存到: %LOG_FILE%
echo.

:: 显示日志文件大小
for %%F in (%LOG_FILE%) do (
    echo 文件大小: %%~zF 字节
)

echo.
echo ==========================================
echo 日志提取完成！
echo ==========================================
echo.
echo 日志文件位置: %LOG_FILE%
echo.

:: 询问是否打开日志文件
set /p OPEN_LOG="是否打开日志文件? (y/n): "
if /i "%OPEN_LOG%"=="y" (
    start notepad %LOG_FILE%
)

pause
