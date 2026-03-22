package com.rootguard.app.ui.screens.modules

import android.content.Context
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.domain.usecase.GetModulesUseCase
import com.rootguard.app.domain.usecase.InstallModuleUseCase
import com.rootguard.app.domain.usecase.ToggleModuleUseCase
import com.rootguard.app.domain.usecase.UninstallModuleUseCase
import com.rootguard.app.utils.FileUtils
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File
import javax.inject.Inject

data class ModulesUiState(
    val modules: List<ModuleItem> = emptyList(),
    val isLoading: Boolean = false,
    val error: String? = null,
    val installStatus: InstallStatus = InstallStatus.Idle,
    val isBulkBackingUp: Boolean = false,
    val bulkBackupProgress: Int = 0,
    val bulkBackupTotal: Int = 0,
    val bulkBackupCurrent: String = "",
    val isBulkRestoring: Boolean = false,
    val bulkRestoreProgress: Int = 0,
    val bulkRestoreTotal: Int = 0,
    val bulkRestoreCurrent: String = ""
)

data class BackupUiState(
    val isBackingUp: Boolean = false,
    val backupModuleId: String? = null,
    val isRestoring: Boolean = false,
    val restoreBackupId: String? = null,
    val lastBackup: com.rootguard.app.data.repository.ModuleBackup? = null,
    val backupError: String? = null,
    val restoreError: String? = null,
    val restoreSuccess: Boolean = false
)

