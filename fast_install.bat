@echo off
chcp 65001 >nul
echo ========================================
echo PandaSU 快速安装工具
echo ========================================
echo.

:: 显示 APK 文件信息
echo [信息] APK 文件: app\build\outputs\apk\debug\app-debug.apk
echo [信息] 版本号: 1.4.49 (versionCode 63)
echo [信息] 文件大小: 16.6 MB
echo.

:: 第一步：下载 ADB
echo [步骤1] 下载 Android Platform Tools...
powershell -Command "try { Invoke-WebRequest -Uri 'https://dl.google.com/android/repository/platform-tools-latest-windows.zip' -OutFile 'platform-tools.zip' -ErrorAction Stop; echo '下载成功' } catch { echo '下载失败，请检查网络' }"

if not exist "platform-tools.zip" (
    echo [错误] 下载失败，请手动安装
    goto MANUAL_INSTALL
)

:: 第二步：解压
echo [步骤2] 解压文件...
powershell -Command "Expand-Archive -Path 'platform-tools.zip' -DestinationPath '.' -Force"
if not exist "platform-tools\adb.exe" (
    echo [错误] 解压失败
    goto MANUAL_INSTALL
)

:: 第三步：设置路径
echo [步骤3] 设置环境...
set ADB_PATH=%CD%\platform-tools\adb.exe
echo ADB 路径: %ADB_PATH%
echo.

:: 第四步：检查设备
echo [步骤4] 检查设备连接...
%ADB_PATH% devices
%ADB_PATH% devices | findstr "device$" >nul
if errorlevel 1 (
    echo.
    echo [注意] 未检测到设备，请：
    echo 1. 用 USB 线连接手机到电脑
    echo 2. 开启 USB 调试
    echo    - 设置 → 关于手机 → 点版本号7次
    echo    - 返回 → 系统 → 开发者选项 → USB 调试
    echo 3. 手机选择「文件传输」模式
    echo 4. 手机上允许 USB 调试
    echo.
    echo 连接后按任意键重试...
    pause >nul
)

:: 第五步：安装 APK
echo [步骤5] 安装 PandaSU...
%ADB_PATH% install -r "app\build\outputs\apk\debug\app-debug.apk"

if errorlevel 0 (
    echo [成功] 安装完成！
    echo.
    echo [步骤6] 启动应用...
    %ADB_PATH% shell am start -n com.rootguard.app/.MainActivity
    echo [完成] PandaSU 已启动！
    echo 请在手机上查看应用
    pause
    exit /b 0
) else (
    echo [警告] ADB 安装失败，切换到手动安装
    goto MANUAL_INSTALL
)

:MANUAL_INSTALL
echo.
echo ========================================
echo 手动安装说明
echo ========================================
echo.
echo 请按以下步骤手动安装：
echo.
echo 1. 复制这个 APK 文件到手机：
echo    %CD%\app\build\outputs\apk\debug\app-debug.apk
echo.
echo 2. 在手机上：
echo    - 用文件管理器找到 APK 文件
echo    - 点击安装
echo    - 如果提示「未知来源」，允许安装
echo.
echo 3. 打开 PandaSU 测试功能
echo.
echo ========================================
echo 按任意键打开文件所在文件夹...
pause >nul

:: 打开文件夹
explorer "%CD%\app\build\outputs\apk\debug"

echo.
echo 完成！请手动安装。
pause