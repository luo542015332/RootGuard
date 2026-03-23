@echo off
chcp 65001 >nul
echo ==========================================
echo PandaSU v1.4.49 一键安装工具
echo ==========================================
echo.

:: 检查 APK 文件是否存在
if not exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [错误] 未找到 APK 文件！
    echo 请先编译项目：gradlew.bat assembleDebug
    pause
    exit /b 1
)

echo [✓] 找到 APK 文件：app\build\outputs\apk\debug\app-debug.apk
echo.

:: 检查 ADB
echo [..] 检查 ADB 工具...
where adb >nul 2>&1
if errorlevel 1 (
    echo [警告] 未找到 ADB，尝试下载安装...
    
    :: 下载 platform-tools
    echo [..] 正在下载 Android Platform Tools...
    powershell -Command "Invoke-WebRequest -Uri 'https://dl.google.com/android/repository/platform-tools-latest-windows.zip' -OutFile 'platform-tools.zip'"
    
    :: 解压
    echo [..] 正在解压...
    powershell -Command "Expand-Archive -Path 'platform-tools.zip' -DestinationPath '.' -Force"
    
    :: 设置临时路径
    set PATH=%PATH%;%CD%\platform-tools
    
    :: 清理
    del platform-tools.zip >nul 2>&1
    
    echo [✓] ADB 工具已安装
) else (
    echo [✓] ADB 已安装
)

echo.

:: 检查设备连接
echo [..] 检查设备连接...
adb devices | findstr "device$" >nul
if errorlevel 1 (
    echo [错误] 未找到连接的设备！
    echo.
    echo 请确认：
    echo 1. 手机已通过 USB 线连接到电脑
    echo 2. 手机已开启 USB 调试
    echo    - 设置 → 关于手机 → 连续点击「版本号」7次
    echo    - 返回 → 系统 → 开发者选项 → 开启「USB 调试」
    echo 3. 手机选择「文件传输」模式
    echo.
    echo 连接后按任意键重试...
    pause >nul
    adb devices | findstr "device$" >nul
    if errorlevel 1 (
        echo [错误] 仍然未找到设备，请手动连接
        pause
        exit /b 1
    )
)

echo [✓] 设备已连接
echo.

:: 安装 APK
echo [..] 正在安装 PandaSU v1.4.49...
adb install -r "app\build\outputs\apk\debug\app-debug.apk"

if errorlevel 1 (
    echo [错误] 安装失败！
    echo.
    echo 可能的原因：
    echo 1. 手机上已有旧版本但签名不同
    echo 2. 手机未允许「未知来源安装」
    echo.
    echo 请尝试手动安装：
    echo 1. 将文件复制到手机：app\build\outputs\apk\debug\app-debug.apk
    echo 2. 在手机上用文件管理器打开并安装
    pause
    exit /b 1
)

echo [✓] 安装成功！
echo.

:: 启动应用
echo [..] 正在启动 PandaSU...
adb shell am start -n com.rootguard.app/.MainActivity

if errorlevel 0 (
    echo [✓] PandaSU 已启动！
    echo.
    echo 请在手机上查看应用
) else (
    echo [警告] 无法自动启动，请在手机上手动打开 PandaSU
)

echo.
echo ==========================================
echo 安装完成！请测试以下功能：
echo 1. 系统应用分类（用户应用约134个）
echo 2. 安装页面三个选项的响应
echo 3. 文件选择器功能
echo ==========================================
echo 按任意键退出...
pause >nul