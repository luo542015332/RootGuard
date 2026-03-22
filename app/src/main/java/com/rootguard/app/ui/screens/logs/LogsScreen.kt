package com.rootguard.app.ui.screens.logs

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LogsScreen(
    onNavigateBack: () -> Unit,
    viewModel: LogsViewModel = hiltViewModel()
) {
    val context = LocalContext.current
    val uiState by viewModel.uiState.collectAsState()
    var showExportDialog by remember { mutableStateOf(false) }
    var exportedFilePath by remember { mutableStateOf<String?>(null) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("日志") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    IconButton(onClick = { showExportDialog = true }) {
                        Icon(Icons.Default.Share, contentDescription = "导出")
                    }
                    IconButton(onClick = { viewModel.onClearLogs() }) {
                        Icon(Icons.Default.Delete, contentDescription = "清空")
                    }
                    IconButton(onClick = { viewModel.refresh() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "刷新")
                    }
                }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(uiState.logs) { log ->
                LogItem(log = log)
            }
        }
    }

    // 导出对话框
    if (showExportDialog) {
        AlertDialog(
            onDismissRequest = { showExportDialog = false },
            title = { Text("导出日志") },
            text = {
                Text(
                    if (exportedFilePath == null) {
                        "是否导出当前日志到文件？"
                    } else {
                        "日志已导出到:\n$exportedFilePath\n\n请使用文件管理器查看或分享该文件。"
                    }
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        if (exportedFilePath == null) {
                            exportedFilePath = viewModel.exportLogs(context)
                            if (exportedFilePath == null) {
                                showExportDialog = false
                            }
                        } else {
                            showExportDialog = false
                        }
                    }
                ) {
                    Text(if (exportedFilePath == null) "导出" else "确定")
                }
            },
            dismissButton = {
                TextButton(onClick = { showExportDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
}

@Composable
fun LogItem(log: LogEntry) {
    val (icon, color) = when (log.level) {
        LogLevel.INFO -> Icons.Default.Info to MaterialTheme.colorScheme.primary
        LogLevel.WARNING -> Icons.Default.Warning to MaterialTheme.colorScheme.tertiary
        LogLevel.ERROR -> Icons.Default.Error to MaterialTheme.colorScheme.error
        LogLevel.DEBUG -> Icons.Default.BugReport to MaterialTheme.colorScheme.secondary
    }
    
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.Top,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = color,
                modifier = Modifier.size(20.dp)
            )
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = log.message,
                    style = MaterialTheme.typography.bodyMedium
                )
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text = log.timestamp,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f)
                )
            }
        }
    }
}

data class LogEntry(
    val id: String,
    val message: String,
    val level: LogLevel,
    val timestamp: String
)

enum class LogLevel {
    INFO,
    WARNING,
    ERROR,
    DEBUG
}