package com.pandasu.turbo.ui.compose.background

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.pandasu.turbo.util.BackgroundManager
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * 后台管理 ViewModel
 */
class BackgroundManagerViewModel(application: Application) : AndroidViewModel(application) {

    private val _uiState = MutableStateFlow(BackgroundManagerUiState())
    val uiState: StateFlow<BackgroundManagerUiState> = _uiState.asStateFlow()

    init {
        refresh()
    }

    fun refresh() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val context = getApplication<Application>()
            
            // 加载内存状态
            val memoryStatus = BackgroundManager.getMemoryInfo(context)
            
            // 加载应用列表
            val apps = BackgroundManager.getAllAppsBackgroundStatus(context)
            
            _uiState.update { state ->
                state.copy(
                    isLoading = false,
                    memoryStatus = memoryStatus,
                    apps = apps
                )
            }
        }
    }

    /**
     * 开启严格模式
     */
    fun enableStrictMode() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val context = getApplication<Application>()
            val result = BackgroundManager.enableStrictMode(context)
            
            result.onSuccess { strictResult ->
                _uiState.update { state ->
                    state.copy(
                        isLoading = false,
                        strictModeEnabled = true,
                        strictModeResult = strictResult
                    )
                }
                // 刷新应用列表
                refresh()
            }.onFailure { error ->
                _uiState.update { 
                    it.copy(isLoading = false, error = error.message) 
                }
            }
        }
    }

    /**
     * 关闭严格模式
     */
    fun disableStrictMode() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val context = getApplication<Application>()
            val result = BackgroundManager.restoreDefaultMode(context)
            
            result.onSuccess {
                _uiState.update { state ->
                    state.copy(
                        isLoading = false,
                        strictModeEnabled = false,
                        strictModeResult = null
                    )
                }
                refresh()
            }.onFailure { error ->
                _uiState.update { 
                    it.copy(isLoading = false, error = error.message) 
                }
            }
        }
    }

    /**
     * 杀死所有后台应用
     */
    suspend fun killAllBackgroundApps(): Result<BackgroundManager.KillResult> {
        val context = getApplication<Application>()
        return BackgroundManager.killAllBackgroundApps(context)
    }

    /**
     * 设置应用后台权限
     */
    suspend fun setAppBackgroundAllowed(packageName: String, allowed: Boolean) {
        val result = if (allowed) {
            // 恢复默认
            BackgroundManager.setTombstoneMode(packageName, false)
        } else {
            // 禁止后台
            BackgroundManager.setTombstoneMode(packageName, true)
        }
        
        result.onSuccess {
            refresh()
        }.onFailure { error ->
            _uiState.update { it.copy(error = error.message) }
        }
    }

    /**
     * 设置墓碑模式
     */
    suspend fun setTombstoneMode(packageName: String, enable: Boolean) {
        val result = BackgroundManager.setTombstoneMode(packageName, enable)
        
        result.onSuccess {
            refresh()
        }.onFailure { error ->
            _uiState.update { it.copy(error = error.message) }
        }
    }

    fun clearError() {
        _uiState.update { it.copy(error = null) }
    }
}

/**
 * UI 状态
 */
data class BackgroundManagerUiState(
    val isLoading: Boolean = false,
    val error: String? = null,
    val memoryStatus: BackgroundManager.MemoryStatus? = null,
    val apps: List<BackgroundManager.AppBackgroundInfo> = emptyList(),
    val strictModeEnabled: Boolean = false,
    val strictModeResult: BackgroundManager.StrictModeResult? = null
)
