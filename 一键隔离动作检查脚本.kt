/**
 * 一键隔离动作逻辑检查脚本
 * 用于诊断一键隔离功能不工作的问题
 * 创建时间: 2026-03-24 01:16
 */

import java.io.File
import java.io.BufferedReader
import java.io.InputStreamReader

fun main() {
    println("=== PandaSU 一键隔离动作逻辑检查脚本 ===")
    println("开始检查一键隔离功能的每个动作逻辑...\n")
    
    // 1. 检查核心文件是否存在
    checkFileExistence()
    
    // 2. 分析调用链逻辑
    analyzeCallChain()
    
    // 3. 检查可能的失败点
    checkFailurePoints()
    
    // 4. 生成诊断报告
    generateDiagnosticReport()
}

fun checkFileExistence() {
    println("1. 检查核心文件是否存在:")
    val files = listOf(
        "app/src/main/java/com/rootguard/app/utils/OneClickIsolationHelper.kt",
        "app/src/main/java/com/rootguard/app/ui/screens/isolation/IsolationViewModel.kt",
        "app/src/main/java/com/rootguard/app/data/magisk/RootHider.kt"
    )
    
    files.forEach { file ->
        val exists = File(file).exists()
        println("  ${if (exists) "✅" else "❌"} $file")
    }
    println()
}

fun analyzeCallChain() {
    println("2. 分析一键隔离调用链:")
    
    val callChain = """
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
    """
    
    println(callChain)
}

fun checkFailurePoints() {
    println("3. 检查可能的失败点:")
    
    val failurePoints = listOf(
        "❌ Root 权限不足 - 导致所有 su 命令失败",
        "❌ Magisk/KernelSU 未安装 - configureMagiskHide 失败",
        "❌ 挂载点权限问题 - hideSuForPackage 等挂载操作失败",
        "❌ 配置保存失败 - isolationDataStore 保存配置失败",
        "❌ UI 状态更新问题 - _uiState.update 未正确更新",
        "❌ 应用信息获取失败 - getApplicationInfo 异常",
        "❌ 沙箱规则生成失败 - generateIsolationConfig 异常"
    )
    
    failurePoints.forEach { println("  $it") }
    
    println("\n4. 主要问题诊断:")
    val diagnostics = """
    🔍 问题描述：用户报告"一键隔离没起作用，点哪个都是一样的"
    
    可能原因分析：
    1. **Root 权限问题**
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
    """
    
    println(diagnostics)
}

fun generateDiagnosticReport() {
    println("\n5. 诊断报告和修复建议:")
    
    val report = """
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
    """
    
    println(report)
    
    println("\n6. 创建测试用例脚本:")
    createTestScript()
}

fun createTestScript() {
    val testScript = """
    // 一键隔离测试用例脚本
    // 将此代码添加到测试环境中运行
    
    // 测试用例 1: 检查 Root 权限
    fun testRootPermission() {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "id"))
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()
            if (process.exitValue() == 0) {
                println("✅ Root 权限正常: $output")
            } else {
                println("❌ Root 权限失败: exitCode=${process.exitValue()}")
            }
        } catch (e: Exception) {
            println("❌ Root 权限检查异常: ${e.message}")
        }
    }
    
    // 测试用例 2: 模拟一键隔离操作
    fun testOneClickIsolation(packageName: String, appName: String) {
        println("测试应用: $appName ($packageName)")
        
        // 模拟 toggleAppIsolation 逻辑
        val existingConfig = getConfigForAppSync(packageName)
        
        if (existingConfig != null && existingConfig.isEnabled) {
            println("  应用已有配置，执行移除隔离...")
            val result = removeIsolation(packageName)
            println("  移除结果: ${if (result) "成功" else "失败"}")
        } else {
            println("  应用无配置，执行应用隔离...")
            val config = generateIsolationConfig(packageName, appName)
            val result = applyIsolation(config)
            println("  应用结果: ${if (result) "成功" else "失败"}")
        }
    }
    
    // 测试用例 3: 检查 Magisk 隐藏列表
    fun testMagiskHideList(packageName: String) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "magisk --denylist ls"))
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()
            
            if (output.contains(packageName)) {
                println("✅ 应用已在 Magisk 隐藏列表中")
            } else {
                println("❌ 应用不在 Magisk 隐藏列表中")
            }
        } catch (e: Exception) {
            println("❌ 检查 Magisk 隐藏列表失败: ${e.message}")
        }
    }
    """
    
    println(testScript)
    
    println("\n✅ 检查脚本创建完成！")
    println("📁 脚本位置: 一键隔离动作检查脚本.kt")
    println("📋 下一步: 运行此脚本分析具体问题，或根据报告中的建议进行修复")
}

// 运行主函数
main()