@HiltViewModel
class ModulesViewModel @Inject constructor(
    private val getModules: GetModulesUseCase,
    private val toggleModule: ToggleModuleUseCase,
    private val uninstallModule: UninstallModuleUseCase,
    private val installModule: InstallModuleUseCase,
    private val magiskRepository: com.rootguard.app.data.repository.MagiskRepository,
    private val backupManager: com.rootguard.app.data.repository.ModuleBackupManager
) : ViewModel() {

    private val _uiState = MutableStateFlow(ModulesUiState())
    val uiState: StateFlow<ModulesUiState> = _uiState.asStateFlow()

    private val _backupState = MutableStateFlow(BackupUiState())
    val backupState: StateFlow<BackupUiState> = _backupState.asStateFlow()

    init {
        loadModules()
    }

    fun loadModules() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }

            try {
                val modules = getModules()

                // 加载每个模块的备份状态
                val modulesWithBackupInfo = modules.map { module ->
                    val hasBackup = backupManager.hasBackup(module.id)
                    val latestBackup = if (hasBackup) {
                        backupManager.getLatestBackup(module.id)
                    } else null

                    ModuleItem(
                        id = module.id,
                        name = module.name,
                        version = module.version,
                        description = module.description,
                        author = module.author,
                        isEnabled = module.isEnabled,
                        hasBackup = hasBackup,
                        backupTime = latestBackup?.backupTime
                    )
                }

                _uiState.update {
                    it.copy(
                        modules = modulesWithBackupInfo,
                        isLoading = false
                    )
                }
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "加载失败"
                    )
                }
            }
        }
    }

    fun refresh() {
        loadModules()
    }

    fun onToggleModule(moduleId: String) {
        viewModelScope.launch {
            val module = _uiState.value.modules.find { it.id == moduleId }
            module?.let {
                val success = toggleModule(it.id, !it.isEnabled)
                if (success) {
                    _uiState.update { state ->
                        state.copy(
                            modules = state.modules.map { m ->
                                if (m.id == moduleId) {
                                    m.copy(isEnabled = !m.isEnabled)
                                } else m
                            }
                        )
                    }
                }
            }
        }
    }

    fun onUninstallModule(moduleId: String) {
        viewModelScope.launch {
            val success = uninstallModule(moduleId)
            if (success) {
                _uiState.update { state ->
                    state.copy(
                        modules = state.modules.filter { it.id != moduleId }
                    )
                }
            }
        }
    }

    /**
     * 从 URI 安装模块
     */
    suspend fun installModuleFromUri(context: Context, uri: Uri) {
        Logger.d("installModuleFromUri called with URI: $uri")
        _uiState.update { it.copy(installStatus = InstallStatus.Installing(0f, "准备安装...")) }

        try {
            // 步骤 1: 复制文件到临时目录
            Logger.d("Step 1: Copying file to temp directory")
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.2f, "复制文件...")) }

            val tempFile = File(context.cacheDir, "module_${System.currentTimeMillis()}.zip")

            context.contentResolver.openInputStream(uri)?.use { input ->
                tempFile.outputStream().use { output ->
                    input.copyTo(output)
                }
            } ?: throw Exception("无法读取文件")

            Logger.d("File copied to: ${tempFile.absolutePath}, size: ${tempFile.length()} bytes")

            // 步骤 2: 验证文件
            Logger.d("Step 2: Validating module")
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.4f, "验证模块...")) }

            if (!isValidMagiskModule(tempFile)) {
                tempFile.delete()
                Logger.e("Invalid Magisk module file")
                _uiState.update {
                    it.copy(installStatus = InstallStatus.Error("无效的 Magisk 模块文件"))
                }
                return
            }

            Logger.d("Module validation passed")

            // 步骤 3: 安装模块
            Logger.d("Step 3: Installing module")
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.6f, "正在安装...")) }

            val success = installModule(tempFile.absolutePath)
            Logger.d("Install result: $success")

            // 步骤 4: 清理
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.9f, "清理...")) }
            tempFile.delete()

            if (success) {
                Logger.d("Module installation successful")
                _uiState.update {
                    it.copy(installStatus = InstallStatus.Success("模块安装成功！请重启设备以生效。"))
                }
                // 刷新模块列表
                loadModules()
            } else {
                Logger.e("Module installation failed")
                _uiState.update {
                    it.copy(installStatus = InstallStatus.Error("模块安装失败"))
                }
            }

        } catch (e: Exception) {
            Logger.e("Install module failed", e)
            _uiState.update {
                it.copy(installStatus = InstallStatus.Error("安装失败: ${e.message}"))
            }
        }
    }
    
    /**
     * 验证是否为有效的 Magisk 模块
     * 检查 zip 文件中是否包含 module.prop
     */
    private fun isValidMagiskModule(file: File): Boolean {
        return com.rootguard.app.utils.ModuleUtils.isValidMagiskModule(file)
    }

    fun clearInstallStatus() {
        _uiState.update { it.copy(installStatus = InstallStatus.Idle) }
    }
    
    /**
     * 重启设备
     */
    fun reboot() {
        viewModelScope.launch {
            magiskRepository.reboot()
        }
    }

    // ==================== 备份相关功能 ====================

    /**
     * 备份模块
     */
    fun backupModule(moduleId: String) {
        viewModelScope.launch {
            _backupState.update { it.copy(isBackingUp = true, backupModuleId = moduleId) }

            backupManager.backupModule(moduleId)
                .onSuccess { backup ->
                    _backupState.update {
                        it.copy(
                            isBackingUp = false,
                            backupModuleId = null,
                            lastBackup = backup
                        )
                    }
                    loadModules() // 刷新模块列表以更新备份状态
                }
                .onFailure { error ->
                    _backupState.update {
                        it.copy(
                            isBackingUp = false,
                            backupModuleId = null,
                            backupError = error.message ?: "备份失败"
                        )
                    }
                }
        }
    }

    /**
     * 恢复模块
     */
    fun restoreModule(backupId: String) {
        viewModelScope.launch {
            _backupState.update { it.copy(isRestoring = true, restoreBackupId = backupId) }

            backupManager.restoreModule(backupId)
                .onSuccess {
                    _backupState.update {
                        it.copy(
                            isRestoring = false,
                            restoreBackupId = null,
                            restoreSuccess = true
                        )
                    }
                    loadModules() // 刷新模块列表
                }
                .onFailure { error ->
                    _backupState.update {
                        it.copy(
                            isRestoring = false,
                            restoreBackupId = null,
                            restoreError = error.message ?: "恢复失败"
                        )
                    }
                }
        }
    }

    /**
     * 删除备份
     */
    fun deleteBackup(backupId: String) {
        viewModelScope.launch {
            backupManager.deleteBackup(backupId)
                .onSuccess {
                    loadModules() // 刷新模块列表
                }
        }
    }

    /**
     * 获取模块的备份状态
     */
    suspend fun hasBackup(moduleId: String): Boolean {
        return backupManager.hasBackup(moduleId)
    }

    /**
     * 获取模块的最新备份
     */
    suspend fun getLatestBackup(moduleId: String): com.rootguard.app.data.repository.ModuleBackup? {
        return backupManager.getLatestBackup(moduleId)
    }

    /**
     * 清除备份状态
     */
    fun clearBackupStatus() {
        _backupState.update { BackupUiState() }
    }

    // ==================== 一键备份/恢复功能 ====================

    /**
     * 一键备份所有模块
     */
    fun backupAllModules() {
        viewModelScope.launch {
            _uiState.update { it.copy(isBulkBackingUp = true, bulkBackupProgress = 0) }

            val result = backupManager.backupAllModules(
                onProgress = { current, total, moduleName ->
                    _uiState.update {
                        it.copy(
                            bulkBackupProgress = current,
                            bulkBackupTotal = total,
                            bulkBackupCurrent = moduleName
                        )
                    }
                }
            )

            when {
                result.isSuccess -> {
                    _uiState.update {
                        it.copy(
                            isBulkBackingUp = false,
                            bulkBackupProgress = 0,
                            bulkBackupCurrent = ""
                        )
                    }
                    loadModules() // 刷新模块列表
                }
                result.isFailure -> {
                    _uiState.update {
                        it.copy(
                            isBulkBackingUp = false,
                            error = "一键备份失败: ${result.exceptionOrNull()?.message}"
                        )
                    }
                }
            }
        }
    }

    /**
     * 一键恢复所有备份
     */
    fun restoreAllBackups() {
        viewModelScope.launch {
            _uiState.update { it.copy(isBulkRestoring = true, bulkRestoreProgress = 0) }

            val result = backupManager.restoreAllBackups(
                onProgress = { current, total, moduleName ->
                    _uiState.update {
                        it.copy(
                            bulkRestoreProgress = current,
                            bulkRestoreTotal = total,
                            bulkRestoreCurrent = moduleName
                        )
                    }
                }
            )

            when {
                result.isSuccess -> {
                    _uiState.update {
                        it.copy(
                            isBulkRestoring = false,
                            bulkRestoreProgress = 0,
                            bulkRestoreCurrent = ""
                        )
                    }
                    loadModules() // 刷新模块列表
                }
                result.isFailure -> {
                    _uiState.update {
                        it.copy(
                            isBulkRestoring = false,
                            error = "一键恢复失败: ${result.exceptionOrNull()?.message}"
                        )
                    }
                }
            }
        }
    }
}