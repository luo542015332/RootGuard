@echo off
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set PATH=%JAVA_HOME%\bin;%PATH%

echo ==========================================
echo Building RootGuard APK...
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo JAVA_HOME: %JAVA_HOME%
echo.

java -version
echo.

echo Starting build...
call gradlew.bat assembleDebug

echo.
echo ==========================================
echo Build completed!
echo ==========================================

dir /b app\build\outputs\apk\debug\*.apk 2>nul
if exist app\build\outputs\apk\debug\app-debug.apk (
    echo.
    echo APK location: app\build\outputs\apk\debug\app-debug.apk
    copy /Y app\build\outputs\apk\debug\app-debug.apk C:\Users\Administrator\Desktop\RootGuard.apk
    echo.
    echo APK copied to Desktop: RootGuard.apk
)

pause