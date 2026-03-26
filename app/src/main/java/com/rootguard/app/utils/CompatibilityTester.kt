package com.rootguard.app.utils

import android.content.Context
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalContext
import com.topjohnwu.superuser.Shell
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * 兼容性测试工具
 * 用于验证多版本兼容性并发现问题
 */
object CompatibilityTester {

    private val testScope = CoroutineScope(Dispatchers.IO)

    /**
     * 运行完整的兼容性测试套件
     */
    fun runFullCompatibilityTest(context: Context, callback: (TestResult) -> Unit) {
        testScope.launch {
            val results = mutableListOf<TestResult>()
            
            // 1. 系统信息测试
            results.add(testSystemInfo())
            
            // 2. 版本兼容性测试
            results.add(testVersionCompatibility())
            
            // 3. 设备厂商测试
            results.add(testDeviceManufacturer())
            
            // 4. 定制系统测试
            results.add(testCustomOS())
            
            // 5. 功能支持测试
            results.add(testFeatureSupport(context))
            
            // 6. 应用列表获取测试
            results.add(testAppListRetrieval(context))
            
            // 7. 系统属性伪装测试
            results.add(testPropertySpoof())
            
            // 8. Root 权限测试
            results.add(testRootAccess())
            
            // 生成综合报告
            val finalResult = generateComprehensiveReport(results)
            callback(finalResult)
        }
    }

    /**
     * 测试系统信息
     */
    private fun testSystemInfo(): TestResult {
        return try {
            val sdkInt = AndroidVersionCompat.SDK_INT
            val manufacturer = AndroidVersionCompat.MANUFACTURER
            val brand = AndroidVersionCompat.BRAND
            val model = AndroidVersionCompat.MODEL
            val versionDesc = AndroidVersionCompat.getVersionDescription()
            
            TestResult(
                testName = "系统信息测试",
                passed = true,
                details = mapOf(
                    "SDK_INT" to sdkInt.toString(),
                    "MANUFACTURER" to manufacturer,
                    "BRAND" to brand,
                    "MODEL" to model,
                    "VERSION" to versionDesc
                ),
                suggestions = emptyList()
            )
        } catch (e: Exception) {
            TestResult(
                testName = "系统信息测试",
                passed = false,
                details = mapOf("ERROR" to (e.message ?: "Unknown error")),
                suggestions = listOf("检查 Build 类访问权限")
            )
        }
    }

    /**
     * 测试版本兼容性
     */
    private fun testVersionCompatibility(): TestResult {
        val details = mutableMapOf<String, String>()
        val suggestions = mutableListOf<String>()
        
        details["isAtLeastOreo"] = AndroidVersionCompat.isAtLeastOreo().toString()
        details["isAtLeastPie"] = AndroidVersionCompat.isAtLeastPie().toString()
        details["isAtLeastQ"] = AndroidVersionCompat.isAtLeastQ().toString()
        details["isAtLeastR"] = AndroidVersionCompat.isAtLeastR().toString()
        details["isAtLeastS"] = AndroidVersionCompat.isAtLeastS().toString()
        details["isAtLeastTiramisu"] = AndroidVersionCompat.isAtLeastTiramisu().toString()
        details["isAtLeastUpsideDownCake"] = AndroidVersionCompat.isAtLeastUpsideDownCake().toString()
        
        // 检查是否支持最低版本要求
        val minSdkSupported = AndroidVersionCompat.isAtLeastOreo()
        if (!minSdkSupported) {
            suggestions.add("设备低于 Android 8.0 (Oreo)，部分功能可能不可用")
        }
        
        return TestResult(
            testName = "版本兼容性测试",
            passed = true,
            details = details,
            suggestions = suggestions
        )
    }

