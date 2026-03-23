# HyperOS 应用列表获取问题测试报告

## 测试时间
2026-03-23 09:09

## 测试环境
- 设备: HyperOS (小米)
- 测试应用: AppListTest v1.0
- 测试方法: 3种标准方法

## 测试结果汇总

### 方法1: PackageManager API (GET_META_DATA)
- 总应用数: 299
- 用户应用: 3
- 系统应用: 296
- 耗时: 16ms

### 方法2: pm list packages -3 命令
- 总应用数: 3
- 耗时: 27ms

### 方法3: PackageManager API (MATCH_ALL)
- 总应用数: 299
- 用户应用: 3
- 系统应用: 296
- 耗时: 20ms

## 关键发现

### 问题表现
1. **应用数量严重不足**
   - 实际设备上有 492 个应用 (pm list packages 统计)
   - PackageManager 只返回 299 个应用

2. **用户应用识别失败**
   - 所有方法只识别到 3 个用户应用
   - 实际应该有大量用户应用

3. **关键应用完全未找到**
   - 微信 (com.tencent.mm) - 未找到
   - QQ (com.tencent.mobileqq) - 未找到
   - 王者荣耀 (com.tencent.tmgp.sgame) - 未找到
   - 梦幻西游 (com.netease.dk) - 未找到

### 已确认的事实
1. **微信确实存在于设备上**
   ```
   pm path com.tencent.mm
   输出: package:/data/app/~~9mt1tH0gF-Fd6lSU2JLaUw==/com.tencent.mm-aJ_cITUR86dNnCrrDmH2SQ==/base.apk
   ```

2. **QQ 也存在于设备上**
   ```
   pm path com.tencent.mobileqq
   输出: package:/data/app/~~q8VjIXnLIcXLzBYvF2dCkA==/com.tencent.mobileqq-39FFzEiJmr9UPYV0rJdf0w==/base.apk
   ```

3. **这些应用都安装在 /data/app/ 路径下**
   - 这是用户应用的标准安装路径
   - 但 PackageManager 的 FLAG_SYSTEM 标志被错误设置

## 根本原因分析

### HyperOS 的自定义应用分类机制
HyperOS（类似 MIUI）对 Android 的 PackageManager 行为进行了深度定制：

1. **FLAG_SYSTEM 标志滥用**
   - 绝大多数应用被标记为系统应用
   - 包括安装在 /data/app/ 的应用

2. **pm list packages -3 严重过滤**
   - 标准的 `-3` 参数（只显示第三方应用）被严重过滤
   - 只返回 3 个应用
   - 其他应用都被视为系统应用

3. **包列表不完整**
   - `pm list packages` 返回 492 个应用
   - `PackageManager.getInstalledPackages()` 只返回 299 个
   - 存在应用过滤机制

## 解决方案

### 方案1: 使用安装路径判断（推荐）
```kotlin
val appInfo = pkg.applicationInfo
val sourceDir = appInfo?.sourceDir ?: ""
val isUserApp = sourceDir.startsWith("/data/app/")
```

**优点:**
- 不依赖 FLAG_SYSTEM 标志
- 直接判断安装路径
- 兼容所有 Android 系统
- 准确性高

**缺点:**
- 需要获取所有包（可能性能影响）

### 方案2: 组合判断
```kotlin
val appInfo = pkg.applicationInfo
val isSystemByFlag = appInfo?.let {
    it.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM != 0
} ?: false

val sourceDir = appInfo?.sourceDir ?: ""
val isSystemByPath = sourceDir.startsWith("/system/") ||
                     sourceDir.startsWith("/vendor/") ||
                     sourceDir.startsWith("/product/")

// 以路径判断为准，FLAG_SYSTEM 作为辅助
val isSystemApp = isSystemByPath
```

### 方案3: 针对HyperOS的特殊处理
检测到 HyperOS/MIUI 系统后，自动使用路径判断方法：

```kotlin
fun isHyperOS(): Boolean {
    val manufacturer = android.os.Build.MANUFACTURER.toLowerCase()
    val brand = android.os.Build.BRAND.toLowerCase()
    return manufacturer.contains("xiaomi") && 
           (android.os.Build.VERSION.SDK_INT >= 33) // HyperOS 通常在 Android 13+
}

fun isUserApp(pkg: PackageInfo): Boolean {
    return if (isHyperOS()) {
        // HyperOS 使用路径判断
        pkg.applicationInfo?.sourceDir?.startsWith("/data/app/") ?: false
    } else {
        // 其他系统使用 FLAG_SYSTEM
        !(pkg.applicationInfo?.flags and ApplicationInfo.FLAG_SYSTEM != 0)
    }
}
```

## 待测试方案

已更新 AppListTest 添加"基于安装路径判断"的方法4，准备测试：
- 使用 MATCH_ALL 获取所有应用
- 通过安装路径 (/data/app/) 判断用户应用
- 显示应用路径信息便于验证

## 结论

HyperOS 继承了 MIUI 的自定义应用分类机制，导致标准的应用列表获取方法失效。需要使用安装路径判断或针对 HyperOS 的特殊处理方案来正确识别用户应用和系统应用。

## 对 PandaSU 的影响

当前 PandaSU v1.4.14 使用 PackageManager 标准方法，在 HyperOS 上会出现：
1. 应用列表严重不完整
2. 用户应用被错误识别为系统应用
3. Root 策略配置可能失效

建议在下个版本中：
1. 添加 HyperOS 检测
2. 使用安装路径判断替代 FLAG_SYSTEM
3. 提供兼容性选项供用户切换
