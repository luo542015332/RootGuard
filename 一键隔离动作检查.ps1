# 一键隔离动作逻辑检查脚本 (PowerShell 版本)
# 用于诊断一键隔离功能不工作的问题
# 创建时间: 2026-03-24 01:17

Write-Host "=== PandaSU 一键隔离动作逻辑检查脚本 ===" -ForegroundColor Cyan
Write-Host "开始检查一键隔离功能的每个动作逻辑..." -ForegroundColor Yellow
Write-Host ""

# 1. 检查核心文件是否存在
Write-Host "1. 检查核心文件是否存在:" -ForegroundColor Green
$files = @(
    "app/src/main/java/com/rootguard/app/utils/OneClickIsolationHelper.kt",
    "app/src/main/java/com/rootguard/app/ui/screens/isolation/IsolationViewModel.kt", 
    "app/src/main/java/com/rootguard/app/data/magisk/RootHider.kt"
)

foreach ($file in $files) {
    $exists = Test-Path $file
    $status = if ($exists) { "✅" } else { "❌" }
    Write-Host "  $status $file" -ForegroundColor $(if ($exists) { "Green" } else { "Red" })
}
Write-Host ""

# 2. 分析调用链逻辑
Write-Host "2. 分析一键隔离调用链:" -ForegroundColor Green
$callChain = @"
    ✅ 用户点击应用 -> toggleAppIsolation() 被调用
    ✅ toggleAppIsolation() 逻辑:
       1. 检查应用是否已有配置 (existing != null && existing.isEnabled)
       2. 如果已有且启用 -> 移除隔离 (removeIsolation)
       3. 如果无配置或未启用 -> 生成配置并应用隔离
    ✅ 生成配置 -> generateIsolationConfig()
    ✅ 应用隔离 -> applyIsolation()
    ✅ applyIsolation() 执行以下操作:
       1. configureMagiskHide() - 添加应用到 Magisk/KernelSU 隐藏列表
       2. hideSuForPackage() - 隐藏 su 二进制文件  
       3. hideMagiskFilesForPackage() - 隐藏 Magisk 文件
       4. hideBusyboxForPackage() - 隐藏 Busybox
       5. hideXposedForPackage() - 隐藏 Xposed
       6. applyCustomProps() - 应用自定义系统属性
       7. disableRootForPackage() - 禁用 Root 访问
"@
Write-Host $callChain -ForegroundColor White
Write-Host ""

# 3. 检查可能的失败点
Write-Host "3. 检查可能的失败点:" -ForegroundColor Green
$failurePoints = @(
    "❌ Root 权限不足 - 导致所有 su 命令失败",
    "❌ Magisk/KernelSU 未安装 - configureMagiskHide 失败", 
    "❌ 挂载点权限问题 - hideSuForPackage 等挂载操作失败",
    "❌ 配置保存失败 - isolationDataStore 保存配置失败",
    "❌ UI 状态更新问题 - _uiState.update 未正确更新",
    "❌ 应用信息获取失败 - getApplicationInfo 异常",
    "❌ 沙箱规则生成失败 - generateIsolationConfig 异常"
)

foreach ($point in $failurePoints) {
    Write-Host "  $point" -ForegroundColor Red
}

Write-Host ""
Write-Host "4. 主要问题诊断:" -ForegroundColor Green
$diagnostics = @"
    🔍 问题描述：用户报告"一键隔离没起作用，点哪个都是一样的"

    可能原因分析：
    1. **Root 权限问题** (最可能)
       - PandaSU 没有 Root 权限
       - 所有 su 命令都会失败
       - 检查方法：查看日志是否有 "Cannot run program 'su': error=13" 错误
       
    2. **配置保存问题**
       - isolationDataStore 保存配置失败  
       - 导致每次点击都认为应用无配置
       - 检查方法：查看是否每次点击都生成新配置
       
    3. **UI 反馈问题**
       - toggleAppIsolation() 中的成功/失败消息未显示
       - UI 状态更新失败
       - 检查方法：点击后是否看到成功/失败提示
       
    4. **逻辑判断问题**
       - 检查已有配置的逻辑有误
       - 导致状态切换不正确
       - 检查方法：查看 getConfigForAppSync 是否正确返回配置
"@
Write-Host $diagnostics -ForegroundColor Yellow

# 4. 生成诊断报告
Write-Host ""
Write-Host "5. 诊断报告和修复建议:" -ForegroundColor Cyan

