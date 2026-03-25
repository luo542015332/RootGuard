# HMA-OSS 防检测机制分析与 PandaSU 集成方案

## 一、HMA-OSS 核心防检测原理

### 1.1 检测手段 vs 防护方式

| AppList Detector 检测手段 | HMA-OSS 防护方式 |
|-------------------------|------------------|
| `PackageManager.getInstalledPackages()` | Hook 并过滤返回值 |
| `PackageManager.getInstalledApplications()` | Hook 并过滤返回值 |
| 读取 `/data/system/packages.xml` | 文件系统层隐藏 |
| `pm list packages` 命令 | Shell 层输出过滤 |
| `UsageStatsManager` 查询 | 专项 Hook 过滤 |

### 1.2 HMA-OSS 核心技术架构

```
┌─────────────────────────────────────────────┐
│            HMA-OSS (LSPosed)               │
├─────────────────────────────────────────────┤
│  IFrameworkHook 接口                        │
│  ├── load()      - 安装 Hook                │
│  ├── unload()    - 移除 Hook                │
│  └── onConfigChanged() - 配置变更响应       │
├─────────────────────────────────────────────┤
│  PackageManager Hooks (按 Android 版本)     │
│  ├── PmsHookTarget28  - Android 9-10        │
│  ├── PmsHookTarget30  - Android 11          │
│  ├── PmsHookTarget31  - Android 12-12L     │
│  ├── PmsHookTarget33  - Android 13         │
│  └── PmsHookTarget34+ - Android 14+        │
├─────────────────────────────────────────────┤
│  专项 Hooks                                 │
│  ├── ActivityHook         - 阻止启动隐藏应用 │
│  ├── ContentProviderHook  - 拦截 Provider   │
│  ├── AccessibilityHook    - 过滤无障碍服务  │
│  └── ImmHook              - 隐藏输入法       │
└─────────────────────────────────────────────┘
```

### 1.3 Hook 点分析

HMA-OSS 主要 Hook 以下系统服务方法：

```kotlin
// 关键 Hook 点（以 Android 12 为例）
class PmsHookTarget31 {
    // Hook PackageManagerService.computer 方法
    fun hook() {
        XposedHelpers.findAndHookMethod(
            "com.android.server.pm.PackageManagerService",
            lpparam.classLoader,
            "computer",
            long::class.java,  // snapshotId
            int::class.java,  // userId
            String::class.java,  // packageName
            int::class.java,  // flags
            object : XC_MethodHook() {
                override fun afterHookedMethod(param: MethodHookParam) {
                    // 从返回的 PackageList 中移除隐藏的包名
                    filterPackageList(param.result)
                }
            }
        )
    }
}
```

---

## 二、PandaSU 现有模块能力分析

### 2.1 当前实现

PandaSU System-Helper 模块基于 **ZygiskNext API**，主要在 **Native 层**进行 Hook：

```
┌─────────────────────────────────────────────┐
│       PandaSU ZygiskNext Module            │
├─────────────────────────────────────────────┤
│  Native Layer Hooks                        │
│  ├── open/openat         - 文件访问         │
│  ├── stat/lstat          - 文件状态         │
│  ├── access              - 权限检查         │
│  ├── readlink            - 符号链接         │
│  ├── getdents64          - 目录遍历         │
│  ├── syscall             - 属性读取         │
│  └── execve              - 命令执行         │
├─────────────────────────────────────────────┤
│  隐藏策略                                   │
│  ├── Root 文件路径 (/su, /magisk, /busybox)│
│  ├── Root 进程                               │
│  ├── Root 包名 (Magisk, KingRoot, etc.)     │
│  └── 属性伪装 (ro.debuggable, ro.secure)    │
└─────────────────────────────────────────────┘
```

### 2.2 能力对比

| 功能 | HMA-OSS | PandaSU 模块 |
|------|---------|--------------|
| PackageManager API 过滤 | ✅ | ❌ |
| 文件系统隐藏 | ✅ | ✅ |
| 属性伪装 | ✅ | ✅ |
| Activity 启动阻止 | ✅ | ❌ |
| ContentProvider 拦截 | ✅ | ❌ |
| 需要 LSPosed | ✅ | ❌ (用 ZygiskNext) |

### 2.3 核心问题

**Native 层 Hook 无法过滤 Java 层 API 返回值！**

当 AppList Detector 调用：
```java
pm.getInstalledApplications(0)
```

这个调用会走到 `ApplicationPackageManager` → `PackageManagerService`
最终返回的是 Java 层的 `List<ApplicationInfo>` 对象