    /**
     * 测试设备厂商
     */
    private fun testDeviceManufacturer(): TestResult {
        val manufacturer = AndroidVersionCompat.getDeviceManufacturer()
        val details = mapOf(
            "MANUFACTURER" to manufacturer.name,
            "isXiaomi" to AndroidVersionCompat.isXiaomiDevice().toString(),
            "isHuawei" to AndroidVersionCompat.isHuaweiDevice().toString(),
            "isOppo" to AndroidVersionCompat.isOppoDevice().toString(),
            "isVivo" to AndroidVersionCompat.isVivoDevice().toString(),
            "isSamsung" to AndroidVersionCompat.isSamsungDevice().toString()
        )
        
        val suggestions = mutableListOf<String>()
        when (manufacturer) {
            AndroidVersionCompat.DeviceManufacturer.XIAOMI -> {
                suggestions.add("小米设备需要特殊处理 MIUI/HyperOS 兼容性")
            }
            AndroidVersionCompat.DeviceManufacturer.HUAWEI -> {
                suggestions.add("华为设备可能需要 HarmonyOS 适配")
            }
            AndroidVersionCompat.DeviceManufacturer.OPPO -> {
                suggestions.add("OPPO 设备需要处理 ColorOS 限制")
            }
            AndroidVersionCompat.DeviceManufacturer.VIVO -> {
                suggestions.add("vivo 设备需要处理 OriginOS 限制")
            }
            AndroidVersionCompat.DeviceManufacturer.SAMSUNG -> {
                suggestions.add("三星设备需要处理 OneUI 和 Knox 限制")
            }
            else -> {
                suggestions.add("其他厂商设备，使用标准适配")
            }
        }
        
        return TestResult(
            testName = "设备厂商测试",
            passed = true,
            details = details,
            suggestions = suggestions
        )
    }

    /**
     * 测试定制系统
     */
    private fun testCustomOS(): TestResult {
        val customOS = AndroidVersionCompat.getCustomOS()
        val details = mapOf(
            "CUSTOM_OS" to customOS.name,
            "isHyperOS" to AndroidVersionCompat.isHyperOS().toString(),
            "isMIUI" to AndroidVersionCompat.isMIUI().toString(),
            "isColorOS" to AndroidVersionCompat.isColorOS().toString(),
            "isOriginOS" to AndroidVersionCompat.isOriginOS().toString(),
            "isHarmonyOS" to AndroidVersionCompat.isHarmonyOS().toString(),
            "isOneUI" to AndroidVersionCompat.isOneUI().toString()
        )
        
        val suggestions = SystemAdapter.getSystemSuggestions()
        
        return TestResult(
            testName = "定制系统测试",
            passed = true,
            details = details,
            suggestions = suggestions
        )
    }

    /**
     * 测试功能支持
     */
    private fun testFeatureSupport(context: Context): TestResult {
        val details = mutableMapOf<String, String>()
        val suggestions = mutableListOf<String>()
        
        // 测试系统功能支持
        details["supportsSeccomp"] = AndroidVersionCompat.supportsSeccomp().toString()
        details["supportsAppOps"] = AndroidVersionCompat.supportsAppOps().toString()
        details["supportsScopedStorage"] = AndroidVersionCompat.supportsScopedStorage().toString()
        details["supportsDynamicColor"] = AndroidVersionCompat.supportsDynamicColor().toString()
        details["supportsPhotoPicker"] = AndroidVersionCompat.supportsPhotoPicker().toString()
        details["supportsPredictiveBack"] = AndroidVersionCompat.supportsPredictiveBack().toString()
        
        // 测试系统适配器功能支持
        val features = SystemAdapter.SystemFeature.values()
        features.forEach { feature ->
            val supported = SystemAdapter.isFeatureSupported(feature)
            details[feature.name] = supported.toString()
            if (supported) {
                suggestions.add("需要特殊处理: ${feature.name}")
            }
        }
        
        // 检查兼容性要求
        val requirements = AndroidVersionCompat.CompatibilityRequirements.values()
        requirements.forEach { requirement ->
            val compatible = AndroidVersionCompat.checkCompatibility(requirement)
            details[requirement.name] = compatible.toString()
            if (!compatible) {
                suggestions.add("不兼容: ${requirement.name}，需要降级方案")
            }
        }
        
        return TestResult(
            testName = "功能支持测试",
            passed = true,
            details = details,
            suggestions = suggestions
        )
    }

    /**
     * 测试应用列表获取
     */
    private fun testAppListRetrieval(context: Context): TestResult {
        return try {
            val strategy = SystemAdapter.getAppListStrategy(context)
            val apps = strategy.getInstalledApps(context)
            
            // 测试系统应用判断
            val testPackages = listOf(
                "com.android.settings",  // 系统应用
                "com.google.android.gms", // Google 服务
                context.packageName       // 自身应用
            )
            
            val systemAppResults = mutableMapOf<String, String>()
            testPackages.forEach { pkg ->
                val isSystem = strategy.isSystemApp(pkg, context)
                systemAppResults[pkg] = isSystem.toString()
            }
            
            TestResult(
                testName = "应用列表获取测试",
                passed = apps.isNotEmpty(),
                details = mapOf(
                    "strategy" to strategy.getStrategyName(),
                    "totalApps" to apps.size.toString(),
                    "systemAppTests" to systemAppResults.toString()
                ),
                suggestions = if (apps.isEmpty()) listOf("应用列表获取失败，需要检查权限和策略") else emptyList()
            )
        } catch (e: Exception) {
            TestResult(
                testName = "应用列表获取测试",
                passed = false,
                details = mapOf("ERROR" to (e.message ?: "Unknown error")),
                suggestions = listOf("应用列表获取异常，需要调试策略实现")
            )
        }
    }

