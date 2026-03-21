@echo off
chcp 65001 >nul
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set PATH=%JAVA_HOME%\bin;%PATH%
set GRADLE_USER_HOME=%TEMP%\gradle_cache

echo ==========================================
echo RootGuard APK Builder
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo Using temp gradle cache: %GRADLE_USER_HOME%
echo.

echo Building APK (downloading dependencies, please wait 2-5 minutes)...
echo.
call gradlew.bat assembleDebug --no-daemon

echo.
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [SUCCESS] APK built!
    echo.
    copy /Y "app\build\outputs\apk\debug\app-debug.apk" "C:\Users\Administrator\Desktop\RootGuard.apk"
    echo.
    echo APK is on your Desktop: RootGuard.apk
    echo.
    dir "C:\Users\Administrator\Desktop\RootGuard.apk"
) else (
    echo [FAILED] Check errors above
)
pause