package com.rootguard.app.ui.screens.home

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.data.remote.UpdateManager
import com.rootguard.app.domain.usecase.CheckRootStatusUseCase
import com.rootguard.app.domain.usecase.GetSystemInfoUseCase
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
import java.io.File
import javax.inject.Inject

/**
 * 更新状态
 */
sealed class UpdateState {
    data object Checking : UpdateState()
    data object NoUpdate : UpdateState()
    data class UpdateAvailable(val releaseInfo: com.rootguard.app.data.model.ReleaseInfo) : UpdateState()
    data class Downloading(val progress: Int) : UpdateState()
    data class DownloadComplete(val apkFile: File) : UpdateState()
    data class Error(val message: String) : UpdateState()
}

@HiltViewModel
class HomeViewModel @Inject constructor(
    private val checkRootStatus: CheckRootStatusUseCase,
    private val getSystemInfo: GetSystemInfoUseCase,
    private val repository: MagiskRepository,
    private val rebootUseCase: RebootUseCase,
    private val rebootToRecoveryUseCase: RebootToRecoveryUseCase,
    private val rebootToBootloaderUseCase: RebootToBootloaderUseCase,
    private val shutdownUseCase: ShutdownUseCase,
    private val updateManager: UpdateManager
) : ViewModel() {

    private val _uiState = MutableStateFlow(HomeUiState())
    val uiState: StateFlow<HomeUiState> = _uiState.asStateFlow()

    private val _updateState = MutableStateFlow<UpdateState>(UpdateState.NoUpdate)
    val updateState: StateFlow<UpdateState> = _updateState.asStateFlow()

    init {
        loadData()
    }

    private fun loadData() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            try {
                val rootStatus = checkRootStatus()
                val systemInfo = getSystemInfo()
                
                _uiState.update {
                    it.copy(
                        rootStatus = rootStatus,
                        systemInfo = systemInfo,
                        isLoading = false
                    )
                }
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        rootStatus = RootStatus.UNKNOWN,
                        isLoading = false
                    )
                }
            }
        }
    }

    fun refresh() {
        loadData()
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

    /**
     * 检查更新
     */
    fun checkForUpdates(currentVersion: String) {
        viewModelScope.launch {
            _updateState.value = UpdateState.Checking
            try {
                val latestRelease = updateManager.checkForUpdates(currentVersion)
                if (latestRelease != null) {
                    _updateState.value = UpdateState.UpdateAvailable(latestRelease)
                } else {
                    _updateState.value = UpdateState.NoUpdate
                }
            } catch (e: Exception) {
                _updateState.value = UpdateState.Error(e.message ?: "检查更新失败")
            }
        }
    }

    /**
     * 下载并安装更新
     */
    fun downloadAndInstall(releaseInfo: com.rootguard.app.data.model.ReleaseInfo, context: android.content.Context) {
        viewModelScope.launch {
            try {
                val apkUrl = releaseInfo.getApkDownloadUrl()
                if (apkUrl == null) {
                    _updateState.value = UpdateState.Error("未找到下载链接")
                    return@launch
                }

                // 创建临时文件
                val downloadDir = File(context.getExternalFilesDir(null), "downloads")
                downloadDir.mkdirs()
                val apkFile = File(downloadDir, "${releaseInfo.name}.apk")

                _updateState.value = UpdateState.Downloading(0)

                updateManager.downloadApk(
                    url = apkUrl,
                    outputFile = apkFile,
                    onProgress = { progress ->
                        _updateState.value = UpdateState.Downloading(progress)
                    }
                ).onSuccess {
                    _updateState.value = UpdateState.DownloadComplete(apkFile)
                }.onFailure { error ->
                    _updateState.value = UpdateState.Error(error.message ?: "下载失败")
                }
            } catch (e: Exception) {
                _updateState.value = UpdateState.Error(e.message ?: "下载失败")
            }
        }
    }

    /**
     * 忽略更新
     */
    fun ignoreUpdate() {
        _updateState.value = UpdateState.NoUpdate
    }
}