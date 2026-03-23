@echo off
cd /d %~dp0
echo Testing PandaSU v1.4.43 with Root Shell...
echo.

echo 1. Checking if device is connected...
.\platform-tools\adb.exe devices
echo.

echo 2. Checking PandaSU logs...
.\platform-tools\adb.exe logcat -d -s PandaSU:D > pandasu_log.txt
type pandasu_log.txt
echo.

echo 3. Testing Root Shell command...
.\platform-tools\adb.exe shell "su -c 'pm list packages -a'" > packages_output.txt
echo Total packages found:
.\platform-tools\adb.exe shell "su -c 'pm list packages -a' | wc -l"
echo.

echo 4. Checking key apps...
.\platform-tools\adb.exe shell "su -c 'pm list packages -a'" | findstr /C:"package:com.tencent.mm" /C:"package:com.tencent.mobileqq" /C:"package:com.tencent.tmgp.sgame"
echo.

echo Test completed!
pause
