@echo off
chcp 65001 >nul
echo ========================================
echo PandaSU System Helper 模块构建工具
echo ========================================
echo.

set MODULE_DIR=C:\Users\Administrator\Desktop\PandaSU-System-Helper
set OUTPUT_DIR=%MODULE_DIR%\dist

REM 创建输出目录
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

REM 检查7-Zip
where 7z >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未找到7-Zip，请先安装7-Zip
    echo 下载地址：https://www.7-zip.org/
    pause
    exit /b 1
)

REM 构建ZIP
echo [1/3] 清理旧文件...
if exist "%OUTPUT_DIR%\PandaSU-System-Helper-v1.0.0.zip" del "%OUTPUT_DIR%\PandaSU-System-Helper-v1.0.0.zip"

echo [2/3] 打包模块...
cd /d "%MODULE_DIR%"
7z a -tzip -r "%OUTPUT_DIR%\PandaSU-System-Helper-v1.0.0.zip" .\* -x!dist -x!build-module.bat -x!*.md

echo [3/3] 验证ZIP...
if exist "%OUTPUT_DIR%\PandaSU-System-Helper-v1.0.0.zip" (
    echo [成功] 模块构建完成！
    echo.
    echo 文件位置：%OUTPUT_DIR%\PandaSU-System-Helper-v1.0.0.zip
    echo 大小：
    for %%I in ("%OUTPUT_DIR%\PandaSU-System-Helper-v1.0.0.zip") do echo %%~zI 字节
    echo.
    echo 安装方式：
    echo - Magisk Manager: 模块 -^> 从本地安装
    echo - KernelSU/APatch: 模块 -^> 安装本地模块
) else (
    echo [错误] 构建失败
)

echo.
pause
