@echo off
chcp 65001 >nul
set LOG_DIR=logs\应用列表验证
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"

echo ========================================
echo PandaSU 应用列表验证脚本
echo 时间: %date% %time%
echo ========================================
echo.

echo [1] 检查微信、QQ、英雄联盟是否安装
echo ========================================
adb shell su -c "pm list packages | grep -E '(com.tencent.mm|com.tencent.mobileqq|com.tencent.tmgp.sgame)'" > "%LOG_DIR%\关键应用包名.txt" 2>&1
type "%LOG_DIR%\关键应用包名.txt"
echo.

echo [2] 获取完整应用列表
echo ========================================
adb shell su -c "pm list packages" > "%LOG_DIR%\完整包名列表.txt" 2>&1
for /f %%i in ("%LOG_DIR%\完整包名列表.txt") do set COUNT=%%~zi
echo 应用列表文件大小: %COUNT%
echo.

echo [3] 统计应用数量
echo ========================================
adb shell su -c "pm list packages | wc -l" > "%LOG_DIR%\应用总数.txt" 2>&1
type "%LOG_DIR%\应用总数.txt"
echo.

echo [4] 检查微信的 ApplicationInfo
echo ========================================
adb shell su -c "pm path com.tencent.mm" > "%LOG_DIR%\微信路径.txt" 2>&1
type "%LOG_DIR%\微信路径.txt"
echo.

echo [5] 检查 QQ 的 ApplicationInfo
echo ========================================
adb shell su -c "pm path com.tencent.mobileqq" > "%LOG_DIR%\QQ路径.txt" 2>&1
type "%LOG_DIR%\QQ路径.txt"
echo.

echo [6] 检查英雄联盟的 ApplicationInfo
echo ========================================
adb shell su -c "pm path com.tencent.tmgp.sgame" > "%LOG_DIR%\英雄联盟路径.txt" 2>&1
type "%LOG_DIR%\英雄联盟路径.txt"
echo.

echo ========================================
echo 验证完成！日志保存在 %LOG_DIR%
echo ========================================
pause
