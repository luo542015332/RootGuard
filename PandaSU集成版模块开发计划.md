# PandaSU 集成版模块开发计划

## 目标
不安装 HMA-OSS，只升级 PandaSU 模块即可屏蔽 AppList Detector 检测。

## 技术方案

### 方案：内置独立 Hook 框架

在 PandaSU ZygiskNext 模块中**内置** YAHFA 或 SandHook 框架，直接 Hook PackageManager API。

```
┌─────────────────────────────────────────────────────────────┐
│         PandaSU 集成版模块 (单一模块实现)                    │
├─────────────────────────────────────────────────────────────┤
│  Layer 1: ZygiskNext 注入 (现有)                           │
│  └── 获取进程注入点，进入模块代码                            │
├─────────────────────────────────────────────────────────────┤
│  Layer 2: Native Hook (现有)                               │
│  ├── open/getdents64  → 文件隐藏                           │
│  ├── syscall         → 属性伪装                            │
│  └── execve         → 命令阻止                             │
├─────────────────────────────────────────────────────────────┤
│  Layer 3: Java Hook (新增 - 内置 SandHook/YAHFA)           │
│  ├── PackageManager.getInstalledPackages()                 │
│  ├── PackageManager.getInstalledApplications()             │
│  ├── IPackageManager.Stub (AIDL)                           │
│  └── 从返回列表中过滤隐藏的包名                             │
└─────────────────────────────────────────────────────────────┘
```

## 实现步骤

### 1. 添加 Hook 框架依赖

在 `PandaSU-System-Helper/build.gradle` 中添加：

```groovy
dependencies {
    // 内置 Hook 框架（选择其一）
    implementation 'com.github.Hook frameworks 尚未完全开源'
    
    // 或使用 LSPosed 的 LSPlant（需提取）
}
```

### 2. 实现 PackageManager Hook

```kotlin
// PackageManagerHook.kt
object PackageManagerHook {
    
    // 需要隐藏的包名列表
    private val hidePackages = setOf(
        "com.topjohnwu.magisk",
        "com.kingroot",
        "me.weishu.kernelsu",
        "org.lsposed.manager",
        "com.now",           // 爱玩机
        "com.aliuoud",       // Scene
        // ... 更多检测工具
    )
    
    fun init() {
        // Hook getInstalledPackages
        hookMethod(
            "android.app.ApplicationPackageManager",
            "getInstalledPackages",
            object : XC_MethodHook() {
                override fun afterHookedMethod(param: MethodHookParam) {
                    val packages = param.result as? List<*> ?: return
                    // 过滤掉需要隐藏的包
                    val filtered = packages.filter { pkg ->
                        // 获取包名并检查是否需要隐藏
                        !shouldHide(getPackageName(pkg))
                    }
                    param.result = filtered
                }
            }
        )
        
        // Hook getInstalledApplications
        hookMethod(
            "android.app.ApplicationPackageManager", 
            "getInstalledApplications",
            object : XC_MethodHook() {
                override fun afterHookedMethod(param: MethodHookParam) {
                    val apps = param.result as? List<*> ?: return
                    val filtered = apps.filter { app ->
                        !shouldHide(getAppPackageName(app))
                    }
                    param.result = filtered
                }
            }
        )
    }
    
    private fun shouldHide(packageName: String): Boolean {
        return hidePackages.any { pkg ->
            packageName.contains(pkg) || pkg.contains(packageName)
        }
    }
}
```

### 3. 在 ZygiskNext 模块中初始化

```cpp
// native.cpp 添加
extern "C" void init_java_hooks(JNIEnv* env) {
    // 调用 Java 层初始化
    // 加载内置的 Hook 框架
    // 初始化 PackageManager Hook
}
```

## 需要解决的技术问题

### 1. Hook 框架选择
| 框架 | 优点 | 缺点 |
|------|------|------|
| YAHFA | 开源、成熟 | 需要自行处理兼容性 |
| SandHook | 高效 | 文档较少 |
| LSPlant | LSPosed 同款 | 未完全开源 |

### 2. Android 版本兼容性
需要为不同 Android 版本实现不同的 Hook 点：
- Android 9-10: PackageManagerService
- Android 11: PackageManagerService + computer()
- Android 12+: Snapshot 架构

### 3. 模块体积
内置 Hook 框架会增加模块体积（约 1-2MB）

---

## 替代方案：快速实现

### 方案 B：创建"PandaSU 集成版"双版本模块

打包两个版本：
1. **基础版**：现有功能（文件隐藏 + 属性伪装）
2. **集成版**：基础功能 + 内置 Hook

用户只需安装集成版即可。

---

## 建议行动

1. **短期**：发布新版模块，增强现有隐藏列表
2. **中期**：集成 YAHFA 框架，实现 Java Hook
3. **长期**：提供模块版本选择

需要我开始实现这个方案吗？
