# RootGuard - Android Root 权限管理器

<p align="center">
  <img src="docs/icon.png" width="120" alt="RootGuard Icon"/>
</p>

<p align="center">
  <strong>一个现代化的 Android Root 权限管理应用</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Android-green?style=flat-square"/>
  <img src="https://img.shields.io/badge/Language-Kotlin-blue?style=flat-square"/>
  <img src="https://img.shields.io/badge/UI-Jetpack%20Compose-purple?style=flat-square"/>
  <img src="https://img.shields.io/badge/License-MIT-orange?style=flat-square"/>
</p>

---

## 功能特性

| 功能 | 说明 |
|------|------|
| 🔐 **Root 状态检测** | 检测设备是否已获取 Root 权限 |
| 📦 **模块管理** | 管理 Magisk/KernelSU 模块（安装/卸载/启用/禁用） |
| 🛡️ **应用管理** | 控制各应用的 Root 授权状态 |
| 📊 **系统信息** | 显示 Android 版本、安全补丁、SELinux 状态等 |
| 📜 **日志查看** | 记录 Root 权限请求和操作日志 |
| ⚙️ **设置** | 深色模式、动态颜色、通知、自动拒绝等 |
| 🔔 **Root 请求弹窗** | 悬浮窗显示 Root 权限请求，支持授予/拒绝 |
| 🎨 **主题自定义** | 6 种熊猫主题，支持深色/浅色模式 |

## 技术栈

- **语言**: Kotlin
- **UI**: Jetpack Compose (Material 3)
- **架构**: MVVM + Clean Architecture
- **依赖注入**: Hilt
- **存储**: DataStore Preferences
- **异步**: Kotlin Coroutines + Flow

## 项目结构

```
RootGuard/
├── app/
│   ├── src/main/java/com/rootguard/app/
│   │   ├── data/
│   │   │   ├── local/          # 本地存储 (DataStore)
│   │   │   ├── magisk/         # Magisk API 通信
│   │   │   └── repository/     # 数据仓库
│   │   ├── domain/
│   │   │   └── usecase/        # 业务用例
│   │   ├── ui/
│   │   │   ├── screens/        # 界面层
│   │   │   ├── navigation/     # 导航
│   │   │   └── theme/          # 主题
│   │   ├── di/                 # 依赖注入
│   │   ├── service/            # 后台服务
│   │   ├── receiver/           # 广播接收器
│   │   └── utils/              # 工具类
│   └── src/main/res/           # 资源文件
├── build.gradle                # 根构建配置
├── settings.gradle             # 项目设置
└── gradle.properties           # Gradle 属性
```

## Magisk API 集成

RootGuard 通过以下方式与 Magisk 通信：

### 1. Root 权限检测
```kotlin
val process = Runtime.getRuntime().exec("su -c id")
```

### 2. 模块列表读取
```bash
# 读取 /data/adb/modules 目录
su -c ls -1 /data/adb/modules

# 读取 module.prop
su -c cat /data/adb/modules/<module_id>/module.prop
```

### 3. 模块启用/禁用
```bash
# 禁用模块（创建 disable 文件）
su -c touch /data/adb/modules/<module_id>/disable

# 启用模块（删除 disable 文件）
su -c rm -f /data/adb/modules/<module_id>/disable
```

### 4. 应用权限管理
```bash
# 查询权限策略
su -c sqlite3 /data/adb/magisk.db "SELECT * FROM policies"

# 更新权限策略
# policy: 0 = 询问, 1 = 拒绝, 2 = 允许
su -c sqlite3 /data/adb/magisk.db "UPDATE policies SET policy=2 WHERE package_name='com.example'"
```

### 5. Magisk 版本获取
```bash
su -c magisk -V   # 版本号
su -c magisk -v    # 版本名
```

## 构建

### 环境要求

- Android Studio Hedgehog (2023.1.1) 或更高版本
- JDK 17
- Android SDK 34
- Gradle 8.2

### 构建步骤

1. 克隆项目
```bash
git clone https://github.com/yourusername/RootGuard.git
cd RootGuard
```

2. 打开 Android Studio，导入项目

3. 等待 Gradle 同步完成

