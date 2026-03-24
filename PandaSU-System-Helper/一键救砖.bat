@echo off
echo ========================================
echo PandaSU System Helper - 一键救砖脚本
echo 用于解决卡开机问题
echo ========================================
echo.
echo [警告] 此脚本会禁用模块，解决卡开机问题
echo.
echo 使用方法：
echo 1. 手机进入Recovery模式
echo 2. 连接电脑
echo 3. 运行此脚本
echo.

choice /C YN /M "是否继续救砖"
if errorlevel 2 exit /b

:RETRY
echo.
echo [步骤1] 检查设备连接...
adb devices
echo.
echo [步骤2] 创建安全模式标志...
adb shell "mkdir -p /data/adb/pandasu && echo 1 > /data/adb/pandasu/safe_mode"
echo.
echo [步骤3] 重启手机...
adb reboot
echo.
echo ========================================
echo 救砖完成！
echo ========================================
echo.
echo 手机重启后：
echo - 模块功能将被完全禁用
echo - 可以正常开机进入系统
echo - 如需恢复模块功能，请删除 /data/adb/pandasu/safe_mode
echo.
echo 删除命令：adb shell "rm /data/adb/pandasu/safe_mode"
echo.
pause
