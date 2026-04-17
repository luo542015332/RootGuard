package com.pandasu.turbo.ui.compose.background

import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import com.pandasu.turbo.util.BackgroundManager
import kotlinx.coroutines.launch

/**
 * iOS 风格后台管理页面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BackgroundManagerScreen(
    viewModel: BackgroundManagerViewModel = viewModel(),
    onNavigateBack: () -> Unit = {}
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    
    var showStrictModeDialog by remember { mutableStateOf(false) }
    var showKillAllDialog by remember { mutableStateOf(false) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("后台管理") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    IconButton(onClick = { viewModel.refresh() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "刷新")
                    }
                }
            )
        }
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // 内存状态卡片
            item {
                MemoryStatusCard(
                    memoryStatus = uiState.memoryStatus,
                    onKillAll = { showKillAllDialog = true }
                )
            }
            
            // iOS 严格模式开关
            item {
                StrictModeCard(
                    isEnabled = uiState.strictModeEnabled,
                    onToggle = { enable ->
                        if (enable) {
                            showStrictModeDialog = true
                        } else {
                            scope.launch {
                                viewModel.disableStrictMode()
                            }
                        }
                    },
                    result = uiState.strictModeResult
                )
            }
            
            // 应用列表
            item {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        "应用后台权限",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        "${uiState.apps.size} 个应用",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            
            items(
                items = uiState.apps,
                key = { it.packageName }
            ) { app ->
                AppBackgroundItem(
                    app = app,
                    onToggleBackground = { allow ->
                        scope.launch {
                            viewModel.setAppBackgroundAllowed(app.packageName, allow)
                        }
                    },
                    onToggleTombstone = { enable ->
                        scope.launch {
                            viewModel.setTombstoneMode(app.packageName, enable)
                        }
                    }
                )
            }
            
            // 底部留白
            item {
                Spacer(modifier = Modifier.height(80.dp))
            }
        }
    }
    
    // 严格模式确认对话框
    if (showStrictModeDialog) {
        AlertDialog(
            onDismissRequest = { showStrictModeDialog = false },
            title = { Text("开启 iOS 式严格模式？") },
            text = {
                Text(
                    "这将：\n\n" +
                    "• 禁止所有非系统应用后台运行\n" +
                    "• 切后台 10 秒后自动杀死应用\n" +
                    "• 移除所有应用电池优化白名单\n" +
                    "• 可能错过消息推送（微信等）\n\n" +
                    "确定继续吗？"
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showStrictModeDialog = false
                        scope.launch {
                            viewModel.enableStrictMode()
                            Toast.makeText(context, "严格模式已开启", Toast.LENGTH_SHORT).show()
                        }
                    }
                ) {
                    Text("开启", color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { showStrictModeDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
    
    // 杀死所有后台确认对话框
    if (showKillAllDialog) {
        AlertDialog(
            onDismissRequest = { showKillAllDialog = false },
            title = { Text("清理所有后台？") },
            text = { Text("将立即杀死所有后台应用，类似 iOS 上滑清后台") },
            confirmButton = {
                TextButton(
                    onClick = {
                        showKillAllDialog = false
                        scope.launch {
                            val result = viewModel.killAllBackgroundApps()
                            result.onSuccess { killResult ->
                                Toast.makeText(
                                    context, 
                                    "已杀死 ${killResult.killedApps} 个应用", 
                                    Toast.LENGTH_SHORT
                                ).show()
                            }
                        }
                    }
                ) {
                    Text("清理")
                }
            },
            dismissButton = {
                TextButton(onClick = { showKillAllDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
    
    // 错误提示
    uiState.error?.let { error ->
        LaunchedEffect(error) {
            Toast.makeText(context, error, Toast.LENGTH_LONG).show()
            viewModel.clearError()
        }
    }
}

@Composable
private fun MemoryStatusCard(
    memoryStatus: BackgroundManager.MemoryStatus?,
    onKillAll: () -> Unit
) {
    Card(
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        "内存状态",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    memoryStatus?.let {
                        Text(
                            "已用 ${it.usedPercent}% (${formatBytes(it.usedRam)} / ${formatBytes(it.totalRam)})",
                            style = MaterialTheme.typography.bodySmall
                        )
                    }
                }
                
                Button(onClick = onKillAll) {
                    Icon(Icons.Default.ClearAll, contentDescription = null)
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("清后台")
                }
            }
            
            memoryStatus?.let { status ->
                Spacer(modifier = Modifier.height(12.dp))
                LinearProgressIndicator(
                    progress = { status.usedPercent / 100f },
                    modifier = Modifier.fillMaxWidth(),
                    color = when {
                        status.usedPercent > 85 -> MaterialTheme.colorScheme.error
                        status.usedPercent > 70 -> MaterialTheme.colorScheme.tertiary
                        else -> MaterialTheme.colorScheme.primary
                    }
                )
            }
        }
    }
}

@Composable
private fun StrictModeCard(
    isEnabled: Boolean,
    onToggle: (Boolean) -> Unit,
    result: BackgroundManager.StrictModeResult?
) {
    Card {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        "iOS 式严格模式",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        "切后台立即冻结，省电流畅",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                
                Switch(
                    checked = isEnabled,
                    onCheckedChange = onToggle
                )
            }
            
            result?.let {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    "已处理 ${it.processedApps} 个应用${if (it.failedApps > 0) " (${it.failedApps} 个失败)" else ""}",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
            
            if (isEnabled) {
                Spacer(modifier = Modifier.height(12.dp))
                Card(
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.errorContainer
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(12.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            Icons.Default.Warning,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.error
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "严格模式下消息推送可能延迟",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun AppBackgroundItem(
    app: BackgroundManager.AppBackgroundInfo,
    onToggleBackground: (Boolean) -> Unit,
    onToggleTombstone: (Boolean) -> Unit
) {
    var showMenu by remember { mutableStateOf(false) }
    
    Card(
        onClick = { showMenu = true },
        modifier = Modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // 应用图标占位
            Box(
                modifier = Modifier
                    .size(40.dp)
                    .background(
                        color = if (app.isSystemApp) 
                            MaterialTheme.colorScheme.tertiaryContainer 
                        else 
                            MaterialTheme.colorScheme.primaryContainer,
                        shape = MaterialTheme.shapes.small
                    ),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    app.appName.take(1),
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold
                )
            }
            
            Spacer(modifier = Modifier.width(12.dp))
            
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    app.appName,
                    style = MaterialTheme.typography.bodyLarge,
                    fontWeight = FontWeight.Medium
                )
                Text(
                    buildString {
                        if (app.isSystemApp) append("系统应用 • ")
                        if (app.canRunInBackground) append("允许后台") else append("后台已禁")
                        if (app.memoryUsage > 0) append(" • 占用 ${formatBytes(app.memoryUsage)}")
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            
            // 状态指示器
            if (!app.canRunInBackground) {
                Icon(
                    Icons.Default.Block,
                    contentDescription = "后台已禁用",
                    tint = MaterialTheme.colorScheme.error,
                    modifier = Modifier.size(20.dp)
                )
            } else if (app.isBatteryOptimized) {
                Icon(
                    Icons.Default.BatterySaver,
                    contentDescription = "电池优化中",
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(20.dp)
                )
            }
        }
    }
    
    // 应用菜单对话框
    if (showMenu) {
        AlertDialog(
            onDismissRequest = { showMenu = false },
            title = { Text(app.appName) },
            text = {
                Column {
                    Text("包名: ${app.packageName}", style = MaterialTheme.typography.bodySmall)
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // 后台运行开关
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column {
                            Text("允许后台运行")
                            Text(
                                "关闭后切后台会被杀死",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        Switch(
                            checked = app.canRunInBackground,
                            onCheckedChange = { 
                                onToggleBackground(it)
                                showMenu = false
                            }
                        )
                    }
                    
                    Spacer(modifier = Modifier.height(12.dp))
                    
                    // 墓碑模式开关
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column {
                            Text("iOS 墓碑模式")
                            Text(
                                "切后台 10 秒后强制杀死",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        Switch(
                            checked = !app.canRunInBackground,
                            onCheckedChange = { 
                                onToggleTombstone(it)
                                showMenu = false
                            }
                        )
                    }
                }
            },
            confirmButton = {},
            dismissButton = {
                TextButton(onClick = { showMenu = false }) {
                    Text("关闭")
                }
            }
        )
    }
}

private fun formatBytes(bytes: Long): String {
    return when {
        bytes >= 1024 * 1024 * 1024 -> "%.1f GB".format(bytes / (1024.0 * 1024.0 * 1024.0))
        bytes >= 1024 * 1024 -> "%.0f MB".format(bytes / (1024.0 * 1024.0))
        bytes >= 1024 -> "%.0f KB".format(bytes / 1024.0)
        else -> "$bytes B"
    }
}
