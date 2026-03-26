package com.rootguard.app.utils

import android.annotation.TargetApi
import android.os.Build

/**
 * Android 版本兼容性工具类
 * 用于检测系统版本并提供降级机制
 */
object AndroidVersionCompat {

    // Android 版本常量
    const val ANDROID_8 = Build.VERSION_CODES.O
    const val ANDROID_9 = Build.VERSION_CODES.P
    const val ANDROID_10 = Build.VERSION_CODES.Q
    const val ANDROID_11 = Build.VERSION_CODES.R
    const val ANDROID_12 = Build.VERSION_CODES.S
    const val ANDROID_12L = Build.VERSION_CODES.S_V2
    const val ANDROID_13 = Build.VERSION_CODES.TIRAMISU
    const val ANDROID_14 = Build.VERSION_CODES.UPSIDE_DOWN_CAKE
    // 未来版本常量（基于预测）
    // 注意：Build.VERSION_CODES.W 可能不存在，使用数字常量
    const val ANDROID_15 = 35  // VANILLA_ICE_CREAM (预测 API 35)
    const val ANDROID_16 = 36  // W (预测 API 36)
    
    // 当前设备信息
    val SDK_INT: Int = Build.VERSION.SDK_INT
    val MANUFACTURER: String = Build.MANUFACTURER
    val BRAND: String = Build.BRAND
    val MODEL: String = Build.MODEL
    val DEVICE: String = Build.DEVICE
    val PRODUCT: String = Build.PRODUCT
    
    /**
     * 检测设备是否为特定厂商
     */
    fun isXiaomiDevice(): Boolean {
        return BRAND.contains("xiaomi", ignoreCase = true) ||
               MANUFACTURER.contains("xiaomi", ignoreCase = true) ||
               BRAND.contains("redmi", ignoreCase = true)
    }
    
    fun isHuaweiDevice(): Boolean {
        return BRAND.contains("huawei", ignoreCase = true) ||
               MANUFACTURER.contains("huawei", ignoreCase = true) ||
               BRAND.contains("honor", ignoreCase = true)
    }
    
    fun isOppoDevice(): Boolean {
        return BRAND.contains("oppo", ignoreCase = true) ||
               MANUFACTURER.contains("oppo", ignoreCase = true) ||
               BRAND.contains("oneplus", ignoreCase = true) ||
               BRAND.contains("realme", ignoreCase = true)
    }
    
    fun isVivoDevice(): Boolean {
        return BRAND.contains("vivo", ignoreCase = true) ||
               MANUFACTURER.contains("vivo", ignoreCase = true) ||
               BRAND.contains("iqoo", ignoreCase = true)
    }
    
    fun isSamsungDevice(): Boolean {
        return BRAND.contains("samsung", ignoreCase = true) ||
               MANUFACTURER.contains("samsung", ignoreCase = true)
    }
    
    /**
     * 获取设备厂商类型
     */
    enum class DeviceManufacturer {
        XIAOMI, HUAWEI, OPPO, VIVO, SAMSUNG, OTHER
    }
    
    fun getDeviceManufacturer(): DeviceManufacturer {
        return when {
            isXiaomiDevice() -> DeviceManufacturer.XIAOMI
            isHuaweiDevice() -> DeviceManufacturer.HUAWEI
            isOppoDevice() -> DeviceManufacturer.OPPO
            isVivoDevice() -> DeviceManufacturer.VIVO
            isSamsungDevice() -> DeviceManufacturer.SAMSUNG
            else -> DeviceManufacturer.OTHER
        }
    }
    
    /**
     * 版本检测方法
     */
    fun isAtLeastOreo(): Boolean = SDK_INT >= ANDROID_8
    fun isAtLeastPie(): Boolean = SDK_INT >= ANDROID_9
    fun isAtLeastQ(): Boolean = SDK_INT >= ANDROID_10
    fun isAtLeastR(): Boolean = SDK_INT >= ANDROID_11
    fun isAtLeastS(): Boolean = SDK_INT >= ANDROID_12
    fun isAtLeastS_V2(): Boolean = SDK_INT >= ANDROID_12L
    fun isAtLeastTiramisu(): Boolean = SDK_INT >= ANDROID_13
    fun isAtLeastUpsideDownCake(): Boolean = SDK_INT >= ANDROID_14
    fun isAtLeastVanillaIceCream(): Boolean = SDK_INT >= ANDROID_15
    fun isAtLeastW(): Boolean = SDK_INT >= ANDROID_16
    
    /**
     * 条件执行：仅在高版本上执行
     */
    inline fun runOnAtLeastOreo(block: () -> Unit) {
        if (isAtLeastOreo()) block()
    }
    