4. 运行/构建
```bash
# 在 Android Studio 中点击 Run

# 或使用命令行
./gradlew assembleDebug    # Debug APK
./gradlew assembleRelease  # Release APK
```

## 权限说明

| 权限 | 用途 |
|------|------|
| `INTERNET` | 检查更新 |
| `RECEIVE_BOOT_COMPLETED` | 开机自启监控服务 |
| `FOREGROUND_SERVICE` | 前台服务 |
| `POST_NOTIFICATIONS` | Root 请求通知 |
| `SYSTEM_ALERT_WINDOW` | 显示 Root 请求悬浮窗 |
| `FOREGROUND_SERVICE_SPECIAL_USE` | 特殊用途前台服务 |

## 截图预览

> (待添加)

## 许可证

本项目基于 MIT 许可证开源。

## 贡献

欢迎提交 Issue 和 Pull Request！

## Root 请求弹窗

RootGuard 支持通过悬浮窗显示 Root 权限请求：

### 功能特点

- 🔔 **实时弹窗**: 应用请求 Root 时立即显示悬浮窗
- ✅ **一键授权**: 点击即可授予或拒绝权限
- 📝 **记住选择**: 可选择记住本次决定，下次自动处理
- 🔒 **安全提示**: 明确提示 Root 权限的风险

### 启用方法

1. 打开 RootGuard → 设置
2. 开启「弹窗提示」开关
3. 授予「悬浮窗权限」（系统会提示）

### 工作原理

```
应用请求 Root
    ↓
Magisk 记录到数据库
    ↓
RootRequestMonitorService 检测到新请求
    ↓
RootRequestService 显示悬浮窗
    ↓
用户点击 授予/拒绝
    ↓
更新 Magisk 数据库策略
```

## 🎨 熊猫主题

RootGuard 提供 6 种可爱的熊猫主题：

| 主题 | 图标 | 描述 |
|------|------|------|
| 🐼 **经典熊猫** | 黑白配色 | 经典黑白熊猫配色 |
| 🎋 **竹林熊猫** | 绿色系 | 竹子绿配色，清新自然 |
| 🌙 **暗夜熊猫** | 深色系 | 深色主题，护眼模式 |
| 🌸 **樱花熊猫** | 粉色系 | 粉色樱花配色 |
| 🌟 **金黄熊猫** | 暖色系 | 金黄色调，温暖明亮 |
| 🌊 **海洋熊猫** | 蓝色系 | 海洋蓝配色，清爽舒适 |

### 设置方法

1. 打开 RootGuard → 设置 → 主题设置
2. 选择你喜欢的熊猫主题
3. 支持深色/浅色模式切换

## 📥 快速开始

### 下载 APK

1. 访问 [GitHub Releases](../../releases) 下载最新版本
2. 或使用 [GitHub Actions](../../actions) 获取自动构建版本

### 安装

**方式一：使用 ADB（推荐）**
```bash
# Windows
.\install.ps1

# Linux/Mac
./install.sh
```

**方式二：手动安装**
1. 将 APK 复制到手机
2. 使用文件管理器安装
3. 允许「未知来源」安装

详细安装指南：[INSTALL.md](INSTALL.md)

快速开始指南：[QUICKSTART.md](QUICKSTART.md)

## 📚 文档

| 文档 | 说明 |
|------|------|
| [README.md](README.md) | 项目介绍（本文档） |
| [QUICKSTART.md](QUICKSTART.md) | 快速开始指南 |
| [BUILD.md](BUILD.md) | 构建指南 |
| [INSTALL.md](INSTALL.md) | 安装指南 |
| [RELEASE.md](RELEASE.md) | 发布指南 |
| [PROJECT_SUMMARY.md](PROJECT_SUMMARY.md) | 项目总结 |

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

本项目基于 [MIT License](LICENSE) 开源。

## 🙏 致谢

- [Magisk](https://github.com/topjohnwu/Magisk) - 开源 Root 解决方案
- [Jetpack Compose](https://developer.android.com/compose) - 现代 Android UI 框架
- [Hilt](https://dagger.dev/hilt/) - 依赖注入框架

---

<p align="center">
  <strong>🐼 RootGuard - 你的熊猫主题 Root 管理器</strong>
</p>
