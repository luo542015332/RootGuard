# PandaSU v2.0.8 - 环境安全评分修复说明

## 问题描述
用户反馈环境安全评分不正确，即使已经安装了 Tricky Store 模块，仍然被扣分，评分监测机制似乎没有效果。

## 问题分析

### 1. Tricky Store 检测逻辑缺陷
原代码中只检查了两个固定路径：
```kotlin
val hasTrickyStore = fileExists("/data/adb/tricky_store") || fileExists("/data/adb/modules/tricky_store")
```

但实际上，Tricky Store 可能以多种路径安装：
1. `/data/adb/tricky_store` - 主目录
2. `/data/adb/modules/tricky_store` - 标准模块目录
3. `/data/adb/modules/trickystore` - 无下划线版本
4. `/data/adb/tricky_store_current` - 新版本可能带后缀
5. `/data/adb/modules/ts` - 缩写版本
6. 其他包含 "tricky" 关键词的目录

### 2. 模块包名检测不完整
从日志中可以看到 Tricky Store 的实际包名是 `io.github.a13e300.tricky_store`，但代码中没有检查已安装的应用程序包名。

## 修复方案

### 1. 增强 Tricky Store 路径检测
修改 `RootHider.kt` 中的 `runEnvironmentCheck()` 和 `runEnvironmentCheckDetail()` 函数：

```kotlin
// 增强的 Tricky Store 检测逻辑
val trickyStorePaths = listOf(
    "/data/adb/tricky_store",
    "/data/adb/modules/tricky_store",
    "/data/adb/modules/trickystore",
    "/data/adb/tricky_store_current",
    "/data/adb/modules/ts"
)

var hasTrickyStore = false
var trickyStorePath = ""
for (path in trickyStorePaths) {
    if (fileExists(path)) {
        hasTrickyStore = true
        trickyStorePath = path
        break
    }
}

// 额外检查：查找包含 "tricky" 的模块目录
if (!hasTrickyStore) {
    val trickyRelatedPaths = findDirectoriesContaining("/data/adb/modules", "tricky")
    if (trickyRelatedPaths.isNotEmpty()) {
        hasTrickyStore = true
        trickyStorePath = trickyRelatedPaths[0]
    }
}
```

### 2. 添加辅助函数
添加 `findDirectoriesContaining()` 辅助函数，用于查找包含特定关键词的目录：

```kotlin
private suspend fun findDirectoriesContaining(basePath: String, keyword: String): List<String> = withContext(Dispatchers.IO) {
    val results = mutableListOf<String>()
    try {
        val baseDir = File(basePath)
        if (baseDir.exists() && baseDir.isDirectory) {
            baseDir.listFiles()?.forEach { dir ->
                if (dir.isDirectory && dir.name.contains(keyword, ignoreCase = true)) {
                    results.add(dir.absolutePath)
                }
            }
        }
    } catch (e: Exception) {
        Logger.e("findDirectoriesContaining failed", e)
    }
    return@withContext results
}
```

### 3. 改进日志记录
增加详细的日志记录，包括：
- 检查的路径列表
- 找到的路径
- 最终检测结果

## 预期效果

### 修复前
- Tricky Store 安装但未被检测到
- 错误扣分 5 分
- 评分机制不可靠

### 修复后
- Tricky Store 安装被正确检测
- 不扣分（已安装模块）
- 评分机制更加准确和可靠

## 其他改进建议

### 1. 动态模块检测
未来可以考虑动态检测所有 `/data/adb/modules/` 下的目录，而不是硬编码路径。

### 2. 配置文件检查
检查模块目录下的 `module.prop` 文件，确认模块是否正确安装和启用。

### 3. 包名检测
检查系统中是否安装了对应的应用程序包名。

### 4. 模块状态验证
通过执行模块提供的命令或检查模块的 service.sh 是否在运行来验证模块状态。

## 测试方法

1. 确保设备已安装 Tricky Store 模块
2. 运行 PandaSU 应用
3. 进入隔离屏幕
4. 点击环境安全评分的刷新按钮
5. 查看是否仍被扣分
6. 检查日志确认检测结果

## 版本信息
- **版本号**: 2.0.8
- **版本码**: 82
- **修复文件**: 
  - `app/src/main/java/com/rootguard/app/data/magisk/RootHider.kt`
  - `app/build.gradle`
- **修复时间**: 2026-03-24

## 总结
本次修复解决了环境安全评分中 Tricky Store 模块检测不准确的问题，通过增强路径检测和添加灵活的查找逻辑，提高了评分机制的准确性和可靠性。用户现在可以正确看到已安装模块对评分的正面影响。