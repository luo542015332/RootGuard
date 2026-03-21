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
            "de.robv.android.xposed.installer",
            "org.meowcat.edxposed.manager",
            "com.solohsu.android.edxp.manager"
        )
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
     * 配置 Magisk Hide / DenyList
     */
    private suspend fun configureMagiskHide(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            // 尝试使用 Magisk 的 magisk --denylist 命令
            // 或者写入到 Magisk 的配置文件
            
            // 方法1: 使用命令行
            val process = Runtime.getRuntime().exec(
                "su -c magisk --denylist add ${config.packageName}"
            )
            process.waitFor()
            
            // 方法2: 写入配置文件（作为备用）
            if (process.exitValue() != 0) {
                // 尝试直接修改 Magisk 数据库或配置文件
                addToMagiskConfig(config.packageName)
            }
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to configure Magisk Hide", e)
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
            
            // 1. 从 Magisk Hide / DenyList 移除
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
            
            // 3. 清理挂载点
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
            // 检查 Magisk Hide / Zygisk DenyList 状态
            val process = Runtime.getRuntime().exec("su -c magisk -Z")
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()
            
            when {
                output.contains("Enforcing") -> HideStatus.ACTIVE
                output.contains("Permissive") -> HideStatus.PARTIAL
                else -> HideStatus.INACTIVE
            }
        } catch (e: Exception) {
            HideStatus.UNKNOWN
        }
    }
    
    /**
     * 获取已配置隔离的应用列表
     */
    suspend fun getIsolatedApps(): List<String> = withContext(Dispatchers.IO) {
        try {
            // 从 Magisk 数据库读取
            val magiskDb = "/data/adb/magisk.db"
            val process = Runtime.getRuntime().exec(
                "su -c sqlite3 $magiskDb \"SELECT package_name FROM denylist\""
            )
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()
            
            output.lines().filter { it.isNotBlank() }
        } catch (e: Exception) {
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
