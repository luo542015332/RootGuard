# PandaTurbo 项目工作记录

## 项目信息

| 项目 | 值 |
|------|-----|
| 项目名称 | PandaTurbo |
| 本地路径 | `D:\PandaProjects\PandaTurbo` |
| 包名 | `com.pandasu.turbo` |
| 当前版本 | v3.2.9 (versionCode: 12) |

---

## GitHub 配置

### 仓库信息
| 项目 | 值 |
|------|-----|
| 仓库地址 | https://github.com/luo542015332/RootGuard |
| 所有者 | luo542015332 |
| 仓库名 | RootGuard |
| 默认分支 | main |

### 认证信息
| 项目 | 值 |
|------|-----|
| 用户名 | luo542015332 |
| Token | *(请从 GitHub Settings > Developer settings > Personal access tokens 获取)* |

**Token 使用方式：**
```bash
# HTTPS URL 格式
https://YOUR_TOKEN@github.com/luo542015332/RootGuard.git

# API 调用
-H "Authorization: token YOUR_TOKEN"
```

---

## 发布地址

### Release 页面
- **最新 Release:** https://github.com/luo542015332/RootGuard/releases/latest
- **v3.2.9 Release:** https://github.com/luo542015332/RootGuard/releases/tag/v3.2.9

### APK 下载地址
- **v3.2.9 APK:** https://github.com/luo542015332/RootGuard/releases/download/v3.2.9/PandaTurbo_v3.2.9.apk

---

## 技术栈

| 层级 | 技术 |
|------|------|
| 语言 | Kotlin |
| UI | Jetpack Compose |
| 架构 | MVVM |
| Root 方案 | Shizuku + 直接 su |
| LSP 模块 | LSPosed (main.jar) |

---

## 关键文件路径

| 文件 | 路径 |
|------|------|
| 主构建配置 | `D:\PandaProjects\PandaTurbo\app\build.gradle` |
| LSP 模块入口 | `D:\PandaProjects\PandaTurbo\app\src\main\java\com\pandasu\turbo\lspoed\XposedEntry.kt` |
| 更新管理器 | `D:\PandaProjects\PandaTurbo\app\src\main\java\com\pandasu\turbo\util\UpdateManager.kt` |
| 电池工具 | `D:\PandaProjects\PandaTurbo\app\src\main\java\com\pandasu\turbo\util\BatteryUtil.kt` |
| 温控工具 | `D:\PandaProjects\PandaTurbo\app\src\main\java\com\pandasu\turbo\util\ThermalUtil.kt` |
| 系统优化 | `D:\PandaProjects\PandaTurbo\app\src\main\java\com\pandasu\turbo\util\SystemTweaksHelper.kt` |
| 后台管理 | `D:\PandaProjects\PandaTurbo\app\src\main\java\com\pandasu\turbo\util\BackgroundManager.kt` |

---

## 更新管理器配置

**UpdateManager.kt 中的配置：**
```kotlin
private const val GITHUB_OWNER = "luo542015332"
private const val GITHUB_REPO = "RootGuard"
```

**检测更新 API：**
```
https://api.github.com/repos/luo542015332/RootGuard/releases/latest
```

---

## 发布流程

1. 修改版本号（`app/build.gradle`）
   - `versionCode` + 1
   - `versionName` 更新

2. 构建 APK
   ```bash
   ./gradlew assembleDebug
   ```

3. 创建 GitHub Release
   - Tag: `v{versionName}`
   - 上传 APK

4. 手机端检查更新

---

## 设备信息

| 项目 | 值 |
|------|-----|
| 设备 | Redmi K70 Pro |
| 代号 | manet |
| 芯片 | SM8650 (骁龙8 Gen 3) |
| 系统 | Android 16 |
| UI | HyperOS 3.0 |
| Root | APatch |

---

## 记录时间

- 创建时间: 2026-04-18 00:51 GMT+8
- 最后更新: 2026-04-18 00:51 GMT+8
