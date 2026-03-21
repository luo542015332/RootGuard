# RootGuard 构建指南

## 环境要求

- **JDK 17** 或更高版本
- **Android Studio** Hedgehog (2023.1.1) 或更高版本
- **Android SDK 34**

## 快速开始

### 1. 安装 JDK 17

下载地址：https://adoptium.net/temurin/releases/?version=17

安装后设置环境变量：
```bash
# Windows
setx JAVA_HOME "C:\Program Files\Eclipse Adoptium\jdk-17"
setx PATH "%JAVA_HOME%\bin;%PATH%"

# 验证安装
java -version
```

### 2. 安装 Android Studio

下载地址：https://developer.android.com/studio

安装时选择：
- Android SDK
- Android SDK Platform-Tools
- Android SDK Build-Tools
- Android Emulator（可选）

### 3. 配置 SDK 环境变量

```bash
# Windows
setx ANDROID_HOME "%LOCALAPPDATA%\Android\Sdk"
setx PATH "%ANDROID_HOME%\platform-tools;%PATH%"
```

### 4. 构建项目

#### 方式一：使用 Android Studio（推荐）

1. 打开 Android Studio
2. 选择 "Open an existing Android Studio project"
3. 选择 RootGuard 文件夹
4. 等待 Gradle 同步完成
5. 点击菜单栏 Build → Build Bundle(s) / APK(s) → Build APK(s)

#### 方式二：使用命令行

```bash
# 进入项目目录
cd RootGuard

# 赋予 gradlew 执行权限（Linux/Mac）
chmod +x gradlew

# 构建 Debug APK
./gradlew assembleDebug

# 构建 Release APK
./gradlew assembleRelease
```

### 5. 获取 APK

构建完成后，APK 文件位于：

- **Debug**: `app/build/outputs/apk/debug/app-debug.apk`
- **Release**: `app/build/outputs/apk/release/app-release.apk`

## 构建脚本

### Windows 构建脚本 (build.bat)

```batch
@echo off
echo ==========================================
echo RootGuard 构建脚本
echo ==========================================

:: 检查 Java
java -version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未找到 Java，请先安装 JDK 17
    exit /b 1
)

:: 构建 Debug APK
echo.
echo [1/2] 正在构建 Debug APK...
gradlew.bat assembleDebug

if errorlevel 1 (
    echo [错误] Debug 构建失败
    exit /b 1
)

echo [成功] Debug APK 构建完成

:: 构建 Release APK
echo.
echo [2/2] 正在构建 Release APK...
gradlew.bat assembleRelease

if errorlevel 1 (
    echo [警告] Release 构建失败（可能需要签名配置）
) else (
    echo [成功] Release APK 构建完成
)

echo.
echo ==========================================
echo 构建完成！
echo.
echo APK 文件位置：
echo Debug:   app\build\outputs\apk\debug\app-debug.apk
echo Release: app\build\outputs\apk\release\app-release.apk
echo ==========================================

pause
```

### Linux/Mac 构建脚本 (build.sh)

```bash
#!/bin/bash

echo "=========================================="
echo "RootGuard 构建脚本"
echo "=========================================="

# 检查 Java
if ! command -v java &> /dev/null; then
    echo "[错误] 未找到 Java，请先安装 JDK 17"
    exit 1
fi

# 构建 Debug APK
echo ""
echo "[1/2] 正在构建 Debug APK..."
./gradlew assembleDebug

if [ $? -ne 0 ]; then
    echo "[错误] Debug 构建失败"
    exit 1
fi

echo "[成功] Debug APK 构建完成"

# 构建 Release APK
echo ""
echo "[2/2] 正在构建 Release APK..."
./gradlew assembleRelease

if [ $? -ne 0 ]; then
    echo "[警告] Release 构建失败（可能需要签名配置）"
else
    echo "[成功] Release APK 构建完成"
fi

echo ""
echo "=========================================="
echo "构建完成！"
echo ""
echo "APK 文件位置："
echo "Debug:   app/build/outputs/apk/debug/app-debug.apk"
echo "Release: app/build/outputs/apk/release/app-release.apk"
echo "=========================================="
```

## 签名配置（Release 版本）

要构建可发布的 Release APK，需要配置签名：

1. 生成密钥库：
```bash
keytool -genkey -v -keystore rootguard.keystore -alias rootguard -keyalg RSA -keysize 2048 -validity 10000
```

2. 在 `app/build.gradle` 中添加签名配置：
```gradle
android {
    signingConfigs {
        release {
            storeFile file("rootguard.keystore")
            storePassword "your_password"
            keyAlias "rootguard"
            keyPassword "your_password"
        }
    }
    
    buildTypes {
        release {
            signingConfig signingConfigs.release
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
}
```

## 常见问题

### 1. Gradle 同步失败

**问题**: Gradle 同步时出现网络错误

**解决**: 
- 配置国内镜像（阿里云）
- 在 `gradle.properties` 中添加：
```properties
systemProp.http.proxyHost=mirrors.cloud.tencent.com
systemProp.https.proxyHost=mirrors.cloud.tencent.com
```

### 2. 找不到 Android SDK

**问题**: 构建时提示找不到 SDK

**解决**:
- 在 `local.properties` 中添加：
```properties
sdk.dir=C\:\\Users\\YourName\\AppData\\Local\\Android\\Sdk
```

### 3. 编译错误

**问题**: Kotlin 编译错误

**解决**:
- 确保 Android Studio 和 Kotlin 插件是最新版本
- 清理并重建项目：Build → Clean Project → Rebuild Project

## 项目统计

- **代码行数**: 约 8000+ 行 Kotlin 代码
- **功能模块**: 7 个主要功能模块
- **主题数量**: 6 种熊猫主题
- **最低支持**: Android 8.0 (API 26)
- **目标版本**: Android 14 (API 34)

## 联系支持

如有构建问题，请：
1. 检查环境配置
2. 查看 Android Studio 的 Build 输出日志
3. 提交 Issue 到项目仓库