    inline fun runOnAtLeastPie(block: () -> Unit) {
        if (isAtLeastPie()) block()
    }
    
    inline fun runOnAtLeastQ(block: () -> Unit) {
        if (isAtLeastQ()) block()
    }
    
    inline fun runOnAtLeastR(block: () -> Unit) {
        if (isAtLeastR()) block()
    }
    
    inline fun runOnAtLeastS(block: () -> Unit) {
        if (isAtLeastS()) block()
    }
    
    inline fun runOnAtLeastTiramisu(block: () -> Unit) {
        if (isAtLeastTiramisu()) block()
    }
    
    inline fun runOnAtLeastUpsideDownCake(block: () -> Unit) {
        if (isAtLeastUpsideDownCake()) block()
    }

    inline fun runOnAtLeastVanillaIceCream(block: () -> Unit) {
        if (isAtLeastVanillaIceCream()) block()
    }

    inline fun runOnAtLeastW(block: () -> Unit) {
        if (isAtLeastW()) block()
    }
    
    /**
     * 条件执行：仅在低版本上执行（提供降级方案）
     */
    inline fun runOnBelowOreo(block: () -> Unit) {
        if (!isAtLeastOreo()) block()
    }
    
    inline fun runOnBelowPie(block: () -> Unit) {
        if (!isAtLeastPie()) block()
    }
    
    inline fun runOnBelowQ(block: () -> Unit) {
        if (!isAtLeastQ()) block()
    }
    
    /**
     * 获取系统版本描述
     */
    fun getVersionDescription(): String {
        return when (SDK_INT) {
            ANDROID_8 -> "Android 8.0 (Oreo)"
            ANDROID_9 -> "Android 9.0 (Pie)"
            ANDROID_10 -> "Android 10 (Q)"
            ANDROID_11 -> "Android 11 (R)"
            ANDROID_12 -> "Android 12 (S)"
            ANDROID_12L -> "Android 12L (S_V2)"
            ANDROID_13 -> "Android 13 (Tiramisu)"
            ANDROID_14 -> "Android 14 (Upside Down Cake)"
            ANDROID_15 -> "Android 15 (Vanilla Ice Cream)"  // 预测
            ANDROID_16 -> "Android 16 (W)"                  // 预测
            else -> "Android ${Build.VERSION.RELEASE} (API $SDK_INT)"
        }
    }
    
    /**
     * 检测是否为 HyperOS（小米新系统）
     */
    fun isHyperOS(): Boolean {
        return isXiaomiDevice() && (Build.VERSION.INCREMENTAL.contains("hyperos", ignoreCase = true) ||
               Build.DISPLAY.contains("hyperos", ignoreCase = true) ||
               runSuCommandOutput("getprop ro.miui.ui.version.name").contains("hyperos", ignoreCase = true))
    }
    
    /**
     * 检测是否为 MIUI
     */
    fun isMIUI(): Boolean {
        return isXiaomiDevice() && !isHyperOS()
    }
    
    /**
     * 检测是否为 ColorOS（OPPO）
     */
    fun isColorOS(): Boolean {
        return isOppoDevice() && (Build.DISPLAY.contains("coloros", ignoreCase = true) ||
               runSuCommandOutput("getprop ro.coloros.version").isNotEmpty())
    }
    
    /**
     * 检测是否为 OriginOS（vivo）
     */
    fun isOriginOS(): Boolean {
        return isVivoDevice() && (Build.DISPLAY.contains("originos", ignoreCase = true) ||
               runSuCommandOutput("getprop ro.vivo.os.version").isNotEmpty())
    }
    
    /**
     * 检测是否为 HarmonyOS（华为）
     */
    fun isHarmonyOS(): Boolean {
        return isHuaweiDevice() && (Build.DISPLAY.contains("harmonyos", ignoreCase = true) ||
               runSuCommandOutput("getprop ro.huawei.system.os").isNotEmpty())
    }
    
    /**
     * 检测是否为 OneUI（三星）
     */
    fun isOneUI(): Boolean {
        return isSamsungDevice() && (Build.DISPLAY.contains("one ui", ignoreCase = true))
    }
    
    /**
     * 获取定制系统类型
     */
    enum class CustomOS {
        MIUI, HYPEROS, COLOROS, ORIGINOS, HARMONYOS, ONEUI, STOCK
    }
    
