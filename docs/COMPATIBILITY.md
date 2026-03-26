# PandaSU 多版本兼容性文档

## 概述

PandaSU v2.2.0+ 引入了全面的多版本兼容性支持，确保在 Android 8.0 (Oreo) 到 Android 14 (Upside Down Cake) 以及各种定制系统上稳定运行。

## 支持范围

### Android 版本支持
- **最低版本**: Android 8.0 (API 26)
- **最高版本**: Android 14 (API 34)
- **目标版本**: Android 13 (API 33)

### 定制系统支持
- **小米/红米**: MIUI 12-14, HyperOS 1.0+
- **华为/荣耀**: HarmonyOS 2.0+
- **OPPO**: ColorOS 12-14
- **vivo**: OriginOS 3-4
- **三星**: OneUI 5-6
- **其他**: 原生 Android, AOSP

## 核心兼容性功能

### 1. Android 版本兼容性检测 (`AndroidVersionCompat.kt`)
```kotlin
// 版本常量
const val ANDROID_8 = Build.VERSION_CODES.O
const val ANDROID_14 = Build.VERSION_CODES.UPSIDE_DOWN_CAKE

// 功能检测
fun supportsScopedStorage(): Boolean = isAtLeastQ()
fun supportsDynamicColors(): Boolean = isAtLeastS()
fun supportsSeccomp(): Boolean = isAtLeastO()
```

### 2. 设备厂商识别
- **小米设备**: `isXiaomiDevice()` 
- **华为设备**: `isHuaweiDevice()`
- **OPPO设备**: `isOppoDevice()`
- **vivo设备**: `isVivoDevice()`
- **三星设备**: `isSamsungDevice()`

### 3. 定制系统适配 (`SystemAdapter.kt`)
为不同系统提供专门的策略：

```kotlin
// HyperOS 策略
object HyperOSStrategy : AppListStrategy {
    override fun getInstalledApps(context: Context): List<String> {
        // 使用多方法获取应用列表，绕过系统限制
        return getInstalledAppsMultiMethod(context)
    }
}

// MIUI 策略
object MIUIStrategy : AppListStrategy {
    override fun isSystemApp(packageName: String, context: Context): Boolean {
        // 使用安装路径判断，避免 FLAG_SYSTEM 误判
        return isSystemAppByInstallPath(packageName, context)
    }
}
```

### 4. 系统能力检测
- **分区存储**: Android 10+ (API 29)
- **动态色彩**: Android 12+ (API 31)
- **Seccomp**: Android 8.0+ (API 26)
- **App Standby**: Android 6.0+ (API 23)

## 兼容性测试

### 测试套件 (`CompatibilityTester.kt`)
包含8个测试项目：

1. **系统信息测试**: 获取设备基本信息
2. **版本兼容性测试**: 检查 Android 版本支持
3. **设备厂商测试**: 识别设备品牌和制造商
4. **定制系统测试**: 检测定制系统类型
5. **功能支持测试**: 验证系统能力
6. **应用列表获取测试**: 测试应用列表提取方法
7. **系统属性伪装测试**: 验证属性伪装功能
8. **Root权限测试**: 检查 Root 环境

### 运行测试
```kotlin
CompatibilityTester.runFullCompatibilityTest(context) { result ->
    Logger.i("兼容性测试结果: ${result.testName} - ${if (result.passed) "通过" else "失败"}")
    if (!result.passed) {
        result.suggestions.forEach { suggestion ->
            Logger.w("建议: $suggestion")
        }
    }
}
```

## 降级机制

当高版本特性不可用时，自动使用低版本替代方案：

### 1. 应用列表获取降级
1. **首选**: PackageManager.getInstalledApplications() + 路径判断
2. **备选**: KernelSU RootService（需要 Root）
3. **兜底**: 系统命令 `pm list packages`

### 2. 系统属性伪装降级
1. **首选**: 完整属性伪装（Android 9+）
2. **备选**: 基础属性伪装（Android 8）
3. **兜底**: 只伪装关键属性

### 3. Root 权限检测降级
1. **首选**: 多方法综合检测
2. **备选**: 单一可靠方法
3. **兜底**: 用户手动选择

## 针对特定系统的优化

### HyperOS/MIUI 优化
- **应用列表获取**: 使用安装路径判断替代 FLAG_SYSTEM 标志
- **权限管理**: 增强后台启动权限检查
- **电池优化**: 自动申请电池优化白名单

### HarmonyOS 优化
- **权限适配**: 使用 HarmonyOS 特定的权限请求方式
- **服务绑定**: 优化前台服务绑定机制
- **通知渠道**: 适配 HarmonyOS 通知系统

### ColorOS/OriginOS 优化
- **自启动管理**: 自动处理应用自启动限制
- **后台限制**: 优化后台运行策略
- **权限弹窗**: 适配厂商特定的权限弹窗样式

