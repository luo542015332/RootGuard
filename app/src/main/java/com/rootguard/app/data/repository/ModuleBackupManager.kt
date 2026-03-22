package com.rootguard.app.data.repository

import android.content.Context
import com.rootguard.app.data.magisk.MagiskModule
import com.rootguard.app.utils.Logger
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream
import javax.inject.Inject
import javax.inject.Singleton

/**
 * 模块备份管理器
 *
 * 功能：
 * - 备份已安装的模块到本地存储
 * - 从备份恢复模块
 * - 管理备份列表
 * - 删除备份
 */
@Singleton
class ModuleBackupManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val magiskProvider: com.rootguard.app.data.magisk.MagiskProvider
) {
    companion object {
        private const val BACKUP_DIR = "module_backups"
        private const val BACKUP_INFO_FILE = "backup_info.json"
    }

    private val backupDir: File
        get() = File(context.getExternalFilesDir(null), BACKUP_DIR).apply {
            if (!exists()) mkdirs()
        }

    /**
     * 一键备份所有模块
     */
    suspend fun backupAllModules(onProgress: (current: Int, total: Int, moduleName: String) -> Unit = { _, _, _ -> }): Result<List<ModuleBackup>> = withContext(Dispatchers.IO) {
        try {
            Logger.i("开始一键备份所有模块")

            val modules = magiskProvider.getModules()
            val results = mutableListOf<ModuleBackup>()
            val failedModules = mutableListOf<String>()

            modules.forEachIndexed { index, module ->
                onProgress(index + 1, modules.size, module.name)

                val result = backupModule(module.id)
                if (result.isSuccess) {
                    results.add(result.getOrNull()!!)
                } else {
                    failedModules.add(module.name)
                    Logger.w("备份模块失败: ${module.name}")
                }
            }

            val summary = if (failedModules.isEmpty()) {
                "全部 ${modules.size} 个模块备份成功"
            } else {
                "备份完成: ${modules.size - failedModules.size}/${modules.size} 成功，失败: ${failedModules.joinToString(", ")}"
            }

            Logger.i(summary)
            Result.success(results)
        } catch (e: Exception) {
            Logger.e("一键备份所有模块失败", e)
            Result.failure(e)
        }
    }

    /**
     * 一键恢复所有备份模块
     */
    suspend fun restoreAllBackups(onProgress: (current: Int, total: Int, moduleName: String) -> Unit = { _, _, _ -> }): Result<List<String>> = withContext(Dispatchers.IO) {
        try {
            Logger.i("开始一键恢复所有备份")

            val backups = getAllBackups()
            val restoredModules = mutableListOf<String>()
            val failedBackups = mutableListOf<String>()

            backups.forEachIndexed { index, backup ->
                onProgress(index + 1, backups.size, backup.name)

                val result = restoreModule(backup.id)
                if (result.isSuccess) {
                    restoredModules.add(backup.name)
                } else {
                    failedBackups.add(backup.name)
                    Logger.w("恢复备份失败: ${backup.name}")
                }
            }

            val summary = if (failedBackups.isEmpty()) {
                "全部 ${backups.size} 个备份恢复成功"
            } else {
                "恢复完成: ${backups.size - failedBackups.size}/${backups.size} 成功，失败: ${failedBackups.joinToString(", ")}"
            }

            Logger.i(summary)
            Result.success(restoredModules)
        } catch (e: Exception) {
            Logger.e("一键恢复所有备份失败", e)
            Result.failure(e)
        }
    }

    /**
     * 备份模块
     */
    suspend fun backupModule(moduleId: String): Result<ModuleBackup> = withContext(Dispatchers.IO) {
        try {
            Logger.i("开始备份模块: $moduleId")

            // 获取模块信息
            val modules = magiskProvider.getModules()
            val module = modules.find { it.id == moduleId }
                ?: return@withContext Result.failure(Exception("模块不存在"))

            // 创建备份目录和文件
            val backupId = "${module.id}_${System.currentTimeMillis()}"
            val backupDirPath = File(backupDir, backupId)
            backupDirPath.mkdirs()

            val backupFile = File(backupDirPath, "$backupId.zip")

            // 使用 su 命令检查并压缩模块文件
            val modulePath = "/data/adb/modules/${module.id}"
            
            try {
                // 检查模块目录是否存在
                val checkProcess = Runtime.getRuntime().exec("su -c test -d \"$modulePath\" && echo 1 || echo 0")
                val checkResult = checkProcess.inputStream.bufferedReader().readText().trim()
                checkProcess.waitFor()
                
                if (checkResult != "1") {
                    return@withContext Result.failure(Exception("模块目录不存在: $modulePath"))
                }
                
                // 使用 zip 命令压缩模块
                val zipProcess = Runtime.getRuntime().exec("su -c zip -r \"${backupFile.absolutePath}\" .", null, File(modulePath))
                val exitCode = zipProcess.waitFor()
                
                if (exitCode != 0) {
                    val errorOutput = zipProcess.errorStream.bufferedReader().readText()
                    return@withContext Result.failure(Exception("压缩失败: $errorOutput"))
                }
                
            } catch (e: Exception) {
                return@withContext Result.failure(Exception("压缩模块失败: ${e.message}"))
            }

            // 创建备份信息
            val backupInfo = ModuleBackup(
                id = backupId,
                moduleId = module.id,
                name = module.name,
                version = module.version,
                description = module.description,
                author = module.author,
                backupTime = System.currentTimeMillis(),
                backupPath = backupFile.absolutePath,
                fileSize = backupFile.length()
            )

            // 保存备份信息
            saveBackupInfo(backupInfo)

            Logger.i("模块备份成功: ${module.name}")
            Result.success(backupInfo)
        } catch (e: Exception) {
            Logger.e("模块备份失败: $moduleId", e)
            Result.failure(e)
        }
    }

    /**
     * 恢复模块
     */
    suspend fun restoreModule(backupId: String): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            Logger.i("开始恢复模块备份: $backupId")

            val backupInfo = getBackupInfo(backupId)
                ?: return@withContext Result.failure(Exception("备份信息不存在"))

            val backupFile = File(backupInfo.backupPath)
            if (!backupFile.exists()) {
                return@withContext Result.failure(Exception("备份文件不存在"))
            }

            // 解压到临时目录
            val tempDir = File(context.cacheDir, "restore_${System.currentTimeMillis()}")
            tempDir.mkdirs()

            ZipInputStream(FileInputStream(backupFile)).use { zis ->
                var entry: ZipEntry?
                while (zis.nextEntry.also { entry = it } != null) {
                    val entryFile = File(tempDir, entry!!.name)
                    if (entry!!.isDirectory) {
                        entryFile.mkdirs()
                    } else {
                        entryFile.parentFile?.mkdirs()
                        FileOutputStream(entryFile).use { output ->
                            zis.copyTo(output)
                        }
                    }
                    zis.closeEntry()
                }
            }

            // 使用 su 命令复制到模块目录
            val moduleDir = "/data/adb/modules/${backupInfo.moduleId}"

            try {
                // 创建模块目录
                val mkdirProcess = Runtime.getRuntime().exec("su -c mkdir -p \"$moduleDir\"")
                mkdirProcess.waitFor()
                
                // 复制文件
                val copyProcess = Runtime.getRuntime().exec("su -c cp -r \"${tempDir.absolutePath}\"/* \"$moduleDir/\"")
                val exitCode = copyProcess.waitFor()
                
                if (exitCode != 0) {
                    val errorOutput = copyProcess.errorStream.bufferedReader().readText()
                    return@withContext Result.failure(Exception("复制失败: $errorOutput"))
                }
                
            } catch (e: Exception) {
                return@withContext Result.failure(Exception("恢复模块失败: ${e.message}"))
            }

            // 清理临时目录
            tempDir.deleteRecursively()

            Logger.i("模块恢复成功: ${backupInfo.name}")
            Result.success(Unit)
        } catch (e: Exception) {
            Logger.e("模块恢复失败: $backupId", e)
            Result.failure(e)
        }
    }

    /**
     * 获取所有备份
     */
    suspend fun getAllBackups(): List<ModuleBackup> = withContext(Dispatchers.IO) {
        try {
            val backups = mutableListOf<ModuleBackup>()
            backupDir.listFiles { file ->
                file.isDirectory && File(file, BACKUP_INFO_FILE).exists()
            }?.forEach { backupDir ->
                val infoFile = File(backupDir, BACKUP_INFO_FILE)
                if (infoFile.exists()) {
                    try {
                        val info = loadBackupInfo(infoFile)
                        backups.add(info)
                    } catch (e: Exception) {
                        Logger.e("加载备份信息失败: ${backupDir.name}", e)
                    }
                }
            }

            backups.sortedByDescending { it.backupTime }
        } catch (e: Exception) {
            Logger.e("获取备份列表失败", e)
            emptyList()
        }
    }

    /**
     * 删除备份
     */
    suspend fun deleteBackup(backupId: String): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            val backupDirToDelete = File(backupDir, backupId)
            if (backupDirToDelete.exists()) {
                backupDirToDelete.deleteRecursively()
                Logger.i("删除备份成功: $backupId")
                Result.success(Unit)
            } else {
                Result.failure(Exception("备份不存在"))
            }
        } catch (e: Exception) {
            Logger.e("删除备份失败: $backupId", e)
            Result.failure(e)
        }
    }

    /**
     * 检查模块是否有备份
     */
    suspend fun hasBackup(moduleId: String): Boolean {
        return getAllBackups().any { it.moduleId == moduleId }
    }

    /**
     * 获取模块的最新备份
     */
    suspend fun getLatestBackup(moduleId: String): ModuleBackup? {
        return getAllBackups()
            .filter { it.moduleId == moduleId }
            .maxByOrNull { it.backupTime }
    }

    private fun saveBackupInfo(backup: ModuleBackup) {
        val backupDirPath = File(backupDir, backup.id)
        backupDirPath.mkdirs()

        val infoFile = File(backupDirPath, BACKUP_INFO_FILE)
        val json = org.json.JSONObject().apply {
            put("id", backup.id)
            put("moduleId", backup.moduleId)
            put("name", backup.name)
            put("version", backup.version)
            put("description", backup.description)
            put("author", backup.author)
            put("backupTime", backup.backupTime)
            put("backupPath", backup.backupPath)
            put("fileSize", backup.fileSize)
        }

        infoFile.writeText(json.toString(2))
    }

    private fun loadBackupInfo(file: File): ModuleBackup {
        val json = org.json.JSONObject(file.readText())
        return ModuleBackup(
            id = json.getString("id"),
            moduleId = json.getString("moduleId"),
            name = json.getString("name"),
            version = json.getString("version"),
            description = json.optString("description", ""),
            author = json.optString("author", ""),
            backupTime = json.getLong("backupTime"),
            backupPath = json.getString("backupPath"),
            fileSize = json.getLong("fileSize")
        )
    }

    private fun getBackupInfo(backupId: String): ModuleBackup? {
        val backupDirPath = File(backupDir, backupId)
        val infoFile = File(backupDirPath, BACKUP_INFO_FILE)
        return if (infoFile.exists()) {
            try {
                loadBackupInfo(infoFile)
            } catch (e: Exception) {
                null
            }
        } else {
            null
        }
    }
}

/**
 * 模块备份信息
 */
data class ModuleBackup(
    val id: String,
    val moduleId: String,
    val name: String,
    val version: String,
    val description: String,
    val author: String,
    val backupTime: Long,
    val backupPath: String,
    val fileSize: Long
) {
    fun getFormattedBackupTime(): String {
        val formatter = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.getDefault())
        return formatter.format(java.util.Date(backupTime))
    }

    fun getFormattedFileSize(): String {
        return when {
            fileSize < 1024 -> "$fileSize B"
            fileSize < 1024 * 1024 -> "${fileSize / 1024} KB"
            fileSize < 1024 * 1024 * 1024 -> "${fileSize / (1024 * 1024)} MB"
            else -> "${fileSize / (1024 * 1024 * 1024)} GB"
        }
    }
}
