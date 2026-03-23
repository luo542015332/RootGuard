@echo off
chcp 65001 >nul
echo ==========================================
echo    应用列表测试工具 - 构建脚本
echo ==========================================
echo.

cd /d "%~dp0"

echo 正在构建独立测试应用...
echo.

call ..\gradlew.bat assembleDebug

if errorlevel 1 (
    echo.
    echo [❌ 错误] 构建失败
    pause
    exit /b 1
)

echo.
echo [✓] 构建成功！
echo.
echo APK 文件位置：
echo   app\build\outputs\apk\debug\app-debug.apk
echo.

if exist "app\build\outputs\apk\debug\app-debug.apk" (
    copy "app\build\outputs\apk\debug\app-debug.apk" "应用列表测试工具.apk"
    echo 已复制到: 应用列表测试工具.apk
    echo.
)

pause
