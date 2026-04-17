package com.pandasu.turbo.ui.compose.tweaks

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.pandasu.turbo.util.BackgroundManager
import com.pandasu.turbo.util.SystemTweaksHelper
import com.pandasu.turbo.util.TweakPrefs
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * 系统优化页面 ViewModel
 */
class SystemTweaksViewModel(application: Application) : AndroidViewModel(application) {

    private val context get() = getApplication<Application>()

    private val _uiState = MutableStateFlow(SystemTweaksUiState())
    val uiState: StateFlow<SystemTweaksUiState> = _uiState.asStateFlow()

    init {
        loadCurrentState()
        // 启动时应用已保存的设置
        applySavedSettings()
    }

    /** 启动时应用保存的设置到系统 */
    private fun applySavedSettings() {
        viewModelScope.launch {
            // 动画缩放（如果非默认值则应用）
            val windowScale = TweakPrefs.getWindowScale(context)
            val transitionScale = TweakPrefs.getTransitionScale(context)
            val animatorScale = TweakPrefs.getAnimatorScale(context)
            if (windowScale < 1f || transitionScale < 1f || animatorScale < 1f) {
                SystemTweaksHelper.setAnimationScales(windowScale)
            }

            // 刷新率
            val savedRefreshRate = TweakPrefs.getRefreshRate(context)
            if (savedRefreshRate > 0) {
                SystemTweaksHelper.setRefreshRate(context, savedRefreshRate)
            }

            // 广告屏蔽（启动时静默应用，不弹提示）
            if (TweakPrefs.isAdsDisabled(context)) {
                SystemTweaksHelper.disableAds()
            }
            if (TweakPrefs.isLockScreenAdsDisabled(context)) {
                SystemTweaksHelper.disableLockScreenAds()
            }

            // 严格模式（启动时恢复已保存的严格模式状态）
            if (TweakPrefs.isStrictModeEnabled(context)) {
                BackgroundManager.enableStrictMode(context)
            }
        }
    }

    private fun loadCurrentState() {
        viewModelScope.launch {
            // 从持久化读取已保存的状态
            val windowScale = TweakPrefs.getWindowScale(context)
            val transitionScale = TweakPrefs.getTransitionScale(context)
            val animatorScale = TweakPrefs.getAnimatorScale(context)
            val savedRefreshRate = TweakPrefs.getRefreshRate(context)
            val savedBatteryMode = TweakPrefs.getBatteryMode(context)
            val savedAdsDisabled = TweakPrefs.isAdsDisabled(context)
            val savedLockScreenAdsDisabled = TweakPrefs.isLockScreenAdsDisabled(context)
            val savedAutoStartDisabled = TweakPrefs.getAutoStartDisabledCount(context)

            // 合并：持久化值优先
            _uiState.update { state ->
                state.copy(
                    animationScales = SystemTweaksHelper.AnimationScales(
                        windowScale, transitionScale, animatorScale
                    ),
                    currentRefreshRate = if (savedRefreshRate > 0) savedRefreshRate else state.currentRefreshRate,
                    batteryMode = savedBatteryMode,
                    autoStartDisabledCount = if (savedAutoStartDisabled > 0) 
                        Pair(savedAutoStartDisabled, 0) else state.autoStartDisabledCount,
                    adsDisabled = savedAdsDisabled,
                    lockScreenAdsDisabled = savedLockScreenAdsDisabled
                )
            }
        }
    }

    /**
     * 设置动画缩放（持久化）
     */
    fun setAnimationScale(scale: Float) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.setAnimationScales(scale)
            
