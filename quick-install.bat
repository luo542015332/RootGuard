@echo off
chcp 65001 >nul
echo ==========================================
echo    RootGuard 快速安装工具
echo ==========================================
echo.

:: 检查 ADB
adb version >nul 2>&1
if errorlevel 1 (
    echo [❌ 错误] 未找到 ADB
    echo.
    echo 请按以下步骤安装 ADB：
    echo.
    echo 方法 1 - 使用 Chocolatey（推荐）：
    echo   choco install adb
    echo.
    echo 方法 2 - 手动下载：
    echo   1. 访问 https://developer.android.com/studio/releases/platform-tools
    echo   2. 下载 platform-tools-windows-xxxxxxxx.zip
    echo   3. 解压到 C:\platform-tools
    echo   4. 添加环境变量
    echo.
    echo 方法 3 - 使用 Scoop：
    echo   scoop install adb
    echo.
    pause
    exit /b 1
)

echo [✓] ADB 已安装
echo.

:: 检查设备
echo [..] 检查设备连接...
adb devices | findstr "device$" >nul
if errorlevel 1 (
    echo [❌ 错误] 未找到设备
    echo.
    echo 请检查：
    echo   1. USB 线是否连接
    echo   2. 是否开启 USB 调试（设置 → 开发者选项 → USB 调试）
    echo   3. 手机上是否允许调试授权（会弹出提示）
    echo.
    echo 首次连接步骤：
    echo   1. 设置 → 关于手机 → 连续点击「版本号」7 次
    echo   2. 返回 → 系统 → 开发者选项 → 开启「USB 调试」
    echo   3. 连接 USB，手机上点击「允许」
    echo.
    pause
    exit /b 1
)

echo [✓] 设备已连接
echo.

:: 显示设备信息
echo [..] 获取设备信息...
for /f "tokens=*" %%a in ('adb shell getprop ro.product.model') do set DEVICE_MODEL=%%a
for /f "tokens=*" %%a in ('adb shell getprop ro.build.version.release') do set ANDROID_VER=%%a
echo   设备: %DEVICE_MODEL%
echo   Android: %ANDROID_VER%
echo.

:: 检查 APK
if not exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [❌ 错误] 未找到 APK 文件
    echo.
    echo 请先构建 APK：
    echo   ./gradlew assembleDebug
    echo.
    echo 或指定 APK 路径：
    echo   quick-install.bat C:\path\to\app-debug.apk
    pause
    exit /b 1
)

:: 安装 APK
echo [..] 安装 RootGuard...
echo.
adb install -r "app\build\outputs\apk\debug\app-debug.apk"

if errorlevel 1 (
    echo.
    echo [❌ 安装失败]
    echo.
    echo 可能的解决方案：
    echo   1. 先卸载旧版本：adb uninstall com.rootguard.app
    echo   2. 检查 APK 文件是否完整
    echo   3. 检查设备存储空间
    pause
    exit /b 1
)

echo.
echo [✓] 安装成功！
echo.

:: 启动应用
choice /C YN /M "是否立即启动应用"
if errorlevel 2 goto :skip_start
if errorlevel 1 goto :start_app

:start_app
echo.
echo [..] 启动应用...
adb shell am start -n com.rootguard.app/.MainActivity
echo [✓] 应用已启动
goto :finish

:skip_start
echo.
echo [i] 跳过启动

:finish
echo.
echo ==========================================
echo 🐼 RootGuard 安装完成！
echo ==========================================
echo.
echo 首次使用建议：
echo   1. 设置 → 主题设置 → 选择熊猫主题
echo   2. 设置 → 安全 → 开启「弹窗提示」
echo   3. 享受你的 Root 管理器！
echo.
pause