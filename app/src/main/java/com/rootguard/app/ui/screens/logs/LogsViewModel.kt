package com.rootguard.app.ui.screens.logs

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.magisk.LogLevel as MagiskLogLevel
import com.rootguard.app.domain.usecase.ClearLogsUseCase
import com.rootguard.app.domain.usecase.GetLogsUseCase
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import javax.inject.Inject

data class LogsUiState(
    val logs: List<LogEntry> = emptyList(),
    val isLoading: Boolean = false
)

@HiltViewModel
class LogsViewModel @Inject constructor(
    private val getLogs: GetLogsUseCase,
    private val clearLogs: ClearLogsUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(LogsUiState())
    val uiState: StateFlow<LogsUiState> = _uiState.asStateFlow()

    init {
        loadLogs()
    }

    private fun loadLogs() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }

            try {
                val logs = getLogs()
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
            val success = clearLogs()
            if (success) {
                _uiState.update { it.copy(logs = emptyList()) }
            }
        }
    }

    fun exportLogs(context: Context): String? {
        return try {
            val logs = uiState.value.logs
            if (logs.isEmpty()) {
                Logger.w("No logs to export")
                return null
            }

            // 创建导出文件
            val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(Date())
            val fileName = "PandaSU_Logs_$timestamp.txt"
            val downloadsDir = context.getExternalFilesDir(null)
            val exportFile = File(downloadsDir, fileName)

            // 构建日志内容
            val content = buildString {
                appendLine("PandaSU 日志导出")
                appendLine("导出时间: ${SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Date())}")
                appendLine("日志数量: ${logs.size}")
                appendLine("=".repeat(80))
                appendLine()

                logs.forEach { log ->
                    val levelPrefix = when (log.level) {
                        LogLevel.INFO -> "[INFO] "
                        LogLevel.WARNING -> "[WARN] "
                        LogLevel.ERROR -> "[ERROR] "
                        LogLevel.DEBUG -> "[DEBUG] "
                    }
                    appendLine("$levelPrefix ${log.timestamp} - ${log.message}")
                }

                appendLine()
                appendLine("=".repeat(80))
                appendLine("日志导出完成")
            }

            // 写入文件
            exportFile.writeText(content, Charsets.UTF_8)

            Logger.i("Logs exported to: ${exportFile.absolutePath}")
            exportFile.absolutePath
        } catch (e: Exception) {
            Logger.e("Failed to export logs", e)
            null
        }
    }
}