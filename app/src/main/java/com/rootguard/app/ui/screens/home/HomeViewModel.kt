package com.rootguard.app.ui.screens.home

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.repository.MagiskRepository
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
import javax.inject.Inject

@HiltViewModel
class HomeViewModel @Inject constructor(
    private val checkRootStatus: CheckRootStatusUseCase,
    private val getSystemInfo: GetSystemInfoUseCase,
    private val repository: MagiskRepository,
    private val rebootUseCase: RebootUseCase,
    private val rebootToRecoveryUseCase: RebootToRecoveryUseCase,
    private val rebootToBootloaderUseCase: RebootToBootloaderUseCase,
    private val shutdownUseCase: ShutdownUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(HomeUiState())
    val uiState: StateFlow<HomeUiState> = _uiState.asStateFlow()

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
}