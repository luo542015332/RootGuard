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
    val installStatus: InstallStatus = InstallStatus.Idle
)

@HiltViewModel
class ModulesViewModel @Inject constructor(
    private val getModules: GetModulesUseCase,
    private val toggleModule: ToggleModuleUseCase,
    private val uninstallModule: UninstallModuleUseCase,
    private val installModule: InstallModuleUseCase,
    private val magiskRepository: com.rootguard.app.data.repository.MagiskRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(ModulesUiState())
    val uiState: StateFlow<ModulesUiState> = _uiState.asStateFlow()

    init {
        loadModules()
    }

    fun loadModules() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            
            try {
                val modules = getModules()
                _uiState.update {
                    it.copy(
                        modules = modules,
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
        _uiState.update { it.copy(installStatus = InstallStatus.Installing(0f, "准备安装...")) }
        
        try {
            // 步骤 1: 复制文件到临时目录
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.2f, "复制文件...")) }
            
            val tempFile = File(context.cacheDir, "module_${System.currentTimeMillis()}.zip")
            
            context.contentResolver.openInputStream(uri)?.use { input ->
                tempFile.outputStream().use { output ->
                    input.copyTo(output)
                }
            } ?: throw Exception("无法读取文件")
            
            // 步骤 2: 验证文件
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.4f, "验证模块...")) }
            
            if (!isValidMagiskModule(tempFile)) {
                tempFile.delete()
                _uiState.update { 
                    it.copy(installStatus = InstallStatus.Error("无效的 Magisk 模块文件")) 
                }
                return
            }
            
            // 步骤 3: 安装模块
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.6f, "正在安装...")) }
            
            val success = installModule(tempFile.absolutePath)
            
            // 步骤 4: 清理
            _uiState.update { it.copy(installStatus = InstallStatus.Installing(0.9f, "清理...")) }
            tempFile.delete()
            
            if (success) {
                _uiState.update { 
                    it.copy(installStatus = InstallStatus.Success("模块安装成功！请重启设备以生效。")) 
                }
                // 刷新模块列表
                loadModules()
            } else {
                _uiState.update { 
                    it.copy(installStatus = InstallStatus.Error("模块安装失败")) 
                }
            }
            
        } catch (e: Exception) {
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
}