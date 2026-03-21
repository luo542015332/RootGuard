@echo off
chcp 65001 >nul
echo ==========================================
echo    RootGuard 构建脚本
echo    Android Root 权限管理器
echo ==========================================
echo.

:: 检查 Java
java -version >nul 2>&1
if errorlevel 1 (
    echo [❌ 错误] 未找到 Java
    echo.
    echo 请先安装 JDK 17：
    echo https://adoptium.net/temurin/releases/?version=17
    echo.
    pause
    exit /b 1
)

echo [✓] Java 环境检测通过
echo.

:: 检查 Gradle Wrapper
if not exist "gradle\wrapper\gradle-wrapper.jar" (
    echo [⚠️ 警告] 未找到 Gradle Wrapper
    echo 正在尝试下载...
    
    :: 尝试使用系统 Gradle
    gradle --version >nul 2>&1
    if errorlevel 1 (
        echo [❌ 错误] 未找到 Gradle
        echo 请安装 Gradle 或手动下载 wrapper：
        echo https://raw.githubusercontent.com/gradle/gradle/v8.2.0/gradle/wrapper/gradle-wrapper.jar
        pause
        exit /b 1
    ) else (
        echo [✓] 使用系统 Gradle
        set USE_SYSTEM_GRADLE=1
    )
) else (
    echo [✓] Gradle Wrapper 检测通过
)

echo.
echo ==========================================
echo [1/2] 正在构建 Debug APK...
echo ==========================================
echo.

if defined USE_SYSTEM_GRADLE (
    gradle assembleDebug
) else (
    call gradlew.bat assembleDebug
)

if errorlevel 1 (
    echo.
    echo [❌ 错误] Debug 构建失败
    echo.
    echo 可能的解决方案：
    echo 1. 检查网络连接（需要下载依赖）
    echo 2. 配置国内镜像源
    echo 3. 检查 Android SDK 路径
    echo.
    pause
    exit /b 1
)

echo.
echo [✓] Debug APK 构建成功！
echo.

:: 询问是否构建 Release
echo ==========================================
echo [2/2] 是否构建 Release APK？
echo ==========================================
echo.
echo 注意：Release 构建需要签名配置
echo.
choice /C YN /M "是否继续"

if errorlevel 2 goto :skip_release
if errorlevel 1 goto :build_release

:build_release
echo.
echo 正在构建 Release APK...

if defined USE_SYSTEM_GRADLE (
    gradle assembleRelease
) else (
    call gradlew.bat assembleRelease
)

if errorlevel 1 (
    echo.
    echo [⚠️ 警告] Release 构建失败
    echo 可能原因：未配置签名密钥
    echo.
    echo 请参考 BUILD.md 配置签名
) else (
    echo.
    echo [✓] Release APK 构建成功！
)

:skip_release
echo.
echo ==========================================
echo           构建完成！🎉
echo ==========================================
echo.
echo 📦 APK 文件位置：
echo.

:: 显示 Debug APK 信息
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo [Debug]   app\build\outputs\apk\debug\app-debug.apk
    for %%F in ("app\build\outputs\apk\debug\app-debug.apk") do (
        echo          大小: %%~zF bytes
    )
) else (
    echo [Debug]   未找到
)

echo.

:: 显示 Release APK 信息
if exist "app\build\outputs\apk\release\app-release.apk" (
    echo [Release] app\build\outputs\apk\release\app-release.apk
    for %%F in ("app\build\outputs\apk\release\app-release.apk") do (
        echo          大小: %%~zF bytes
    )
) else (
    echo [Release] 未构建或未找到
)

echo.
echo ==========================================
echo 🐼 RootGuard - 熊猫主题 Root 管理器
echo ==========================================
echo.

pause