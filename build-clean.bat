@echo off
chcp 65001 >nul
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set PATH=%JAVA_HOME%\bin;%PATH%
set GRADLE_USER_HOME=C:\Users\Administrator\.gradle

echo ==========================================
echo RootGuard APK Builder
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo Cleaning Gradle cache...
del /f /q "%GRADLE_USER_HOME%\wrapper\dists\gradle-8.2-bin\*.lck" 2>nul

echo.
echo Building APK...
call gradlew.bat assembleDebug --no-daemon --refresh-dependencies

if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo.
    echo [SUCCESS] APK built!
    copy /Y "app\build\outputs\apk\debug\app-debug.apk" "C:\Users\Administrator\Desktop\RootGuard.apk" >nul
    echo APK copied to Desktop: RootGuard.apk
) else (
    echo [FAILED]
)

pause