Native 层的 `open()`/`getdents64()` Hook 只能隐藏文件，无法修改这个 Java 对象的返回值。

---

## 三、集成方案

### 方案一：推荐方案 - 组合使用（当前最优）

**同时安装 PandaSU 模块 + HMA-OSS 模块**

这是最简单有效的方案：
- PandaSU 负责文件隐藏 + 属性伪装
- HMA-OSS 负责 PackageManager API 过滤

```
设备上需要安装：
├── PandaSU App (APK)
├── PandaSU ZygiskNext 模块
└── HMA-OSS LSPosed 模块
```

**优点**：
- 无需额外开发
- 两者功能互补
- 成熟稳定

**缺点**：
- 需要同时安装两个模块
- 需要 LSPosed 环境

---

### 方案二：自研 Java 层 Hook（长期方案）

在 PandaSU 模块中添加类似 HMA-OSS 的 Java 层 Hook。

**技术路线**：
1. 添加 LSPosed 作为可选依赖
2. 实现 `IFrameworkHook` 接口
3. 按 Android 版本实现 `PmsHookTargetXX` 类

**代码示例**：

```kotlin
// PmsHookTarget.kt - 包管理器 Hook
class PmsHookTarget(
    private val scope: Map<String, List<String>>
) : IFrameworkHook {
    
    override fun load() {
        when (Build.VERSION.SDK_INT) {
            in 28..29 -> hookAPI28()
            30 -> hookAPI30()
            in 31..32 -> hookAPI31()
            in 33..33 -> hookAPI33()
            else -> hookAPI34()
        }
    }
    
    private fun hookAPI31() {
        // Android 12+ Hook
        val hookMethod = "computer"
        XposedBridge.hookMethod(
            XposedHelpers.findMethodExact(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                hookMethod,
                Long::class.javaPrimitiveType,
                Int::class.javaPrimitiveType,
                String::class.java,
                Int::class.javaPrimitiveType
            ),
            object : XC_MethodHook() {
                override fun afterHookedMethod(param: MethodHookParam) {
                    // 获取调用者包名
                    val caller = getCallerPackage(param)
                    // 获取配置的作用域
                    val hideList = scope[caller] ?: return
                    // 过滤返回的包列表
                    param.result = filterPackages(param.result, hideList)
                }
            }
        )
    }
    
    private fun filterPackages(result: Any?, hideList: List<String>): Any? {
        // 从 PackageList 中移除 hideList 中的包名
        // 返回过滤后的列表
    }
}
```

**优点**：
- 不依赖 LSPosed（作为可选功能）
- 完全自研

**缺点**：
- 开发工作量大
- 需要处理多 Android 版本兼容性
- 维护成本高

---

### 方案三：集成 LSPosed 模块（折中方案）

在 PandaSU 模块中检测 LSPosed 是否可用，如果可用则加载 Java Hook 功能。

```kotlin
// 检测 LSPosed
fun isLSPosedAvailable(): Boolean {
    return try {
        val cls = Class.forName("org.lsposed.lspd.LSPosed")
        cls.getMethod("getVersion").invoke(null) != null
    } catch (e: Exception) {
        false
    }
}

// 如果可用，加载内置 Hook
fun loadBuiltInHooks() {
    if (isLSPosedAvailable()) {
        // 加载自己的 Java Hook
    }
}
```

---

## 四、结论与建议

### 4.1 最佳实践

**立即可行的方案**：组合使用 PandaSU + HMA-OSS

```
安装步骤：
1. 安装 PandaSU App (v2.1.9+)
2. 安装 PandaSU ZygiskNext 模块 (v2.0.4+)
3. 安装 LSPosed
4. 安装 HMA-OSS 模块
5. 在 LSPosed 中启用 HMA-OSS
6. 配置 HMA-OSS 黑名单
```

### 4.2 测试验证

使用 AppList Detector 测试：
- ✅ PackageManager API → 应显示"未找到"或"正常"
- ✅ 文件系统 → 应隐藏 Root 文件
- ✅ 属性 → 应显示正常设备

### 4.3 后续优化

长期来看，可以在 PandaSU 模块中：
1. 添加 LSPosed 集成检测
2. 提供"HMA 兼容模式"配置
3. 引导用户安装 HMA-OSS

---

## 五、相关资源

- **HMA-OSS 仓库**: https://github.com/frknkrc44/HMA-OSS
- **HMA-OSS 文档**: https://deepwiki.com/frknkrc44/HMA-OSS
- **AppList Detector**: https://github.com/Dr-TSNG/ApplistDetector
- **PandaSU 模块**: `PandaSU-System-Helper/`
