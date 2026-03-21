# RootGuard 环境安装指南

## 第一步：安装 JDK 17

### 方式一：手动下载安装（推荐）

1. 打开浏览器访问：
   ```
   https://adoptium.net/temurin/releases/?version=17
   ```

2. 选择：
   - Operating System: Windows
   - Architecture: x64
   - Package Type: JDK

3. 点击下载 `.msi` 安装包

4. 双击安装，一路下一步

### 方式二：使用 winget（Windows 10/11）

打开 PowerShell（管理员），运行：
```powershell
winget install EclipseAdoptium.Temurin.17.JDK
```

---

## 第二步：安装 Android SDK

### 方式一：安装 Android Studio（推荐）

1. 访问：https://developer.android.com/studio
2. 下载 Android Studio
3. 安装时选择：
   - Android SDK
   - Android SDK Platform-Tools
   - Android SDK Build-Tools

### 方式二：仅安装命令行工具

1. 访问：https://developer.android.com/studio#command-tools
2. 下载 "Command line tools only"
3. 解压到 `C:\Android\sdk`

---

## 第三步：配置环境变量

打开 PowerShell（管理员），运行：

```powershell
# 设置 JAVA_HOME
[Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Program Files\Eclipse Adoptium\jdk-17.0.9.9-hotspot", "User")

# 设置 ANDROID_HOME
[Environment]::SetEnvironmentVariable("ANDROID_HOME", "C:\Users\$env:USERNAME\AppData\Local\Android\Sdk", "User")

# 添加到 PATH
$path = [Environment]::GetEnvironmentVariable("Path", "User")
[Environment]::SetEnvironmentVariable("Path", "$path;%JAVA_HOME%\bin;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools", "User")
```

---

## 第四步：验证安装

重新打开 PowerShell，运行：

```powershell
java -version
javac -version
```

应该显示：
```
openjdk version "17.0.9" 2023-10-17
```

---

## 第五步：构建 APK

```powershell
cd C:\Users\Administrator\.qclaw\workspace\RootGuard

# 授权执行
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

# 构建
.\gradlew.bat assembleDebug
```

APK 会生成在：
```
app\build\outputs\apk\debug\app-debug.apk
```

---

## 第六步：安装到手机

```powershell
# 检查设备
adb devices

# 安装
adb install -r app\build\outputs\apk\debug\app-debug.apk
```

---

## 快速安装命令汇总

安装完 JDK 和 Android SDK 后，一键运行：

```powershell
cd C:\Users\Administrator\.qclaw\workspace\RootGuard
.\gradlew.bat assembleDebug
adb install -r app\build\outputs\apk\debug\app-debug.apk
adb shell am start -n com.rootguard.app/.MainActivity
```

---

## 需要帮助？

如果遇到问题：
1. 检查 JDK 是否正确安装：`java -version`
2. 检查 Android SDK：`adb version`
3. 查看 Gradle 输出错误信息