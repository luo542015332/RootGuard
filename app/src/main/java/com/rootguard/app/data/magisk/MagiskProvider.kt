package com.rootguard.app.data.magisk

import android.content.ContentResolver
import android.content.Context
import android.content.pm.PackageManager
import android.database.Cursor
import android.net.Uri
import android.os.ParcelFileDescriptor
import com.rootguard.app.data.kernelsu.KernelSUService
import com.rootguard.app.utils.Logger
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Magisk ContentProvider 通信接口
 *
 * Magisk 通过 ContentProvider 暴露以下 URI:
 * - content://com.topjohnwu.magisk.provider/ -> Magisk 主应用
 * - content://com.topjohnwu.magisk.provider/file/ -> 文件访问
 */
@Singleton
class MagiskProvider @Inject constructor(
    val context: Context
) {
    private val kernelSUService by lazy { KernelSUService(context) }
    companion object {
        private const val MAGISK_AUTHORITY = "com.topjohnwu.magisk.provider"
        private val dateFormat = SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault())
        private const val MAGISK_PACKAGE = "com.topjohnwu.magisk"

        // Root 管理方案类型
        const val ROOT_TYPE_MAGISK = "magisk"
        const val ROOT_TYPE_KERNELSU = "kernelsu"

        // Magisk ContentProvider URI
        val MAGISK_URI: Uri = Uri.parse("content://$MAGISK_AUTHORITY")
        val MAGISK_FILE_URI: Uri = Uri.parse("content://$MAGISK_AUTHORITY/file")

        // 模块路径
        const val MODULES_PATH = "/data/adb/modules"
        const val MAGISK_DB = "/data/adb/magisk.db"

        // KernelSU 管理器包名和数据库路径
        private const val KERNELSU_PACKAGE_WEISHU = "me.weishu.kernelsu"
        private const val KERNELSU_PACKAGE_TIANN = "com.tiann.kernelsu"
        private const val KERNELSU_DB_WEISHU = "/data/data/me.weishu.kernelsu/databases/app.db"
        private const val KERNELSU_DB_TIANN = "/data/data/com.tiann.kernelsu/databases/kernelsu.db"

        // KernelSU 相关路径
        private val KERNELSU_PATHS = listOf(
            "/data/adb/ksu",
            "/data/adb/modules",
            "/dev/ksu",
            "/sys/kernel/ksu"
        )
    }

    /**
     * 检查 Magisk 是否已安装
     */
    fun isMagiskInstalled(): Boolean {
        return try {
            context.packageManager.getPackageInfo(MAGISK_PACKAGE, 0)
            true
        } catch (e: Exception) {
            false
        }
    }

    /**
     * 获取当前 Root 类型
     * @return ROOT_TYPE_MAGISK 或 ROOT_TYPE_KERNELSU
     */
    suspend fun getCurrentRootType(): String = detectRootType()

    /**
     * 检测 Root 类型
     * @return "kernelsu" 或 "magisk"
     */
    private suspend fun detectRootType(): String = withContext(Dispatchers.IO) {
        Logger.d("Starting root type detection...")

        // 优先检查 KernelSU (尝试多种检测方式)
        var isKernelSU = false

        // 方法 1: 检查 ksu 命令是否可用
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "ksu", "-v"))
            process.waitFor()
            if (process.exitValue() == 0) {
                Logger.d("Detected KernelSU via ksu -v command")
                isKernelSU = true
            }
        } catch (e: Exception) {
            Logger.w("ksu command failed: ${e.message}")
        }

        // 方法 2: 检查 KernelSU 特征文件
        if (!isKernelSU) {
            KERNELSU_PATHS.forEach { path ->
                try {
                    if (File(path).exists()) {
                        Logger.d("Found KernelSU path: $path")
                        isKernelSU = true
                        return@forEach
                    }
                } catch (e: Exception) {
                    Logger.w("Failed to check path $path: ${e.message}")
                }
            }
        }

        if (isKernelSU) {
            Logger.d("Root type detected: KernelSU")
            return@withContext ROOT_TYPE_KERNELSU
        }

        // 检查 Magisk
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "magisk", "-v"))
            process.waitFor()
            if (process.exitValue() == 0) {
                Logger.d("Detected Magisk")
                return@withContext ROOT_TYPE_MAGISK
            }
        } catch (e: Exception) {
            Logger.w("magisk command failed: ${e.message}")
        }

        // 如果都检测失败，默认使用 KernelSU (因为现在大多数新设备都是 KernelSU)
        Logger.w("Root type not detected, defaulting to KernelSU")
        return@withContext ROOT_TYPE_KERNELSU
    }

    /**
     * 获取 Magisk 版本信息
     */
    suspend fun getMagiskVersion(): MagiskVersion = withContext(Dispatchers.IO) {
        try {
            // 通过 su 命令获取版本
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "magisk", "-V"))
            val versionCode = process.inputStream.bufferedReader().readText().trim().toIntOrNull() ?: 0
            process.waitFor()

            val versionNameProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "magisk", "-v"))
            val versionName = versionNameProcess.inputStream.bufferedReader().readText().trim()
            versionNameProcess.waitFor()

            MagiskVersion(
                versionName = versionName,
                versionCode = versionCode,
                isInstalled = true
            )
        } catch (e: Exception) {
            Logger.e("Failed to get Magisk version", e)
            MagiskVersion("Unknown", 0, false)
        }
    }

    /**
     * 获取已安装模块列表
     */
    suspend fun getModules(): List<MagiskModule> = withContext(Dispatchers.IO) {
        val modules = mutableListOf<MagiskModule>()

        try {
            // 读取 /data/adb/modules 目录，只列出真正的模块目录
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "find", MODULES_PATH, "-mindepth", "1", "-maxdepth", "1", "-type", "d"))
            val moduleDirs = process.inputStream.bufferedReader().readLines()
            process.waitFor()

            moduleDirs.forEach { dirPath ->
                val moduleId = dirPath.substringAfterLast("/")
                if (moduleId.isNotBlank()) {
                    val module = readModuleInfo(moduleId)
                    if (module != null) {
                        modules.add(module)
                    }
                }
            }
            Logger.d("Found ${modules.size} modules")
        } catch (e: Exception) {
            Logger.e("Failed to get modules", e)
        }

        modules
    }

    /**
     * 读取单个模块信息
     */
    private suspend fun readModuleInfo(moduleId: String): MagiskModule? = withContext(Dispatchers.IO) {
        try {
            val modulePath = "$MODULES_PATH/$moduleId"

            // 读取 module.prop
            val propProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "cat", "$modulePath/module.prop"))
            val propContent = propProcess.inputStream.bufferedReader().readText()
            propProcess.waitFor()

            // 检查模块是否启用
            val disableFile = Runtime.getRuntime().exec(arrayOf("su", "-c", "test", "-f", "$modulePath/disable"))
            disableFile.waitFor()
            val isDisabled = disableFile.exitValue() == 0

            // 检查是否为 remove 状态
            val removeFile = Runtime.getRuntime().exec(arrayOf("su", "-c", "test", "-f", "$modulePath/remove"))
            removeFile.waitFor()
            val isRemoved = removeFile.exitValue() == 0

            parseModuleProp(propContent, moduleId, !isDisabled && !isRemoved)
        } catch (e: Exception) {
            Logger.e("Failed to read module info: $moduleId", e)
            null
        }
    }

    /**
     * 解析 module.prop 文件
     */
    private fun parseModuleProp(content: String, moduleId: String, isEnabled: Boolean): MagiskModule {
        val props = content.lines()
            .filter { it.contains("=") }
            .associate { 
                val parts = it.split("=", limit = 2)
                parts[0].trim() to (parts.getOrNull(1)?.trim() ?: "")
            }
        
        return MagiskModule(
            id = moduleId,
            name = props["name"] ?: moduleId,
            version = props["version"] ?: "Unknown",
            versionCode = props["versionCode"]?.toIntOrNull() ?: 0,
            author = props["author"] ?: "Unknown",
            description = props["description"] ?: "",
            isEnabled = isEnabled
        )
    }

    /**
     * 启用/禁用模块
     */
    suspend fun toggleModule(moduleId: String, enable: Boolean): Boolean = withContext(Dispatchers.IO) {
        try {
            val modulePath = "$MODULES_PATH/$moduleId"
            val disableFile = "$modulePath/disable"

            val command = if (enable) {
                arrayOf("su", "-c", "rm", "-f", disableFile)
            } else {
                arrayOf("su", "-c", "touch", disableFile)
            }

            val process = Runtime.getRuntime().exec(command)
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to toggle module: $moduleId", e)
            false
        }
    }

    /**
     * 卸载模块（标记为 remove）
     */
    suspend fun uninstallModule(moduleId: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val modulePath = "$MODULES_PATH/$moduleId"
            val removeFile = "$modulePath/remove"

            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "touch", removeFile))
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to uninstall module: $moduleId", e)
            false
        }
    }

    /**
     * 安装模块（从 zip 文件）
     * 支持 Magisk 和 KernelSU
     */
    suspend fun installModule(zipPath: String): Boolean = withContext(Dispatchers.IO) {
        try {
            Logger.d("Installing module from: $zipPath")

            // 检测 Root 类型
            val rootType = detectRootType()
            Logger.d("Detected root type: $rootType")

            val success = when (rootType) {
                ROOT_TYPE_KERNELSU -> installKernelSUModule(zipPath)
                ROOT_TYPE_MAGISK -> installMagiskModule(zipPath)
                else -> {
                    Logger.w("Unknown root type, trying Magisk installation")
                    installMagiskModule(zipPath)
                }
            }

            Logger.d("Module installation result: $success")
            success
        } catch (e: Exception) {
            Logger.e("Failed to install module: $zipPath", e)
            false
        }
    }

    /**
     * 使用 Magisk 命令安装模块
     */
    private suspend fun installMagiskModule(zipPath: String): Boolean {
        return try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "magisk", "--install-module", zipPath))
            process.waitFor()
            val exitCode = process.exitValue()

            if (exitCode != 0) {
                val error = process.errorStream.bufferedReader().readText()
                Logger.e("Magisk install failed with exit code $exitCode: $error")
            }

            exitCode == 0
        } catch (e: Exception) {
            Logger.e("Failed to install via Magisk command", e)
            false
        }
    }

    /**
     * 使用 KernelSU 方式安装模块
     * KernelSU 不支持 magisk --install-module,需要手动复制文件
     */
    private suspend fun installKernelSUModule(zipPath: String): Boolean {
        return try {
            Logger.d("Starting KernelSU module installation from: $zipPath")

            // 创建临时目录
            val tempDir = "/data/local/tmp/module_${System.currentTimeMillis()}"
            Logger.d("Creating temp directory: $tempDir")
            val mkdirProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "mkdir", "-p", tempDir))
            mkdirProcess.waitFor()

            if (mkdirProcess.exitValue() != 0) {
                Logger.e("Failed to create temp directory: $tempDir")
                return false
            }

            // 解压 zip 文件
            Logger.d("Extracting zip file to temp directory")
            val extractProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "unzip", "-o", zipPath, "-d", tempDir))
            extractProcess.waitFor()

            if (extractProcess.exitValue() != 0) {
                val error = extractProcess.errorStream.bufferedReader().readText()
                Logger.e("Failed to extract module zip, exit code: ${extractProcess.exitValue()}, error: $error")
                Runtime.getRuntime().exec(arrayOf("su", "-c", "rm", "-rf", tempDir)).waitFor()
                return false
            }

            // 检查是否有 module.prop
            Logger.d("Checking for module.prop")
            val moduleProp = Runtime.getRuntime().exec(arrayOf("su", "-c", "test", "-f", "$tempDir/module.prop"))
            moduleProp.waitFor()

            if (moduleProp.exitValue() != 0) {
                Logger.e("No module.prop found in $tempDir, not a valid module")
                // 列出 temp 目录内容用于调试
                val lsProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "ls", "-la", tempDir))
                val lsOutput = lsProcess.inputStream.bufferedReader().readText()
                Logger.d("Temp directory contents: $lsOutput")
                Runtime.getRuntime().exec(arrayOf("su", "-c", "rm", "-rf", tempDir)).waitFor()
                return false
            }

            // 读取 module.prop 获取模块 ID
            Logger.d("Reading module.prop to get module ID")
            val propProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "cat", "$tempDir/module.prop"))
            val propContent = propProcess.inputStream.bufferedReader().readText()
            propProcess.waitFor()

            val moduleId = propContent.lines()
                .firstOrNull { it.startsWith("id=") }
                ?.substring(3)
                ?.trim() ?: "module_${System.currentTimeMillis()}"

            Logger.d("Module ID: $moduleId")

            // 创建模块目录
            val modulePath = "$MODULES_PATH/$moduleId"
            Logger.d("Creating module directory: $modulePath")
            Runtime.getRuntime().exec(arrayOf("su", "-c", "mkdir", "-p", modulePath)).waitFor()

            // 复制所有文件到模块目录
            Logger.d("Copying files from temp directory to module directory")
            val copyProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "cp", "-r", "$tempDir/.", modulePath))
            copyProcess.waitFor()

            if (copyProcess.exitValue() != 0) {
                Logger.e("Failed to copy files to module directory, exit code: ${copyProcess.exitValue()}")
                Runtime.getRuntime().exec(arrayOf("su", "-c", "rm", "-rf", tempDir)).waitFor()
                return false
            }

            // 设置权限
            Logger.d("Setting permissions on module directory")
            Runtime.getRuntime().exec(arrayOf("su", "-c", "chmod", "-R", "755", modulePath)).waitFor()

            // 清理临时目录
            Logger.d("Cleaning up temp directory")
            Runtime.getRuntime().exec(arrayOf("su", "-c", "rm", "-rf", tempDir)).waitFor()

            // 设置模块启用(移除 disable 文件)
            Runtime.getRuntime().exec(arrayOf("su", "-c", "rm", "-f", "$modulePath/disable")).waitFor()

            Logger.d("KernelSU module installed successfully at: $modulePath")
            true
        } catch (e: Exception) {
            Logger.e("Failed to install via KernelSU", e)
            false
        }
    }

    /**
     * 获取 Root 权限管理数据库中的应用授权信息
     * 支持 Magisk 和 KernelSU（多个管理器）
     */
    suspend fun getAppPolicies(): List<AppPolicy> = withContext(Dispatchers.IO) {
        val policies = mutableListOf<AppPolicy>()

        try {
            Logger.d("========== Starting getAppPolicies() ==========")
            
            // 检测 Root 类型
            val rootType = detectRootType()
            Logger.d("Detected root type: $rootType")

            val dbPath = when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    Logger.d("Root type is KernelSU, detecting manager...")
                    
                    // 使用 Root 命令检测使用哪个 KernelSU 管理器
                    val ksudbWeishu = try {
                        val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "pm", "path", KERNELSU_PACKAGE_WEISHU))
                        process.waitFor()
                        val success = process.exitValue() == 0
                        if (!success) {
                            Logger.w("Weishu KernelSU not found via pm path")
                        }
                        success
                    } catch (e: Exception) {
                        Logger.w("Failed to check Weishu KernelSU: ${e.message}")
                        false
                    }
                    
                    val ksudbTiann = try {
                        val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "pm", "path", KERNELSU_PACKAGE_TIANN))
                        process.waitFor()
                        val success = process.exitValue() == 0
                        if (!success) {
                            Logger.w("Tiann KernelSU not found via pm path")
                        }
                        success
                    } catch (e: Exception) {
                        Logger.w("Failed to check Tiann KernelSU: ${e.message}")
                        false
                    }

                    Logger.d("ksudbWeishu: $ksudbWeishu, ksudbTiann: $ksudbTiann")

                    when {
                        ksudbWeishu -> {
                            Logger.d("Using Weishu KernelSU manager: $KERNELSU_DB_WEISHU")
                            KERNELSU_DB_WEISHU
                        }
                        ksudbTiann -> {
                            Logger.d("Using Tiann KernelSU manager: $KERNELSU_DB_TIANN")
                            KERNELSU_DB_TIANN
                        }
                        else -> {
                            Logger.w("No KernelSU manager found, defaulting to Weishu")
                            KERNELSU_DB_WEISHU
                        }
                    }
                }
                ROOT_TYPE_MAGISK -> {
                    Logger.d("Root type is Magisk, using: $MAGISK_DB")
                    MAGISK_DB
                }
                else -> {
                    Logger.w("Unknown root type ($rootType), trying Magisk DB: $MAGISK_DB")
                    MAGISK_DB
                }
            }

            Logger.d("Database path: $dbPath")

            // 检查数据库文件是否存在
            Logger.d("Checking if database exists: $dbPath")
            val checkDbProcess = Runtime.getRuntime().exec(arrayOf("su", "-c", "test", "-f", dbPath))
            checkDbProcess.waitFor()
            
            Logger.d("Database check exit code: ${checkDbProcess.exitValue()}")

            if (checkDbProcess.exitValue() != 0) {
                Logger.w("Database file not found: $dbPath")
                return@withContext policies
            }
            
            Logger.d("Database file exists, proceeding to query")

            // 根据不同的 Root 类型使用不同的查询方式
            when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    Logger.d("Querying KernelSU database...")
                    
                    // KernelSU 数据库结构根据不同管理器可能不同
                    // Weishu KernelSU: app.db - rules 表 (uid, policy)
                    // Tiann KernelSU: kernelsu.db - uid_policy 表 (uid, policy)
                    
                    // 先检查表名
                    Logger.d("Checking database tables...")
                    val tableCheck = Runtime.getRuntime().exec(
                        arrayOf("su", "-c", "sqlite3", dbPath, ".tables")
                    )
                    val tables = tableCheck.inputStream.bufferedReader().readText().trim()
                    tableCheck.waitFor()
                    
                    Logger.d("KernelSU database tables: $tables")
                    Logger.d("Table check exit code: ${tableCheck.exitValue()}")
                    
                    val tableName = when {
                        tables.contains("rules") -> {
                            Logger.d("Found 'rules' table")
                            "rules"
                        }
                        tables.contains("uid_policy") -> {
                            Logger.d("Found 'uid_policy' table")
                            "uid_policy"
                        }
                        else -> {
                            Logger.w("Unknown KernelSU database structure, tables: $tables")
                            return@withContext policies
                        }
                    }
                    
                    Logger.d("Using table: $tableName")
                    
                    Logger.d("Executing query: SELECT uid, policy FROM $tableName")
                    val process = Runtime.getRuntime().exec(
                        arrayOf("su", "-c", "sqlite3", dbPath, "SELECT uid, policy FROM $tableName")
                    )
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    
                    Logger.d("Query exit code: ${process.exitValue()}")
                    Logger.d("Query output length: ${output.length} characters")
                    Logger.d("Query output lines: ${output.lines().size} lines")
                    Logger.d("Query output preview: ${output.take(200)}")

                    output.lines().forEach { line ->
                        val parts = line.split("|")
                        if (parts.size >= 2) {
                            // KernelSU 使用 uid，需要转换为包名
                            val uid = parts[0].toIntOrNull() ?: 0
                            val policy = parts[1].toIntOrNull() ?: 0

                            // 通过 PackageManager 获取 uid 对应的包名
                            try {
                                val pm = context.packageManager
                                val packages = pm.getPackagesForUid(uid)
                                packages?.forEach { packageName ->
                                    policies.add(
                                        AppPolicy(
                                            packageName = packageName,
                                            policy = policy, // 0=拒绝, 1=允许
                                            logging = 1,
                                            notification = 1
                                        )
                                    )
                                }
                            } catch (e: Exception) {
                                Logger.w("Failed to get package for uid $uid: ${e.message}")
                            }
                        }
                    }
                }
                ROOT_TYPE_MAGISK -> {
                    // Magisk 数据库结构: policies 表 (package_name, policy, logging, notification)
                    val process = Runtime.getRuntime().exec(
                        arrayOf("su", "-c", "sqlite3", dbPath, "SELECT package_name, policy, logging, notification FROM policies")
                    )
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()

                    output.lines().forEach { line ->
                        val parts = line.split("|")
                        if (parts.size >= 4) {
                            policies.add(
                                AppPolicy(
                                    packageName = parts[0],
                                    policy = parts[1].toIntOrNull() ?: 0,
                                    logging = parts[2].toIntOrNull() ?: 1,
                                    notification = parts[3].toIntOrNull() ?: 1
                                )
                            )
                        }
                    }
                }
                else -> {
                    Logger.w("Unknown root type, cannot query app policies")
                }
            }

            Logger.d("Found ${policies.size} app policies")
        } catch (e: Exception) {
            Logger.e("Failed to get app policies", e)
        }

        policies
    }

    /**
     * 获取所有已安装的应用（包括系统应用）
     * v1.4.43: 优先使用 Root Shell 获取完整应用列表，绕过 HyperOS/MIUI 限制
     */
    suspend fun getAllInstalledApps(): List<InstalledAppInfo> = withContext(Dispatchers.IO) {
        val apps = mutableListOf<InstalledAppInfo>()

        try {
            val pm = context.packageManager

            // 检查 Root 类型
            val rootType = detectRootType()
            Logger.d("Current root type: $rootType")

            // 如果是 KernelSU，优先使用 Root Shell 获取完整应用列表
            if (rootType == ROOT_TYPE_KERNELSU) {
                Logger.d("========== USING ROOT SHELL ==========")
                Logger.d("Root Shell should bypass HyperOS/MIUI restrictions")

                // 检查 Root 是否可用
                val rootAvailable = kernelSUService.isRootAvailable()
                if (rootAvailable) {
                    Logger.d("Root is available, getting packages via Root Shell")

                    // 通过 Root Shell 获取所有包名
                    val packageNames = kernelSUService.getAllPackages()
                    Logger.d("Found ${packageNames.size} packages via Root Shell")

                    // 检查关键应用是否在列表中
                    val keyApps = listOf("com.tencent.mm", "com.tencent.mobileqq", "com.tencent.tmgp.sgame")
                    val foundKeyApps = packageNames.filter { it in keyApps }
                    Logger.d("Key apps found via RootService: $foundKeyApps")

                    // 处理每个包名
                    var successfulAppInfoCount = 0
                    var failedAppInfoCount = 0

                    packageNames.forEachIndexed { index, packageName ->
                        try {
                            // 尝试获取 ApplicationInfo
                            val appInfo = try {
                                pm.getApplicationInfo(packageName, 0)
                            } catch (e: Exception) {
                                Logger.w("Failed to get ApplicationInfo for $packageName: ${e.message}")
                                failedAppInfoCount++
                                null
                            }

                            if (appInfo != null) {
                                successfulAppInfoCount++
                                val sourceDir = appInfo.sourceDir ?: ""
                                val isSystemApp = isSystemApp(appInfo)

                                // 获取应用名称
                                val appName = try {
                                    pm.getApplicationLabel(appInfo).toString()
                                } catch (e: Exception) {
                                    Logger.w("Failed to get label for $packageName, using package name")
                                    packageName
                                }

                                // 记录关键应用
                                if (packageName in keyApps) {
                                    Logger.d("Key app: $packageName ($appName), sourceDir: $sourceDir, isSystem: $isSystemApp")
                                }

                                apps.add(
                                    InstalledAppInfo(
                                        packageName = packageName,
                                        appName = appName,
                                        isSystemApp = isSystemApp,
                                        icon = null  // 延迟加载图标
                                    )
                                )
                            } else {
                                // 如果无法获取 ApplicationInfo，仍然添加应用
                                Logger.d("Adding app without ApplicationInfo: $packageName")

                                // 尝试从包名推断是否为系统应用
                                val isSystemApp = packageName.startsWith("com.android.") ||
                                        packageName.startsWith("com.miui.") ||
                                        packageName.startsWith("com.xiaomi.") ||
                                        packageName.startsWith("android.")

                                // 尝试通过其他方式获取应用名称
                                val appName = try {
                                    // 方法1: 尝试使用不同的 flags 获取 ApplicationInfo
                                    try {
                                        val altAppInfo = pm.getApplicationInfo(packageName, PackageManager.GET_META_DATA)
                                        pm.getApplicationLabel(altAppInfo).toString()
                                    } catch (e1: Exception) {
                                        // 方法2: 尝试使用 MATCH_UNINSTALLED_PACKAGES
                                        try {
                                            val altAppInfo = pm.getApplicationInfo(
                                                packageName,
                                                PackageManager.GET_META_DATA or PackageManager.MATCH_UNINSTALLED_PACKAGES
                                            )
                                            pm.getApplicationLabel(altAppInfo).toString()
                                        } catch (e2: Exception) {
                                            // 方法3: 尝试通过 PackageInfo 获取
                                            try {
                                                val pkgInfo = pm.getPackageInfo(packageName, 0)
                                                pm.getApplicationLabel(pkgInfo.applicationInfo).toString()
                                            } catch (e3: Exception) {
                                                // 所有方法都失败，使用包名
                                                Logger.w("All methods failed to get app name for $packageName, using package name")
                                                packageName
                                            }
                                        }
                                    }
                                } catch (e: Exception) {
                                    Logger.w("Unexpected error getting app name for $packageName, using package name")
                                    packageName
                                }

                                apps.add(
                                    InstalledAppInfo(
                                        packageName = packageName,
                                        appName = appName,
                                        isSystemApp = isSystemApp,
                                        icon = null
                                    )
                                )
                            }
                        } catch (e: Exception) {
                            Logger.e("Failed to process app[$index]: $packageName", e)
                        }
                    }

                    val userApps = apps.count { !it.isSystemApp }
                    val systemApps = apps.count { it.isSystemApp }
                    Logger.e("========== APP LIST SUMMARY (Root Shell) ==========")
                    Logger.e("Total apps: ${apps.size}")
                    Logger.e("Successful ApplicationInfo: $successfulAppInfoCount")
                    Logger.e("Failed ApplicationInfo: $failedAppInfoCount")
                    Logger.e("User apps: $userApps")
                    Logger.e("System apps: $systemApps")

                    // 打印用户应用列表
                    Logger.e("---------- USER APPS LIST (first 30) ----------")
                    apps.filter { !it.isSystemApp }.sortedBy { it.appName }.take(30).forEach {
                        Logger.e("User app: ${it.packageName} - ${it.appName}")
                    }
                    Logger.e("---------- END USER APPS LIST ----------")

                    // 检查关键应用
                    keyApps.forEach { pkg ->
                        val app = apps.find { it.packageName == pkg }
                        if (app != null) {
                            Logger.e("Found target app: ${app.packageName} - ${app.appName}, isSystem: ${app.isSystemApp}")
                        } else {
                            Logger.e("TARGET APP NOT FOUND: $pkg")
                        }
                    }
                    Logger.e("========== END APP LIST SUMMARY ==========")

                    return@withContext apps.sortedBy { it.appName }
                } else {
                    Logger.w("Root is not available, falling back to pm list packages")
                }
            }

            // RootService 不可用或不是 KernelSU，使用降级方案（pm list packages）
            Logger.d("========== FALLBACK TO PM LIST PACKAGES ==========")

            val pmOutput = try {
                val process = Runtime.getRuntime().exec(arrayOf("pm", "list", "packages"))
                val output = process.inputStream.bufferedReader().readText()
                val error = process.errorStream.bufferedReader().readText()
                val exitCode = process.waitFor()

                Logger.d("pm list packages exitCode: $exitCode")
                Logger.d("pm list packages output size: ${output.length} characters")
                if (error.isNotEmpty()) {
                    Logger.d("pm list packages error: $error")
                }
                output
            } catch (e: Exception) {
                Logger.e("pm list packages command failed", e)
                throw e
            }

            // 解析包名列表
            val packageNames = pmOutput.lines()
                .map { it.substringAfter("package:").trim() }
                .filter { it.isNotEmpty() }

            Logger.d("Found ${packageNames.size} package names")

            // 检查关键应用是否在列表中
            val keyApps = listOf("com.tencent.mm", "com.tencent.mobileqq", "com.tencent.tmgp.sgame")
            val foundKeyApps = packageNames.filter { it in keyApps }
            Logger.d("Key apps found in pm list: $foundKeyApps")

            // 获取默认图标
            val defaultIcon = try {
                pm.getDefaultActivityIcon()
            } catch (e: Exception) {
                null
            }

            // 尝试使用 PackageManager API 获取应用信息
            var successfulAppInfoCount = 0
            var failedAppInfoCount = 0

            packageNames.forEachIndexed { index, packageName ->
                try {
                    // 尝试获取 ApplicationInfo
                    val appInfo = try {
                        pm.getApplicationInfo(packageName, 0)
                    } catch (e: Exception) {
                        Logger.w("Failed to get ApplicationInfo for $packageName: ${e.message}")
                        failedAppInfoCount++
                        null
                    }

                    if (appInfo != null) {
                        successfulAppInfoCount++
                        val sourceDir = appInfo.sourceDir ?: ""
                        val isSystemApp = isSystemApp(appInfo)

                        // 获取应用名称
                        val appName = try {
                            pm.getApplicationLabel(appInfo).toString()
                        } catch (e: Exception) {
                            Logger.w("Failed to get label for $packageName, using package name")
                            packageName
                        }

                        // 记录关键应用
                        if (packageName in keyApps) {
                            Logger.d("Key app: $packageName ($appName), sourceDir: $sourceDir, isSystem: $isSystemApp")
                        }

                        apps.add(
                            InstalledAppInfo(
                                packageName = packageName,
                                appName = appName,
                                isSystemApp = isSystemApp,
                                icon = null  // 延迟加载图标
                            )
                        )
                    } else {
                        // 如果无法获取 ApplicationInfo，仍然添加应用（使用包名作为名称）
                        Logger.d("Adding app without ApplicationInfo: $packageName")

                        // 尝试从包名推断是否为系统应用
                        val isSystemApp = packageName.startsWith("com.android.") ||
                                packageName.startsWith("com.miui.") ||
                                packageName.startsWith("com.xiaomi.") ||
                                packageName.startsWith("android.")

                        // 尝试通过其他方式获取应用名称
                        val appName = try {
                            // 方法1: 尝试使用不同的 flags 获取 ApplicationInfo
                            try {
                                val altAppInfo = pm.getApplicationInfo(packageName, PackageManager.GET_META_DATA)
                                pm.getApplicationLabel(altAppInfo).toString()
                            } catch (e1: Exception) {
                                // 方法2: 尝试使用 MATCH_UNINSTALLED_PACKAGES
                                try {
                                    val altAppInfo = pm.getApplicationInfo(
                                        packageName,
                                        PackageManager.GET_META_DATA or PackageManager.MATCH_UNINSTALLED_PACKAGES
                                    )
                                    pm.getApplicationLabel(altAppInfo).toString()
                                } catch (e2: Exception) {
                                    // 方法3: 尝试通过 PackageInfo 获取
                                    try {
                                        val pkgInfo = pm.getPackageInfo(packageName, 0)
                                        pm.getApplicationLabel(pkgInfo.applicationInfo).toString()
                                    } catch (e3: Exception) {
                                        // 所有方法都失败，使用包名
                                        Logger.w("All methods failed to get app name for $packageName, using package name")
                                        packageName
                                    }
                                }
                            }
                        } catch (e: Exception) {
                            Logger.w("Unexpected error getting app name for $packageName, using package name")
                            packageName
                        }

                        apps.add(
                            InstalledAppInfo(
                                packageName = packageName,
                                appName = appName,
                                isSystemApp = isSystemApp,
                                icon = null
                            )
                        )
                    }
                } catch (e: Exception) {
                    Logger.e("Failed to process app[$index]: $packageName", e)
                }
            }

            val userApps = apps.count { !it.isSystemApp }
            val systemApps = apps.count { it.isSystemApp }
            Logger.e("========== APP LIST SUMMARY (Fallback) ==========")
            Logger.e("Total apps: ${apps.size}")
            Logger.e("Successful ApplicationInfo: $successfulAppInfoCount")
            Logger.e("Failed ApplicationInfo: $failedAppInfoCount")
            Logger.e("User apps: $userApps")
            Logger.e("System apps: $systemApps")

            // 打印所有用户应用的包名用于调试
            Logger.e("---------- USER APPS LIST (first 30) ----------")
            apps.filter { !it.isSystemApp }.sortedBy { it.appName }.take(30).forEach {
                Logger.e("User app: ${it.packageName} - ${it.appName}")
            }
            Logger.e("---------- END USER APPS LIST ----------")

            // 检查微信、QQ、王者荣耀是否在列表中
            keyApps.forEach { pkg ->
                val app = apps.find { it.packageName == pkg }
                if (app != null) {
                    Logger.e("Found target app: ${app.packageName} - ${app.appName}, isSystem: ${app.isSystemApp}")
                } else {
                    Logger.e("TARGET APP NOT FOUND: $pkg")
                }
            }
            Logger.e("========== END APP LIST SUMMARY ==========")
        } catch (e: Exception) {
            Logger.e("Failed to get installed apps", e)
        }

        apps.sortedBy { it.appName }
    }

    /**
     * 设置应用的 Root 权限策略
     * 支持 Magisk 和 KernelSU（多个管理器）
     * Magisk policy: 0 = 询问, 1 = 拒绝, 2 = 允许
     * KernelSU policy: 0 = 拒绝, 1 = 允许
     */
    suspend fun setAppPolicy(packageName: String, policy: Int): Boolean = withContext(Dispatchers.IO) {
        try {
            // 检测 Root 类型
            val rootType = detectRootType()
            Logger.d("Setting app policy for $packageName, policy: $policy, root type: $rootType")

            val dbPath = when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    // 使用 Root 命令检测使用哪个 KernelSU 管理器
                    val ksudbWeishu = try {
                        val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "pm", "path", KERNELSU_PACKAGE_WEISHU))
                        process.waitFor()
                        process.exitValue() == 0
                    } catch (e: Exception) {
                        Logger.w("Failed to check Weishu KernelSU: ${e.message}")
                        false
                    }
                    val ksudbTiann = try {
                        val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "pm", "path", KERNELSU_PACKAGE_TIANN))
                        process.waitFor()
                        process.exitValue() == 0
                    } catch (e: Exception) {
                        Logger.w("Failed to check Tiann KernelSU: ${e.message}")
                        false
                    }

                    when {
                        ksudbWeishu -> {
                            Logger.d("Using Weishu KernelSU manager: $KERNELSU_DB_WEISHU")
                            KERNELSU_DB_WEISHU
                        }
                        ksudbTiann -> {
                            Logger.d("Using Tiann KernelSU manager: $KERNELSU_DB_TIANN")
                            KERNELSU_DB_TIANN
                        }
                        else -> {
                            Logger.w("No KernelSU manager found, defaulting to Weishu")
                            KERNELSU_DB_WEISHU
                        }
                    }
                }
                ROOT_TYPE_MAGISK -> MAGISK_DB
                else -> {
                    Logger.w("Unknown root type, trying Magisk DB")
                    MAGISK_DB
                }
            }

            return@withContext when (rootType) {
                ROOT_TYPE_KERNELSU -> {
                    // KernelSU 使用 uid_policy 表，需要先获取应用的 uid
                    try {
                        val pm = context.packageManager
                        val appInfo = pm.getApplicationInfo(packageName, 0)
                        val uid = appInfo.uid

                        // 先检查表名
                        val tableCheck = Runtime.getRuntime().exec(
                            arrayOf("su", "-c", "sqlite3", dbPath, ".tables")
                        )
                        val tables = tableCheck.inputStream.bufferedReader().readText().trim()
                        tableCheck.waitFor()
                        
                        val tableName = when {
                            tables.contains("rules") -> "rules"
                            tables.contains("uid_policy") -> "uid_policy"
                            else -> {
                                Logger.w("Unknown KernelSU database structure")
                                return@withContext false
                            }
                        }
                        
                        // 更新或插入 uid_policy
                        val process = Runtime.getRuntime().exec(
                            arrayOf("su", "-c", "sqlite3", dbPath, "REPLACE INTO $tableName (uid, policy) VALUES ($uid, $policy)")
                        )
                        process.waitFor()
                        val success = process.exitValue() == 0
                        if (success) {
                            Logger.d("Set KernelSU policy for $packageName (uid=$uid): $policy")
                        }
                        success
                    } catch (e: Exception) {
                        Logger.e("Failed to get uid for $packageName", e)
                        false
                    }
                }
                ROOT_TYPE_MAGISK -> {
                    // Magisk 使用 policies 表
                    val process = Runtime.getRuntime().exec(
                        arrayOf("su", "-c", "sqlite3", dbPath, "UPDATE policies SET policy=$policy WHERE package_name='$packageName'")
                    )
                    process.waitFor()

                    // 如果没有记录则插入
                    if (process.exitValue() != 0) {
                        val insertProcess = Runtime.getRuntime().exec(
                            arrayOf("su", "-c", "sqlite3", dbPath, "INSERT INTO policies (package_name, policy, logging, notification) VALUES ('$packageName', $policy, 1, 1)")
                        )
                        insertProcess.waitFor()
                        insertProcess.exitValue() == 0
                    } else {
                        true
                    }
                }
                else -> {
                    Logger.w("Unknown root type, cannot set app policy")
                    false
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to set app policy: $packageName", e)
            false
        }
    }

    /**
     * 获取 Magisk 日志
     */
    suspend fun getLogs(): List<MagiskLog> = withContext(Dispatchers.IO) {
        val logs = mutableListOf<MagiskLog>()

        // 优先从本地 Logger 获取日志
        val localLogs = Logger.getLocalLogs()
        if (localLogs.isNotEmpty()) {
            return@withContext localLogs.reversed()
        }

        // 如果本地没有日志，尝试从 Magisk 获取
        try {
            // 检查 Magisk 是否安装
            if (!isMagiskInstalled()) {
                throw Exception("Magisk 未安装")
            }

            // 执行 logcat 命令获取系统日志（更可靠的方法）
            val process = Runtime.getRuntime().exec(
                arrayOf("su", "-c", "logcat", "-d", "-v", "time", "*:I")
            )
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()

            // 解析最近的日志
            val lines = output.lines().takeLast(100) // 只取最后 100 条
            lines.forEachIndexed { index, line ->
                if (line.isNotBlank() && !line.contains("Magisk")) {
                    logs.add(parseLogLine(line, index))
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to get logs", e)
            // 如果无法获取日志，返回初始化日志
            logs.add(MagiskLog(
                id = "0",
                message = "无法获取日志: ${e.message}",
                level = LogLevel.WARNING,
                timestamp = dateFormat.format(Date())
            ))
            logs.add(MagiskLog(
                id = "1",
                message = "日志系统已初始化",
                level = LogLevel.INFO,
                timestamp = dateFormat.format(Date())
            ))
        }

        logs.reversed() // 最新的在前
    }

    /**
     * 解析日志行
     * logcat 格式: "12-25 10:30:45.123  1234  5678 I Magisk : message"
     */
    private fun parseLogLine(line: String, id: Int): MagiskLog {
        return try {
            val level = when {
                line.contains(" E ") -> LogLevel.ERROR
                line.contains(" W ") -> LogLevel.WARNING
                line.contains(" I ") -> LogLevel.INFO
                line.contains(" D ") -> LogLevel.DEBUG
                else -> LogLevel.INFO
            }

            // 提取日志消息部分（去掉前面的时间戳和进程信息）
            val message = try {
                val messageStart = line.indexOf("): ")
                if (messageStart != -1 && messageStart + 2 < line.length) {
                    line.substring(messageStart + 2).trim()
                } else {
                    line
                }
            } catch (e: Exception) {
                line
            }

            MagiskLog(
                id = id.toString(),
                message = message,
                level = level,
                timestamp = extractTimestamp(line) ?: dateFormat.format(Date())
            )
        } catch (e: Exception) {
            // 如果解析失败，创建一个默认日志
            MagiskLog(
                id = id.toString(),
                message = line.take(500), // 限制长度避免过长
                level = LogLevel.INFO,
                timestamp = dateFormat.format(Date())
            )
        }
    }

    private fun extractTimestamp(line: String): String? {
        val regex = "\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}".toRegex()
        return regex.find(line)?.value
    }

    /**
     * 清除 Magisk 日志
     */
    suspend fun clearLogs(): Boolean = withContext(Dispatchers.IO) {
        // 清除本地日志
        Logger.clearLocalLogs()

        // 同时尝试清除 Magisk 日志
        try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "magisk", "-c"))
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to clear logs", e)
            false
        }
    }

    /**
     * 重启设备（可选：重启到 Recovery、Bootloader 等）
     */
    suspend fun reboot(target: String = ""): Boolean = withContext(Dispatchers.IO) {
        try {
            val command = if (target.isEmpty()) {
                arrayOf("su", "-c", "reboot")
            } else {
                arrayOf("su", "-c", "reboot", target)
            }
            val process = Runtime.getRuntime().exec(command)
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to reboot", e)
            false
        }
    }

    /**
     * 判断是否为系统应用
     *
     * 系统应用判断逻辑（修复 HyperOS/MIUI 兼容性）：
     * 1. 首先检查安装路径 - 这是最可靠的判断依据
     * 2. 系统应用安装在 /system/、/vendor/、/product/、/apex/ 等目录下
     * 3. 用户应用安装在 /data/app/ 目录下
     * 4. FLAG_SYSTEM 标志仅作为辅助判断（不使用，因为 HyperOS/MIUI 会错误设置）
     * 5. 小米/HyperOS 预装应用即使安装在 /data/app/ 下，也属于系统应用
     *
     * @param appInfo 应用信息
     * @return true 如果是系统应用，false 如果是用户应用
     */
    private fun isSystemApp(appInfo: android.content.pm.ApplicationInfo): Boolean {
        val sourceDir = appInfo.sourceDir ?: ""
        val packageName = appInfo.packageName

        // 方法1：检查包名前缀 - 小米/HyperOS 预装应用
        val isMiuiSystemApp = packageName.startsWith("com.miui.") ||
                              packageName.startsWith("com.xiaomi.") ||
                              packageName.startsWith("com.android.") ||
                              packageName.startsWith("android.") ||
                              packageName.startsWith("com.google.android.") ||
                              packageName.startsWith("com.qualcomm.") ||
                              packageName.startsWith("com.mediatek.") ||
                              packageName.startsWith("com.sprd.")

        // 如果是小米/Android 核心应用，直接返回 true
        if (isMiuiSystemApp) {
            return true
        }

        // 方法2：优先检查安装路径（最可靠，兼容 HyperOS/MIUI）
        // 用户应用的标准路径
        if (sourceDir.startsWith("/data/app/")) {
            return false
        }

        // 系统应用安装在 /system/、/vendor/、/product/、/apex/、/oem/、/system_ext/ 等目录下
        val isSystemPath = sourceDir.startsWith("/system/") ||
                          sourceDir.startsWith("/vendor/") ||
                          sourceDir.startsWith("/product/") ||
                          sourceDir.startsWith("/apex/") ||
                          sourceDir.startsWith("/oem/") ||
                          sourceDir.startsWith("/system_ext/") ||
                          sourceDir.startsWith("/system_root/") ||
                          sourceDir.startsWith("/data/app-private/") ||
                          sourceDir.startsWith("/data/app-asec/")

        return isSystemPath
    }
}

// Data Classes

data class MagiskVersion(
    val versionName: String,
    val versionCode: Int,
    val isInstalled: Boolean
)

data class MagiskModule(
    val id: String,
    val name: String,
    val version: String,
    val versionCode: Int,
    val author: String,
    val description: String,
    val isEnabled: Boolean
)

data class AppPolicy(
    val packageName: String,
    val policy: Int,        // 0 = 询问, 1 = 拒绝, 2 = 允许
    val logging: Int,
    val notification: Int
)

data class InstalledAppInfo(
    val packageName: String,
    val appName: String,
    val isSystemApp: Boolean,
    val icon: android.graphics.drawable.Drawable? = null
)

data class MagiskLog(
    val id: String,
    val message: String,
    val level: LogLevel,
    val timestamp: String
)

enum class LogLevel {
    DEBUG,
    INFO,
    WARNING,
    ERROR
}

/**
 * 使用 Root 命令检查文件是否存在
 */
private suspend fun fileExists(path: String): Boolean = withContext(Dispatchers.IO) {
    try {
        val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "test", "-f", path))
        process.waitFor()
        process.exitValue() == 0
    } catch (e: Exception) {
        Logger.w("Failed to check file existence for $path: ${e.message}")
        false
    }
}
