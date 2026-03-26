@echo off
chcp 65001 >nul
title PandaSU ADB 一键安装工具 v1.0
color 0A

echo ========================================
echo        PandaSU ADB 一键安装工具
echo ========================================
echo.

REM 检查 ADB 是否可用
echo [1/8] 检查 ADB 环境...
adb version >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ ADB 未找到或未安装！
    echo 请安装 Android SDK Platform-Tools
    echo 下载地址：https://developer.android.com/studio/releases/platform-tools
    pause
    exit /b 1
)
echo ✅ ADB 环境检查通过

REM 检查设备连接
echo [2/8] 检查设备连接...
adb devices | findstr "device$" >nul
if %errorlevel% neq 0 (
    echo ❌ 未检测到已连接的设备！
    echo 请确保：
    echo 1. 手机已开启 USB 调试
    echo 2. USB 连接正确
    echo 3. 电脑已安装手机驱动
    pause
    exit /b 1
)
echo ✅ 设备已连接

REM 检查 Root 权限
echo [3/8] 检查 Root 权限...
adb shell su -c "id" >nul 2>nul
if %errorlevel% neq 0 (
    echo ⚠️  未检测到 Root 权限或未授予！
    echo 请确保：
    echo 1. 手机已 Root（Magisk/KernelSU）
    echo 2. 已授予 ADB Root 权限
    echo 3. SuperSU/Magisk 已授权
    echo.
    set /p "continue=是否继续？(y/n): "
    if /i not "%continue%"=="y" exit /b 1
)
echo ✅ Root 权限检查通过

REM 创建手机临时目录
echo [4/8] 创建手机临时目录...
adb shell "mkdir -p /data/local/tmp/pandasu_install" >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 无法创建临时目录！
    pause
    exit /b 1
)
echo ✅ 临时目录创建完成：/data/local/tmp/pandasu_install

REM 推送安装文件到手机
echo [5/8] 推送安装文件到手机...

REM 查找文件
set "FRAMEWORK_ZIP="
set "MODULE_ZIP="
set "APP_APK="

if exist "dist\ZygiskNext-v1.3.3.zip" set "FRAMEWORK_ZIP=dist\ZygiskNext-v1.3.3.zip"
if exist "dist\ZygiskNext-框架.zip" set "FRAMEWORK_ZIP=dist\ZygiskNext-框架.zip"

if exist "dist\PandaSU-System-Helper-v2.3.0-upload.zip" set "MODULE_ZIP=dist\PandaSU-System-Helper-v2.3.0-upload.zip"
if exist "dist\PandaSU-模块.zip" set "MODULE_ZIP=dist\PandaSU-模块.zip"

if exist "dist\PandaSU-v2.3.0.apk" set "APP_APK=dist\PandaSU-v2.3.0.apk"
if exist "dist\PandaSU-应用.apk" set "APP_APK=dist\PandaSU-应用.apk"

REM 检查文件是否存在
if "%FRAMEWORK_ZIP%"=="" (
    echo ❌ 未找到 ZygiskNext 框架文件！
    echo 请确保 dist/ 目录下有 ZygiskNext-*.zip 文件
    pause
    exit /b 1
)

if "%MODULE_ZIP%"=="" (
    echo ❌ 未找到 PandaSU 模块文件！
    echo 请确保 dist/ 目录下有 PandaSU-模块.zip 文件
    pause
    exit /b 1
)

if "%APP_APK%"=="" (
    echo ❌ 未找到 PandaSU 应用文件！
    echo 请确保 dist/ 目录下有 PandaSU-应用.apk 文件
    pause
    exit /b 1
)

echo 框架文件：%FRAMEWORK_ZIP%
adb push "%FRAMEWORK_ZIP%" /data/local/tmp/pandasu_install/zygisknext.zip

echo 模块文件：%MODULE_ZIP%
adb push "%MODULE_ZIP%" /data/local/tmp/pandasu_install/pandasu_module.zip

echo 应用文件：%APP_APK%
adb push "%APP_APK%" /data/local/tmp/pandasu_install/pandasu_app.apk

echo ✅ 文件推送完成

REM 安装步骤
echo [6/8] 开始安装...

echo.
echo ⚠️  ===== 重要提醒 =====
echo 1. 请确保手机有足够电量（>50%）
echo 2. 安装过程中请勿断开 USB 连接
echo 3. 手机会自动重启两次
echo 4. 请耐心等待整个过程完成
echo.
set /p "install=确认开始安装？(y/n): "
if /i not "%install%"=="y" (
    echo 安装已取消
    pause
    exit /b 0
)

