@echo off
chcp 65001 >nul
echo ===========================================
echo PandaSU 自动更新版本并复制到桌面脚本
echo ===========================================
echo.

REM 设置颜色
color 0A

REM 检查是否在项目根目录
if not exist "app\build.gradle" (
    echo ❌ 错误：请在项目根目录运行此脚本！
    echo 当前目录：%cd%
    pause
    exit /b 1
)

echo 📁 当前项目目录：%cd%
echo.

REM 1. 读取当前版本号
echo 📊 步骤1：读取当前版本信息...
for /f "tokens=1,2 delims=:" %%a in ('findstr /c:"versionCode" app\build.gradle') do (
    set "versionLine=%%b"
)
for /f "tokens=1,2 delims=:" %%a in ('findstr /c:"versionName" app\build.gradle') do (
    set "versionNameLine=%%b"
)

REM 清理版本号
set "oldVersionCode="
for %%i in (%versionLine%) do set "oldVersionCode=%%i"
set "oldVersionCode=%oldVersionCode: =%"

set "oldVersionName="
for %%i in (%versionNameLine%) do set "oldVersionName=%%i"
set "oldVersionName=%oldVersionName: =%"
set "oldVersionName=%oldVersionName:"=%"

echo   当前版本号：%oldVersionName%
echo   当前版本代码：%oldVersionCode%
echo.

REM 2. 询问用户是否更新版本
echo 📝 步骤2：版本更新选项
echo.
echo   1. 自动递增版本（小版本 +0.0.1）
echo   2. 手动输入版本号
echo   3. 仅复制到桌面，不更新版本
echo.
set /p choice="请选择操作 (1/2/3): "

if "%choice%"=="1" (
    REM 自动递增小版本
    for /f "tokens=1-3 delims=." %%a in ("%oldVersionName%") do (
        set major=%%a
        set minor=%%b
        set patch=%%c
    )
    
    set /a newPatch=patch+1
    set "newVersionName=%major%.%minor%.%newPatch%"
    set /a newVersionCode=oldVersionCode+1
    
    echo.
    echo   🔄 自动递增版本：
    echo   新版本号：%newVersionName%
    echo   新版本代码：%newVersionCode%
    
) else if "%choice%"=="2" (
    REM 手动输入版本号
    echo.
    set /p newVersionName="请输入新版本号 (如 3.0.3): "
    set /p newVersionCode="请输入新版本代码 (当前 %oldVersionCode% + 1): "
    
) else if "%choice%"=="3" (
    REM 不更新版本，直接复制
    set "newVersionName=%oldVersionName%"
    set "newVersionCode=%oldVersionCode%"
    echo.
    echo   📋 将使用当前版本：%oldVersionName%
    
) else (
    echo ❌ 无效选择，使用默认：不更新版本
    set "newVersionName=%oldVersionName%"
    set "newVersionCode=%oldVersionCode%"
)

echo.
echo 📦 步骤3：更新 build.gradle 文件...
if not "%newVersionName%"=="%oldVersionName%" (
    REM 备份原文件
    copy "app\build.gradle" "app\build.gradle.backup" >nul
    
    REM 更新版本号
    powershell -Command "(Get-Content 'app\build.gradle') -replace 'versionCode %oldVersionCode%', 'versionCode %newVersionCode%' | Set-Content 'app\build.gradle'"
    powershell -Command "(Get-Content 'app\build.gradle') -replace 'versionName \"%oldVersionName%\"', 'versionName \"%newVersionName%\"' | Set-Content 'app\build.gradle'"
    
    echo   ✅ 已更新版本号：%oldVersionName% → %newVersionName%
    echo   ✅ 已更新版本代码：%oldVersionCode% → %newVersionCode%
) else (
    echo   ℹ️  版本号未改变，跳过更新
)

echo.
echo 🔨 步骤4：构建APK...
echo   🕐 开始构建，请稍候...
call gradlew clean assembleDebug

if %errorlevel% neq 0 (
    echo ❌ 构建失败！请检查错误信息
    pause
    exit /b 1
)

echo   ✅ APK构建成功！
echo.

REM 5. 查找生成的APK文件
echo 📁 步骤5：查找APK文件...
set "apkPath="
for /f "delims=" %%i in ('dir /b /s "app\build\outputs\apk\debug\*.apk" 2^>nul') do set "apkPath=%%i"

if "%apkPath%"=="" (
    echo ❌ 未找到APK文件！
    pause
    exit /b 1
)

echo   ✅ 找到APK：%apkPath%
echo   📏 文件大小：%~zi 字节
echo.

REM 6. 复制到桌面
echo 📂 步骤6：复制到桌面...
set "desktopPath=%USERPROFILE%\Desktop"
set "newApkName=PandaSU-v%newVersionName%.apk"
set "desktopApk=%desktopPath%\%newApkName%"

copy "%apkPath%" "%desktopApk%" >nul

if %errorlevel% equ 0 (
    echo   ✅ 已复制到桌面：%desktopApk%
) else (
    echo ❌ 复制失败！
    pause
    exit /b 1
)

REM 7. 复制其他相关文件
echo.
echo 📄 步骤7：复制相关文档到桌面...

REM 7.1 复制版本更新说明
if exist "版本更新说明_v%newVersionName%.md" (
    copy "版本更新说明_v%newVersionName%.md" "%desktopPath%\PandaSU-v%newVersionName%-更新说明.md" >nul
    echo   ✅ 版本更新说明已复制
) else if exist "版本更新说明.md" (
    copy "版本更新说明.md" "%desktopPath%\PandaSU-v%newVersionName%-更新说明.md" >nul
    echo   ✅ 版本更新说明已复制
)

REM 7.2 复制安装脚本
if exist "安装到手机_ADB.bat" (
    copy "安装到手机_ADB.bat" "%desktopPath%\安装PandaSU-v%newVersionName%.bat" >nul
    echo   ✅ 安装脚本已复制
)

REM 7.3 创建桌面清单
echo # PandaSU v%newVersionName% 桌面文件清单 > "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo. >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo ## 生成时间：%date% %time% >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo. >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo ### 文件列表： >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo 1. **%newApkName%** - 主应用APK >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo 2. **PandaSU-v%newVersionName%-更新说明.md** - 版本更新说明 >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo 3. **安装PandaSU-v%newVersionName%.bat** - 一键安装脚本 >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo. >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo ### 版本信息： >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo - 版本号：%newVersionName% >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo - 版本代码：%newVersionCode% >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo - 包名：com.rootguard.app >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo. >> "%desktopPath%\PandaSU-v%newVersionName%-文件清单.md"
echo >NUL 2>&1
echo   ✅ 桌面文件清单已创建

echo.
echo ===========================================
echo 🎉 自动化流程完成！
echo ===========================================
echo.
echo 📋 操作总结：
echo   1. 版本更新：%oldVersionName% → %newVersionName%
echo   2. APK构建：成功
echo   3. 桌面文件：共复制了 3 个文件
echo.
echo 💡 下一步操作：
echo   1. 双击桌面上的 "安装PandaSU-v%newVersionName%.bat" 安装到手机
echo   2. 查看 "PandaSU-v%newVersionName%-更新说明.md" 了解更新内容
echo   3. 使用 "PandaSU-v%newVersionName%-文件清单.md" 管理文件
echo.
echo 🚀 祝您测试愉快！
echo.

REM 打开桌面目录
explorer "%desktopPath%"

pause