# PandaSU v2.0.2 更新说明

## 版本信息
- **版本**: v2.0.2
- **版本号**: 76
- **构建时间**: 2026-03-24 01:25
- **APK 大小**: 约 15.6 MB

## 主要修复内容

### 1. 一键隔离功能详细日志记录
**问题**: 用户报告"一键隔离没起作用，点哪个都是一样的"

**修复**:
- 在 `toggleAppIsolation()` 中添加详细日志记录
- 记录开始操作、配置检查、操作类型、最终结果
- 无 Root 权限时给出明确提示

**日志示例**:
```
toggleAppIsolation: 开始处理 微信 (com.tencent.mm)
toggleAppIsolation: Root 权限检查通过
toggleAppIsolation: 现有配置检查结果: existing=null, isEnabled=false
toggleAppIsolation: 执行应用隔离
toggleAppIsolation: 生成的配置: packageName=com.tencent.mm, isEnabled=true, sandboxRule.level=MODERATE
toggleAppIsolation: 配置已保存
toggleAppIsolation: applyIsolation 结果: true
toggleAppIsolation: UI 状态已更新
```

### 2. Root 权限检查机制
**新增功能**:
- 在 `RootHider.checkSelfRootPermission()` 中添加 Root 权限检查
- 在 `toggleAppIsolation()` 开始前检查权限
- 无权限时显示明确提示："没有 Root 权限，请先在 KernelSU 中授予权限"

**检查逻辑**:
```kotlin
val hasRootPermission = rootHider.checkSelfRootPermission()
if (!hasRootPermission) {
    Logger.e("toggleAppIsolation: 没有 Root 权限，操作无法执行")
    _uiState.update { it.copy(errorMessage = "没有 Root 权限，请先在 KernelSU 中授予权限") }
    return@launch
}
```

### 3. applyIsolation() 详细日志
**已修复**:
- 每个隔离步骤都有结果日志
- 记录最终操作结果
- 修复 Kotlin 语法错误 (`return@withContext`)

**步骤日志**:
```
applyIsolation: Starting isolation for com.tencent.mm, sandboxRule.level=MODERATE
applyIsolation: configureMagiskHide result: true
applyIsolation: hideSuBinary result: true
applyIsolation: hideMagisk result: true
applyIsolation: hideBusybox result: true
applyIsolation: hideXposed result: true
applyIsolation: applyCustomProps result: true
applyIsolation: disableRootAccess result: true
applyIsolation: Final result for com.tencent.mm: true
```

## 安装和测试步骤

### 1. 安装 APK
- 文件: `PandaSU-v2.0.2-一键隔离修复.apk` (已在桌面)
- 建议先卸载旧版本

### 2. 授予 Root 权限 (关键步骤!)
1. 打开 **KernelSU 管理器**
2. 找到 **PandaSU** (com.rootguard.app)
3. 确保已**授予 Root 权限**
4. 权限设置建议: **允许**

### 3. 测试一键隔离功能
1. 打开 PandaSU 应用
2. 进入"隔离"页面
3. **点击任意应用**进行隔离
4. 观察日志输出

### 4. 查看诊断信息
1. 进入"日志"页面
2. 查看详细的执行日志
3. 根据日志定位问题

## 预期效果

### ✅ 如果 Root 权限正常
- 点击应用后应该看到成功提示
- 日志页面有详细的执行日志
- 应用状态应该正确切换（隔离/取消隔离）

### ❌ 如果没有 Root 权限
- 点击应用后显示："没有 Root 权限，请先在 KernelSU 中授予权限"
- 日志页面显示 Root 权限检查失败
- 需要手动到 KernelSU 中授予权限

### 🔧 如果操作失败
- 日志会显示具体哪个步骤失败
- 例如：`configureMagiskHide result: false`
- 可以根据具体失败步骤进行修复

## 文件变更

### 修改的文件
1. `app/build.gradle` - 版本号更新到 v2.0.2 (versionCode 76)
2. `app/src/main/java/com/rootguard/app/data/magisk/RootHider.kt`
   - 添加 `checkSelfRootPermission()` 函数
   - 在 `applyIsolation()` 中添加详细日志
   - 修复 `sandboxLevel` 引用错误
3. `app/src/main/java/com/rootguard/app/ui/screens/isolation/IsolationViewModel.kt`
   - 在 `toggleAppIsolation()` 中添加详细日志
   - 添加 Root 权限检查逻辑
   - 修复 `sandboxLevel` 引用错误

### 创建的诊断文件
1. `一键隔离动作检查脚本.kt` - 详细检查脚本
2. `一键隔离动作检查.ps1` - PowerShell 检查脚本
3. `一键隔离诊断报告.md` - 完整诊断报告
4. `PandaSU-v2.0.2-更新说明.md` - 本文件

## 问题诊断流程

如果一键隔离仍然不工作，请按以下流程诊断：

1. **检查 Root 权限**
   ```
   查看日志：是否有 "Root 权限检查通过" 或 "没有 Root 权限"
   ```

2. **查看详细日志**
   ```
   日志页面应该显示每个步骤的结果
   如果没有日志，说明函数没有被调用
   ```

3. **检查具体失败步骤**
   ```
   如果某个步骤返回 false，查看具体原因
   例如：configureMagiskHide result: false
   ```

4. **验证配置保存**
   ```
   检查配置是否正确保存
   再次点击应用，看状态是否正确切换
   ```

## 后续优化建议

1. **Root 权限自动请求** - 实现自动跳转到 KernelSU
2. **操作进度可视化** - 添加进度条显示操作状态
3. **配置验证机制** - 验证隔离是否实际生效
4. **批量操作支持** - 支持一键隔离多个应用

## 技术支持

如果测试后仍然有问题，请提供：
1. 测试的具体应用名称
2. 日志页面的完整输出
3. KernelSU 中的权限设置截图

根据这些信息，我可以进一步诊断和修复问题。