echo.
echo ===== 第1步：刷入 ZygiskNext 框架 =====
echo 正在刷入 ZygiskNext 框架...
adb shell su -c "magisk --install-module /data/local/tmp/pandasu_install/zygisknext.zip > /data/local/tmp/pandasu_install/install_log.txt 2>&1"
if %errorlevel% neq 0 (
    echo ⚠️  使用 Magisk 方式失败，尝试 KernelSU 方式...
    adb shell su -c "ksu install-module /data/local/tmp/pandasu_install/zygisknext.zip > /data/local/tmp/pandasu_install/install_log.txt 2>&1"
    if %errorlevel% neq 0 (
        echo ⚠️  KernelSU 方式失败，尝试直接复制到模块目录...
        adb shell su -c "mkdir -p /data/adb/modules/zygisknext && cd /data/adb/modules/zygisknext && unzip -o /data/local/tmp/pandasu_install/zygisknext.zip > /data/local/tmp/pandasu_install/install_log.txt 2>&1"
        if %errorlevel% neq 0 (
            echo ❌ 框架安装失败！请查看安装日志
            adb shell cat /data/local/tmp/pandasu_install/install_log.txt
            pause
            exit /b 1
        )
    )
)
echo ✅ ZygiskNext 框架安装成功

echo.
echo ===== 第2步：重启手机（第一次） =====
echo 正在重启手机...
adb reboot
echo 等待手机重启... (约30秒)
timeout /t 30 /nobreak >nul

echo.
echo ===== 第3步：等待设备重新连接 =====
echo 等待设备重新连接...
:wait_device
timeout /t 2 /nobreak >nul
adb devices | findstr "device$" >nul
if %errorlevel% neq 0 goto wait_device
echo ✅ 设备重新连接成功

echo.
echo ===== 第4步：刷入 PandaSU 模块 =====
echo 正在刷入 PandaSU Zygisk 模块...
adb shell su -c "magisk --install-module /data/local/tmp/pandasu_install/pandasu_module.zip > /data/local/tmp/pandasu_install/module_log.txt 2>&1"
if %errorlevel% neq 0 (
    echo ⚠️  使用 Magisk 方式失败，尝试 KernelSU 方式...
    adb shell su -c "ksu install-module /data/local/tmp/pandasu_install/pandasu_module.zip > /data/local/tmp/pandasu_install/module_log.txt 2>&1"
    if %errorlevel% neq 0 (
        echo ❌ 模块安装失败！请查看安装日志
        adb shell cat /data/local/tmp/pandasu_install/module_log.txt
        pause
        exit /b 1
    )
)
echo ✅ PandaSU 模块安装成功

echo.
echo ===== 第5步：重启手机（第二次） =====
echo 正在重启手机...
adb reboot
echo 等待手机重启... (约30秒)
timeout /t 30 /nobreak >nul

echo.
echo ===== 第6步：等待设备重新连接 =====
echo 等待设备重新连接...
:wait_device2
timeout /t 2 /nobreak >nul
adb devices | findstr "device$" >nul
if %errorlevel% neq 0 goto wait_device2
echo ✅ 设备重新连接成功

echo.
echo ===== 第7步：安装 PandaSU 应用 =====
echo 正在安装 PandaSU 应用...
adb install -r /data/local/tmp/pandasu_install/pandasu_app.apk
if %errorlevel% neq 0 (
    echo ⚠️  常规安装失败，尝试无签名安装...
    adb shell pm install -r /data/local/tmp/pandasu_install/pandasu_app.apk
    if %errorlevel% neq 0 (
        echo ❌ 应用安装失败！
        pause
        exit /b 1
    )
)
echo ✅ PandaSU 应用安装成功

REM 清理临时文件
echo [7/8] 清理临时文件...
adb shell rm -rf /data/local/tmp/pandasu_install

REM 安装完成
echo [8/8] 安装完成！
echo.
echo ========================================
echo ✅ PandaSU 安装全部完成！
echo ========================================
echo.
echo 已安装组件：
echo 1. ZygiskNext 框架 (v1.3.3)
echo 2. PandaSU Zygisk 模块 (v2.3.0)
echo 3. PandaSU 主应用 (v2.3.0)
echo.
echo 下一步操作：
echo 1. 打开手机上的 PandaSU 应用
echo 2. 授予 Root 权限
echo 3. 按照指引完成初始设置
echo 4. 重启手机让所有配置生效
echo.
echo 如果遇到问题，请检查：
echo 1. Magisk/KernelSU 中的模块是否已启用
echo 2. PandaSU 应用是否正常运行
echo 3. Root 检测功能是否正常工作
echo.
pause