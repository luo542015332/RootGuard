@echo off
chcp 65001 >nul
echo.
echo =========================================
echo 🐼 PandaSU 一键安装助手
echo =========================================
echo 版本: v2.3.0 (2026-03-26)
echo 兼容: Android 8.0 - 16.0
echo =========================================
echo.

REM 检查 dist 目录
if not exist "dist\" (
    echo ❌ 错误: 找不到 dist 目录！
    echo 请确保在项目根目录运行本脚本
    pause
    exit /b 1
)

echo 📋 可用的安装包:
echo.

echo [1] ZygiskNext 框架 + PandaSU 模块
echo     - ZygiskNext-v1.3.3.zip
echo     - PandaSU-System-Helper-v2.3.0-upload.zip
echo.

echo [2] LSPosed 框架 + PandaSU 模块
echo     - LSPosed-v1.11.0-7209-zygisk-release.zip
echo     - PandaSU-LSPosed-Helper-v1.0.apk
echo.

echo [3] PandaSU 主应用
echo     - PandaSU-v2.3.0.apk
echo     - PandaSU-v2.3.0-upload.apk
echo.

echo [4] 所有组件完整安装
echo.

echo [5] 查看安装指南
echo.

echo [0] 退出
echo.

set /p choice="请选择安装选项 (0-5): "

if "%choice%"=="1" goto zygisk
if "%choice%"=="2" goto lsposed
if "%choice%"=="3" goto mainapp
if "%choice%"=="4" goto fullinstall
if "%choice%"=="5" goto guide
if "%choice%"=="0" goto exit
echo ❌ 无效选择！
pause
goto :eof

:zygisk
echo.
echo 🔧 安装 ZygiskNext 路径：
echo 1. 请将以下文件复制到手机：
echo    - dist\ZygiskNext-v1.3.3.zip
echo    - dist\PandaSU-System-Helper-v2.3.0-upload.zip
echo.
echo 2. 在 Magisk 中按顺序刷入：
echo    a) 先刷 ZygiskNext-v1.3.3.zip
echo    b) 再刷 PandaSU-System-Helper-v2.3.0-upload.zip
echo    c) 重启设备
echo.
echo 3. 安装主应用：
echo    - dist\PandaSU-v2.3.0.apk
echo.
pause
goto :eof

:lsposed
echo.
echo 🔧 安装 LSPosed 路径：
echo 1. 请将以下文件复制到手机：
echo    - dist\LSPosed-v1.11.0-7209-zygisk-release.zip
echo    - dist\PandaSU-LSPosed-Helper-v1.0.apk
echo.
echo 2. 在 Magisk 中刷入：
echo    - LSPosed-v1.11.0-7209-zygisk-release.zip
echo    - 重启设备
echo.
echo 3. 安装 Xposed 模块：
echo    - PandaSU-LSPosed-Helper-v1.0.apk
echo    - 在 LSPosed 中激活模块
echo.
echo 4. 安装主应用：
echo    - dist\PandaSU-v2.3.0.apk
echo.
pause
goto :eof

:mainapp
echo.
echo 📱 安装 PandaSU 主应用：
echo 1. 请将以下文件复制到手机：
echo    - dist\PandaSU-v2.3.0.apk
echo.
echo 2. 在手机上安装 APK
echo    - 授予 Root 权限
echo    - 完成初始配置
echo.
echo 可选优化版本：
echo    - dist\PandaSU-v2.3.0-upload.apk
echo.
pause
goto :eof

:fullinstall
echo.
echo 🎯 完整安装步骤：
echo.
echo 步骤 1: 安装框架
echo   推荐: ZygiskNext-v1.3.3.zip (复制到手机刷入)
echo   备选: LSPosed-v1.11.0-7209-zygisk-release.zip
echo.
echo 步骤 2: 安装 PandaSU 模块
echo   - Zygisk: PandaSU-System-Helper-v2.3.0-upload.zip
echo   - Xposed: PandaSU-LSPosed-Helper-v1.0.apk
echo.
echo 步骤 3: 安装主应用
echo   - PandaSU-v2.3.0.apk
echo.
echo 步骤 4: 配置
echo   - 打开 PandaSU 应用
echo   - 点击「一键隔离」
echo   - 选择「最高隔离」级别
echo.
pause
goto :eof

:guide
echo.
echo 📖 详细安装指南：
echo 已生成文件: .workbuddy\PandaSU-Complete-Install-Guide.md
echo.
echo 内容包括：
echo   - 所有安装包位置
echo   - 详细步骤说明
echo   - 配置指南
echo   - 故障排除
echo.
start .workbuddy\PandaSU-Complete-Install-Guide.md
pause
goto :eof

:exit
echo.
echo 👋 再见！
echo.
pause