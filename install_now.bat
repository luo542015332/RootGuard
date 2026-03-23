@echo off
echo PandaSU 安装工具
echo.

:: 检查 APK 文件
if not exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo 错误：找不到 APK 文件！
    echo 请先编译项目
    pause
    exit /b 1
)

echo APK 文件已找到：app\build\outputs\apk\debug\app-debug.apk
echo.

:: 方法 1：尝试直接使用 adb
echo 尝试方法 1：使用 ADB 安装...
adb devices >nul 2>&1
if errorlevel 1 (
    echo ADB 未安装或未找到
) else (
    echo 检查设备连接...
    adb devices | findstr "device$" >nul
    if errorlevel 1 (
        echo 未检测到设备，请：
        echo 1. 连接手机到电脑
        echo 2. 开启 USB 调试
        echo 3. 选择「文件传输」模式
        echo.
        echo 连接后按任意键继续...
        pause >nul
    )
    
    echo 正在安装...
    adb install -r "app\build\outputs\apk\debug\app-debug.apk"
    if errorlevel 0 (
        echo 安装成功！
        echo 正在启动应用...
        adb shell am start -n com.rootguard.app/.MainActivity
        echo 完成！请在手机上查看 PandaSU
        pause
        exit /b 0
    )
)

:: 方法 2：如果 ADB 失败，显示文件位置
echo.
echo ========================================
echo 方法 1 失败，请使用方法 2：
echo.
echo APK 文件位置：
echo %CD%\app\build\outputs\apk\debug\app-debug.apk
echo.
echo 请手动操作：
echo 1. 复制上面路径的 APK 文件到手机
echo 2. 在手机上用文件管理器打开
echo 3. 点击安装
echo ========================================
echo.
echo 按任意键打开文件所在文件夹...
pause >nul

:: 打开文件夹
explorer "%CD%\app\build\outputs\apk\debug"

echo.
echo 完成！请手动安装。