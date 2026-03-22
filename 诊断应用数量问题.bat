@echo off
REM ========================================
REM PandaSU 应用数量诊断工具
REM 用途：诊断用户应用和隔离数显示不对的问题
REM ========================================

echo ========================================
echo   PandaSU 应用数量诊断工具
echo ========================================
echo.

echo [1/5] 检查设备连接...
adb devices
echo.

echo [2/5] 提取 PandaSU 应用日志（包含应用数量统计）...
if not exist "logs\PandaSU" mkdir "logs\PandaSU"

adb logcat -d | findstr /C:"PandaSU" /C:"PackageManager returned" /C:"Added.*apps" /C:"Failed to.*app" /C:"User app:" > logs\PandaSU\app_count_diagnosis.log
echo [成功] 应用数量诊断日志已保存到 logs\PandaSU\app_count_diagnosis.log

echo.
echo [3/5] 提取应用列表获取相关日志...
adb logcat -d | findstr /i "getappswithrootstatus\|allinstalledapps\|package.*info" > logs\PandaSU\app_fetch_diagnosis.log
echo [成功] 应用获取日志已保存到 logs\PandaSU\app_fetch_diagnosis.log

echo.
echo [4/5] 检查应用权限和图标加载错误...
adb logcat -d | findstr /i "Failed to load icon\|Failed to get app name\|ClassNotFoundException.*app" > logs\PandaSU\app_errors_diagnosis.log
echo [成功] 应用错误日志已保存到 logs\PandaSU\app_errors_diagnosis.log

echo.
echo [5/5] 提取完整的 PandaSU 日志...
adb logcat -d -v time | findstr "PandaSU" > logs\PandaSU\pandasu_full_timed.log
echo [成功] 完整日志已保存到 logs\PandaSU\pandasu_full_timed.log

echo.
echo ========================================
echo   诊断完成！
echo ========================================
echo.
echo 日志文件位置: logs\PandaSU\
echo.
echo 已提取的文件:
dir /b logs\PandaSU\*diagnosis*.log
echo.

echo ========================================
echo   关键日志摘要
echo ========================================
echo.
echo [应用数量统计]
findstr /C:"PackageManager returned" /C:"Added.*apps" logs\PandaSU\app_count_diagnosis.log
echo.
echo [前10个用户应用]
findstr "User app:" logs\PandaSU\app_count_diagnosis.log
echo.
echo [应用加载错误]
findstr /C:"Failed to load icon" /C:"Failed to get app name" /C:"Failed to process app" logs\PandaSU\app_errors_diagnosis.log
echo.

echo ========================================
echo   建议的后续步骤
echo ========================================
echo.
echo 1. 查看 app_count_diagnosis.log 了解实际获取的应用数量
echo 2. 查看 app_errors_diagnosis.log 了解是否有应用加载错误
echo 3. 查看 app_fetch_diagnosis.log 了解应用获取过程
echo 4. 如果应用数量少于预期，检查是否有很多应用加载失败
echo 5. 如果图标加载错误很多，可能是系统问题或权限问题
echo.
pause
