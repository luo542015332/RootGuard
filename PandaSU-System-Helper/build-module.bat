@echo off
chcp 65001 >nul
echo ========================================
echo PandaSU System Helper 模块构建工具
echo ========================================
echo.

set MODULE_DIR=%~dp0
set OUTPUT_DIR=%MODULE_DIR%dist
set NDK_BUILD=%ANDROID_NDK_HOME%\ndk-build.cmd
set VERSION=v2.0.0

REM 创建输出目录
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

REM 检查NDK
if not exist "%NDK_BUILD%" (
    echo [错误] 未找到NDK，请设置 ANDROID_NDK_HOME 环境变量
    echo 下载地址：https://developer.android.com/ndk/downloads
    pause
    exit /b 1
)

REM 清理旧文件
echo [1/4] 清理旧文件...
if exist "%OUTPUT_DIR%\PandaSU-System-Helper-%VERSION%.zip" del "%OUTPUT_DIR%\PandaSU-System-Helper-%VERSION%.zip"
if exist "%MODULE_DIR%libs" rmdir /s /q "%MODULE_DIR%libs"
if exist "%MODULE_DIR%obj" rmdir /s /q "%MODULE_DIR%obj"

REM 编译Native代码
echo [2/4] 编译Native代码...
cd /d "%MODULE_DIR%jni"
call "%NDK_BUILD%" NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk V=1
if %errorlevel% neq 0 (
    echo [错误] Native代码编译失败
    pause
    exit /b 1
)

REM 验证SO文件
echo [3/4] 验证SO文件...
if not exist "%MODULE_DIR%zygisk\arm64-v8a\libpanda_zygisk.so" (
    echo [错误] 编译成功但未找到SO文件
    echo 预期位置：%MODULE_DIR%zygisk\arm64-v8a\libpanda_zygisk.so
    pause
    exit /b 1
)

REM 创建ZygiskNext正确的目录结构
echo [3.5/4] 创建ZygiskNext目录结构...
if exist "%MODULE_DIR%zygisk_temp" rmdir /s /q "%MODULE_DIR%zygisk_temp"
mkdir "%MODULE_DIR%zygisk_temp"
mkdir "%MODULE_DIR%zygisk_temp\zygisk"
mkdir "%MODULE_DIR%zygisk_temp\META-INF\com\google\android"
copy "%MODULE_DIR%zygisk\arm64-v8a\libpanda_zygisk.so" "%MODULE_DIR%zygisk_temp\zygisk\arm64-v8a.so" >nul
copy "%MODULE_DIR%META-INF\com\google\android\update-binary" "%MODULE_DIR%zygisk_temp\META-INF\com\google\android\update-binary" >nul
copy "%MODULE_DIR%customize.sh" "%MODULE_DIR%zygisk_temp\customize.sh" >nul
copy "%MODULE_DIR%module.prop" "%MODULE_DIR%zygisk_temp\module.prop" >nul
copy "%MODULE_DIR%post-fs-data.sh" "%MODULE_DIR%zygisk_temp\post-fs-data.sh" >nul
copy "%MODULE_DIR%sepolicy.rule" "%MODULE_DIR%zygisk_temp\sepolicy.rule" >nul
copy "%MODULE_DIR%service.sh" "%MODULE_DIR%zygisk_temp\service.sh" >nul
copy "%MODULE_DIR%system.prop" "%MODULE_DIR%zygisk_temp\system.prop" >nul
if %errorlevel% neq 0 (
    echo [错误] 复制文件失败
    pause
    exit /b 1
)
echo [OK] 目录结构创建完成

REM 打包模块（使用PowerShell的Compress-Archive）
echo [4/4] 打包模块...
powershell -Command "Compress-Archive -Path '%MODULE_DIR%zygisk_temp\*' -DestinationPath '%OUTPUT_DIR%\PandaSU-System-Helper-%VERSION%.zip' -Force"

REM 清理临时目录
rmdir /s /q "%MODULE_DIR%zygisk_temp"

echo.
echo [成功] 模块构建完成！
echo.
echo 文件位置：%OUTPUT_DIR%\PandaSU-System-Helper-%VERSION%.zip
echo 大小：
for %%I in ("%OUTPUT_DIR%\PandaSU-System-Helper-%VERSION%.zip") do echo %%~zI 字节
echo.
echo ZIP内SO位置：zygisk/arm64-v8a.so (ZygiskNext要求格式)
echo.
echo 安装方式：
echo - KernelSU: 模块 -^> 安装本地模块
echo - ZygiskNext: 自动识别加载 (重启后生效)
echo.
echo 验证安装：
echo su -c "cat /data/adb/zygisksu/modules_info" ^| findstr zygisk_pandasu

echo.
pause