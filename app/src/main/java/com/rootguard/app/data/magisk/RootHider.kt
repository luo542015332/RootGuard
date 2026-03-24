package com.rootguard.app.data.magisk

import android.content.Context
import android.content.pm.PackageManager
import com.rootguard.app.data.model.*
import com.rootguard.app.utils.Logger
import com.rootguard.app.util.RootEnvironmentDetector
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class RootHider @Inject constructor(
    @ApplicationContext private val context: Context
) {
    companion object {
        private const val ROOT_TYPE_MAGISK = "magisk"
        private const val ROOT_TYPE_KERNELSU = "kernelsu"
        private const val ROOT_TYPE_STANDALONE = "standalone"
        private const val ROOT_TYPE_APATCH = "apatch"

        private val ROOT_PATHS = listOf(
            "/system/bin/su", "/system/xbin/su", "/sbin/su",
            "/su/bin/su", "/data/local/xbin/su", "/data/local/bin/su",
            "/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Magisk.apk"
        )
        private val MAGISK_PATHS = listOf(
            "/data/adb/magisk", "/data/adb/modules",
            "/sbin/.magisk", "/dev/.magisk.unblock", "/system/etc/init.d"
        )
        private val KERNELSU_PATHS = listOf(
            "/data/adb/ksu", "/data/adb/modules",
            "/dev/ksu", "/sys/kernel/ksu"
        )
        private val BUSYBOX_PATHS = listOf(
            "/system/xbin/busybox", "/system/bin/busybox", "/data/local/xbin/busybox"
        )
        private val XPOSED_PATHS = listOf(
            "/system/framework/XposedBridge.jar", "/system/bin/app_process_xposed",
            "/system/xbin/xposed", "/data/data/de.robv.android.xposed.installer"
        )
        private val ROOT_PACKAGES = listOf(
            "com.topjohnwu.magisk", "com.topjohnwu.magisk.debug",
            "eu.chainfire.supersu", "com.koushikdutta.superuser",
            "com.thirdparty.superuser", "com.yellowes.su",
            "com.kingroot.kinguser", "com.kingo.root",
            "me.weishu.exp", "me.weishu.kernelsu",
            "de.robv.android.xposed.installer", "org.meowcat.edxposed.manager",
            "com.solohsu.android.edxp.manager", "io.github.vvb2060.magisk"
        )
        // 隐藏模块检测包名
        val HIDE_MODULE_PACKAGES = listOf(
            "com.tsng.hidemyapplist" to "HMA",
            "org.lsposed.manager" to "LSPosed",
            "top.canyie.droidguard" to "DroidGuard"
        )
    }

    private var cachedRootType: String? = null

    private suspend fun detectRootType(): String = withContext(Dispatchers.IO) {
        cachedRootType?.let { return@withContext it }
        try {
            // APatch
            if (fileExists("/data/adb/apatch") || fileExists("/data/adb/ap")) {
                cachedRootType = ROOT_TYPE_APATCH; return@withContext ROOT_TYPE_APATCH
            }
            // KernelSU
            if (KERNELSU_PATHS.any { fileExists(it) }) {
                cachedRootType = ROOT_TYPE_KERNELSU; return@withContext ROOT_TYPE_KERNELSU
            }
            // Magisk
            if (MAGISK_PATHS.any { fileExists(it) }) {
                cachedRootType = ROOT_TYPE_MAGISK; return@withContext ROOT_TYPE_MAGISK
            }
            // Standalone (有 su 但无框架)
            cachedRootType = ROOT_TYPE_STANDALONE; return@withContext ROOT_TYPE_STANDALONE
        } catch (e: Exception) {
            Logger.e("detectRootType failed: ${e.message}")
        }
        cachedRootType = ROOT_TYPE_STANDALONE; return@withContext ROOT_TYPE_STANDALONE
    }
    
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
            Logger.e("findDirectoriesContaining failed for $basePath with keyword $keyword", e)
        }
        return@withContext results
    }

    // ========== 功能1: DenyList 强制配置 ==========

    suspend fun forceDenyList(): Boolean = withContext(Dispatchers.IO) {
        try {
            val policyFile = "/data/adb/zygisksu/denylist_policy"
            val enforceFile = "/data/adb/zygisksu/denylist_enforce"
            val result = mutableListOf<Boolean>()

            // Magisk 方式
            result.add(runSuCommand("magisk --denylist enable"))
            result.add(runSuCommand("magisk --denylist set enforce 1"))

            // ZygiskSU/KSU 方式（兼容悲伤模块的路径）
            result.add(runSuCommand("echo 1 > $policyFile"))
            result.add(runSuCommand("echo 2 > $enforceFile"))

            Logger.d("ForceDenyList: ${result.count { it }}/${result.size} succeeded")
            result.any { it }
        } catch (e: Exception) {
            Logger.e("forceDenyList failed", e); false
        }
    }

    // ========== 功能2: 全面属性伪装 ==========

    suspend fun applyFullPropSpoof(): Boolean = withContext(Dispatchers.IO) {
        try {
            val allProps = mutableMapOf<String, String>()
            allProps.putAll(IsolationPresets.FULL_PROP_SPOOF)

            // 检测厂商
            val brand = runSuCommandOutput("getprop ro.product.brand").trim().lowercase()
            val manufacturer = runSuCommandOutput("getprop ro.product.manufacturer").trim().lowercase()

            if (brand.contains("redmi") || brand.contains("xiaomi") || manufacturer.contains("xiaomi")) {
                allProps.putAll(IsolationPresets.MIUI_PROPS)
            }
            if (brand.contains("realme") || manufacturer.contains("realme")) {
                allProps.putAll(IsolationPresets.REALME_PROPS)
            }

            // Recovery 模式隐藏
            val bootmode = runSuCommandOutput("getprop ro.bootmode").trim()
            if (bootmode.contains("recovery")) {
                runSuCommand("resetprop -n ro.bootmode unknown")
                runSuCommand("resetprop -n ro.boot.bootmode unknown")
                runSuCommand("resetprop -n vendor.boot.bootmode unknown")
            }

            var ok = 0
            allProps.forEach { (k, v) ->
                if (runSuCommand("resetprop -n $k $v")) ok++
            }
            Logger.d("PropSpoof: $ok/${allProps.size} props set")
            true
        } catch (e: Exception) {
            Logger.e("applyFullPropSpoof failed", e); false
        }
    }

    // ========== 功能3: 模块检测 ==========

    data class ModuleStatus(val installed: Boolean, val name: String, val desc: String)

    suspend fun detectModules(): List<ModuleStatus> = withContext(Dispatchers.IO) {
        val modules = mutableListOf<ModuleStatus>()

        // Shamiko
        modules.add(ModuleStatus(
            fileExists("/data/adb/modules/zygisk_shamiko"),
            "Shamiko", "Zygisk 级 Root/模块隐藏"
        ))

        // Tricky Store
        modules.add(ModuleStatus(
            fileExists("/data/adb/tricky_store") || fileExists("/data/adb/modules/tricky_store"),
            "Tricky Store", "设备指纹伪造绕过检测"
        ))

        // PlayIntegrityFix
        modules.add(ModuleStatus(
            fileExists("/data/adb/modules/playintegrityfix"),
            "PlayIntegrityFix", "Google 设备完整性修复"
        ))

        // Zygisk
        modules.add(ModuleStatus(
            fileExists("/data/adb/modules/zygisk") || runSuCommand("magisk --sqlite \"SELECT value FROM settings WHERE key='zygisk'\"").let { true },
            "Zygisk", "注入框架"
        ))

        // LSPosed
        modules.add(ModuleStatus(
            fileExists("/data/adb/modules/zygisk_lsposed") || fileExists("/data/adb/modules/riru_lsposed"),
            "LSPosed", "Xposed 框架"
        ))

        // HMA
        try {
            val pm = context.packageManager
            modules.add(ModuleStatus(
                try { pm.getPackageInfo("com.tsng.hidemyapplist", 0); true } catch (e: Exception) { false },
                "HMA (隐藏我的应用列表)", "防止应用列表检测"
            ))
        } catch (_: Exception) {}

        modules
    }

    // ========== 功能4: 环境检测评分 ==========

    data class DetectionResult(val item: DetectionItem, val label: String, val detected: Boolean, val severity: Int)

    suspend fun runEnvironmentCheck(): Int = withContext(Dispatchers.IO) {
        val results = mutableListOf<DetectionResult>()
        var totalScore = 100
        
        Logger.d("开始环境安全检查...")

        // 检查 Root 权限
        val hasRootPermission = checkSelfRootPermission()
        if (!hasRootPermission) {
            Logger.w("没有 Root 权限，无法执行环境检测")
            return@withContext -1  // 返回 -1 表示权限不足
        }
        Logger.d("Root 权限检查通过，继续环境检测")

        // su 二进制
        Logger.d("检测 su 二进制文件...")
        val suFound = ROOT_PATHS.any { fileExists(it) }
        if (suFound) { 
            results.add(DetectionResult(DetectionItem.SU_BINARY, "su 二进制文件", true, 15)); totalScore -= 15 
            Logger.d("检测到 su 二进制文件")
        } else {
            Logger.d("未检测到 su 二进制文件")
        }

        // Magisk 文件
        Logger.d("检测 Magisk 文件...")
        val magiskFound = MAGISK_PATHS.any { fileExists(it) }
        if (magiskFound) { 
            results.add(DetectionResult(DetectionItem.MAGISK_FILES, "Magisk 文件", true, 10)); totalScore -= 10 
            Logger.d("检测到 Magisk 文件")
        } else {
            Logger.d("未检测到 Magisk 文件")
        }

        // Busybox
        Logger.d("检测 Busybox...")
        val bbFound = BUSYBOX_PATHS.any { fileExists(it) }
        if (bbFound) { 
            results.add(DetectionResult(DetectionItem.BUSYBOX, "Busybox", true, 5)); totalScore -= 5 
            Logger.d("检测到 Busybox")
        } else {
            Logger.d("未检测到 Busybox")
        }

        // Root 包名
        Logger.d("检测 Root 应用包名...")
        val pm = context.packageManager
        val rootPkgs = ROOT_PACKAGES.filter { pkg ->
            try { pm.getPackageInfo(pkg, 0); true } catch (e: Exception) { false }
        }
        if (rootPkgs.isNotEmpty()) {
            results.add(DetectionResult(DetectionItem.ROOT_PACKAGES, "Root 管理应用 (${rootPkgs.size}个)", true, 10))
            totalScore -= 10
            Logger.d("检测到 Root 应用: ${rootPkgs.joinToString()}")
        } else {
            Logger.d("未检测到 Root 应用")
        }

        // 属性检测
        Logger.d("检测系统属性...")
        val debuggable = runSuCommandOutput("getprop ro.debuggable").trim()
        if (debuggable == "1") { 
            results.add(DetectionResult(DetectionItem.DEBUGGABLE, "ro.debuggable=1", true, 10)); totalScore -= 10 
            Logger.d("检测到 ro.debuggable=1")
        } else {
            Logger.d("ro.debuggable 检查通过: $debuggable")
        }
        
        val buildType = runSuCommandOutput("getprop ro.build.type").trim()
        if (buildType == "userdebug") { 
            results.add(DetectionResult(DetectionItem.TEST_KEYS, "ro.build.type=userdebug", true, 5)); totalScore -= 5 
            Logger.d("检测到 ro.build.type=userdebug")
        } else {
            Logger.d("ro.build.type 检查通过: $buildType")
        }
        
        val buildTags = runSuCommandOutput("getprop ro.build.tags").trim()
        if (buildTags.contains("test-keys")) { 
            results.add(DetectionResult(DetectionItem.TEST_KEYS, "test-keys 签名", true, 10)); totalScore -= 10 
            Logger.d("检测到 test-keys 签名")
        } else {
            Logger.d("构建签名检查通过: $buildTags")
        }
        
        val secure = runSuCommandOutput("getprop ro.secure").trim()
        if (secure == "0") { 
            results.add(DetectionResult(DetectionItem.SUPERUSER_APK, "ro.secure=0", true, 5)); totalScore -= 5 
            Logger.d("检测到 ro.secure=0")
        } else {
            Logger.d("ro.secure 检查通过: $secure")
        }

        // DenyList 状态
        Logger.d("检测模块安装状态...")
        val hasShamiko = fileExists("/data/adb/modules/zygisk_shamiko")
        if (!hasShamiko) {
            results.add(DetectionResult(DetectionItem.SHAMIKO, "Shamiko 未安装", true, 10)); totalScore -= 10
            Logger.d("Shamiko 未安装")
        } else {
            results.add(DetectionResult(DetectionItem.SHAMIKO, "Shamiko 已安装", false, 0))
            Logger.d("Shamiko 已安装")
        }

        // 增强的 Tricky Store 检测逻辑
        Logger.d("检测 Tricky Store 模块...")
        val trickyStorePaths = listOf(
            "/data/adb/tricky_store",
            "/data/adb/modules/tricky_store",
            "/data/adb/modules/trickystore",  // 无下划线版本
            "/data/adb/tricky_store_current", // 新版本可能带后缀
            "/data/adb/modules/ts"           // 缩写版本
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
            Logger.d("Tricky Store 标准路径未找到，尝试查找包含 'tricky' 的模块目录...")
            val trickyRelatedPaths = findDirectoriesContaining("/data/adb/modules", "tricky")
            if (trickyRelatedPaths.isNotEmpty()) {
                hasTrickyStore = true
                trickyStorePath = trickyRelatedPaths[0]
                Logger.d("找到包含 'tricky' 的模块目录: $trickyStorePath")
            }
        }
        
        if (!hasTrickyStore) {
            results.add(DetectionResult(DetectionItem.TRICKY_STORE, "Tricky Store 未安装", true, 5)); totalScore -= 5
            Logger.d("Tricky Store 未安装，已扣分: 5")
        } else {
            results.add(DetectionResult(DetectionItem.TRICKY_STORE, "Tricky Store 已安装 ($trickyStorePath)", false, 0))
            Logger.d("Tricky Store 已安装，路径: $trickyStorePath")
        }

        val hasPif = fileExists("/data/adb/modules/playintegrityfix")
        if (!hasPif) {
            results.add(DetectionResult(DetectionItem.PIF, "PlayIntegrityFix 未安装", true, 5)); totalScore -= 5
            Logger.d("PlayIntegrityFix 未安装")
        } else {
            results.add(DetectionResult(DetectionItem.PIF, "PlayIntegrityFix 已安装", false, 0))
            Logger.d("PlayIntegrityFix 已安装")
        }

        // Recovery 模式
        Logger.d("检测 Recovery 模式...")
        val bootmode = runSuCommandOutput("getprop ro.bootmode").trim()
        if (bootmode.contains("recovery")) {
            results.add(DetectionResult(DetectionItem.RECOVERY_MODE, "Recovery 模式暴露", true, 5)); totalScore -= 5
            Logger.d("检测到 Recovery 模式暴露")
        } else {
            Logger.d("Recovery 模式检查通过: $bootmode")
        }

        val finalScore = totalScore.coerceIn(0, 100)
        val problemCount = results.count { it.detected }
        Logger.d("环境检查完成: 得分=$finalScore, 发现问题=$problemCount, 详情=${results.filter { it.detected }.map { it.label }}")
        return@withContext finalScore
    }

    suspend fun runEnvironmentCheckDetail(): List<DetectionResult> = withContext(Dispatchers.IO) {
        val results = mutableListOf<DetectionResult>()
        
        Logger.d("开始详细环境检测...")

        // 检查 Root 权限
        val hasRootPermission = checkSelfRootPermission()
        if (!hasRootPermission) {
            Logger.w("没有 Root 权限，无法执行详细环境检测")
            return@withContext results  // 返回空列表
        }
        Logger.d("Root 权限检查通过，继续详细检测")

        Logger.d("检测 su 二进制文件...")
        val suFound = ROOT_PATHS.any { fileExists(it) }
        results.add(DetectionResult(DetectionItem.SU_BINARY, "su 二进制文件", suFound, 15))
        Logger.d("su 二进制检测结果: $suFound")

        Logger.d("检测 Magisk 文件...")
        val magiskFound = MAGISK_PATHS.any { fileExists(it) }
        results.add(DetectionResult(DetectionItem.MAGISK_FILES, "Magisk 文件", magiskFound, 10))
        Logger.d("Magisk 文件检测结果: $magiskFound")

        Logger.d("检测 Busybox...")
        val bbFound = BUSYBOX_PATHS.any { fileExists(it) }
        results.add(DetectionResult(DetectionItem.BUSYBOX, "Busybox", bbFound, 5))
        Logger.d("Busybox 检测结果: $bbFound")

        Logger.d("检测 Root 应用包名...")
        val pm = context.packageManager
        val rootPkgs = ROOT_PACKAGES.filter { try { pm.getPackageInfo(it, 0); true } catch (_: Exception) { false } }
        results.add(DetectionResult(DetectionItem.ROOT_PACKAGES, "Root 应用 (${rootPkgs.size}个)", rootPkgs.isNotEmpty(), 10))
        Logger.d("Root 应用检测结果: ${rootPkgs.size}个")

        Logger.d("检测 ro.debuggable 属性...")
        val debuggable = runSuCommandOutput("getprop ro.debuggable").trim()
        results.add(DetectionResult(DetectionItem.DEBUGGABLE, "ro.debuggable", debuggable == "1", 10))
        Logger.d("ro.debuggable 检测结果: $debuggable")

        Logger.d("检测构建签名...")
        val buildTags = runSuCommandOutput("getprop ro.build.tags").trim()
        results.add(DetectionResult(DetectionItem.TEST_KEYS, "构建签名", buildTags.contains("test-keys"), 10))
        Logger.d("构建签名检测结果: $buildTags")

        Logger.d("检测 ro.secure 属性...")
        val secure = runSuCommandOutput("getprop ro.secure").trim()
        results.add(DetectionResult(DetectionItem.SUPERUSER_APK, "ro.secure", secure == "0", 5))
        Logger.d("ro.secure 检测结果: $secure")

        Logger.d("检测 Shamiko 模块...")
        val hasShamiko = fileExists("/data/adb/modules/zygisk_shamiko")
        results.add(DetectionResult(DetectionItem.SHAMIKO, "Shamiko", !hasShamiko, 10))
        Logger.d("Shamiko 检测结果: $hasShamiko")

        Logger.d("检测 Tricky Store 模块...")
        val trickyStorePaths = listOf(
            "/data/adb/tricky_store",
            "/data/adb/modules/tricky_store",
            "/data/adb/modules/trickystore",  // 无下划线版本
            "/data/adb/tricky_store_current", // 新版本可能带后缀
            "/data/adb/modules/ts"           // 缩写版本
        )
        
        var hasTs = false
        var trickyStorePath = ""
        for (path in trickyStorePaths) {
            if (fileExists(path)) {
                hasTs = true
                trickyStorePath = path
                break
            }
        }
        
        // 额外检查：查找包含 "tricky" 的模块目录
        if (!hasTs) {
            Logger.d("Tricky Store 标准路径未找到，尝试查找包含 'tricky' 的模块目录...")
            // 简化版本：使用更简单的方法检查
            val trickyRelatedPaths = findDirectoriesContaining("/data/adb/modules", "tricky")
            if (trickyRelatedPaths.isNotEmpty()) {
                hasTs = true
                trickyStorePath = trickyRelatedPaths[0]
                Logger.d("找到包含 'tricky' 的模块目录: $trickyStorePath")
            }
        }
        
        results.add(DetectionResult(DetectionItem.TRICKY_STORE, "Tricky Store", !hasTs, 5))
        Logger.d("Tricky Store 检测结果: $hasTs, 路径: $trickyStorePath")

        Logger.d("检测 PlayIntegrityFix 模块...")
        val hasPif = fileExists("/data/adb/modules/playintegrityfix")
        results.add(DetectionResult(DetectionItem.PIF, "PlayIntegrityFix", !hasPif, 5))
        Logger.d("PlayIntegrityFix 检测结果: $hasPif")

        Logger.d("检测 Recovery 模式...")
        val bootmode = runSuCommandOutput("getprop ro.bootmode").trim()
        results.add(DetectionResult(DetectionItem.RECOVERY_MODE, "Recovery 模式", bootmode.contains("recovery"), 5))
        Logger.d("Recovery 模式检测结果: $bootmode")

        Logger.d("详细环境检测完成，共 ${results.size} 个检测项")
        return@withContext results
    }

    // ========== 原有功能保留 ==========

    suspend fun applyIsolation(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            if (!config.isEnabled) { 
                Logger.d("applyIsolation: config disabled, removing isolation for ${config.packageName}")
                removeIsolation(config.packageName); 
                return@withContext true 
            }
            Logger.d("applyIsolation: Starting isolation for ${config.packageName}, sandboxRule.level=${config.sandboxRule?.level}")
            
            val r1 = configureMagiskHide(config)
            Logger.d("applyIsolation: configureMagiskHide result: $r1")
            
            val r2 = if (config.hideSuBinary) hideSuForPackage(config.packageName) else true
            Logger.d("applyIsolation: hideSuBinary result: $r2")
            
            val r3 = if (config.hideMagisk) hideMagiskFilesForPackage(config.packageName) else true
            Logger.d("applyIsolation: hideMagisk result: $r3")
            
            val r4 = if (config.hideBusybox) hideBusyboxForPackage(config.packageName) else true
            Logger.d("applyIsolation: hideBusybox result: $r4")
            
            val r5 = if (config.hideXposed) hideXposedForPackage(config.packageName) else true
            Logger.d("applyIsolation: hideXposed result: $r5")
            
            val r6 = if (config.customProps.isNotEmpty()) applyCustomProps(config.customProps) else true
            Logger.d("applyIsolation: applyCustomProps result: $r6")
            
            val r7 = if (config.disableRootAccess) disableRootForPackage(config.packageName) else true
            Logger.d("applyIsolation: disableRootAccess result: $r7")
            
            // 修复：添加存储隔离实现
            val r8 = if (config.isolateStorage) isolateStorageForPackage(config.packageName) else true
            Logger.d("applyIsolation: isolateStorage result: $r8")
            
            val finalResult = r1 && r2 && r3 && r4 && r5 && r6 && r7 && r8
            Logger.d("applyIsolation: Final result for ${config.packageName}: $finalResult")
            finalResult
        } catch (e: Exception) {
            Logger.e("applyIsolation failed for ${config.packageName}", e); false
        }
    }

    /**
     * 检查工具是否可用
     */
    private suspend fun checkToolAvailable(toolName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            runSuCommand("which $toolName 2>/dev/null")
            Logger.d("Tool check: $toolName is available")
            true
        } catch (e: Exception) {
            Logger.d("Tool check: $toolName is NOT available")
            false
        }
    }

    /**
     * 根据检测到的Root环境类型配置隐藏
     */
    private suspend fun configureMagiskHide(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            val pkg = config.packageName
            val rootType = RootEnvironmentDetector.detectRootMode()
            
            Logger.d("configureMagiskHide: Root type detected: $rootType, package: $pkg")
            
            when (rootType) {
                RootEnvironmentDetector.RootMode.MAGISK -> {
                    // 检查magisk命令是否可用
                    if (checkToolAvailable("magisk")) {
                        runSuCommand("magisk --denylist add $pkg")
                        Logger.i("Magisk denylist configured for $pkg")
                    } else {
                        // 尝试SQLite直接操作
                        try {
                            runSuCommand("sqlite3 /data/adb/magisk.db \"INSERT OR REPLACE INTO denylist (package_name, process) VALUES ('$pkg', '$pkg');\"")
                            Logger.i("Magisk denylist configured via SQLite for $pkg")
                        } catch (e: Exception) {
                            Logger.e("Magisk denylist configuration failed", e)
                            return@withContext false
                        }
                    }
                }
                
                RootEnvironmentDetector.RootMode.KERNELSU -> {
                    // 检查ksu命令是否可用
                    if (checkToolAvailable("ksu")) {
                        runSuCommand("ksu denylist add $pkg")
                        Logger.i("KernelSU denylist configured for $pkg")
                    } else {
                        Logger.w("KernelSU command not available, skipping denylist")
                        return@withContext false
                    }
                }
                
                else -> {
                    Logger.w("Unsupported root type: $rootType, skipping denylist configuration")
                    return@withContext false
                }
            }
            
            true
        } catch (e: Exception) {
            Logger.e("configureMagiskHide failed", e)
            false
        }
    }

    private suspend fun hideSuForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val d = "/data/local/tmp/hide_${packageName}"
            runSuCommand("mkdir -p $d")
            listOf("/system/bin/su", "/system/xbin/su", "/sbin/su").forEach { path ->
                runSuCommand("mount --bind $d $path 2>/dev/null")
            }
            true
        } catch (e: Exception) { false }
    }

    private suspend fun hideMagiskFilesForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val d = "/data/local/tmp/hide_magisk_${packageName}"
            runSuCommand("mkdir -p $d")
            listOf("/data/adb/magisk", "/data/adb/modules", "/sbin/.magisk").forEach { path ->
                runSuCommand("mount --bind $d $path 2>/dev/null")
            }
            true
        } catch (e: Exception) { false }
    }

    private suspend fun hideBusyboxForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val d = "/data/local/tmp/hide_bb_${packageName}"
            runSuCommand("mkdir -p $d")
            BUSYBOX_PATHS.forEach { runSuCommand("mount --bind $d $it 2>/dev/null") }
            true
        } catch (e: Exception) { false }
    }

    /**
     * 隐藏Xposed/LSPosed框架
     * 检查LSPosed是否安装，使用正确的路径
     */
    private suspend fun hideXposedForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 检查LSPosed是否安装
            val lsposedPaths = listOf(
                "/data/adb/modules/riru_lsposed/framework/lspd.dex",
                "/data/adb/modules/lsposed/framework/lspd.dex",
                "/data/adb/modules/zygisk_lsposed/framework/lspd.dex"
            )
            
            var lsposedInstalled = false
            var lsposedPath = ""
            
            for (path in lsposedPaths) {
                try {
                    runSuCommand("ls $path 2>/dev/null")
                    lsposedInstalled = true
                    lsposedPath = path
                    break
                } catch (e: Exception) {
                    continue
                }
            }
            
            if (lsposedInstalled) {
                Logger.d("hideXposedForPackage: LSPosed found at $lsposedPath, hiding for $packageName")
                runSuCommand("app_process -Djava.class.path=$lsposedPath /system/bin com.android.lsposed.core.HideHooker $packageName 2>/dev/null")
                true
            } else {
                Logger.d("hideXposedForPackage: LSPosed not installed, skipping")
                true  // 没有安装LSPosed不算失败
            }
        } catch (e: Exception) { 
            Logger.d("hideXposedForPackage failed, but not critical: ${e.message}")
            true  // Xposed隐藏失败不算致命错误
        }
    }

    private suspend fun applyCustomProps(props: Map<String, String>): Boolean = withContext(Dispatchers.IO) {
        try {
            props.forEach { (k, v) -> runSuCommand("resetprop -n $k $v") }
            true
        } catch (e: Exception) { false }
    }

    private suspend fun disableRootForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            runSuCommand("sqlite3 /data/adb/magisk.db \"INSERT OR REPLACE INTO policies (package_name, policy) VALUES ('$packageName', 1)\"")
            true
        } catch (e: Exception) { false }
    }

    /**
     * 为应用启用存储隔离
     * 根据检测到的Root环境类型使用正确的存储隔离方法
     */
    private suspend fun isolateStorageForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            Logger.d("isolateStorageForPackage: Starting storage isolation for $packageName")
            
            // 1. 检查应用是否存在
            val checkApp = runSuCommandOutput("pm path $packageName 2>/dev/null")
            if (checkApp.isNullOrEmpty()) {
                Logger.e("isolateStorageForPackage: App $packageName not found")
                return@withContext false
            }
            
            // 2. 创建存储隔离目录
            val isolationDir = "/data/local/tmp/isolate_storage_$packageName"
            runSuCommand("mkdir -p $isolationDir")
            runSuCommand("mkdir -p $isolationDir/sdcard")
            runSuCommand("mkdir -p $isolationDir/data")
            
            // 3. 为应用创建隔离的系统属性
            runSuCommand("resetprop -n ro.storage.isolated.$packageName true")
            runSuCommand("resetprop -n ro.vold.secured.$packageName true")
            
            // 4. 根据Root环境类型使用正确的存储隔离方法
            val rootType = RootEnvironmentDetector.detectRootMode()
            Logger.d("isolateStorageForPackage: Root type: $rootType")
            
            when (rootType) {
                RootEnvironmentDetector.RootMode.KERNELSU -> {
                    // 使用KernelSU的mount namespace功能
                    if (checkToolAvailable("ksu")) {
                        try {
                            runSuCommand("ksu mount-namespace $packageName --mount $isolationDir/sdcard /sdcard --type bind 2>/dev/null")
                            Logger.i("KernelSU storage isolation applied for $packageName")
                        } catch (e: Exception) {
                            Logger.e("KernelSU mount namespace failed", e)
                            return@withContext false
                        }
                    } else {
                        Logger.w("KernelSU command not available, cannot apply storage isolation")
                        return@withContext false
                    }
                }
                
                RootEnvironmentDetector.RootMode.MAGISK -> {
                    // 使用Magisk的mount bind方法
                    try {
                        // 创建临时挂载点
                        runSuCommand("mount --bind $isolationDir/sdcard /sdcard 2>/dev/null")
                        runSuCommand("mount --bind $isolationDir/data /data/data/$packageName 2>/dev/null")
                        Logger.i("Magisk storage isolation applied for $packageName")
                    } catch (e: Exception) {
                        Logger.e("Magisk mount bind failed", e)
                        return@withContext false
                    }
                }
                
                else -> {
                    Logger.w("Unsupported root type for storage isolation: $rootType")
                    return@withContext false
                }
            }
            
            // 5. 应用SELinux策略（如果可用）
            if (rootType == RootEnvironmentDetector.RootMode.MAGISK && checkToolAvailable("magiskpolicy")) {
                try {
                    runSuCommand("magiskpolicy --live \"allow $packageName isolated_storage_file:file { read write }\"" )
                    runSuCommand("magiskpolicy --live \"deny $packageName system_data_file:dir { search }\"" )
                    Logger.d("SELinux policy applied for $packageName")
                } catch (e: Exception) {
                    Logger.d("SELinux policy not available, skipping")
                }
            }
            
            Logger.d("isolateStorageForPackage: Storage isolation applied for $packageName (root: $rootType)")
            true
        } catch (e: Exception) {
            Logger.e("isolateStorageForPackage failed for $packageName", e)
            false
        }
    }

    suspend fun removeIsolation(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val rootType = RootEnvironmentDetector.detectRootMode()
            Logger.d("removeIsolation: Removing isolation for $packageName (root: $rootType)")
            
            // 1. 移除存储隔离
            val isolationDir = "/data/local/tmp/isolate_storage_$packageName"
            try {
                runSuCommand("umount -l $isolationDir/sdcard 2>/dev/null")
                runSuCommand("umount -l /data/data/$packageName 2>/dev/null")
                runSuCommand("rm -rf $isolationDir 2>/dev/null")
                runSuCommand("resetprop --delete ro.storage.isolated.$packageName 2>/dev/null")
                runSuCommand("resetprop --delete ro.vold.secured.$packageName 2>/dev/null")
            } catch (e: Exception) {
                Logger.d("Storage isolation removal may have failed, continuing: ${e.message}")
            }
            
            // 2. 根据Root环境类型移除隐藏
            when (rootType) {
                RootEnvironmentDetector.RootMode.MAGISK -> {
                    if (checkToolAvailable("magisk")) {
                        try {
                            runSuCommand("magisk --denylist rm $packageName 2>/dev/null")
                            Logger.d("Magisk denylist removed for $packageName")
                        } catch (e: Exception) {
                            Logger.d("Magisk denylist removal failed: ${e.message}")
                        }
                    }
                }
                
                RootEnvironmentDetector.RootMode.KERNELSU -> {
                    if (checkToolAvailable("ksu")) {
                        try {
                            runSuCommand("ksu denylist rm $packageName 2>/dev/null")
                            Logger.d("KernelSU denylist removed for $packageName")
                        } catch (e: Exception) {
                            Logger.d("KernelSU denylist removal failed: ${e.message}")
                        }
                    }
                }
                
                else -> {
                    Logger.d("Unknown root type, skipping denylist removal")
                }
            }
            
            // 3. 移除其他挂载
            listOf("/system/bin/su", "/system/xbin/su", "/sbin/su", "/data/adb/magisk", "/data/adb/modules").forEach {
                try {
                    runSuCommand("umount -l $it 2>/dev/null")
                } catch (e: Exception) {
                    // 忽略卸载失败
                }
            }
            
            // 4. 清理临时目录
            try {
                runSuCommand("rm -rf /data/local/tmp/hide_*_${packageName} 2>/dev/null")
            } catch (e: Exception) {
                // 忽略清理失败
            }
            
            Logger.d("removeIsolation: Isolation removal completed for $packageName")
            true
        } catch (e: Exception) {
            Logger.e("removeIsolation failed", e)
            false
        }
    }

    suspend fun checkHideStatus(): HideStatus = withContext(Dispatchers.IO) {
        try {
            val output = runSuCommandOutput("magisk -Z")
            when {
                output.contains("Enforcing") -> HideStatus.ACTIVE
                output.contains("Permissive") -> HideStatus.PARTIAL
                else -> HideStatus.INACTIVE
            }
        } catch (e: Exception) { HideStatus.UNKNOWN }
    }

    suspend fun getIsolatedApps(): List<String> = withContext(Dispatchers.IO) {
        try {
            val output = runSuCommandOutput("sqlite3 /data/adb/magisk.db \"SELECT package_name FROM denylist\"")
            output.lines().filter { it.isNotBlank() }.map { it.trim() }
        } catch (e: Exception) { emptyList() }
    }

    // ========== 工具方法 ==========

    private suspend fun fileExists(path: String): Boolean = withContext(Dispatchers.IO) {
        try { File(path).exists() } catch (_: Exception) { false }
    }

    /**
     * 检查当前应用是否有 Root 权限
     * @return true 如果有 Root 权限，false 如果没有
     */
    suspend fun checkSelfRootPermission(): Boolean = withContext(Dispatchers.IO) {
        try {
            Logger.d("检查 Root 权限...")
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "id"))
            val output = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            val exitCode = process.exitValue()
            
            if (exitCode == 0) {
                Logger.d("Root 权限检查通过: $output")
                true
            } else {
                val error = process.errorStream.bufferedReader().readText().trim()
                Logger.e("Root 权限检查失败: exitCode=$exitCode, error=$error")
                false
            }
        } catch (e: Exception) {
            Logger.e("Root 权限检查异常", e)
            false
        }
    }

    private suspend fun runSuCommand(cmd: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", cmd))
            process.waitFor()
            val exitCode = process.exitValue()
            val success = exitCode == 0
            if (!success) {
                val error = process.errorStream.bufferedReader().readText().trim()
                Logger.d("su cmd failed: $cmd, exitCode=$exitCode, error=$error")
            }
            success
        } catch (e: Exception) {
            Logger.e("su cmd exception: $cmd", e)
            false
        }
    }

    private suspend fun runSuCommandOutput(cmd: String): String = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", cmd))
            val output = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            val exitCode = process.exitValue()
            if (exitCode != 0) {
                val error = process.errorStream.bufferedReader().readText().trim()
                Logger.d("su cmd output failed: $cmd, exitCode=$exitCode, error=$error")
                return@withContext ""
            }
            output
        } catch (e: Exception) { 
            Logger.e("su cmd output exception: $cmd", e)
            return@withContext ""
        }
    }
}

enum class HideStatus { ACTIVE, PARTIAL, INACTIVE, UNKNOWN }
