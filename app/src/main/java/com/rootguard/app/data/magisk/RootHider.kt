package com.rootguard.app.data.magisk

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import com.rootguard.app.data.model.DetectionItem
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.utils.Logger
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Root 隐藏器
 * 用于隐藏 Root 痕迹，防止应用检测到 Root 权限
 */
@Singleton
class RootHider @Inject constructor(
    @ApplicationContext private val context: Context
) {
    companion object {
        // Root 管理方案类型
        private const val ROOT_TYPE_MAGISK = "magisk"
        private const val ROOT_TYPE_KERNELSU = "kernelsu"
        
        // 常见的 Root 检测路径
        private val ROOT_PATHS = listOf(
            "/system/bin/su",
            "/system/xbin/su",
            "/sbin/su",
            "/su/bin/su",
            "/data/local/xbin/su",
            "/data/local/bin/su",
            "/system/app/Superuser.apk",
            "/system/app/SuperSU.apk",
            "/system/app/Magisk.apk"
        )
        
        // Magisk 相关路径
        private val MAGISK_PATHS = listOf(
            "/data/adb/magisk",
            "/data/adb/modules",
            "/sbin/.magisk",
            "/dev/.magisk.unblock",
            "/system/etc/init.d"
        )
        
        // KernelSU 相关路径
        private val KERNELSU_PATHS = listOf(
            "/data/adb/ksu",
            "/data/adb/modules", // KernelSU 也使用模块目录
            "/dev/ksu",
            "/sys/kernel/ksu"
        )
        
        // Busybox 路径
        private val BUSYBOX_PATHS = listOf(
            "/system/xbin/busybox",
            "/system/bin/busybox",
            "/data/local/xbin/busybox"
        )
        
        // Xposed 相关
        private val XPOSED_PATHS = listOf(
            "/system/framework/XposedBridge.jar",
            "/system/bin/app_process_xposed",
            "/system/xbin/xposed",
            "/data/data/de.robv.android.xposed.installer"
        )
        
        // Root 管理应用包名
        private val ROOT_PACKAGES = listOf(
            "com.topjohnwu.magisk",
            "com.topjohnwu.magisk.debug",
            "eu.chainfire.supersu",
            "com.koushikdutta.superuser",
            "com.thirdparty.superuser",
            "com.yellowes.su",
            "com.kingroot.kinguser",
            "com.kingo.root",
            "com.smedialink.oneclickroot",
            "com.zhiqupk.root.global",
            "me.weishu.exp",
            "me.weishu.kernelsu", // KernelSU 管理应用
            "de.robv.android.xposed.installer",
            "org.meowcat.edxposed.manager",
            "com.solohsu.android.edxp.manager"
        )
    }
    
    // 缓存的 Root 类型检测结果
    private var cachedRootType: String? = null
    
    /**
     * 检测当前设备的 Root 管理方案
     * 
     * @return "kernelsu" 或 "magisk"
     */
    private suspend fun detectRootType(): String = withContext(Dispatchers.IO) {
        // 使用缓存结果
        cachedRootType?.let { return@withContext it }
        
        try {
            // 方法1: 检查 KernelSU 特征文件
            val hasKernelSU = KERNELSU_PATHS.any { path ->
                try {
                    File(path).exists()
                } catch (e: Exception) {
                    false
                }
            }
            
            if (hasKernelSU) {
                // 进一步验证 KernelSU 命令是否可用
                val process = Runtime.getRuntime().exec("su -c ksu --version")
                process.waitFor()
                if (process.exitValue() == 0) {
                    Logger.d("Detected KernelSU root management")
                    cachedRootType = ROOT_TYPE_KERNELSU
                    return@withContext ROOT_TYPE_KERNELSU
                }
            }
            
            // 方法2: 检查 Magisk 特征文件
            val hasMagisk = MAGISK_PATHS.any { path ->
                try {
                    File(path).exists()
                } catch (e: Exception) {
                    false
                }
            }
            
            if (hasMagisk) {
                // 进一步验证 Magisk 命令是否可用
                val process = Runtime.getRuntime().exec("su -c magisk -c")
                process.waitFor()
                if (process.exitValue() == 0) {
                    Logger.d("Detected Magisk root management")
                    cachedRootType = ROOT_TYPE_MAGISK
                    return@withContext ROOT_TYPE_MAGISK
                }
            }
            
            // 默认使用 Magisk 兼容模式
            Logger.w("Cannot detect root type, defaulting to Magisk compatibility mode")
            cachedRootType = ROOT_TYPE_MAGISK
            return@withContext ROOT_TYPE_MAGISK
            
        } catch (e: Exception) {
            Logger.e("Failed to detect root type, defaulting to Magisk", e)
            cachedRootType = ROOT_TYPE_MAGISK
            return@withContext ROOT_TYPE_MAGISK
        }
    }
    
    /**
     * 为指定应用配置 Root 隐藏
     */
    suspend fun applyIsolation(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            if (!config.isEnabled) {
                // 如果禁用隔离，则移除所有配置
                removeIsolation(config.packageName)
                return@withContext true
            }
            
            Logger.d("Applying isolation for ${config.packageName}")
            
            // 1. 配置 Magisk Hide / Zygisk DenyList
            val magiskResult = configureMagiskHide(config)
            
            // 2. 隐藏 su 二进制文件
            val suResult = if (config.hideSuBinary) hideSuForPackage(config.packageName) else true
            
            // 3. 隐藏 Magisk 文件
            val magiskFileResult = if (config.hideMagisk) hideMagiskFilesForPackage(config.packageName) else true
            
            // 4. 隐藏 Busybox
            val busyboxResult = if (config.hideBusybox) hideBusyboxForPackage(config.packageName) else true
            
            // 5. 隐藏 Xposed
            val xposedResult = if (config.hideXposed) hideXposedForPackage(config.packageName) else true
            
            // 6. 设置自定义属性
            val propsResult = if (config.customProps.isNotEmpty()) {
                applyCustomProps(config.packageName, config.customProps)
            } else true
            
            // 7. 如果禁用 Root 访问，设置拒绝策略
            val rootResult = if (config.disableRootAccess) {
                disableRootForPackage(config.packageName)
            } else true
            
            magiskResult && suResult && magiskFileResult && busyboxResult && 
            xposedResult && propsResult && rootResult
            
        } catch (e: Exception) {
            Logger.e("Failed to apply isolation for ${config.packageName}", e)
            false
        }
    }
    
    /**
     * 配置 Magisk Hide / DenyList / KernelSU DenyList
     * 自动检测 Root 类型并使用对应的命令
     */
    private suspend fun configureMagiskHide(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            val rootType = detectRootType()
            val packageName = config.packageName
            
            Logger.d("Configuring denylist for $packageName (Root type: $rootType)")
            
            when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    // 使用 KernelSU 命令
                    val process = Runtime.getRuntime().exec(
                        "su -c ksu denylist add $packageName"
                    )
                    process.waitFor()
                    
                    if (process.exitValue() != 0) {
                        Logger.e("KernelSU denylist add failed for $packageName")
                        false
                    } else {
                        Logger.d("Added $packageName to KernelSU denylist")
                        true
                    }
                }
                
                ROOT_TYPE_MAGISK -> {
                    // 使用 Magisk 命令
                    val process = Runtime.getRuntime().exec(
                        "su -c magisk --denylist add $packageName"
                    )
                    process.waitFor()
                    
                    // 如果命令失败，尝试写入配置文件（备用方法）
                    if (process.exitValue() != 0) {
                        Logger.w("Magisk denylist command failed, trying config file")
                        addToMagiskConfig(packageName)
                    } else {
                        Logger.d("Added $packageName to Magisk denylist")
                        true
                    }
                }
                
                else -> {
                    Logger.e("Unknown root type: $rootType")
                    false
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to configure denylist for ${config.packageName}", e)
            // 尝试备用方法
            addToMagiskConfig(config.packageName)
        }
    }
    
    /**
     * 添加到 Magisk 配置文件
     */
    private suspend fun addToMagiskConfig(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // Magisk 的配置文件路径
            val magiskDb = "/data/adb/magisk.db"
            
            // 尝试将应用添加到 Magisk 的隐藏列表
            // 这需要修改 Magisk 的数据库
            val process = Runtime.getRuntime().exec(
                "su -c sqlite3 $magiskDb \"INSERT OR REPLACE INTO denylist (package_name) VALUES ('$packageName')\""
            )
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to add to Magisk config", e)
            false
        }
    }
    
    /**
     * 为指定包隐藏 su 二进制文件
     */
    private suspend fun hideSuForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 使用 mount namespace 隔离
            // 创建私有挂载命名空间，隐藏 su 文件
            
            val commands = listOf(
                // 创建绑定挂载，将 su 文件隐藏
                "su -c 'mkdir -p /data/local/tmp/hide_$packageName'",
                "su -c 'mount --bind /data/local/tmp/hide_$packageName /system/bin/su 2>/dev/null || true'",
                "su -c 'mount --bind /data/local/tmp/hide_$packageName /system/xbin/su 2>/dev/null || true'"
            )
            
            commands.forEach { cmd ->
                Runtime.getRuntime().exec(cmd).waitFor()
            }
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to hide su for $packageName", e)
            false
        }
    }
    
    /**
     * 为指定包隐藏 Magisk 文件
     */
    private suspend fun hideMagiskFilesForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 隐藏 Magisk 相关文件和目录
            val hideDir = "/data/local/tmp/hide_magisk_$packageName"
            
            val commands = listOf(
                "su -c 'mkdir -p $hideDir'",
                "su -c 'mount --bind $hideDir /data/adb/magisk 2>/dev/null || true'",
                "su -c 'mount --bind $hideDir /data/adb/modules 2>/dev/null || true'"
            )
            
            commands.forEach { cmd ->
                Runtime.getRuntime().exec(cmd).waitFor()
            }
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to hide Magisk files for $packageName", e)
            false
        }
    }
    
    /**
     * 为指定包隐藏 Busybox
     */
    private suspend fun hideBusyboxForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val hideDir = "/data/local/tmp/hide_busybox_$packageName"
            
            val commands = listOf(
                "su -c 'mkdir -p $hideDir'",
                "su -c 'mount --bind $hideDir /system/xbin/busybox 2>/dev/null || true'"
            )
            
            commands.forEach { cmd ->
                Runtime.getRuntime().exec(cmd).waitFor()
            }
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to hide busybox for $packageName", e)
            false
        }
    }
    
    /**
     * 为指定包隐藏 Xposed
     */
    private suspend fun hideXposedForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 使用 LSPosed 的排除列表功能
            // 或者尝试隐藏 Xposed 相关文件
            
            val process = Runtime.getRuntime().exec(
                "su -c 'app_process -Djava.class.path=/data/adb/modules/riru_lsposed/framework/lspd.dex /system/bin com.android.lsposed.core.HideHooker $packageName'"
            )
            process.waitFor()
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to hide Xposed for $packageName", e)
            // Xposed 隐藏失败不是致命的
            true
        }
    }
    
    /**
     * 应用自定义系统属性
     */
    private suspend fun applyCustomProps(
        packageName: String, 
        props: Map<String, String>
    ): Boolean = withContext(Dispatchers.IO) {
        try {
            // 使用 resetprop 修改系统属性
            props.forEach { (key, value) ->
                val process = Runtime.getRuntime().exec(
                    "su -c resetprop $key $value"
                )
                process.waitFor()
            }
            true
        } catch (e: Exception) {
            Logger.e("Failed to apply custom props", e)
            false
        }
    }
    
    /**
     * 禁用指定包的 Root 访问
     */
    private suspend fun disableRootForPackage(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 在 Magisk 数据库中设置拒绝策略
            val magiskDb = "/data/adb/magisk.db"
            val process = Runtime.getRuntime().exec(
                "su -c sqlite3 $magiskDb \"INSERT OR REPLACE INTO policies (package_name, policy) VALUES ('$packageName', 1)\""
            )
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to disable root for $packageName", e)
            false
        }
    }
    
    /**
     * 移除应用的隔离配置
     */
    suspend fun removeIsolation(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            Logger.d("Removing isolation for $packageName")
            
            val rootType = detectRootType()
            
            when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    // 使用 KernelSU 命令移除
                    val process = Runtime.getRuntime().exec(
                        "su -c ksu denylist rm $packageName"
                    )
                    process.waitFor()
                    
                    if (process.exitValue() != 0) {
                        Logger.e("KernelSU denylist rm failed for $packageName")
                    } else {
                        Logger.d("Removed $packageName from KernelSU denylist")
                    }
                }
                
                ROOT_TYPE_MAGISK -> {
                    // 使用 Magisk 命令移除
                    val process = Runtime.getRuntime().exec(
                        "su -c magisk --denylist rm $packageName"
                    )
                    process.waitFor()
                    
                    // 2. 从数据库移除
                    val magiskDb = "/data/adb/magisk.db"
                    val dbProcess = Runtime.getRuntime().exec(
                        "su -c sqlite3 $magiskDb \"DELETE FROM denylist WHERE package_name='$packageName'\""
                    )
                    dbProcess.waitFor()
                    
                    if (process.exitValue() != 0) {
                        Logger.w("Magisk denylist rm failed for $packageName")
                    } else {
                        Logger.d("Removed $packageName from Magisk denylist")
                    }
                }
                
                else -> {
                    Logger.e("Unknown root type: $rootType")
                }
            }
            
            // 清理挂载点
            cleanupMounts(packageName)
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to remove isolation for $packageName", e)
            false
        }
    }
    
    /**
     * 清理挂载点
     */
    private suspend fun cleanupMounts(packageName: String) = withContext(Dispatchers.IO) {
        try {
            // 卸载之前创建的绑定挂载
            val commands = listOf(
                "su -c 'umount -l /system/bin/su 2>/dev/null || true'",
                "su -c 'umount -l /system/xbin/su 2>/dev/null || true'",
                "su -c 'umount -l /data/adb/magisk 2>/dev/null || true'",
                "su -c 'rm -rf /data/local/tmp/hide_*_$packageName 2>/dev/null || true'"
            )
            
            commands.forEach { cmd ->
                Runtime.getRuntime().exec(cmd).waitFor()
            }
        } catch (e: Exception) {
            Logger.e("Failed to cleanup mounts", e)
        }
    }
    
    /**
     * 检测应用可能使用的 Root 检测方法
     */
    suspend fun detectRootChecks(packageName: String): List<DetectionItem> = withContext(Dispatchers.IO) {
        val detectedItems = mutableListOf<DetectionItem>()
        
        try {
            val pm = context.packageManager
            
            // 检查应用是否请求了可疑权限
            try {
                val packageInfo = pm.getPackageInfo(packageName, PackageManager.GET_PERMISSIONS)
                packageInfo.requestedPermissions?.forEach { permission ->
                    when {
                        permission.contains("SUPERUSER") -> detectedItems.add(DetectionItem.SUPERUSER_APK)
                        permission.contains("ACCESS_SUPERUSER") -> detectedItems.add(DetectionItem.SU_BINARY)
                    }
                }
            } catch (e: Exception) {
                // 忽略
            }
            
            // 检查应用是否包含 Root 检测相关字符串（通过分析 APK）
            // 这需要更复杂的实现，这里简化处理
            
        } catch (e: Exception) {
            Logger.e("Failed to detect root checks", e)
        }
        
        detectedItems
    }
    
    /**
     * 检查当前设备的 Root 隐藏状态
     */
    suspend fun checkHideStatus(): HideStatus = withContext(Dispatchers.IO) {
        try {
            val rootType = detectRootType()
            
            when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    // 检查 KernelSU denylist 状态
                    val process = Runtime.getRuntime().exec("su -c ksu denylist list")
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    
                    if (process.exitValue() == 0 && output.isNotBlank()) {
                        Logger.d("KernelSU denylist active")
                        HideStatus.ACTIVE
                    } else {
                        Logger.d("KernelSU denylist inactive")
                        HideStatus.INACTIVE
                    }
                }
                
                ROOT_TYPE_MAGISK -> {
                    // 检查 Magisk Hide / Zygisk DenyList 状态
                    val process = Runtime.getRuntime().exec("su -c magisk -Z")
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    
                    when {
                        output.contains("Enforcing") -> {
                            Logger.d("Magisk denylist active (Enforcing)")
                            HideStatus.ACTIVE
                        }
                        output.contains("Permissive") -> {
                            Logger.d("Magisk denylist partial (Permissive)")
                            HideStatus.PARTIAL
                        }
                        else -> {
                            Logger.d("Magisk denylist inactive")
                            HideStatus.INACTIVE
                        }
                    }
                }
                
                else -> {
                    Logger.e("Unknown root type: $rootType")
                    HideStatus.UNKNOWN
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to check hide status", e)
            HideStatus.UNKNOWN
        }
    }
    
    /**
     * 获取已配置隔离的应用列表
     */
    suspend fun getIsolatedApps(): List<String> = withContext(Dispatchers.IO) {
        try {
            val rootType = detectRootType()
            
            when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    // 从 KernelSU denylist 读取
                    val process = Runtime.getRuntime().exec("su -c ksu denylist list")
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    
                    if (process.exitValue() != 0) {
                        Logger.e("Failed to get KernelSU denylist")
                        emptyList()
                    } else {
                        val packages = output.lines()
                            .filter { it.isNotBlank() }
                            .map { it.trim() }
                            .filter { it.isNotEmpty() }
                        
                        Logger.d("KernelSU denylist: ${packages.size} apps")
                        packages
                    }
                }
                
                ROOT_TYPE_MAGISK -> {
                    // 从 Magisk 数据库读取
                    val magiskDb = "/data/adb/magisk.db"
                    val process = Runtime.getRuntime().exec(
                        "su -c sqlite3 $magiskDb \"SELECT package_name FROM denylist\""
                    )
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    
                    val packages = output.lines()
                        .filter { it.isNotBlank() }
                        .map { it.trim() }
                        .filter { it.isNotEmpty() }
                    
                    Logger.d("Magisk denylist: ${packages.size} apps")
                    packages
                }
                
                else -> {
                    Logger.e("Unknown root type: $rootType")
                    emptyList()
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to get isolated apps", e)
            emptyList()
        }
    }
}

/**
 * 隐藏状态枚举
 */
enum class HideStatus {
    ACTIVE,     // 完全激活
    PARTIAL,    // 部分激活
    INACTIVE,   // 未激活
    UNKNOWN     // 未知
}
