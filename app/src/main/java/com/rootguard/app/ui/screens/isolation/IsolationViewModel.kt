package com.rootguard.app.ui.screens.isolation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.data.model.IsolationLevel
import com.rootguard.app.data.model.IsolationPresets
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

data class IsolationUiState(
    val globalEnabled: Boolean = true,
    val currentConfig: IsolationConfig? = null,
    val isolatedApps: List<IsolationConfig> = emptyList(),
    val isLoading: Boolean = false,
    val errorMessage: String? = null,
    val successMessage: String? = null
)

@HiltViewModel
class IsolationViewModel @Inject constructor(
    private val isolationDataStore: IsolationDataStore,
    private val rootHider: RootHider
) : ViewModel() {

    private val _uiState = MutableStateFlow(IsolationUiState())
    val uiState: StateFlow<IsolationUiState> = _uiState.asStateFlow()

    init {
        loadSettings()
    }

    private fun loadSettings() {
        viewModelScope.launch {
            // 加载全局设置
            launch {
                isolationDataStore.globalIsolationEnabled.collect { enabled ->
                    _uiState.update { it.copy(globalEnabled = enabled) }
                }
            }

            // 加载所有隔离配置
            launch {
                isolationDataStore.isolationConfigs.collect { configs ->
                    _uiState.update { it.copy(isolatedApps = configs.filter { it.isEnabled }) }
                }
            }
        }
    }

    /**
     * 加载特定应用的配置
     */
    fun loadAppConfig(packageName: String, appName: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                isolationDataStore.getConfigForApp(packageName).collect { config ->
                    val finalConfig = config ?: IsolationConfig(
                        packageName = packageName,
                        appName = appName,
                        isEnabled = false
                    )
                    _uiState.update {
                        it.copy(
                            currentConfig = finalConfig,
                            isLoading = false
                        )
                    }
                }
            } catch (e: Exception) {
                Logger.e("Failed to load config for $packageName", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        errorMessage = "加载配置失败: ${e.message}"
                    )
                }
            }
        }
    }

    /**
     * 切换全局隔离
     */
    fun toggleGlobalIsolation(enabled: Boolean) {
        viewModelScope.launch {
            isolationDataStore.setGlobalIsolationEnabled(enabled)
            _uiState.update {
                it.copy(
                    globalEnabled = enabled,
                    successMessage = if (enabled) "全局隔离已启用" else "全局隔离已禁用"
                )
            }
            clearMessageAfterDelay()
        }
    }

    /**
     * 更新当前配置
     */
    fun updateConfig(config: IsolationConfig) {
        _uiState.update { it.copy(currentConfig = config) }
    }

    /**
     * 保存配置
     */
    fun saveConfig() {
        val config = _uiState.value.currentConfig ?: return

        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                // 保存到 DataStore
                isolationDataStore.saveIsolationConfig(config)

                // 应用隔离
                if (config.isEnabled) {
                    val result = rootHider.applyIsolation(config)
                    if (result) {
                        _uiState.update {
                            it.copy(
                                isLoading = false,
                                successMessage = "隔离配置已应用"
                            )
                        }
                    } else {
                        _uiState.update {
                            it.copy(
                                isLoading = false,
                                errorMessage = "应用隔离失败"
                            )
                        }
                    }
                } else {
                    // 禁用隔离
                    rootHider.removeIsolation(config.packageName)
                    _uiState.update {
                        it.copy(
                            isLoading = false,
                            successMessage = "隔离已禁用"
                        )
                    }
                }
            } catch (e: Exception) {
                Logger.e("Failed to save config", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        errorMessage = "保存失败: ${e.message}"
                    )
                }
            }
            clearMessageAfterDelay()
        }
    }

    /**
     * 应用预设
     */
    fun applyPreset(packageName: String, appName: String, level: IsolationLevel) {
        val preset = when (level) {
            IsolationLevel.STRICT -> IsolationPresets.bankingPreset(packageName, appName)
            IsolationLevel.STANDARD -> IsolationPresets.gamingPreset(packageName, appName)
            IsolationLevel.BASIC -> IsolationPresets.socialPreset(packageName, appName)
            IsolationLevel.NONE -> IsolationConfig(packageName, appName, isEnabled = false)
        }

        _uiState.update { it.copy(currentConfig = preset) }

        // 自动保存
        viewModelScope.launch {
            isolationDataStore.saveIsolationConfig(preset)
            rootHider.applyIsolation(preset)
            _uiState.update {
                it.copy(successMessage = "已应用${getLevelName(level)}预设")
            }
            clearMessageAfterDelay()
        }
    }

    private fun getLevelName(level: IsolationLevel): String {
        return when (level) {
            IsolationLevel.STRICT -> "银行级"
            IsolationLevel.STANDARD -> "游戏级"
            IsolationLevel.BASIC -> "基础"
            IsolationLevel.NONE -> "无"
        }
    }

    /**
     * 移除隔离
     */
    fun removeIsolation(packageName: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                // 从 RootHider 移除
                rootHider.removeIsolation(packageName)

                // 从 DataStore 移除
                isolationDataStore.removeIsolationConfig(packageName)

                _uiState.update {
                    it.copy(
                        isLoading = false,
                        successMessage = "已移除隔离"
                    )
                }
            } catch (e: Exception) {
                Logger.e("Failed to remove isolation", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        errorMessage = "移除失败: ${e.message}"
                    )
                }
            }
            clearMessageAfterDelay()
        }
    }

    /**
     * 清除消息
     */
    private fun clearMessageAfterDelay() {
        viewModelScope.launch {
            kotlinx.coroutines.delay(3000)
            _uiState.update {
                it.copy(errorMessage = null, successMessage = null)
            }
        }
    }

    /**
     * 清除错误消息
     */
    fun clearError() {
        _uiState.update { it.copy(errorMessage = null) }
    }
}
