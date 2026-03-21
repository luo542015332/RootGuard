package com.rootguard.app.data.repository

import android.content.Context
import com.rootguard.app.data.model.*
import com.rootguard.app.utils.Logger
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import java.io.File
import java.util.UUID
import javax.inject.Inject
import javax.inject.Singleton

/**
 * 备份管理器
 * 负责创建备份和还原功能
 */
@Singleton
class BackupManager @Inject constructor(
    @ApplicationContext private val context: Context,
    private val json: Json
) {

    companion object {
        private const val BACKUP_DIR = "backups"
        private const val BACKUP_EXTENSION = ".json"
    }

    private val backupDir by lazy {
        File(context.filesDir, BACKUP_DIR).apply {
            if (!exists()) mkdirs()
        }
    }

    /**
     * 创建备份
     * @param configs 隔离配置列表
     * @param globalIsolationEnabled 全局隔离开关
     * @param defaultIsolationLevel 默认隔离级别
     * @param name 备份名称
     * @param description 备份描述
     * @return 备份结果
     */
    suspend fun createBackup(
        configs: List<IsolationConfig>,
        globalIsolationEnabled: Boolean,
        defaultIsolationLevel: String,
        name: String,
        description: String
    ): BackupResult = withContext(Dispatchers.IO) {
        try {
            // 生成备份 ID
            val backupId = UUID.randomUUID().toString()

            // 创建备份元数据
            val metadata = BackupMetadata(
                id = backupId,
                name = name,
                description = description,
                createdAt = System.currentTimeMillis(),
                appCount = configs.size,
                version = 1
            )

            // 创建备份数据
            val backupData = BackupData(
                metadata = metadata,
                configs = configs,
                globalIsolationEnabled = globalIsolationEnabled,
                defaultIsolationLevel = defaultIsolationLevel
            )

            // 序列化为 JSON
            val jsonString = json.encodeToString(backupData)

            // 保存到文件
            val fileName = "${backupId}$BACKUP_EXTENSION"
            val backupFile = File(backupDir, fileName)

            backupFile.writeText(jsonString)

            val fileSize = backupFile.length()
            val backupInfo = BackupInfo(
                metadata = metadata,
                filePath = backupFile.absolutePath,
                fileSize = fileSize
            )

            Logger.d("Backup created: ${backupFile.name}, size: $fileSize bytes")
            BackupResult.Success(backupInfo)
        } catch (e: Exception) {
            Logger.e("Failed to create backup", e)
            BackupResult.Error("创建备份失败: ${e.message}")
        }
    }

    /**
     * 还原备份
     * @param backupFile 备份文件
     * @return 还原结果
     */
    suspend fun restoreBackup(backupFile: File): RestoreResult = withContext(Dispatchers.IO) {
        try {
            Logger.d("Restoring backup from: ${backupFile.name}")

            // 读取文件内容
            val jsonString = backupFile.readText()

            // 反序列化
            val backupData = json.decodeFromString<BackupData>(jsonString)

            // 验证备份版本
            if (backupData.metadata.version > 1) {
                return@withContext RestoreResult.Error("备份版本不兼容")
            }

            Logger.d("Backup restored successfully: ${backupData.metadata.name}")
            Logger.d("Configs count: ${backupData.configs.size}")

            RestoreResult.Success(backupData.configs.size)
        } catch (e: Exception) {
            Logger.e("Failed to restore backup", e)
            RestoreResult.Error("还原备份失败: ${e.message}")
        }
    }

    /**
     * 获取备份信息（不加载完整配置）
     * @param backupFile 备份文件
     * @return 备份信息
     */
    suspend fun getBackupInfo(backupFile: File): BackupInfo? = withContext(Dispatchers.IO) {
        try {
            val jsonString = backupFile.readText()
            val backupData = json.decodeFromString<BackupData>(jsonString)

            BackupInfo(
                metadata = backupData.metadata,
                filePath = backupFile.absolutePath,
                fileSize = backupFile.length()
            )
        } catch (e: Exception) {
            Logger.e("Failed to read backup info", e)
            null
        }
    }

    /**
     * 删除备份
     * @param backupId 备份 ID
     * @return 是否成功
     */
    suspend fun deleteBackup(backupId: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val backupFile = File(backupDir, "$backupId$BACKUP_EXTENSION")
            if (backupFile.exists()) {
                val deleted = backupFile.delete()
                Logger.d("Backup ${backupId} deleted: $deleted")
                deleted
            } else {
                Logger.w("Backup file not found: $backupId")
                false
            }
        } catch (e: Exception) {
            Logger.e("Failed to delete backup", e)
            false
        }
    }

    /**
     * 列出所有备份
     * @return 备份信息列表
     */
    suspend fun listBackups(): List<BackupInfo> = withContext(Dispatchers.IO) {
        try {
            backupDir.listFiles { file ->
                file.isFile && file.name.endsWith(BACKUP_EXTENSION)
            }?.mapNotNull { file ->
                getBackupInfo(file)
            }?.sortedByDescending { it.metadata.createdAt } ?: emptyList()
        } catch (e: Exception) {
            Logger.e("Failed to list backups", e)
            emptyList()
        }
    }

    /**
     * 导出备份到外部存储
     * @param backupId 备份 ID
     * @param exportDir 导出目录
     * @return 导出结果
     */
    suspend fun exportBackup(
        backupId: String,
        exportDir: File
    ): BackupResult = withContext(Dispatchers.IO) {
        try {
            val sourceFile = File(backupDir, "$backupId$BACKUP_EXTENSION")

            if (!sourceFile.exists()) {
                return@withContext BackupResult.Error("备份文件不存在")
            }

            // 确保导出目录存在
            if (!exportDir.exists()) {
                exportDir.mkdirs()
            }

            // 复制文件
            val exportFile = File(exportDir, sourceFile.name)
            sourceFile.copyTo(exportFile, overwrite = true)

            val backupInfo = getBackupInfo(sourceFile)
            if (backupInfo != null) {
                Logger.d("Backup exported to: ${exportFile.absolutePath}")
                BackupResult.Success(
                    backupInfo.copy(filePath = exportFile.absolutePath)
                )
            } else {
                BackupResult.Error("读取备份信息失败")
            }
        } catch (e: Exception) {
            Logger.e("Failed to export backup", e)
            BackupResult.Error("导出备份失败: ${e.message}")
        }
    }

    /**
     * 从外部存储导入备份
     * @param importFile 导入文件
     * @return 导入的备份数据
     */
    suspend fun importBackup(importFile: File): BackupData? = withContext(Dispatchers.IO) {
        try {
            if (!importFile.exists()) {
                Logger.w("Import file not found: ${importFile.path}")
                return@withContext null
            }

            // 读取并反序列化
            val jsonString = importFile.readText()
            val backupData = json.decodeFromString<BackupData>(jsonString)

            Logger.d("Backup imported: ${backupData.metadata.name}")

            // 复制到备份目录
            val backupFile = File(backupDir, "${backupData.metadata.id}$BACKUP_EXTENSION")
            backupFile.writeText(jsonString)

            backupData
        } catch (e: Exception) {
            Logger.e("Failed to import backup", e)
            null
        }
    }

    /**
     * 清理旧备份（保留最新的 N 个）
     * @param keepCount 保留数量
     * @return 删除的备份数量
     */
    suspend fun cleanupOldBackups(keepCount: Int = 10): Int = withContext(Dispatchers.IO) {
        try {
            val backups = listBackups()

            if (backups.size <= keepCount) {
                return@withContext 0
            }

            val toDelete = backups.drop(keepCount)
            var deletedCount = 0

            toDelete.forEach { backupInfo ->
                val deleted = deleteBackup(backupInfo.metadata.id)
                if (deleted) deletedCount++
            }

            Logger.d("Cleaned up $deletedCount old backups")
            deletedCount
        } catch (e: Exception) {
            Logger.e("Failed to cleanup old backups", e)
            0
        }
    }

    /**
     * 获取备份目录
     */
    fun getBackupDirectory(): File = backupDir

    /**
     * 格式化文件大小
     */
    fun formatFileSize(bytes: Long): String {
        return when {
            bytes < 1024 -> "$bytes B"
            bytes < 1024 * 1024 -> "${bytes / 1024} KB"
            bytes < 1024 * 1024 * 1024 -> "${bytes / (1024 * 1024)} MB"
            else -> "${bytes / (1024 * 1024 * 1024)} GB"
        }
    }

    /**
     * 格式化日期
     */
    fun formatDate(timestamp: Long): String {
        val date = java.util.Date(timestamp)
        val format = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.getDefault())
        return format.format(date)
    }
}