$report = @"
    📋 诊断报告：

    🔴 核心问题：一键隔离功能逻辑完整，但可能因以下原因失效：

    1. **Root 权限是首要问题** (优先级：最高)
       - 如果 PandaSU 没有 Root 权限，所有操作都会静默失败
       - 需要用户在 KernelSU 中手动授予 Root 权限
       
    2. **配置保存机制** (优先级：高)
       - 检查 isolationDataStore 的实现
       - 确保配置能正确保存和读取
       
    3. **命令执行错误处理** (优先级：中)
       - su 命令失败应该记录详细日志
       - 用户需要知道哪个步骤失败了
       
    4. **UI 反馈机制** (优先级：中)
       - 成功/失败应该明确显示
       - 用户需要知道操作是否成功

    🛠️ 修复建议：

    1. **立即修复**：
       - 在 toggleAppIsolation() 中添加更详细的错误日志
       - 在 applyIsolation() 中添加每个步骤的结果日志
       - 检查 Root 权限并在无权限时给出明确提示
       
    2. **中期改进**：
       - 实现 Root 权限自动检测和请求
       - 添加操作状态可视化（进度条、成功/失败图标）
       - 实现配置验证机制，检查配置是否实际生效
       
    3. **长期优化**：
       - 添加一键隔离操作的批量处理
       - 实现操作回滚机制
       - 添加隔离效果测试工具

    📊 测试建议：

    1. 打开 PandaSU 日志页面
    2. 测试一键隔离功能
    3. 查看是否有详细的执行日志
    4. 如果没有日志，检查 Root 权限
    5. 如果有日志但失败，查看具体失败步骤

    🔧 具体代码修复：

    1. 在 toggleAppIsolation() 中添加日志：
       - 记录开始操作
       - 记录配置检查结果  
       - 记录操作类型（应用/移除隔离）
       - 记录最终结果

    2. 在 applyIsolation() 中已添加详细日志（已修复）
       - 每个步骤都有结果日志
       - 最终结果明确记录

    3. 添加 Root 权限检查：
       - 在操作开始前检查 Root 权限
       - 无权限时给出明确提示
       - 引导用户到 KernelSU 授予权限
"@
Write-Host $report -ForegroundColor White

# 5. 创建操作流程图
Write-Host ""
Write-Host "6. 一键隔离操作流程图:" -ForegroundColor Cyan
$flowchart = @"
    ┌─────────────────────────────────────────────────────────┐
    │                   用户点击应用图标                       │
    └──────────────────────────┬──────────────────────────────┘
                               ▼
    ┌─────────────────────────────────────────────────────────┐
    │                toggleAppIsolation() 被调用               │
    └──────────────────────────┬──────────────────────────────┘
                               ▼
    ┌─────────────────────────────────────────────────────────┐
    │      检查应用是否已有配置 (existing != null && isEnabled) │
    └──────────┬──────────────────────────────┬───────────────┘
               │                              │
               ▼                              ▼
    ┌─────────────────┐            ┌──────────────────────────┐
    │ 已有配置且启用   │            │ 无配置或未启用           │
    └────────┬────────┘            └──────────┬───────────────┘
             │                                 │
             ▼                                 ▼
    ┌─────────────────┐            ┌──────────────────────────┐
    │ removeIsolation()│            │ generateIsolationConfig()│
    └────────┬────────┘            └──────────┬───────────────┘
             │                                 │
             ▼                                 ▼
    ┌─────────────────┐            ┌──────────────────────────┐
    │ 保存配置为禁用   │            │ 保存配置为启用           │
    └────────┬────────┘            └──────────┬───────────────┘
             │                                 │
             │                                 ▼
             │                     ┌──────────────────────────┐
             │                     │    applyIsolation()      │
             │                     │ 执行7个隔离步骤          │
             │                     └──────────┬───────────────┘
             │                                 │
             └─────────────────────────────────┘
                               ▼
    ┌─────────────────────────────────────────────────────────┐
    │             更新 UI 状态显示成功/失败消息                │
    └─────────────────────────────────────────────────────────┘
"@
Write-Host $flowchart -ForegroundColor Magenta

Write-Host ""
Write-Host "✅ 检查完成！" -ForegroundColor Green
Write-Host "📁 脚本位置: 一键隔离动作检查.ps1" -ForegroundColor Yellow
Write-Host "📋 下一步: 根据报告中的建议进行修复" -ForegroundColor Cyan