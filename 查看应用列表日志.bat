@echo off
echo 正在获取 PandaSU 日志...
echo.
echo ========== APP LIST SUMMARY ==========
.\platform-tools\adb.exe logcat -d | findstr "APP LIST SUMMARY"
echo.
echo ========== USER APPS LIST ==========
.\platform-tools\adb.exe logcat -d | findstr "User app:"
echo.
echo ========== TARGET APPS ==========
.\platform-tools\adb.exe logcat -d | findstr "TARGET APP"
pause
