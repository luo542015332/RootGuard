@echo off
chcp 65001 >nul
echo ========================================
echo   ADB 环境变量配置脚本
echo ========================================
echo.

set ADB_PATH=c:\Users\Administrator\WorkBuddy\20260323124426\platform-tools
set ADB_DIR=%ADB_PATH%

echo [1] 检查 ADB 是否存在...
if exist "%ADB_DIR%\adb.exe" (
    echo [OK] 找到 ADB: %ADB_DIR%\adb.exe
) else (
    echo [错误] 未找到 adb.exe
    echo 路径: %ADB_DIR%
    pause
    exit /b 1
)
echo.

echo [2] 添加到用户 PATH 环境变量...
setx PATH "%PATH%;%ADB_DIR%" >nul 2>&1
if %errorlevel% equ 0 (
    echo [OK] 已添加到用户 PATH
) else (
    echo [错误] 添加失败
    pause
    exit /b 1
)
echo.

echo [3] 验证配置...
echo.
echo 请新开一个命令行窗口测试，或运行：
echo   refreshenv
echo   adb version
echo.
echo 也可以直接用完整路径测试：
echo   %ADB_DIR%\adb.exe version
echo.

:: 直接测试
echo [4] 立即测试...
"%ADB_DIR%\adb.exe" version
echo.

echo ========================================
echo   配置完成！
echo ========================================
echo.
echo 下次使用 ADB 时可以直接输入 adb 命令
echo 或使用完整路径: %ADB_DIR%\adb.exe
echo.
pause