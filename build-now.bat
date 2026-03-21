@echo off
chcp 65001 >nul
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-25.0.2.10-hotspot
set PATH=%JAVA_HOME%\bin;%PATH%

echo ==========================================
echo RootGuard APK Builder
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo [1/3] Checking Java...
java -version 2>&1 | findstr "version"
echo.

echo [2/3] Building APK (this may take a few minutes)...
echo.
call gradlew.bat assembleDebug --no-daemon

echo.
echo [3/3] Checking build result...
echo.

if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [SUCCESS] APK built successfully!
    echo.
    
    REM Copy to desktop
    copy /Y "app\build\outputs\apk\debug\app-debug.apk" "C:\Users\Administrator\Desktop\RootGuard.apk" >nul
    
    echo APK Location:
    echo   Project: app\build\outputs\apk\debug\app-debug.apk
    echo   Desktop: C:\Users\Administrator\Desktop\RootGuard.apk
    echo.
    
    REM Get file size
    for %%A in ("app\build\outputs\apk\debug\app-debug.apk") do echo Size: %%~zA bytes
) else (
    echo [FAILED] APK not found. Build may have failed.
    echo Check the error messages above.
)

echo.
echo ==========================================
pause