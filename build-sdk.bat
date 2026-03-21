@echo off
chcp 65001 >nul
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set ANDROID_SDK_ROOT=C:\Users\Administrator\AppData\Local\Android\Sdk
set PATH=%JAVA_HOME%\bin;%ANDROID_SDK_ROOT%\platform-tools;%PATH%

echo ==========================================
echo RootGuard APK Builder
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo JAVA_HOME: %JAVA_HOME%
echo ANDROID_SDK_ROOT: %ANDROID_SDK_ROOT%
echo.

java -version 2>&1 | findstr "version"
echo.

echo Building APK...
"gradlew.bat" assembleDebug --no-daemon 2>&1

echo.
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [SUCCESS] APK built!
    copy /Y "app\build\outputs\apk\debug\app-debug.apk" "C:\Users\Administrator\Desktop\RootGuard.apk"
    echo APK is on Desktop: RootGuard.apk
) else (
    echo [FAILED]
)
pause