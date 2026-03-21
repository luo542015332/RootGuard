# 🚀 RootGuard 快速开始

## 📥 下载 APK

### 方式一：GitHub Actions 自动构建

每次代码提交后，GitHub Actions 会自动构建 APK：

1. 访问 [Actions 页面](../../actions)
2. 选择最新的成功构建
3. 下载 `rootguard-debug-apk` 或 `rootguard-release-apk`

### 方式二：本地构建

#### Windows

1. 安装 [JDK 17](https://adoptium.net/temurin/releases/?version=17)
2. 安装 [Android Studio](https://developer.android.com/studio)
3. 双击运行 `build.bat`
4. 等待构建完成

#### Linux/Mac

```bash
# 1. 安装 JDK 17
# Ubuntu/Debian
sudo apt install openjdk-17-jdk

# macOS
brew install openjdk@17

# 2. 克隆项目
git clone https://github.com/yourusername/RootGuard.git
cd RootGuard

# 3. 运行构建脚本
chmod +x build.sh
./build.sh
```

## 📱 安装 APK

### 启用未知来源安装

**Android 8.0+:**
1. 设置 → 应用 → 特殊应用权限 → 安装未知应用
2. 选择你的文件管理器
3. 开启「允许来自此来源的应用」

**Android 7.0 及以下:**
1. 设置 → 安全
2. 开启「未知来源」

### 安装步骤

1. 将 APK 文件传输到手机
2. 使用文件管理器找到 APK
3. 点击安装
4. 授予 Root 权限（首次启动时）

## 🎨 首次使用

### 1. 检查 Root 状态
- 打开 RootGuard
- 首页显示 Root 状态
- 绿色表示已获取 Root

### 2. 选择主题
- 设置 → 主题设置
- 选择你喜欢的熊猫主题 🐼

### 3. 配置 Root 请求弹窗
- 设置 → 安全
- 开启「弹窗提示」
- 授予悬浮窗权限

### 4. 安装模块（可选）
- 模块管理 → 安装模块
- 选择 Magisk 模块 ZIP 文件
- 重启设备生效

## 🔧 常见问题

### 安装失败

**问题**: 提示「应用未安装」

**解决**:
1. 检查是否已安装同名应用
2. 卸载旧版本后重试
3. 检查 APK 是否完整下载

### 无法获取 Root

**问题**: 显示「未获取 Root」

**解决**:
1. 确保设备已刷入 Magisk
2. 授予 RootGuard Root 权限
3. 重启设备后重试

### 主题不生效

**问题**: 切换主题后界面无变化

**解决**:
1. 完全关闭应用
2. 重新打开
3. 清除应用数据（设置 → 应用 → RootGuard → 存储 → 清除数据）

## 📋 系统要求

| 项目 | 要求 |
|------|------|
| Android 版本 | 8.0+ (API 26+) |
| Root 权限 | 需要 |
| Magisk | 推荐 24.0+ |
| 存储空间 | 50MB+ |

## 🐛 反馈问题

遇到问题？请提供以下信息：

1. 设备型号
2. Android 版本
3. Magisk 版本
4. 问题描述
5. 复现步骤

提交 Issue 或联系开发者

## 🌟 功能亮点

- 🐼 **6 种熊猫主题** - 可爱又实用
- 📦 **模块管理** - 轻松安装 Magisk 模块
- 🛡️ **应用管理** - 控制 Root 权限
- 🔔 **权限弹窗** - 实时拦截 Root 请求
- 🔄 **一键重启** - 支持多种重启模式

---

**RootGuard** - 你的熊猫主题 Root 管理器 🐼
