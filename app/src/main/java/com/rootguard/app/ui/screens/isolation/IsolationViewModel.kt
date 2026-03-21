package com.rootguard.app.ui.screens.isolation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.model.*
import com.rootguard.app.utils.Logger
import com.rootguard.app.utils.OneClickIsolationHelper
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
    val successMessage: String? = null,
    val showSandboxRules: Boolean = false,
    val isolationStats: IsolationDataStore.SandboxStats = IsolationDataStore.SandboxStats(),
    val oneClickProgress: OneClickProgress = OneClickProgress()
)

data class OneClickProgress(
    val isRunning: Boolean = false,
    val current: Int = 0,
    val total: Int = 0,
    val currentAppName: String = ""
)

@HiltViewModel
class IsolationViewModel @Inject constructor(
    private val isolationDataStore: IsolationDataStore,
    private val rootHider: RootHider,
    private val oneClickIsolationHelper: OneClickIsolationHelper
) : ViewModel() {

    private val _uiState = MutableStateFlow(IsolationUiState())
    val uiState: StateFlow<IsolationUiState> = _uiState.asStateFlow()

    init {
        loadSettings()
        loadSandboxStats()
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

    private fun loadSandboxStats() {
        viewModelScope.launch {
            isolationDataStore.sandboxStats.collect { stats ->
                _uiState.update { it.copy(isolationStats = stats) }
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

    // ========== Sandbox 规则管理 ==========

    /**
     * 切换 Sandbox 规则显示
     */
    fun toggleSandboxRules() {
        _uiState.update { it.copy(showSandboxRules = !it.showSandboxRules) }
    }

    /**
     * 更新 Sandbox 规则
     */
    fun updateSandboxRule(sandboxRule: SandboxRule) {
        val config = _uiState.value.currentConfig ?: return
        _uiState.update {
            it.copy(currentConfig = config.copy(sandboxRule = sandboxRule))
        }
    }

    // ========== 一键智能隔离 ==========

    /**
     * 执行一键隔离
     */
    fun startOneClickIsolation(preset: OneClickIsolationPreset) {
        viewModelScope.launch {
            _uiState.update {
                it.copy(
                    oneClickProgress = OneClickProgress(isRunning = true, current = 0, total = 0)
                )
            }

            try {
                // 扫描已安装应用
                val apps = oneClickIsolationHelper.scanInstalledApps()

                _uiState.update {
                    it.copy(oneClickProgress = it.oneClickProgress.copy(total = apps.size))
                }

                // 跳过系统应用
                val userApps = apps.filterNot { it.isSystemApp }

                // 生成隔离配置
                val configs = userApps.mapIndexed { index, app ->
                    _uiState.update {
                        it.copy(
                            oneClickProgress = it.oneClickProgress.copy(
                                current = index + 1,
                                currentAppName = app.appName
                            )
                        )
                    }

                    // 避免太快
                    kotlinx.coroutines.delay(10)

                    oneClickIsolationHelper.generateIsolationConfig(app, preset)
                }

                // 批量保存
                isolationDataStore.saveIsolationConfigs(configs)

                _uiState.update {
                    it.copy(
                        oneClickProgress = OneClickProgress(isRunning = false),
                        successMessage = "已为 ${configs.size} 个应用创建隔离规则"
                    )
                }

                Logger.d("One-click isolation completed: ${configs.size} configs created")
            } catch (e: Exception) {
                Logger.e("One-click isolation failed", e)
                _uiState.update {
                    it.copy(
                        oneClickProgress = OneClickProgress(isRunning = false),
                        errorMessage = "一键隔离失败: ${e.message}"
                    )
                }
            }

            clearMessageAfterDelay()
        }
    }

    /**
     * 重置一键隔离进度
     */
    fun resetOneClickProgress() {
        _uiState.update {
            it.copy(oneClickProgress = OneClickProgress())
        }
    }

    // ========== 隔离日志 ==========

    /**
     * 清除隔离日志
     */
    fun clearIsolationLogs() {
        viewModelScope.launch {
            isolationDataStore.clearIsolationLogs()
            _uiState.update {
                it.copy(successMessage = "隔离日志已清除")
            }
            clearMessageAfterDelay()
        }
    }

    /**
     * 获取隔离事件流
     */
    fun getIsolationEvents() = isolationDataStore.isolationEvents
}

