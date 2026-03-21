package com.rootguard.app.ui.screens.install

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update

 data class InstallUiState(
    val installMethod: InstallMethod = InstallMethod.DIRECT,
    val selectedFile: String? = null,
    val isInstalling: Boolean = false,
    val installProgress: Float = 0f,
    val installLog: List<String> = emptyList(),
    val errorMessage: String? = null,
    val canProceed: Boolean = true
)

class InstallViewModel : ViewModel() {
    private val _uiState = MutableStateFlow(InstallUiState())
    val uiState: StateFlow<InstallUiState> = _uiState.asStateFlow()

    fun setInstallMethod(method: InstallMethod) {
        _uiState.update { it.copy(installMethod = method) }
    }

    fun selectFile(filePath: String) {
        _uiState.update { it.copy(selectedFile = filePath) }
    }

    fun proceedInstallation() {
        // TODO: 实现安装逻辑
        _uiState.update { it.copy(isInstalling = true) }
    }

    fun dismissError() {
        _uiState.update { it.copy(errorMessage = null) }
    }
}
