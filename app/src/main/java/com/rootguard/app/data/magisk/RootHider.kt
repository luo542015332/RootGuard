package com.rootguard.app.data.magisk

import android.content.Context
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.utils.Logger
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Root 隐藏执行器
 * 负责执行各种 Root 隐藏操作
 */
@Singleton
class RootHider @Inject constructor(
    private val context: Context
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
            "/system/app/superuser.apk",
            "/system/xbin/daemonsu",
            "/system/etc/init.d/99SuperSUDaemon",
            "/system/bin/.ext/.su",
            "/system/etc/.has_su_daemon",
            "/system/etc/.installed_su_daemon"
        )
        
        // Magisk 相关路径
        private val MAGISK_PATHS = listOf(
            "/data/adb/magisk",
            "/data/adb/modules",
            "/sbin/.magisk",
            "/dev/.magisk.unblock",
            "/system/etc/init/magisk.rc"
        )
        
        // Busybox 路径
        private val BUSYBOX_PATHS = listOf(
            "/system/xbin/busybox",
            "/system/bin/busybox",
            "/data/local/xbin/busybox"
        )
        
        // Xposed 路径
        private val XPOSED_PATHS = listOf(
            "/system/framework/XposedBridge.jar",
            "/system/xbin/xposed",
            "/data/data/de.robv.android.xposed.installer"
        )
    }
    
    /**
     * 为指定应用应用隔离配置
     */
    suspend fun applyIsolation(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            if (!config.isEnabled) {
                Logger.d("Isolation disabled for ${config.packageName}")
                return@withContext removeIsolation(config.packageName)
            }
            
            Logger.d("Applying isolation for ${config.packageName}")
            
            // 1. 创建 Magisk Hide 规则（如果 Magisk 支持）
            val magiskHideResult = addMagiskHide(config.packageName)
            
            // 2. 应用自定义属性
            val propsResult = applyCustomProps(config.packageName, config.customProps)
            
            // 3. 配置 Zygisk 排除（如果可用）
            val zygiskResult = configureZygisk(config)
            
            // 4. 设置存储隔离
            if (config.isolateStorage) {
                setupStorageIsolation(config.packageName)
            }
            
            Logger.d("Isolation applied for ${config.packageName}: magiskHide=$magiskHideResult, props=$propsResult")
            true
        } catch (e: Exception) {
            Logger.e("Failed to apply isolation for ${config.packageName}", e)
            false
        }
    }
    
    /**
     * 移除应用的隔离配置
     */
    suspend fun removeIsolation(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            Logger.d("Removing isolation for $packageName")
            
            // 移除 Magisk Hide
            removeMagiskHide(packageName)
            
            // 恢复系统属性
            restoreDefaultProps(packageName)
            
            true
        } catch (e: Exception) {
            Logger.e("Failed to remove isolation for $packageName", e)
            false
        }
    }
    
    /**
     * 添加 Magisk Hide
     */
    private suspend fun addMagiskHide(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 尝试使用 magisk --hide 命令
            val process = Runtime.getRuntime().exec("su -c magisk --hide add $packageName")
            val exitCode = process.waitFor()
            
            if (exitCode == 0) {
                Logger.d("Added Magisk Hide for $packageName")
                true
            } else {
                // 尝试替代方法 - 直接修改 Magisk 数据库
                val altProcess = Runtime.getRuntime().exec(
                    "su -c sqlite3 /data/adb/magisk.db \"INSERT OR REPLACE INTO hidelist (package_name) VALUES ('$packageName')\""
                )
                altProcess.waitFor() == 0
            }
        } catch (e: Exception) {
            Logger.e("Failed to add Magisk Hide", e)
            false
        }
    }
    
    /**
     * 移除 Magisk Hide
     */
    private suspend fun removeMagiskHide(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec("su -c magisk --hide rm $packageName")
            val exitCode = process.waitFor()
            
            if (exitCode == 0) {
                Logger.d("Removed Magisk Hide for $packageName")
                true
            } else {
                // 尝试替代方法
                val altProcess = Runtime.getRuntime().exec(
                    "su -c sqlite3 /data/adb/magisk.db \"DELETE FROM hidelist WHERE package_name='$packageName'\""
                )
                altProcess.waitFor() == 0
            }
        } catch (e: Exception) {
            Logger.e("Failed to remove Magisk Hide", e)
            false
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
            // 创建属性重置脚本
            val resetScript = buildString {
                appendLine("#!/system/bin/sh")
                props.forEach { (key, value) ->
                    appendLine("resetprop $key $value")
                }
            }
            
            // 写入临时脚本
            val scriptPath = "/data/local/tmp/pandasu_props_${packageName.replace(".", "_")}.sh"
            val writeProcess = Runtime.getRuntime().exec("su -c cat > $scriptPath")
            writeProcess.outputStream.write(resetScript.toByteArray())
            writeProcess.outputStream.close()
            writeProcess.waitFor()
            
            // 执行脚本
            val execProcess = Runtime.getRuntime().exec("su -c sh $scriptPath")
            val result = execProcess.waitFor() == 0
            
            // 清理
            Runtime.getRuntime().exec("su -c rm -f $scriptPath").waitFor()
            
            result
        } catch (e: Exception) {
            Logger.e("Failed to apply custom props", e)
            false
        }
    }
    
    /**
     * 恢复默认系统属性
     */
    private suspend fun restoreDefaultProps(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 恢复原始属性值
            val restoreScript = """
                #!/system/bin/sh
                resetprop --delete ro.build.tags
                resetprop --delete ro.debuggable
                resetprop --delete ro.secure
            """.trimIndent()
            
            val scriptPath = "/data/local/tmp/pandasu_restore_${packageName.replace(".", "_")}.sh"
            val writeProcess = Runtime.getRuntime().exec("su -c cat > $scriptPath")
            writeProcess.outputStream.write(restoreScript.toByteArray())
            writeProcess.outputStream.close()
            writeProcess.waitFor()
            
            val execProcess = Runtime.getRuntime().exec("su -c sh $scriptPath")
            val result = execProcess.waitFor() == 0
            
            Runtime.getRuntime().exec("su -c rm -f $scriptPath").waitFor()
            
            result
        } catch (e: Exception) {
            Logger.e("Failed to restore default props", e)
            false
        }
    }
    
    /**
     * 配置 Zygisk 排除
     */
    private suspend fun configureZygisk(config: IsolationConfig): Boolean = withContext(Dispatchers.IO) {
        try {
            // 检查 Zygisk 是否启用
            val checkProcess = Runtime.getRuntime().exec("su -c magisk -Z")
            val zygiskEnabled = checkProcess.waitFor() == 0
            
            if (!zygiskEnabled) {
                Logger.d("Zygisk not enabled, skipping")
                return@withContext true
            }
            
            // 添加到 Zygisk 排除列表
            val process = Runtime.getRuntime().exec(
                "su -c magisk --zygisk-unmount $${config.packageName}"
            )
            process.waitFor() == 0
        } catch (e: Exception) {
            Logger.e("Failed to configure Zygisk", e)
            false
        }
    }
    
    /**
     * 设置存储隔离
     */
    private suspend fun setupStorageIsolation(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 创建隔离存储目录
            val isolateDir = "/data/adb/pandasu/isolated/$packageName"
            val mkdirProcess = Runtime.getRuntime().exec("su -c mkdir -p $isolateDir")
            mkdirProcess.waitFor()
            
            // 设置权限
            val chmodProcess = Runtime.getRuntime().exec("su -c chmod 700 $isolateDir")
            chmodProcess.waitFor()
            
            Logger.d("Storage isolation setup for $packageName")
            true
        } catch (e: Exception) {
            Logger.e("Failed to setup storage isolation", e)
            false
        }
    }
    
    /**
     * 检查 Root 检测路径是否存在
     */
    suspend fun checkRootPaths(): List<String> = withContext(Dispatchers.IO) {
        val foundPaths = mutableListOf<String>()
        
        try {
            ROOT_PATHS.forEach { path ->
                val process = Runtime.getRuntime().exec("su -c test -e $path && echo 1 || echo 0")
                val result = process.inputStream.bufferedReader().readText().trim()
                process.waitFor()
                
                if (result == "1") {
                    foundPaths.add(path)
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to check root paths", e)
        }
        
        foundPaths
    }
    
    /**
     * 获取当前 Magisk Hide 列表
     */
    suspend fun getMagiskHideList(): List<String> = withContext(Dispatchers.IO) {
        try {
            // 尝试从数据库读取
            val process = Runtime.getRuntime().exec(
                "su -c sqlite3 /data/adb/magisk.db \"SELECT package_name FROM hidelist\""
            )
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()
            
            output.lines().filter { it.isNotBlank() }
        } catch (e: Exception) {
            Logger.e("Failed to get Magisk Hide list", e)
            emptyList()
        }
    }
}
