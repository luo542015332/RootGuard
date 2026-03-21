# RootGuard 🐼

一个熊猫主题的 Android Root 权限管理应用，类似 Kerneisu。

![Build APK](https://github.com/YOUR_USERNAME/RootGuard/workflows/Build%20APK/badge.svg)

## 功能特性

- 🔐 **Root 权限管理** - 查看和管理应用的 Root 权限
- 📦 **模块管理** - 安装、启用、禁用、删除 Magisk 模块
- 📱 **应用管理** - 查看所有已安装应用及其 Root 状态
- 📋 **日志查看** - 查看 Magisk 和系统日志
- 🎨 **熊猫主题** - 6 种可爱的熊猫主题
- 🌙 **深色模式** - 支持系统深色模式和动态颜色

## 下载

从 [Releases](https://github.com/YOUR_USERNAME/RootGuard/releases) 页面下载最新 APK。

## 截图

| 首页 | 模块管理 | 应用管理 |
|:---:|:---:|:---:|
| 🏠 | 📦 | 📱 |

## 构建

```bash
# 克隆项目
git clone https://github.com/YOUR_USERNAME/RootGuard.git
cd RootGuard

# 构建 Debug APK
./gradlew assembleDebug

# APK 位置
# app/build/outputs/apk/debug/app-debug.apk
```

## 技术栈

- Kotlin
- Jetpack Compose
- Hilt (依赖注入)
- MVVM 架构
- Material 3 设计

## 要求

- Android 8.0+ (API 26)
- Magisk 已安装
- Root 权限

## 许可证

MIT License