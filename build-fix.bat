@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set PATH=%JAVA_HOME%\bin;%PATH%

echo ==========================================
echo RootGuard APK Builder (Fixed)
echo ==========================================
echo.

:: 创建必要的目录
set GRADLE_HOME=C:\Users\Administrator\.gradle\wrapper\dists\gradle-8.2-bin\bbg7u40eoinfdyxsxr3z4i7ta
if not exist "%GRADLE_HOME%" mkdir "%GRADLE_HOME%" 2>nul

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo Building APK...
echo.
call gradlew.bat assembleDebug --no-daemon --stacktrace 2>&1

if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo.
    echo [SUCCESS] APK built!
    copy /Y "app\build\outputs\apk\debug\app-debug.apk" "C:\Users\Administrator\Desktop\RootGuard.apk" >nul
    dir "C:\Users\Administrator\Desktop\RootGuard.apk"
) else (
    echo [FAILED] Build did not complete
)
pause