    fun getCustomOS(): CustomOS {
        return when {
            isHyperOS() -> CustomOS.HYPEROS
            isMIUI() -> CustomOS.MIUI
            isColorOS() -> CustomOS.COLOROS
            isOriginOS() -> CustomOS.ORIGINOS
            isHarmonyOS() -> CustomOS.HARMONYOS
            isOneUI() -> CustomOS.ONEUI
            else -> CustomOS.STOCK
        }
    }
    
    /**
     * 系统调用帮助方法（需要 Root 权限）
     */
    private fun runSuCommandOutput(command: String): String {
        return try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", command))
            val reader = process.inputStream.bufferedReader()
            reader.use { it.readText().trim() }
        } catch (e: Exception) {
            Logger.w("执行命令失败: $command, error: ${e.message}")
            ""
        }
    }
    
    /**
     * 系统能力检测
     */
    fun supportsSeccomp(): Boolean = isAtLeastOreo()
    fun supportsAppOps(): Boolean = isAtLeastPie()
    fun supportsScopedStorage(): Boolean = isAtLeastQ()
    fun supportsDynamicColor(): Boolean = isAtLeastS()
    fun supportsPhotoPicker(): Boolean = isAtLeastTiramisu()
    fun supportsPredictiveBack(): Boolean = isAtLeastUpsideDownCake()
    
    /**
     * 兼容性检查：根据功能需求检查系统是否支持
     */
    fun checkCompatibility(requirements: CompatibilityRequirements): Boolean {
        return when (requirements) {
            CompatibilityRequirements.ROOT_DETECTION -> isAtLeastOreo()
            CompatibilityRequirements.STORAGE_ISOLATION -> isAtLeastQ()
            CompatibilityRequirements.SYSTEM_PROPERTY_HIDING -> isAtLeastPie()
            CompatibilityRequirements.SANDBOXING -> isAtLeastR()
            CompatibilityRequirements.FULL_ISOLATION -> isAtLeastS()
        }
    }
    
    /**
     * 功能需求枚举
     */
    enum class CompatibilityRequirements {
        ROOT_DETECTION,          // Root 检测功能
        STORAGE_ISOLATION,       // 存储隔离
        SYSTEM_PROPERTY_HIDING,  // 系统属性隐藏
        SANDBOXING,              // 沙盒功能
        FULL_ISOLATION           // 完整隔离
    }
    
    /**
     * 生成兼容性报告
     */
    data class CompatibilityReport(
        val deviceInfo: String,
        val androidVersion: String,
        val customOS: String,
        val supportedFeatures: List<String>,
        val unsupportedFeatures: List<String>,
        val suggestions: List<String>
    )
    
    fun generateCompatibilityReport(): CompatibilityReport {
        val deviceInfo = "$BRAND $MODEL ($DEVICE)"
        val androidVersion = getVersionDescription()
        val customOS = getCustomOS().name
        
        val supportedFeatures = mutableListOf<String>()
        val unsupportedFeatures = mutableListOf<String>()
        val suggestions = mutableListOf<String>()
        
        // 检查各个功能
        if (supportsSeccomp()) {
            supportedFeatures.add("Seccomp 沙盒")
        } else {
            unsupportedFeatures.add("Seccomp 沙盒")
            suggestions.add("Android 8.0+ 才支持 Seccomp")
        }
        
        if (supportsAppOps()) {
            supportedFeatures.add("AppOps 权限管理")
        } else {
            unsupportedFeatures.add("AppOps 权限管理")
            suggestions.add("Android 9.0+ 的 AppOps 更完善")
        }
        
        if (supportsScopedStorage()) {
            supportedFeatures.add("分区存储")
        } else {
            unsupportedFeatures.add("分区存储")
            suggestions.add("Android 10+ 才支持完整的分区存储")
        }
        
        if (supportsDynamicColor()) {
            supportedFeatures.add("动态色彩主题")
        }
        
        // 根据设备类型添加特定建议
        when (getCustomOS()) {
            CustomOS.HYPEROS -> {
                suggestions.add("HyperOS 系统需要特殊权限处理")
                suggestions.add("建议使用 KernelSU RootService 获取应用列表")
            }
            CustomOS.MIUI -> {
                suggestions.add("MIUI 需要处理 FLAG_SYSTEM 标志异常")
                suggestions.add("建议使用安装路径判断系统应用")
            }
            CustomOS.COLOROS -> {
                suggestions.add("ColorOS 有严格的权限管理")
            }
            else -> {}
        }
        
        return CompatibilityReport(
            deviceInfo = deviceInfo,
            androidVersion = androidVersion,
            customOS = customOS,
            supportedFeatures = supportedFeatures,
            unsupportedFeatures = unsupportedFeatures,
            suggestions = suggestions
        )
    }
}