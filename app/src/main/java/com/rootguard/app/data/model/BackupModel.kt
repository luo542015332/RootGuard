/*
package com.rootguard.app.data.model

import kotlinx.serialization.Serializable

/**
 * 备份元数据
 */
@Serializable
data class BackupMetadata(
    val id: String,
    val name: String,
    val description: String,
    val createdAt: Long,
    val appCount: Int,
    val version: Int = 1
)

/**
 * 备份数据
 */
@Serializable
data class BackupData(
    val metadata: BackupMetadata,
    val configs: List<IsolationConfig>,
    val globalIsolationEnabled: Boolean,
    val defaultIsolationLevel: String
)

/**
 * 备份信息
 */
data class BackupInfo(
    val metadata: BackupMetadata,
    val filePath: String,
    val fileSize: Long
)

/**
 * 备份结果
 */
sealed class BackupResult {
    data class Success(val backupInfo: BackupInfo) : BackupResult()
    data class Error(val message: String) : BackupResult()
}

/**
 * 还原结果
 */
sealed class RestoreResult {
    data class Success(val restoredCount: Int) : RestoreResult()
    data class Error(val message: String) : RestoreResult()
    data class PartialSuccess(
        val restoredCount: Int,
        val failedCount: Int,
        val errors: List<String>
    ) : RestoreResult()
}

/**
 * 导出格式
 */
enum class BackupFormat {
    JSON,      // JSON 格式
    PROTOBUF,  // Protocol Buffers 格式
    XML        // XML 格式（未来支持）
}
*/
