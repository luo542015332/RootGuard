@echo off
chcp 65001 >nul
echo ==========================================
echo RootGuard 实时日志监控
echo ==========================================
echo.
echo 按 Ctrl+C 停止监控
echo.

:: 获取应用 PID
for /f "tokens=*" %%a in ('..\platform-tools\adb.exe shell pidof com.rootguard.app') do set PID=%%a

if "%PID%"=="" (
    echo [错误] 应用未运行
    pause
    exit /b 1
)

echo 应用 PID: %PID%
echo.

:: 实时查看日志
..\platform-tools\adb.exe logcat --pid=%PID%