            result.onSuccess {
                // 持久化
                TweakPrefs.setWindowScale(context, scale)
                TweakPrefs.setTransitionScale(context, scale)
                TweakPrefs.setAnimatorScale(context, scale)
                
                _uiState.update { state ->
                    state.copy(
                        animationScales = SystemTweaksHelper.AnimationScales(scale, scale, scale),
                        isLoading = false
                    )
                }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 设置刷新率（持久化）
     */
    fun setRefreshRate(rate: Int) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.setRefreshRate(context, rate)
            
            result.onSuccess {
                TweakPrefs.setRefreshRate(context, rate)
                _uiState.update { it.copy(currentRefreshRate = rate, isLoading = false) }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 设置电池模式（持久化）
     */
    fun setBatteryMode(mode: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.setBatteryMode(context, mode)
            
            result.onSuccess {
                TweakPrefs.setBatteryMode(context, mode)
                _uiState.update { it.copy(batteryMode = mode, isLoading = false) }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 关闭所有自启动（持久化）
     */
    fun disableAllAutoStart() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.disableAllAutoStart(context)
            
            result.onSuccess { count ->
                TweakPrefs.setAutoStartDisabledCount(context, count.first)
                _uiState.update { 
                    it.copy(autoStartDisabledCount = count, isLoading = false)
                }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 关闭广告（持久化）
     */
    fun disableAds() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.disableSystemAds()
            
            result.onSuccess {
                TweakPrefs.setAdsDisabled(context, true)
                _uiState.update { it.copy(adsDisabled = true, isLoading = false) }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 启用广告（恢复 + 持久化）
     */
    fun enableAds() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.enableSystemAds()
            
            result.onSuccess {
                TweakPrefs.setAdsDisabled(context, false)
                _uiState.update { it.copy(adsDisabled = false, isLoading = false) }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 关闭锁屏广告（持久化）
     */
    fun disableLockScreenAds() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.disableLockScreenAds()
            
            result.onSuccess {
                TweakPrefs.setLockScreenAdsDisabled(context, true)
                _uiState.update { it.copy(lockScreenAdsDisabled = true, isLoading = false) }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 启用锁屏广告（恢复 + 持久化）
     */
    fun enableLockScreenAds() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.enableLockScreenAds()
            
            result.onSuccess {
                TweakPrefs.setLockScreenAdsDisabled(context, false)
                _uiState.update { it.copy(lockScreenAdsDisabled = false, isLoading = false) }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    /**
     * 一键优化（持久化所有）
     */
    fun oneKeyOptimize() {
        viewModelScope.launch {
            _uiState.update { it.copy(isOptimizing = true) }
            
            val result = SystemTweaksHelper.oneKeyOptimize(context)
            
            result.onSuccess { optimizeResult ->
                // 持久化所有设置
                TweakPrefs.setWindowScale(context, 0f)
                TweakPrefs.setTransitionScale(context, 0f)
                TweakPrefs.setAnimatorScale(context, 0f)
                TweakPrefs.setRefreshRate(context, 120)
                TweakPrefs.setBatteryMode(context, "performance")
                TweakPrefs.setAutoStartDisabledCount(context, optimizeResult.autoStartDisabled)
                TweakPrefs.setAdsDisabled(context, optimizeResult.adsDisabled)
                TweakPrefs.setLockScreenAdsDisabled(context, optimizeResult.adsDisabled)
                
                _uiState.update { state ->
                    state.copy(
                        isOptimizing = false,
                        lastOptimizeResult = optimizeResult,
                        animationScales = SystemTweaksHelper.AnimationScales(0f, 0f, 0f),
                        currentRefreshRate = 120,
                        batteryMode = "performance",
                        autoStartDisabledCount = Pair(optimizeResult.autoStartDisabled, 0),
                        adsDisabled = optimizeResult.adsDisabled,
                        lockScreenAdsDisabled = optimizeResult.adsDisabled
                    )
                }
            }.onFailure { error ->
                _uiState.update { it.copy(isOptimizing = false, error = error.message) }
            }
        }
    }

    /**
     * 恢复默认设置（清除持久化 + 应用系统默认值）
     */
    fun resetToDefaults() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            val result = SystemTweaksHelper.resetToDefaults(context)
            
            result.onSuccess {
                // 清除持久化
                TweakPrefs.resetAll(context)
                
                _uiState.update { state ->
                    state.copy(
                        isLoading = false,
                        animationScales = SystemTweaksHelper.AnimationScales(1f, 1f, 1f),
                        currentRefreshRate = 60,
                        batteryMode = "smart",
                        adsDisabled = false,
                        lockScreenAdsDisabled = false,
                        autoStartDisabledCount = null,
                        lastOptimizeResult = null
                    )
                }
            }.onFailure { error ->
                _uiState.update { it.copy(isLoading = false, error = error.message) }
            }
        }
    }

    fun clearError() {
        _uiState.update { it.copy(error = null) }
    }
}

/**
 * UI 状态数据类
 */
data class SystemTweaksUiState(
    val isLoading: Boolean = false,
    val isOptimizing: Boolean = false,
    val error: String? = null,
    
    // 动画设置
    val animationScales: SystemTweaksHelper.AnimationScales = 
        SystemTweaksHelper.AnimationScales(1f, 1f, 1f),
    
    // 刷新率
    val currentRefreshRate: Int = 60,
    
    // 电池模式
    val batteryMode: String = "smart",
    
    // 自启动
    val autoStartDisabledCount: Pair<Int, Int>? = null,
    
    // 广告设置
    val adsDisabled: Boolean = false,
    val lockScreenAdsDisabled: Boolean = false,
    
    // 一键优化结果
    val lastOptimizeResult: SystemTweaksHelper.OptimizeResult? = null
)
