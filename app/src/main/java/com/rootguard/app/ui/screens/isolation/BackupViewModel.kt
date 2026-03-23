/*
package com.rootguard.app.ui.screens.isolation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.model.*
import com.rootguard.app.data.repository.BackupManager
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File
import javax.inject.Inject

data class BackupUiState(
    val backups: List<BackupInfo> = emptyList(),
    val isLoading: Boolean = false,
    val isCreatingBackup: Boolean = false,
    val isRestoring: Boolean = false,
    val errorMessage: String? = null,
    val successMessage: String? = null,
    val lastBackupTime: Long? = null,
    val autoBackupEnabled: Boolean = false
)

@HiltViewModel
class BackupViewModel @Inject constructor(
    private val isolationDataStore: IsolationDataStore,
    private val rootHider: RootHider,
    private val backupManager: BackupManager
) : ViewModel() {

    private val _uiState = MutableStateFlow(BackupUiState())
    val uiState: StateFlow<BackupUiState> = _uiState.asStateFlow()

    init {
        loadBackups()
        loadSettings()
    }

    private fun loadBackups() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                val backups = backupManager.listBackups()
                _uiState.update {
                    it.copy(
                        backups = backups,
                        isLoading = false,
                        lastBackupTime = backups.firstOrNull()?.metadata?.createdAt
                    )
                }
            } catch (e: Exception) {
                Logger.e("Failed to load backups", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        errorMessage = "加载备份列表失败: ${e.message}"
                    )
                }
            }
        }
    }

    private fun loadSettings() {
        viewModelScope.launch {
            // 加载自动备份设置
            // TODO: 从 DataStore 加载自动备份设置
        }
    }

    /**
     * 创建备份
     */
    fun createBackup(name: String, description: String = "") {
        viewModelScope.launch {
            _uiState.update { it.copy(isCreatingBackup = true) }
            try {
                // 获取所有隔离配置
                isolationDataStore.isolationConfigs.collect { configs ->
                    // 获取全局设置
                    isolationDataStore.globalIsolationEnabled.collect { enabled ->
                        // 创建备份
                        viewModelScope.launch {
                            val result = backupManager.createBackup(
                                configs = configs,
                                globalIsolationEnabled = enabled,
                                defaultIsolationLevel = "MODERATE",
                                name = name,
                                description = description
                            )

                            when (result) {
                                is BackupResult.Success -> {
                                    _uiState.update {
                                        it.copy(
                                            isCreatingBackup = false,
                                            successMessage = "备份创建成功: ${result.backupInfo.metadata.name}"
                                        )
                                    }
                                    // 刷新备份列表
                                    loadBackups()
                                    // 清理旧备份（保留最新的 10 个）
                                    cleanupOldBackups()
                                }
                                is BackupResult.Error -> {
                                    _uiState.update {
                                        it.copy(
                                            isCreatingBackup = false,
                                            errorMessage = result.message
                                        )
                                    }
                                }
                            }
                            clearMessageAfterDelay()
                        }
                    }
                }
            } catch (e: Exception) {
                Logger.e("Failed to create backup", e)
                _uiState.update {
                    it.copy(
                        isCreatingBackup = false,
                        errorMessage = "创建备份失败: ${e.message}"
                    )
                }
                clearMessageAfterDelay()
            }
        }
    }

    /**
     * 还原备份
     */
    fun restoreBackup(backupId: String, replaceCurrent: Boolean = false) {
        viewModelScope.launch {
            _uiState.update { it.copy(isRestoring = true) }
            try {
                val backupFile = File(backupManager.getBackupDirectory(), "$backupId.json")

                if (!backupFile.exists()) {
                    _uiState.update {
                        it.copy(
                            isRestoring = false,
                            errorMessage = "备份文件不存在"
                        )
                    }
                    clearMessageAfterDelay()
                    return@launch
                }

                // 读取备份数据
                val jsonString = backupFile.readText()
                val backupData = kotlinx.serialization.json.Json {
                    ignoreUnknownKeys = true
                }.decodeFromString<BackupData>(jsonString)

                // 如果替换当前配置，先清除所有现有配置
                if (replaceCurrent) {
                    _uiState.value.backups.forEach { backupInfo ->
                        if (backupInfo.metadata.id != backupId) {
                            rootHider.removeIsolation(backupInfo.metadata.id)
                        }
                    }
                    isolationDataStore.clearAllConfigs()
                }

                // 批量保存配置
                isolationDataStore.saveIsolationConfigs(backupData.configs)

                // 应用隔离
                backupData.configs.forEach { config ->
                    if (config.isEnabled) {
                        rootHider.applyIsolation(config)
                    }
                }

                // 设置全局开关
                isolationDataStore.setGlobalIsolationEnabled(backupData.globalIsolationEnabled)

                _uiState.update {
                    it.copy(
                        isRestoring = false,
                        successMessage = "备份还原成功，已还原 ${backupData.configs.size} 个配置"
                    )
                }

                Logger.d("Backup restored: ${backupData.metadata.name}")
            } catch (e: Exception) {
                Logger.e("Failed to restore backup", e)
                _uiState.update {
                    it.copy(
                        isRestoring = false,
                        errorMessage = "还原备份失败: ${e.message}"
                    )
                }
            }
            clearMessageAfterDelay()
        }
    }

    /**
     * 删除备份
     */
    fun deleteBackup(backupId: String) {
        viewModelScope.launch {
            try {
                val deleted = backupManager.deleteBackup(backupId)
                if (deleted) {
                    _uiState.update {
                        it.copy(successMessage = "备份已删除")
                    }
                    loadBackups()
                } else {
                    _uiState.update {
                        it.copy(errorMessage = "删除备份失败")
                    }
                }
                clearMessageAfterDelay()
            } catch (e: Exception) {
                Logger.e("Failed to delete backup", e)
                _uiState.update {
                    it.copy(errorMessage = "删除备份失败: ${e.message}")
                }
                clearMessageAfterDelay()
            }
        }
    }

    /**
     * 导出备份
     */
    fun exportBackup(backupId: String, exportDir: File) {
        viewModelScope.launch {
            try {
                val result = backupManager.exportBackup(backupId, exportDir)
                when (result) {
                    is BackupResult.Success -> {
                        _uiState.update {
                            it.copy(successMessage = "备份已导出到: ${result.backupInfo.filePath}")
                        }
                    }
                    is BackupResult.Error -> {
                        _uiState.update {
                            it.copy(errorMessage = result.message)
                        }
                    }
                }
                clearMessageAfterDelay()
            } catch (e: Exception) {
                Logger.e("Failed to export backup", e)
                _uiState.update {
                    it.copy(errorMessage = "导出备份失败: ${e.message}")
                }
                clearMessageAfterDelay()
            }
        }
    }

    /**
     * 导入备份
     */
    fun importBackup(importFile: File) {
        viewModelScope.launch {
            try {
                val backupData = backupManager.importBackup(importFile)
                if (backupData != null) {
                    _uiState.update {
                        it.copy(successMessage = "备份导入成功: ${backupData.metadata.name}")
                    }
                    loadBackups()
                } else {
                    _uiState.update {
                        it.copy(errorMessage = "导入备份失败")
                    }
                }
                clearMessageAfterDelay()
            } catch (e: Exception) {
                Logger.e("Failed to import backup", e)
                _uiState.update {
                    it.copy(errorMessage = "导入备份失败: ${e.message}")
                }
                clearMessageAfterDelay()
            }
        }
    }

    /**
     * 清理旧备份
     */
    private fun cleanupOldBackups() {
        viewModelScope.launch {
            val deletedCount = backupManager.cleanupOldBackups(keepCount = 10)
            if (deletedCount > 0) {
                Logger.d("Cleaned up $deletedCount old backups")
            }
        }
    }

    /**
     * 切换自动备份
     */
    fun toggleAutoBackup(enabled: Boolean) {
        _uiState.update { it.copy(autoBackupEnabled = enabled) }
        // TODO: 保存到 DataStore
    }

    /**
     * 刷新备份列表
     */
    fun refreshBackups() {
        loadBackups()
    }

    /**
     * 清除消息
     */
    fun clearMessage() {
        _uiState.update { it.copy(errorMessage = null, successMessage = null) }
    }

    private fun clearMessageAfterDelay() {
        viewModelScope.launch {
            kotlinx.coroutines.delay(3000)
            _uiState.update { it.copy(errorMessage = null, successMessage = null) }
        }
    }

    /**
     * 获取格式化文件大小
     */
    fun formatFileSize(bytes: Long): String {
        return backupManager.formatFileSize(bytes)
    }

    /**
     * 获取格式化日期
     */
    fun formatDate(timestamp: Long): String {
        return backupManager.formatDate(timestamp)
    }
}
*/
