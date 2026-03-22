package com.rootguard.app.ui.screens.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.local.SettingsDataStore
import com.rootguard.app.data.remote.UpdateManager
import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.domain.usecase.RebootToBootloaderUseCase
import com.rootguard.app.domain.usecase.RebootToRecoveryUseCase
import com.rootguard.app.domain.usecase.RebootUseCase
import com.rootguard.app.domain.usecase.ShutdownUseCase
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

data class SettingsUiState(
    val isDarkMode: Boolean = false,
    val useDynamicColors: Boolean = true,
    val autoDenyUnknown: Boolean = false,
    val showNotifications: Boolean = true,
    val showFloatingDialog: Boolean = true,
    val checkModuleUpdates: Boolean = true,
    val traditionalSuSupport: Boolean = true,
    val kernelUnmountModules: Boolean = false,
    val defaultUnmountModules: Boolean = false,
    val webViewDebugging: Boolean = false,
    val appVersion: String = com.rootguard.app.BuildConfig.VERSION_NAME,
    val magiskVersion: String = "Unknown",
    val kernelVersion: String = "Unknown",
    val isCheckingUpdates: Boolean = false,
    val updateAvailable: Boolean = false,
    val updateMessage: String? = null
)

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val settingsDataStore: SettingsDataStore,
    private val repository: MagiskRepository,
    private val updateManager: UpdateManager,
    private val rebootUseCase: RebootUseCase,
    private val rebootToRecoveryUseCase: RebootToRecoveryUseCase,
    private val rebootToBootloaderUseCase: RebootToBootloaderUseCase,
    private val shutdownUseCase: ShutdownUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(SettingsUiState())
    val uiState: StateFlow<SettingsUiState> = _uiState.asStateFlow()

    init {
        loadSettings()
    }

    private fun loadSettings() {
        viewModelScope.launch {
            // 加载 Magisk 版本和内核版本
            val magiskVersion = repository.getMagiskVersion()
            val kernelVersion = repository.getKernelVersion()
            
            // 收集 DataStore 设置
            launch {
                settingsDataStore.darkMode.collect { darkMode ->
                    _uiState.update { it.copy(isDarkMode = darkMode) }
                }
            }
            
            launch {
                settingsDataStore.dynamicColors.collect { dynamicColors ->
                    _uiState.update { it.copy(useDynamicColors = dynamicColors) }
                }
            }
            
            launch {
                settingsDataStore.autoDenyUnknown.collect { autoDeny ->
                    _uiState.update { it.copy(autoDenyUnknown = autoDeny) }
                }
            }
            
            launch {
                settingsDataStore.showNotifications.collect { notifications ->
                    _uiState.update { it.copy(showNotifications = notifications) }
                }
            }
            
            launch {
                settingsDataStore.showFloatingDialog.collect { floatingDialog ->
                    _uiState.update { it.copy(showFloatingDialog = floatingDialog) }
                }
            }
            
            launch {
                settingsDataStore.checkModuleUpdates.collect { checkUpdates ->
                    _uiState.update { it.copy(checkModuleUpdates = checkUpdates) }
                }
            }
            
            launch {
                settingsDataStore.traditionalSuSupport.collect { suSupport ->
                    _uiState.update { it.copy(traditionalSuSupport = suSupport) }
                }
            }
            
            launch {
                settingsDataStore.kernelUnmountModules.collect { unmount ->
                    _uiState.update { it.copy(kernelUnmountModules = unmount) }
                }
            }
            
            launch {
                settingsDataStore.defaultUnmountModules.collect { defaultUnmount ->
                    _uiState.update { it.copy(defaultUnmountModules = defaultUnmount) }
                }
            }
            
            launch {
                settingsDataStore.webViewDebugging.collect { debugging ->
                    _uiState.update { it.copy(webViewDebugging = debugging) }
                }
            }
            
            _uiState.update { 
                it.copy(
                    magiskVersion = magiskVersion,
                    kernelVersion = kernelVersion
                ) 
            }
        }
    }

    fun setDarkMode(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setDarkMode(enabled)
        }
    }

    fun setDynamicColors(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setDynamicColors(enabled)
        }
    }

    fun setAutoDenyUnknown(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setAutoDenyUnknown(enabled)
        }
    }

    fun setShowNotifications(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setShowNotifications(enabled)
        }
    }

    fun setShowFloatingDialog(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setShowFloatingDialog(enabled)
        }
    }
    
    fun setCheckModuleUpdates(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setCheckModuleUpdates(enabled)
        }
    }
    
    fun setTraditionalSuSupport(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setTraditionalSuSupport(enabled)
        }
    }
    
    fun setKernelUnmountModules(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setKernelUnmountModules(enabled)
        }
    }
    
    fun setDefaultUnmountModules(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setDefaultUnmountModules(enabled)
        }
    }
    
    fun setWebViewDebugging(enabled: Boolean) {
        viewModelScope.launch {
            settingsDataStore.setWebViewDebugging(enabled)
        }
    }

    fun checkForUpdates() {
        viewModelScope.launch {
            _uiState.update { it.copy(isCheckingUpdates = true, updateMessage = null) }

            try {
                val currentVersion = _uiState.value.appVersion
                val releaseInfo = updateManager.checkForUpdates(currentVersion)

                if (releaseInfo != null) {
                    _uiState.update {
                        it.copy(
                            isCheckingUpdates = false,
                            updateAvailable = true,
                            updateMessage = "发现新版本 ${releaseInfo.getVersionName()}\n\n${releaseInfo.body}"
                        )
                    }
                } else {
                    _uiState.update {
                        it.copy(
                            isCheckingUpdates = false,
                            updateAvailable = false,
                            updateMessage = "当前已是最新版本"
                        )
                    }
                }
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        isCheckingUpdates = false,
                        updateAvailable = false,
                        updateMessage = "检查更新失败: ${e.message}"
                    )
                }
            }
        }
    }
    
    // 重启功能
    fun reboot() {
        viewModelScope.launch {
            rebootUseCase()
        }
    }
    
    fun rebootToRecovery() {
        viewModelScope.launch {
            rebootToRecoveryUseCase()
        }
    }
    
    fun rebootToBootloader() {
        viewModelScope.launch {
            rebootToBootloaderUseCase()
        }
    }
    
    fun shutdown() {
        viewModelScope.launch {
            shutdownUseCase()
        }
    }
}