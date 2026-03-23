package com.rootguard.app.data.magisk

import android.content.Context
import android.content.pm.PackageManager
import com.rootguard.app.data.model.*
import com.rootguard.app.utils.Logger
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
            Logger.e("detectRootType failed", e)
        }
        cachedRootType = ROOT_TYPE_STANDALONE; return@withContext ROOT_TYPE_STANDALONE
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

        // su 二进制
        val suFound = ROOT_PATHS.any { fileExists(it) }
        if (suFound) { results.add(DetectionResult(DetectionItem.SU_BINARY, "su 二进制文件", true, 15)); totalScore -= 15 }

        // Magisk 文件
        val magiskFound = MAGISK_PATHS.any { fileExists(it) }
        if (magiskFound) { results.add(DetectionResult(DetectionItem.MAGISK_FILES, "Magisk 文件", true, 10)); totalScore -= 10 }

        // Busybox
        val bbFound = BUSYBOX_PATHS.any { fileExists(it) }
        if (bbFound) { results.add(DetectionResult(DetectionItem.BUSYBOX, "Busybox", true, 5)); totalScore -= 5 }

        // Root 包名
        val pm = context.packageManager
        val rootPkgs = ROOT_PACKAGES.filter { pkg ->
            try { pm.getPackageInfo(pkg, 0); true } catch (e: Exception) { false }
        }
        if (rootPkgs.isNotEmpty()) {
            results.add(DetectionResult(DetectionItem.ROOT_PACKAGES, "Root 管理应用 (${rootPkgs.size}个)", true, 10))
            totalScore -= 10
        }

        // 属性检测
        val debuggable = runSuCommandOutput("getprop ro.debuggable").trim()
        if (debuggable == "1") { results.add(DetectionResult(DetectionItem.DEBUGGABLE, "ro.debuggable=1", true, 10)); totalScore -= 10 }
        val buildType = runSuCommandOutput("getprop ro.build.type").trim()
        if (buildType == "userdebug") { results.add(DetectionResult(DetectionItem.TEST_KEYS, "ro.build.type=userdebug", true, 5)); totalScore -= 5 }
        val buildTags = runSuCommandOutput("getprop ro.build.tags").trim()
        if (buildTags.contains("test-keys")) { results.add(DetectionResult(DetectionItem.TEST_KEYS, "test-keys 签名", true, 10)); totalScore -= 10 }
        val secure = runSuCommandOutput("getprop ro.secure").trim()
        if (secure == "0") { results.add(DetectionResult(DetectionItem.SUPERUSER_APK, "ro.secure=0", true, 5)); totalScore -= 5 }

        // DenyList 状态
        val hasShamiko = fileExists("/data/adb/modules/zygisk_shamiko")
        if (!hasShamiko) {
            results.add(DetectionResult(DetectionItem.SHAMIKO, "Shamiko 未安装", true, 10)); totalScore -= 10
        } else {
            results.add(DetectionResult(DetectionItem.SHAMIKO, "Shamiko 已安装", false, 0))
        }

        val hasTrickyStore = fileExists("/data/adb/tricky_store") || fileExists("/data/adb/modules/tricky_store")
        if (!hasTrickyStore) {
            results.add(DetectionResult(DetectionItem.TRICKY_STORE, "Tricky Store 未安装", true, 5)); totalScore -= 5
        } else {
            results.add(DetectionResult(DetectionItem.TRICKY_STORE, "Tricky Store 已安装", false, 0))
        }

        val hasPif = fileExists("/data/adb/modules/playintegrityfix")
        if (!hasPif) {
            results.add(DetectionResult(DetectionItem.PIF, "PlayIntegrityFix 未安装", true, 5)); totalScore -= 5
        } else {
            results.add(DetectionResult(DetectionItem.PIF, "PlayIntegrityFix 已安装", false, 0))
        }

        // Recovery 模式
        val bootmode = runSuCommandOutput("getprop ro.bootmode").trim()
        if (bootmode.contains("recovery")) {
            results.add(DetectionResult(DetectionItem.RECOVERY_MODE, "Recovery 模式暴露", true, 5)); totalScore -= 5
        }

        totalScore.coerceIn(0, 100)
    }

    suspend fun runEnvironmentCheckDetail(): List<DetectionResult> = withContext(Dispatchers.IO) {
        val results = mutableListOf<DetectionResult>()

        val suFound = ROOT_PATHS.any { fileExists(it) }
        results.add(DetectionResult(DetectionItem.SU_BINARY, "su 二进制文件", suFound, 15))

        val magiskFound = MAGISK_PATHS.any { fileExists(it) }
        results.add(DetectionResult(DetectionItem.MAGISK_FILES, "Magisk 文件", magiskFound, 10))

        val bbFound = BUSYBOX_PATHS.any { fileExists(it) }
        results.add(DetectionResult(DetectionItem.BUSYBOX, "Busybox", bbFound, 5))

        val pm = context.packageManager
        val rootPkgs = ROOT_PACKAGES.filter { try { pm.getPackageInfo(it, 0); true } catch (_: Exception) { false } }
        results.add(DetectionResult(DetectionItem.ROOT_PACKAGES, "Root 应用 (${rootPkgs.size}个)", rootPkgs.isNotEmpty(), 10))

        val debuggable = runSuCommandOutput("getprop ro.debuggable").trim()
        results.add(DetectionResult(DetectionItem.DEBUGGABLE, "ro.debuggable", debuggable == "1", 10))

        val buildTags = runSuCommandOutput("getprop ro.build.tags").trim()
        results.add(DetectionResult(DetectionItem.TEST_KEYS, "构建签名", buildTags.contains("test-keys"), 10))

        val secure = runSuCommandOutput("getprop ro.secure").trim()
        results.add(DetectionResult(DetectionItem.SUPERUSER_APK, "ro.secure", secure == "0", 5))

        val hasShamiko = fileExists("/data/adb/modules/zygisk_shamiko")
        results.add(DetectionResult(DetectionItem.SHAMIKO, "Shamiko", !hasShamiko, 10))

        val hasTs = fileExists("/data/adb/tricky_store") || fileExists("/data/adb/modules/tricky_store")
        results.add(DetectionResult(DetectionItem.TRICKY_STORE, "Tricky Store", !hasTs, 5))

        val hasPif = fileExists("/data/adb/modules/playintegrityfix")
        results.add(DetectionResult(DetectionItem.PIF, "PlayIntegrityFix", !hasPif, 5))

        val bootmode = runSuCommandOutput("getprop ro.bootmode").trim()
        results.add(DetectionResult(DetectionItem.RECOVERY_MODE, "Recovery 模式", bootmode.contains("recovery"), 5))

        results
    }

    // ========== 原有功能保留 ==========

    suspend fun applyIsolation(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            if (!config.isEnabled) { removeIsolation(config.packageName); return@withContext true }
            Logger.d("Applying isolation for ${config.packageName}")
            val r1 = configureMagiskHide(config)
            val r2 = if (config.hideSuBinary) hideSuForPackage(config.packageName) else true
            val r3 = if (config.hideMagisk) hideMagiskFilesForPackage(config.packageName) else true
            val r4 = if (config.hideBusybox) hideBusyboxForPackage(config.packageName) else true
            val r5 = if (config.hideXposed) hideXposedForPackage(config.packageName) else true
            val r6 = if (config.customProps.isNotEmpty()) applyCustomProps(config.customProps) else true
            val r7 = if (config.disableRootAccess) disableRootForPackage(config.packageName) else true
            r1 && r2 && r3 && r4 && r5 && r6 && r7
        } catch (e: Exception) {
            Logger.e("applyIsolation failed for ${config.packageName}", e); false
        }
    }

    private suspend fun configureMagiskHide(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            val pkg = config.packageName
            runSuCommand("magisk --denylist add $pkg")
            runSuCommand("ksu denylist add $pkg 2>/dev/null")
            true
        } catch (e: Exception) {
            Logger.e("configureMagiskHide failed", e); false
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

    private suspend fun hideXposedForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            runSuCommand("app_process -Djava.class.path=/data/adb/modules/riru_lsposed/framework/lspd.dex /system/bin com.android.lsposed.core.HideHooker $packageName 2>/dev/null")
            true
        } catch (e: Exception) { true }
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

    suspend fun removeIsolation(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            runSuCommand("magisk --denylist rm $packageName")
            runSuCommand("ksu denylist rm $packageName 2>/dev/null")
            listOf("/system/bin/su", "/system/xbin/su", "/sbin/su", "/data/adb/magisk", "/data/adb/modules").forEach {
                runSuCommand("umount -l $it 2>/dev/null")
            }
            runSuCommand("rm -rf /data/local/tmp/hide_*_${packageName} 2>/dev/null")
            true
        } catch (e: Exception) {
            Logger.e("removeIsolation failed", e); false
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

    private suspend fun runSuCommand(cmd: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", cmd))
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.d("su cmd failed: $cmd"); false
        }
    }

    private suspend fun runSuCommandOutput(cmd: String): String = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", cmd))
            val output = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            output
        } catch (e: Exception) { "" }
    }
}

enum class HideStatus { ACTIVE, PARTIAL, INACTIVE, UNKNOWN }
