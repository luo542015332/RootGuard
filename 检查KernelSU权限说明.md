# PandaSU Root 权限获取指南

## 问题分析
用户报告"提取还是不行"，问题核心是**PandaSU自身还没有被KernelSU授予Root权限**。

## 正确的工作流程
1. **KernelSU给PandaSU授权** → **PandaSU拥有Root权限** → **PandaSU给其他应用创建隔离配置**

## 问题根源
当前代码的逻辑（`OneClickIsolationHelper.kt`）：
```kotlin
// 使用 Shell.cmd() 检查 Root 权限
val result = Shell.cmd("id").exec()
val hasRoot = result.isSuccess && result.out.any { it.contains("uid=0") }
```

但是，如果PandaSU自己还没有被KernelSU授予Root权限，那么`Shell.cmd()`就会失败。

## 解决方案

### 方案1：用户手动授权（最简单）
1. 打开 KernelSU 管理器应用
2. 找到 PandaSU (com.rootguard.app)
3. 点击 PandaSU，授予 Root 权限
4. 重新启动 PandaSU 应用

### 方案2：在PandaSU中添加权限检查指引
修改 `IsolationViewModel.kt`，当检测到没有Root权限时，显示明确的指引信息：

```kotlin
fun startOneClickIsolation() {
    val preset = _uiState.value.selectedOneClickPreset
    viewModelScope.launch {
        _uiState.update { it.copy(oneClickProgress = OneClickProgress(isRunning = true), errorMessage = null, successMessage = null) }
        
        // 先检查Root权限
        val hasRoot = oneClickIsolationHelper.checkRootPermission()
        if (!hasRoot) {
            val errorMsg = """
                PandaSU 没有 Root 权限！
                
                请按照以下步骤操作：
                1. 打开 KernelSU 管理器
                2. 找到 PandaSU (com.rootguard.app)
                3. 点击 PandaSU，授予 Root 权限
                4. 返回 PandaSU 重试
                
                如果已经授权，请重启 PandaSU 应用
            """.trimIndent()
            _uiState.update { it.copy(oneClickProgress = OneClickProgress(), errorMessage = errorMsg) }
            clearMessageAfterDelay(); return@launch
        }
        
        // 继续原有逻辑...
    }
}
```

### 方案3：自动检测并提示
在 `MainActivity.kt` 启动时检查Root权限，如果没有权限就显示全局通知。

## 测试步骤
1. 确认 KernelSU 已正确安装和工作
2. 在 KernelSU 中授予 PandaSU Root 权限
3. 重启 PandaSU 应用
4. 尝试一键隔离功能

## 错误排查
如果仍然有问题，请检查：
1. adb logcat 日志，查看 Shell.cmd() 的具体错误
2. KernelSU 日志，查看 PandaSU 的授权状态
3. 确保 KernelSU 版本 >= 3.0.0 (当前安装的是 v3.1.0)