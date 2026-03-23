package com.rootguard.app.ui.screens.logs

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.magisk.LogLevel as MagiskLogLevel
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import javax.inject.Inject

data class LogsUiState(
    val logs: List<LogEntry> = emptyList(),
    val isLoading: Boolean = false
)

@HiltViewModel
class LogsViewModel @Inject constructor() : ViewModel() {

    private val _uiState = MutableStateFlow(LogsUiState())
    val uiState: StateFlow<LogsUiState> = _uiState.asStateFlow()

    init {
        loadLogs()
    }

    private fun loadLogs() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }

            try {
                val magiskLogs = Logger.getLocalLogs()
                val logs = magiskLogs.map { magiskLog ->
                    LogEntry(
                        id = magiskLog.id,
                        message = magiskLog.message,
                        level = when (magiskLog.level) {
                            MagiskLogLevel.INFO -> LogLevel.INFO
                            MagiskLogLevel.WARNING -> LogLevel.WARNING
                            MagiskLogLevel.ERROR -> LogLevel.ERROR
                            MagiskLogLevel.DEBUG -> LogLevel.DEBUG
                        },
                        timestamp = magiskLog.timestamp
                    )
                }
                
                _uiState.update {
                    it.copy(
                        logs = logs,
                        isLoading = false
                    )
                }
            } catch (e: Exception) {
                Logger.e("Failed to load logs", e)
                // 发生错误时显示一条错误日志
                val errorLog = LogEntry(
                    id = "error_${System.currentTimeMillis()}",
                    message = "无法加载日志: ${e.message}",
                    level = LogLevel.ERROR,
                    timestamp = SimpleDateFormat("MM-dd HH:mm:ss", java.util.Locale.getDefault()).format(Date())
                )
                _uiState.update {
                    it.copy(
                        logs = listOf(errorLog),
                        isLoading = false
                    )
                }
            }
        }
    }

    fun refresh() {
        loadLogs()
    }

    fun onClearLogs() {
        viewModelScope.launch {
            Logger.clearLocalLogs()
            _uiState.update { it.copy(logs = emptyList()) }
        }
    }
}