## 版本兼容性矩阵

| 功能 | Android 8-9 | Android 10-11 | Android 12-13 | Android 14 |
|------|-------------|---------------|---------------|------------|
| 应用列表获取 | ✔ (基础) | ✔ (增强) | ✔ (完整) | ✔ (完整) |
| 属性伪装 | ✔ (基础) | ✔ (增强) | ✔ (完整) | ✔ (完整) |
| 分区存储 | ✘ | ✔ | ✔ | ✔ |
| 动态色彩 | ✘ | ✘ | ✔ | ✔ |
| Seccomp | ✔ | ✔ | ✔ | ✔ |

## 已知问题和解决方案

### 1. HyperOS 应用列表获取不全
- **问题**: HyperOS 的 PackageManager 滥用 FLAG_SYSTEM 标志
- **解决方案**: 使用多方法组合（安装路径 + RootService + 系统命令）

### 2. MIUI 后台限制
- **问题**: MIUI 严格的后台启动限制
- **解决方案**: 自动申请电池优化白名单，使用前台服务

### 3. HarmonyOS 权限差异
- **问题**: HarmonyOS 权限系统与 AOSP 有差异
- **解决方案**: 使用兼容性包装器，动态适配权限请求

## 开发者指南

### 添加新的兼容性检查
```kotlin
fun checkNewFeatureCompatibility(): Boolean {
    return if (isAtLeastR()) {
        // Android 12+ 的特性
        true
    } else {
        // 降级方案
        Logger.w("设备不支持此特性，使用降级方案")
        false
    }
}
```

### 扩展定制系统支持
```kotlin
class NewOSStrategy : AppListStrategy {
    override fun getInstalledApps(context: Context): List<String> {
        // 实现特定系统的应用列表获取逻辑
    }
    
    override fun isSystemApp(packageName: String, context: Context): Boolean {
        // 实现特定系统的系统应用判断逻辑
    }
}
```

### 使用兼容性报告
```kotlin
val report = AndroidVersionCompat.generateCompatibilityReport()
Logger.i("设备信息: ${report.deviceInfo}")
Logger.i("支持的功能: ${report.supportedFeatures}")
Logger.i("不兼容的项目: ${report.incompatibilities}")
```

## 测试验证

### 单元测试
```kotlin
@Test
fun testAndroidVersionCompat() {
    // 测试版本检测
    assertTrue(AndroidVersionCompat.isAtLeastO())
    
    // 测试设备厂商识别
    assertTrue(AndroidVersionCompat.isXiaomiDevice() || 
              AndroidVersionCompat.isHuaweiDevice())
    
    // 测试功能支持
    assertTrue(AndroidVersionCompat.supportsScopedStorage())
}
```

### 集成测试
1. **真实设备测试**: 在不同品牌和 Android 版本的设备上验证
2. **自动化测试**: 使用 CI/CD 进行多环境测试
3. **用户反馈收集**: 通过应用内反馈机制收集兼容性问题

## 发布说明模板

### v2.2.0+ 兼容性改进
```
## 多版本兼容性支持

### 新增功能
- ✅ 支持 Android 8.0 - 14.0 全版本覆盖
- ✅ 适配 6 种主流定制系统（MIUI/HyperOS/HarmonyOS等）
- ✅ 智能降级机制，确保低版本设备功能完整
- ✅ 完整的兼容性测试套件

### 优化项目
- 🔧 改进应用列表获取，解决 HyperOS/MIUI 限制
- 🔧 增强设备厂商识别准确性
- 🔧 优化系统属性伪装策略
- 🔧 提升 Root 环境检测可靠性

### 兼容性矩阵
详见 docs/COMPATIBILITY.md

### 测试建议
建议在不同品牌和 Android 版本的设备上进行测试验证
```

## 未来规划

### 短期计划（v2.3.0）
1. 增加更多定制系统支持（FlymeOS、MyUI等）
2. 优化性能监控，减少兼容性检测开销
3. 添加远程配置，动态调整兼容性策略

### 长期规划（v3.0.0）
1. 模块化兼容性框架，支持插件扩展
2. 云端兼容性数据库，收集和分析设备信息
3. 自动化适配工具，减少手动配置工作

## 贡献指南

欢迎贡献兼容性改进！

1. **报告兼容性问题**: 在 Issues 中提供详细的设备信息
2. **提交适配代码**: 为新的定制系统添加策略类
3. **改进测试覆盖**: 添加针对特定设备的测试用例
4. **更新文档**: 完善兼容性矩阵和使用指南

## 联系和支持

- **GitHub Issues**: 报告兼容性问题
- **文档**: 查看详细的使用指南
- **社区**: 加入讨论，分享适配经验