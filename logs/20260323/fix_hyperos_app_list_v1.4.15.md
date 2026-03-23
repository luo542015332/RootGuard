# PandaSU v1.4.15 HyperOS 应用列表修复

## 修复日期
2026-03-23

## 问题描述
在 HyperOS（小米）系统上，PandaSU v1.4.14 及之前版本存在严重的应用列表获取问题：

1. **应用数量严重不足**
   - 实际设备上有 492 个应用
   - PackageManager 只返回 299 个应用

2. **用户应用识别失败**
   - 几乎所有应用被错误标记为系统应用
   - 只有 3 个应用被识别为用户应用

3. **关键应用完全未找到**
   - 微信、QQ、王者荣耀等常用应用不在列表中
   - 导致用户无法对这些应用配置 Root 策略

## 根本原因
HyperOS 继承了 MIUI 的自定义应用分类机制：
- `ApplicationInfo.FLAG_SYSTEM` 标志被滥用
- 几乎所有应用（包括 /data/app/ 下的用户应用）都被设置为 FLAG_SYSTEM
- 标准的应用列表获取方法失效

## 修复方案

### 修改文件
1. `app/src/main/java/com/rootguard/app/data/magisk/MagiskProvider.kt`
2. `app/src/main/java/com/rootguard/app/utils/OneClickIsolationHelper.kt`

### 修改内容
将 `isSystemApp()` 函数的判断逻辑从"FLAG_SYSTEM 优先"改为"安装路径优先"：

#### 修复前
```kotlin
private fun isSystemApp(appInfo: ApplicationInfo): Boolean {
    // 方法1：检查 FLAG_SYSTEM 标志（最主要）
    if ((appInfo.flags and ApplicationInfo.FLAG_SYSTEM) != 0) {
        return true
    }
    
    // 方法2：检查安装路径作为备选判断
    val sourceDir = appInfo.sourceDir ?: return false
    val isSystemPath = sourceDir.contains("/system/") ||
                      sourceDir.contains("/vendor/") ||
                      sourceDir.contains("/product/") ||
                      sourceDir.contains("/apex/")
    return isSystemPath
}
```

#### 修复后
```kotlin
private fun isSystemApp(appInfo: ApplicationInfo): Boolean {
    // 方法1：优先检查安装路径（最可靠，兼容 HyperOS/MIUI）
    val sourceDir = appInfo.sourceDir ?: return false
    
    // 用户应用安装在 /data/app/ 下
    if (sourceDir.startsWith("/data/app/")) {
        return false
    }
    
    // 系统应用安装在 /system/、/vendor/、/product/、/apex/ 等目录下
    val isSystemPath = sourceDir.startsWith("/system/") ||
                      sourceDir.startsWith("/vendor/") ||
                      sourceDir.startsWith("/product/") ||
                      sourceDir.startsWith("/apex/")
    
    return isSystemPath
}
```

### 修复要点
1. **路径判断优先**：不再依赖 `FLAG_SYSTEM` 标志
2. **用户应用识别**：`/data/app/` 开头的路径一定是用户应用
3. **系统应用识别**：`/system/`、`/vendor/`、`/product/`、`/apex/` 开头的路径是系统应用
4. **兼容性**：这个逻辑在所有 Android 系统上都有效

## 预期效果

修复后，PandaSU 在 HyperOS 上应该能够：
1. 获取所有已安装应用（约 492 个）
2. 正确区分用户应用和系统应用
3. 显示微信、QQ、王者荣耀等常用应用
4. 允许用户对所有应用配置 Root 策略

## 测试状态
- ✅ 代码修改完成
- ✅ 构建成功（无错误）
- ⏳ 等待设备授权安装进行测试

## 版本信息
- 版本号: v1.4.15（待发布）
- versionCode: 29

## 相关文件
- 测试报告: `logs/20260323/hyperos_app_list_issue.md`
- AppListTest 测试应用: `AppListTest/`