    /**
     * 测试系统属性伪装
     */
    private fun testPropertySpoof(): TestResult {
        return try {
            val config = SystemAdapter.getPropertySpoofConfig()
            
            TestResult(
                testName = "系统属性伪装测试",
                passed = config.isNotEmpty(),
                details = mapOf(
                    "totalProperties" to config.size.toString(),
                    "sampleProperties" to config.entries.take(5).joinToString { "${it.key}=${it.value}" }
                ),
                suggestions = if (config.isEmpty()) listOf("属性配置为空，需要检查预设") else emptyList()
            )
        } catch (e: Exception) {
            TestResult(
                testName = "系统属性伪装测试",
                passed = false,
                details = mapOf("ERROR" to (e.message ?: "Unknown error")),
                suggestions = listOf("属性配置异常，需要调试适配器")
            )
        }
    }

    /**
     * 测试 Root 权限访问
     */
    private fun testRootAccess(): TestResult {
        return try {
            // 尝试执行简单的 Root 命令
            val result = Shell.cmd("id").exec()
            val hasRoot = result.isSuccess && result.out.any { it.contains("uid=0") }
            
            TestResult(
                testName = "Root 权限测试",
                passed = hasRoot,
                details = mapOf(
                    "hasRoot" to hasRoot.toString(),
                    "output" to result.out.joinToString(", "),
                    "error" to result.err.joinToString(", ")
                ),
                suggestions = if (!hasRoot) listOf("无 Root 权限，部分功能受限") else emptyList()
            )
        } catch (e: Exception) {
            TestResult(
                testName = "Root 权限测试",
                passed = false,
                details = mapOf("ERROR" to (e.message ?: "Unknown error")),
                suggestions = listOf("Root 权限检查异常，需要调试 Shell 命令")
            )
        }
    }

    /**
     * 生成综合报告
     */
    private fun generateComprehensiveReport(results: List<TestResult>): TestResult {
        val totalTests = results.size
        val passedTests = results.count { it.passed }
        val failedTests = totalTests - passedTests
        
        val allDetails = mutableMapOf<String, String>()
        val allSuggestions = mutableListOf<String>()
        
        results.forEach { result ->
            allDetails[result.testName] = if (result.passed) "PASSED" else "FAILED"
            allSuggestions.addAll(result.suggestions)
        }
        
        allDetails["totalTests"] = totalTests.toString()
        allDetails["passedTests"] = passedTests.toString()
        allDetails["failedTests"] = failedTests.toString()
        allDetails["compatibilityScore"] = "${(passedTests * 100 / totalTests)}%"
        
        // 生成兼容性报告
        val compatibilityReport = AndroidVersionCompat.generateCompatibilityReport()
        allDetails["deviceInfo"] = compatibilityReport.deviceInfo
        allDetails["androidVersion"] = compatibilityReport.androidVersion
        allDetails["customOS"] = compatibilityReport.customOS
        allDetails["supportedFeatures"] = compatibilityReport.supportedFeatures.joinToString(", ")
        allDetails["unsupportedFeatures"] = compatibilityReport.unsupportedFeatures.joinToString(", ")
        allSuggestions.addAll(compatibilityReport.suggestions)
        
        return TestResult(
            testName = "综合兼容性报告",
            passed = failedTests == 0,
            details = allDetails,
            suggestions = allSuggestions.distinct()
        )
    }

    /**
     * 测试结果数据类
     */
    data class TestResult(
        val testName: String,
        val passed: Boolean,
        val details: Map<String, String>,
        val suggestions: List<String>
    )

    /**
     * 可组合函数：显示测试结果
     */
    @Composable
    fun TestResultView(result: TestResult) {
        val context = LocalContext.current
        
        // 这里可以创建 Compose UI 来显示测试结果
        // 由于时间关系，我们先提供数据结构，UI实现可以后续添加
    }
}