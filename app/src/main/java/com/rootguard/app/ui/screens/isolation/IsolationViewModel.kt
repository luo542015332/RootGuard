package com.rootguard.app.ui.screens.isolation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.magisk.RootHider.ModuleStatus
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

enum class AppFilterTab(val label: String) {
    ALL("全部"), USER("用户应用"), SYSTEM("系统应用")
}

data class IsolationUiState(
    val globalEnabled: Boolean = true,
    val currentConfig: IsolationConfig? = null,
    val isolatedApps: List<IsolationConfig> = emptyList(),
    val isLoading: Boolean = false,
    val errorMessage: String? = null,
    val successMessage: String? = null,
    val showSandboxRules: Boolean = false,
    val isolationStats: IsolationDataStore.SandboxStats = IsolationDataStore.SandboxStats(),
    val oneClickProgress: OneClickProgress = OneClickProgress(),
    val userApps: List<OneClickIsolationHelper.AppInfo> = emptyList(),
    val systemApps: List<OneClickIsolationHelper.AppInfo> = emptyList(),
    val isAppListLoading: Boolean = false,
    val hasRootPermission: Boolean = true,
    val searchQuery: String = "",
    val activeTab: AppFilterTab = AppFilterTab.ALL,
    val selectedOneClickPreset: OneClickIsolationPreset = OneClickIsolationPreset.BALANCED,
    // 新增：环境评分
    val envScore: Int = -1,
    val envChecks: List<RootHider.DetectionResult> = emptyList(),
    val moduleStatuses: List<ModuleStatus> = emptyList(),
    val isEnvChecking: Boolean = false
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
        loadAppList()
        runEnvironmentCheck()
    }

    fun setRootPermission(hasPermission: Boolean) {
        _uiState.update { it.copy(hasRootPermission = hasPermission) }
    }

    private fun loadSettings() {
        viewModelScope.launch {
            launch { isolationDataStore.globalIsolationEnabled.collect { enabled -> _uiState.update { s -> s.copy(globalEnabled = enabled) } } }
            launch { isolationDataStore.isolationConfigs.collect { configs -> _uiState.update { s -> s.copy(isolatedApps = configs.filter { c -> c.isEnabled }) } } }
        }
    }

    private fun loadSandboxStats() {
        viewModelScope.launch { isolationDataStore.sandboxStats.collect { stats -> _uiState.update { s -> s.copy(isolationStats = stats) } } }
    }

    fun loadAppList() {
        viewModelScope.launch {
            _uiState.update { it.copy(isAppListLoading = true) }
            try {
                val allApps = oneClickIsolationHelper.scanAllApps()
                _uiState.update {
                    it.copy(
                        userApps = allApps.filter { !it.isSystemApp && it.packageName != "com.rootguard.app" },
                        systemApps = allApps.filter { it.isSystemApp },
                        isAppListLoading = false
                    )
                }
            } catch (e: Exception) {
                _uiState.update { it.copy(isAppListLoading = false, errorMessage = "获取应用列表失败: ${e.message}") }
            }
        }
    }

    // ========== 新增：环境检测 ==========

    fun runEnvironmentCheck() {
        Logger.d("IsolationViewModel: 开始环境检查")
        viewModelScope.launch {
            _uiState.update { it.copy(isEnvChecking = true, errorMessage = null, successMessage = null) }
            try {
                // 检查 Root 权限
                val hasRootPermission = rootHider.checkSelfRootPermission()
                if (!hasRootPermission) {
                    Logger.w("IsolationViewModel: 没有 Root 权限，无法执行环境检测")
                    _uiState.update { 
                        it.copy(
                            isEnvChecking = false, 
                            errorMessage = "没有 Root 权限，无法执行环境检测。请先在 KernelSU 中授予权限",
                            envScore = -1,
                            envChecks = emptyList()
                        ) 
                    }
                    clearMessageAfterDelay()
                    return@launch
                }
                Logger.d("IsolationViewModel: Root 权限检查通过，继续环境检测")
                
                Logger.d("IsolationViewModel: 调用 rootHider.runEnvironmentCheck()")
                val score = rootHider.runEnvironmentCheck()
                Logger.d("IsolationViewModel: 获取到评分: $score")
                
                // 如果分数为 -1，表示检测过程中出现权限问题
                if (score == -1) {
                    Logger.w("IsolationViewModel: 环境检测过程中权限丢失")
                    _uiState.update { 
                        it.copy(
                            isEnvChecking = false, 
                            errorMessage = "环境检测失败：权限丢失。请确保 PandaSU 有 Root 权限",
                            envScore = -1,
                            envChecks = emptyList()
                        ) 
                    }
                    clearMessageAfterDelay()
                    return@launch
                }
                
                Logger.d("IsolationViewModel: 调用详细环境检测")
                val checks = rootHider.runEnvironmentCheckDetail()
                Logger.d("IsolationViewModel: 获取到详细检测项: ${checks.size}个")
                
                Logger.d("IsolationViewModel: 检测模块状态")
                val modules = rootHider.detectModules()
                Logger.d("IsolationViewModel: 获取到模块状态: ${modules.size}个")
                
                _uiState.update {
                    Logger.d("IsolationViewModel: 更新UI状态, 评分=$score, 检测项=${checks.count { it.detected }}个")
                    it.copy(
                        envScore = score, 
                        envChecks = checks, 
                        moduleStatuses = modules, 
                        isEnvChecking = false,
                        successMessage = if (score >= 0) "环境检测完成，安全评分：$score" else "环境检测失败"
                    )
                }
                Logger.d("IsolationViewModel: 环境检测完成，UI 状态已更新")
                
                // 3秒后清除成功消息
                if (score >= 0) {
                    clearMessageAfterDelay()
                }
            } catch (e: Exception) {
                Logger.e("env check failed", e)
                _uiState.update { 
                    it.copy(
                        isEnvChecking = false, 
                        errorMessage = "环境检测异常: ${e.message}",
                        envScore = -1,
                        envChecks = emptyList()
                    ) 
                }
                clearMessageAfterDelay()
            }
        }
    }

    fun forceDenyList() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                rootHider.forceDenyList()
                _uiState.update { it.copy(isLoading = false, successMessage = "DenyList 强制配置完成") }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, errorMessage = "配置失败: ${e.message}") }
            }
            clearMessageAfterDelay()
        }
    }

    fun applyFullPropSpoof() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                rootHider.applyFullPropSpoof()
                _uiState.update { it.copy(isLoading = false, successMessage = "属性伪装已应用") }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, errorMessage = "失败: ${e.message}") }
            }
            clearMessageAfterDelay()
        }
    }

    // ========== 搜索与过滤 ==========

    fun updateSearchQuery(query: String) { _uiState.update { it.copy(searchQuery = query) } }
    fun setActiveTab(tab: AppFilterTab) { _uiState.update { it.copy(activeTab = tab) } }

    fun getFilteredApps(): List<OneClickIsolationHelper.AppInfo> {
        val s = _uiState.value
        val q = s.searchQuery.trim().lowercase()
        val base = when (s.activeTab) {
            AppFilterTab.ALL -> s.userApps + s.systemApps
            AppFilterTab.USER -> s.userApps
            AppFilterTab.SYSTEM -> s.systemApps
        }
        return if (q.isEmpty()) base else base.filter { it.appName.lowercase().contains(q) || it.packageName.lowercase().contains(q) }
    }

    // ========== 隔离强度 ==========

    fun setOneClickPreset(p: OneClickIsolationPreset) { _uiState.update { it.copy(selectedOneClickPreset = p) } }
    fun getPresetLabel(p: OneClickIsolationPreset) = when (p) {
        OneClickIsolationPreset.CONSERVATIVE -> "保守"
        OneClickIsolationPreset.BALANCED -> "平衡"
        OneClickIsolationPreset.AGGRESSIVE -> "激进"
        OneClickIsolationPreset.LENIENT -> "宽松"
    }
    fun getPresetEmoji(p: OneClickIsolationPreset) = when (p) {
        OneClickIsolationPreset.CONSERVATIVE -> "🔒"
        OneClickIsolationPreset.BALANCED -> "⚖️"
        OneClickIsolationPreset.AGGRESSIVE -> "🔥"
        OneClickIsolationPreset.LENIENT -> "🔓"
    }

    // ========== 应用隔离操作 ==========

    fun toggleAppIsolation(appInfo: OneClickIsolationHelper.AppInfo) {
        Logger.d("toggleAppIsolation: 开始处理 ${appInfo.appName} (${appInfo.packageName})")
        viewModelScope.launch {
            try {
                // 检查 Root 权限
                val hasRootPermission = rootHider.checkSelfRootPermission()
                if (!hasRootPermission) {
                    Logger.e("toggleAppIsolation: 没有 Root 权限，操作无法执行")
                    _uiState.update { it.copy(errorMessage = "没有 Root 权限，请先在 KernelSU 中授予权限") }
                    clearMessageAfterDelay()
                    return@launch
                }
                Logger.d("toggleAppIsolation: Root 权限检查通过")
                
                val existing = isolationDataStore.getConfigForAppSync(appInfo.packageName)
                Logger.d("toggleAppIsolation: 现有配置检查结果: existing=$existing, isEnabled=${existing?.isEnabled}")
                
                if (existing != null && existing.isEnabled) {
                    Logger.d("toggleAppIsolation: 执行移除隔离")
                    val removeResult = rootHider.removeIsolation(appInfo.packageName)
                    Logger.d("toggleAppIsolation: removeIsolation 结果: $removeResult")
                    
                    isolationDataStore.saveIsolationConfig(existing.copy(isEnabled = false))
                    Logger.d("toggleAppIsolation: 配置已保存为禁用")
                    
                    _uiState.update { it.copy(successMessage = "已取消 ${appInfo.appName} 的隔离") }
                    Logger.d("toggleAppIsolation: UI 状态已更新")
                } else {
                    Logger.d("toggleAppIsolation: 执行应用隔离")
                    val config = oneClickIsolationHelper.generateIsolationConfig(appInfo, _uiState.value.selectedOneClickPreset)
                    Logger.d("toggleAppIsolation: 生成的配置: packageName=${config.packageName}, isEnabled=${config.isEnabled}, sandboxRule.level=${config.sandboxRule?.level}")
                    
                    isolationDataStore.saveIsolationConfig(config)
                    Logger.d("toggleAppIsolation: 配置已保存")
                    
                    val applyResult = rootHider.applyIsolation(config)
                    Logger.d("toggleAppIsolation: applyIsolation 结果: $applyResult")
                    
                    _uiState.update { it.copy(successMessage = "已为 ${appInfo.appName} 启用隔离") }
                    Logger.d("toggleAppIsolation: UI 状态已更新")
                }
                clearMessageAfterDelay()
            } catch (e: Exception) {
                Logger.e("toggleAppIsolation: 操作失败", e)
                _uiState.update { it.copy(errorMessage = "操作失败: ${e.message}") }; clearMessageAfterDelay()
            }
        }
    }

    fun loadAppConfig(packageName: String, appName: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                isolationDataStore.getConfigForApp(packageName).collect { config ->
                    _uiState.update { it.copy(currentConfig = config ?: IsolationConfig(packageName, appName), isLoading = false) }
                }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, errorMessage = "加载失败") }
            }
        }
    }

    fun toggleGlobalIsolation(enabled: Boolean) {
        viewModelScope.launch {
            isolationDataStore.setGlobalIsolationEnabled(enabled)
            _uiState.update { it.copy(globalEnabled = enabled, successMessage = if (enabled) "全局隔离已启用" else "已禁用") }
            clearMessageAfterDelay()
        }
    }

    fun updateConfig(config: IsolationConfig) { _uiState.update { it.copy(currentConfig = config) } }

    fun saveConfig() {
        val config = _uiState.value.currentConfig ?: return
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                isolationDataStore.saveIsolationConfig(config)
                if (config.isEnabled) {
                    val r = rootHider.applyIsolation(config)
                    _uiState.update { it.copy(isLoading = false, successMessage = if (r) "配置已应用" else "应用失败") }
                } else {
                    rootHider.removeIsolation(config.packageName)
                    _uiState.update { it.copy(isLoading = false, successMessage = "隔离已禁用") }
                }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, errorMessage = "失败: ${e.message}") }
            }
            clearMessageAfterDelay()
        }
    }

    fun applyPreset(packageName: String, appName: String, level: IsolationLevel) {
        val preset = when (level) {
            IsolationLevel.STRICT -> IsolationPresets.bankingPreset(packageName, appName)
            IsolationLevel.STANDARD -> IsolationPresets.gamingPreset(packageName, appName)
            IsolationLevel.BASIC -> IsolationPresets.socialPreset(packageName, appName)
            IsolationLevel.NONE -> IsolationConfig(packageName, appName, isEnabled = false)
        }
        _uiState.update { it.copy(currentConfig = preset) }
        viewModelScope.launch {
            isolationDataStore.saveIsolationConfig(preset)
            rootHider.applyIsolation(preset)
            _uiState.update { it.copy(successMessage = "已应用预设") }
            clearMessageAfterDelay()
        }
    }

    fun removeIsolation(packageName: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                rootHider.removeIsolation(packageName)
                isolationDataStore.removeIsolationConfig(packageName)
                _uiState.update { it.copy(isLoading = false, successMessage = "已移除") }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, errorMessage = "失败") }
            }
            clearMessageAfterDelay()
        }
    }

    fun toggleSandboxRules() { _uiState.update { it.copy(showSandboxRules = !it.showSandboxRules) } }
    fun updateSandboxRule(rule: SandboxRule) {
        val c = _uiState.value.currentConfig ?: return
        _uiState.update { it.copy(currentConfig = c.copy(sandboxRule = rule)) }
    }

    fun startOneClickIsolation() {
        val preset = _uiState.value.selectedOneClickPreset
        viewModelScope.launch {
            _uiState.update { it.copy(oneClickProgress = OneClickProgress(isRunning = true), errorMessage = null, successMessage = null) }
            try {
                val apps = oneClickIsolationHelper.scanInstalledApps().filterNot { it.isSystemApp || it.packageName == "com.rootguard.app" }
                if (apps.isEmpty()) {
                    _uiState.update { it.copy(oneClickProgress = OneClickProgress(), errorMessage = "未找到用户应用") }
                    clearMessageAfterDelay(); return@launch
                }
                _uiState.update { it.copy(oneClickProgress = it.oneClickProgress.copy(total = apps.size)) }
                val configs = apps.mapIndexed { i, app ->
                    _uiState.update { it.copy(oneClickProgress = it.oneClickProgress.copy(current = i + 1, currentAppName = app.appName)) }
                    kotlinx.coroutines.delay(10)
                    oneClickIsolationHelper.generateIsolationConfig(app, preset)
                }
                isolationDataStore.saveIsolationConfigs(configs)
                _uiState.update { it.copy(oneClickProgress = OneClickProgress(), successMessage = "已为 ${configs.size} 个应用创建隔离") }
            } catch (e: Exception) {
                _uiState.update { it.copy(oneClickProgress = OneClickProgress(), errorMessage = "失败: ${e.message}") }
            }
            clearMessageAfterDelay()
        }
    }

    fun resetOneClickProgress() { _uiState.update { it.copy(oneClickProgress = OneClickProgress()) } }
    fun clearIsolationLogs() {
        viewModelScope.launch {
            isolationDataStore.clearIsolationLogs()
            _uiState.update { it.copy(successMessage = "日志已清除") }; clearMessageAfterDelay()
        }
    }
    fun getIsolationEvents() = isolationDataStore.isolationEvents

    private fun clearMessageAfterDelay() {
        viewModelScope.launch {
            kotlinx.coroutines.delay(3000)
            _uiState.update { it.copy(errorMessage = null, successMessage = null) }
        }
    }
    fun clearError() { _uiState.update { it.copy(errorMessage = null) } }
}
