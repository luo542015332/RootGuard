@echo off
REM ========================================
REM KernelSU 日志提取脚本
REM 用途：从已 Root 的设备提取 KernelSU 日志
REM ========================================

echo ========================================
echo   KernelSU 日志提取工具
echo ========================================
echo.

echo [1/4] 检查设备连接...
adb devices
echo.

echo [2/4] 检查 KernelSU 是否安装...
adb shell su -c "which ksud" >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到 KernelSU (ksud 命令不存在)
    echo.
    echo 可能的原因:
    echo   - 设备未安装 KernelSU
    echo   - 设备未授予 adb root 权限
    echo   - KernelSU 版本不支持 ksud 命令
    pause
    exit /b 1
)
echo [成功] KernelSU 已安装
echo.

echo [3/4] 提取 KernelSU 日志...

REM 检查 KernelSU 日志目录是否存在
adb shell su -c "test -d /data/adb/ksu/log && echo 'exists' || echo 'not_exists'" > temp_ksu_dir.txt
set /p KSU_DIR_EXISTS=<temp_ksu_dir.txt
del temp_ksu_dir.txt

if "%KSU_DIR_EXISTS%"=="exists" (
    echo.
    echo [方法1] 从 /data/adb/ksu/log 提取日志文件...

    REM 列出日志文件
    echo [信息] 可用的日志文件:
    adb shell su -c "ls -lh /data/adb/ksu/log"

    REM 创建日志目录
    if not exist "logs\KernelSU" mkdir "logs\KernelSU"

    REM 提取所有日志文件
    echo.
    echo [信息] 提取日志文件到 logs\KernelSU\ ...
    adb shell su -c "cp -r /data/adb/ksu/log/* /data/local/tmp/ksu_logs_copy/"
    adb pull /data/local/tmp/ksu_logs_copy/ "logs\KernelSU\"
    adb shell su -c "rm -rf /data/local/tmp/ksu_logs_copy/"

    echo.
    echo [成功] 日志已提取到 logs\KernelSU\ 目录
) else (
    echo [信息] /data/adb/ksu/log 目录不存在，尝试其他方法...
    echo.
)

REM 方法2：使用 ksu version 命令获取版本信息
echo.
echo [方法2] 获取 KernelSU 版本信息...
adb shell su -c "ksu version" > logs\KernelSU\version.txt 2>&1
echo [成功] 版本信息已保存到 logs\KernelSU\version.txt
type logs\KernelSU\version.txt

REM 方法3：获取 KernelSU 模块列表
echo.
echo [方法3] 获取已安装的 KernelSU 模块...
adb shell su -c "ls -1 /data/adb/modules" > logs\KernelSU\modules_list.txt 2>&1
echo [成功] 模块列表已保存到 logs\KernelSU\modules_list.txt
type logs\KernelSU\modules_list.txt

REM 方法4：获取模块详细信息
if exist logs\KernelSU\modules_list.txt (
    echo.
    echo [方法4] 获取每个模块的详细信息...
    for /f "tokens=*" %%m in (logs\KernelSU\modules_list.txt) do (
        echo 正在提取模块: %%m
        adb shell su -c "cat /data/adb/modules/%%m/module.prop" > logs\KernelSU\module_%%m.txt 2>&1
    )
    echo [成功] 模块详细信息已保存
)

REM 方法5：从 logcat 获取 KernelSU 相关日志
echo.
echo [方法5] 从 logcat 提取 KernelSU 相关日志...
adb logcat -d -s "KernelSU:*" "ksud:*" "ksumod:*" > logs\KernelSU\logcat_ksu.log 2>&1
echo [成功] logcat 日志已保存到 logs\KernelSU\logcat_ksu.log

REM 方法6：获取系统日志（包含 KernelSU 相关）
echo.
echo [方法6] 获取系统日志（KernelSU 相关）...
adb logcat -d -v time | findstr /i "ksu kernelsu" > logs\KernelSU\system_ksu.log 2>&1
echo [成功] 系统 KernelSU 日志已保存到 logs\KernelSU\system_ksu.log

echo.
echo ========================================
echo   提取完成！
echo ========================================
echo.
echo 日志文件位置: logs\KernelSU\
echo.
echo 已提取的文件:
dir /b logs\KernelSU\
echo.
pause
