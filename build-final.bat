@echo off
chcp 65001 >nul
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set PATH=%JAVA_HOME%\bin;%PATH%

echo ==========================================
echo RootGuard APK Builder
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo Building APK (please wait)...
echo.
call gradlew.bat assembleDebug --no-daemon

echo.
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [SUCCESS] APK built!
    copy /Y "app\build\outputs\apk\debug\app-debug.apk" "C:\Users\Administrator\Desktop\RootGuard.apk" >nul 2>nul
    dir "C:\Users\Administrator\Desktop\RootGuard.apk"
    echo.
    echo APK is on your Desktop: RootGuard.apk
) else (
    echo [FAILED] Check errors above
)
pause