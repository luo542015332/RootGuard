@echo off
echo ============================================
echo PandaSU 日志提取与版本更新工具
echo ============================================
echo.

echo [1/4] 检查当前版本信息...
set "GRADLE_FILE=app\build.gradle"

for /f "tokens=2 delims= " %%a in ('findstr "versionCode" %GRADLE_FILE%') do set OLD_CODE=%%a
for /f "tokens=2 delims= " %%a in ('findstr "versionName" %GRADLE_FILE%') do set OLD_NAME=%%a

echo 当前版本: versionCode=%OLD_CODE%, versionName=%OLD_NAME%
echo.

echo [2/4] 更新版本号...
set /a NEW_CODE=%OLD_CODE% + 1
set "NEW_NAME=3.0.1"

echo 新版本: versionCode=%NEW_CODE%, versionName=%NEW_NAME%

powershell -Command "(Get-Content %GRADLE_FILE%) -replace 'versionCode %OLD_CODE%', 'versionCode %NEW_CODE%' | Set-Content %GRADLE_FILE%"
powershell -Command "(Get-Content %GRADLE_FILE%) -replace 'versionName %OLD_NAME%', 'versionName \"%NEW_NAME%\"' | Set-Content %GRADLE_FILE%"

echo 版本更新完成!
echo.

echo [3/4] 提取日志文件信息...
echo 日志文件统计: > 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt
echo =========================================== >> 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt
echo. >> 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt

echo 正在扫描日志文件...
for %%f in (*log*.txt) do (
    echo %%f >> 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt
    echo 大小: %%~zf 字节 >> 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt
    echo 修改时间: %%~tf >> 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt
    echo. >> 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt
)

echo [4/4] 提取关键日志内容...
echo 提取最近的错误日志... > 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
echo ============================================= >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
echo. >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt

if exist crash_logs.txt (
    echo === crash_logs.txt (前50行) === >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
    head -n 50 crash_logs.txt >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt 2>nul
    echo. >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
)

if exist build_error.txt (
    echo === build_error.txt (前30行) === >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
    head -n 30 build_error.txt >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt 2>nul
    echo. >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
)

if exist panda_logs.txt (
    echo === panda_logs.txt (前20行) === >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
    head -n 20 panda_logs.txt >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt 2>nul
    echo. >> 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt
)

echo ============================================
echo 操作完成!
echo.
echo 生成的文件:
echo 1. 日志统计_%date:~0,4%%date:~5,2%%date:~8,2%.txt - 日志文件统计信息
echo 2. 关键错误日志_%date:~0,4%%date:~5,2%%date:~8,2%.txt - 关键错误日志内容
echo 3. 提取日志_分析报告.md - 完整分析报告
echo.
echo 版本已更新: %OLD_NAME% -> %NEW_NAME%
echo ============================================
pause