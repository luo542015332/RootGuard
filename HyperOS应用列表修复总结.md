# HyperOS 应用列表获取问题修复总结

## 问题描述
在 HyperOS（小米）系统上，PandaSU 应用列表功能存在严重问题：
- 只能显示 3 个应用
- 微信、QQ、王者荣耀等常用应用全部未找到
- 用户无法对这些应用配置 Root 策略

## 问题原因
HyperOS 继承了 MIUI 的自定义应用分类机制：
- `ApplicationInfo.FLAG_SYSTEM` 标志被滥用
- 几乎所有应用（包括用户应用）都被标记为系统应用
- PandaSU 的系统应用判断逻辑优先使用 FLAG_SYSTEM，导致判断错误

## 测试结果

### HyperOS 系统测试
- 设备总应用数：492 个
- PackageManager 返回：299 个
- 识别为用户应用：仅 3 个
- 关键应用（微信、QQ等）：全部未找到

### 确认的应用存在性
```
微信路径: /data/app/~~9mt1tH0gF-Fd6lSU2JLaUw==/com.tencent.mm-aJ_cITUR86dNnCrrDmH2SQ==/base.apk
QQ路径: /data/app/~~q8VjIXnLIcXLzBYvF2dCkA==/com.tencent.mobileqq-39FFzEiJmr9UPYV0rJdf0w==/base.apk
```

## 修复方案

### 修改的文件
1. `app/src/main/java/com/rootguard/app/data/magisk/MagiskProvider.kt`
2. `app/src/main/java/com/rootguard/app/utils/OneClickIsolationHelper.kt`

### 核心修改
将 `isSystemApp()` 函数的判断逻辑从"FLAG_SYSTEM 优先"改为"安装路径优先"：

```kotlin
// 修复前
private fun isSystemApp(appInfo: ApplicationInfo): Boolean {
    if ((appInfo.flags and ApplicationInfo.FLAG_SYSTEM) != 0) {
        return true  // 问题：几乎所有应用都有这个标志
    }
    // ... 路径判断很少执行
}

// 修复后
private fun isSystemApp(appInfo: ApplicationInfo): Boolean {
    val sourceDir = appInfo.sourceDir ?: return false

    // 用户应用安装在 /data/app/ 下
    if (sourceDir.startsWith("/data/app/")) {
        return false  // 直接判断为用户应用
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
4. **通用兼容**：这个逻辑在所有 Android 系统上都有效（包括标准 Android、MIUI、HyperOS 等）

## 预期效果
修复后，PandaSU 在 HyperOS 上应该能够：
1. 获取所有已安装应用（约 492 个）
2. 正确区分用户应用和系统应用
3. 显示微信、QQ、王者荣耀等常用应用
4. 允许用户对所有应用配置 Root 策略

## 当前状态
- ✅ 代码修改完成
- ✅ 构建成功（无编译错误）
- ✅ 测试报告已生成
- ⏳ 等待设备授权安装进行实际测试

## 相关文档
- HyperOS 测试报告: `logs/20260323/hyperos_app_list_issue.md`
- 修复详细报告: `logs/20260323/fix_hyperos_app_list_v1.4.15.md`
- AppListTest 测试应用: `AppListTest/`

## 下一步
1. 在 HyperOS 设备上安装测试版 APK
2. 验证应用列表是否正常显示
3. 确认微信、QQ 等应用是否可配置 Root 策略
4. 如验证通过，发布正式版本
