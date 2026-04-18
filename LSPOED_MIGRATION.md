# PandaTurbo LSPoed 模块移植说明

## 移植来源
原版 PandaSU 3.6.6 (`C:\PandaSU_3.6.6`)

## 关键修改

### 1. 包名替换
- **旧包名**: `com.rootguard.app`
- **新包名**: `com.pandasu.turbo`

### 2. 新增文件

#### LSPoed 核心模块 (`app/src/main/java/com/pandasu/turbo/lspoed/`)

| 文件 | 说明 |
|------|------|
| `XposedEntry.kt` | Xposed 模块入口，实现 IXposedHookZygoteInit 和 IXposedHookLoadPackage |
| `HMAService.kt` | Hide My Applist 服务，管理应用隐藏逻辑 |
| `PackageManagerHookHelper.kt` | PackageManager Hook 辅助类，关键修改 TARGET_PACKAGE |
| `AppDataIsolationHook.kt` | 应用数据隔离 Hook |

#### 配置文件

| 文件 | 说明 |
|------|------|
| `app/src/main/assets/xposed_init` | LSPosed 模块入口配置 |

### 3. 依赖更新

在 `build.gradle` 中添加：
```gradle
// Xposed API (compileOnly - provided by LSPosed at runtime)
compileOnly 'de.robv.android.xposed:api:82'
compileOnly 'de.robv.android.xposed:api:82:sources'
```

### 4. 关键代码修改

#### PackageManagerHookHelper.kt
```kotlin
// 关键修改：使用 PandaTurbo 的包名
private const val TARGET_PACKAGE = "com.pandasu.turbo"
```

#### XposedEntry.kt
```kotlin
// 包名改为 com.pandasu.turbo
package com.pandasu.turbo.lspoed
```

## 待移植的剩余模块

### 原版 smali_classes2/com/rootguard/app/
- [x] Xposed Hook 入口 (已重写为 Kotlin)

### 原版 smali_classes4/com/rootguard/app/lspoed/
- [ ] 完整的 LSPoed 模块核心（需要从 smali 反编译）

### 原版 smali_classes6/com/rootguard/app/receiver/
- [ ] AutoApplyReceiver - 自动应用广播接收器

### 原版 smali_classes8/com/rootguard/app/data/
- [ ] MagiskProvider - Magisk 数据提供器
- [ ] RootHider - Root 隐藏核心逻辑
- [ ] 各种数据模型

### 原版 smali_classes11/com/rootguard/app/di/
- [ ] Hilt 依赖注入配置

### 原版 smali_classes12/com/rootguard/app/ui/
- [x] 已用 Compose 重写

### 原版 smali_classes14/com/rootguard/app/utils/
- [ ] OneClickIsolationHelper - 一键隔离辅助
- [ ] DetectorScanner - 检测器扫描
- [ ] SystemAdapter - 系统适配器
- [ ] 其他工具类

### 原版 smali_classes15/com/rootguard/app/hook/
- [ ] 完整的 Hook 实现（PmsHookTarget29/30/31/33/34/36 等）

### 原版 smali_classes16/com/rootguard/app/util/
- [ ] 各种工具类

## 构建步骤

1. **同步 Gradle**
   ```bash
   ./gradlew sync
   ```

2. **构建 APK**
   ```bash
   ./gradlew assembleDebug
   ```

3. **注入 LSPoed DEX**（如果需要）
   ```bash
   python inject_dex.py
   ```

4. **签名 APK**
   ```bash
   apksigner sign --ks v2v3.keystore --ks-key-alias 0 --ks-pass pass:123456 --key-pass pass:123456 --out app-signed.apk app-debug.apk
   ```

5. **安装测试**
   ```bash
   adb install -r app-signed.apk
   ```

## 注意事项

1. **包名一致性**：确保所有地方都使用 `com.pandasu.turbo`
2. **Xposed API**：使用 compileOnly，因为 LSPosed 会在运行时提供
3. **权限**：需要在 AndroidManifest.xml 中添加 Xposed 模块声明
4. **测试**：安装后需要在 LSPosed Manager 中启用模块并选择作用域

## 已知问题

1. LSPoed 包名不匹配问题已通过修改 TARGET_PACKAGE 解决
2. 部分 Hook 实现需要进一步从 smali 反编译和移植
3. GameAccessibilityService 的 `packageName == packageName` bug 需要修复

## 下一步

1. 完善 HMAService 的完整实现
2. 移植 RootHider 核心逻辑
3. 修复 GameAccessibilityService 的游戏包名判断
4. 测试 Xposed 模块是否正常工作
