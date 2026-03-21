package com.rootguard.app.ui.screens.home

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.ui.dialog.ConfirmShutdownDialog
import com.rootguard.app.ui.dialog.RestartDialog
import com.rootguard.app.ui.theme.*

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeScreen(
    onNavigateToModules: () -> Unit,
    onNavigateToApps: () -> Unit,
    onNavigateToLogs: () -> Unit,
    onNavigateToSettings: () -> Unit,
    viewModel: HomeViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    
    // 重启对话框状态
    var showRestartDialog by remember { mutableStateOf(false) }
    var showShutdownConfirm by remember { mutableStateOf(false) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Text(
                        "RootGuard",
                        style = MaterialTheme.typography.headlineMedium
                    )
                },
                actions = {
                    IconButton(onClick = { showRestartDialog = true }) {
                        Icon(Icons.Default.RestartAlt, contentDescription = "重启")
                    }
                    IconButton(onClick = onNavigateToSettings) {
                        Icon(Icons.Default.Settings, contentDescription = "设置")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer
                )
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            item {
                RootStatusCard(uiState.rootStatus)
            }
            
            item {
                Text(
                    text = "功能",
                    style = MaterialTheme.typography.titleLarge,
                    modifier = Modifier.padding(top = 8.dp, bottom = 8.dp)
                )
            }
            
            item {
                FeatureGrid(
                    onModulesClick = onNavigateToModules,
                    onAppsClick = onNavigateToApps,
                    onLogsClick = onNavigateToLogs
                )
            }
            
            item {
                Text(
                    text = "系统信息",
                    style = MaterialTheme.typography.titleLarge,
                    modifier = Modifier.padding(top = 16.dp, bottom = 8.dp)
                )
            }
            
            item {
                SystemInfoCard(uiState.systemInfo)
            }
        }
    }
    
    // 重启对话框
    if (showRestartDialog) {
        RestartDialog(
            onDismiss = { showRestartDialog = false },
            onReboot = { viewModel.reboot() },
            onRebootRecovery = { viewModel.rebootToRecovery() },
            onRebootBootloader = { viewModel.rebootToBootloader() },
            onShutdown = { showShutdownConfirm = true }
        )
    }
    
    // 关机确认对话框
    if (showShutdownConfirm) {
        ConfirmShutdownDialog(
            onConfirm = { viewModel.shutdown() },
            onDismiss = { showShutdownConfirm = false }
        )
    }
}

@Composable
fun RootStatusCard(status: RootStatus) {
    val (icon, color, message) = when (status) {
        RootStatus.ROOTED -> Triple(
            Icons.Default.Verified,
            StatusRooted,
            "设备已获取 Root 权限"
        )
        RootStatus.NOT_ROOTED -> Triple(
            Icons.Default.Warning,
            StatusNotRooted,
            "设备未获取 Root 权限"
        )
        RootStatus.UNKNOWN -> Triple(
            Icons.Default.Help,
            StatusUnknown,
            "无法检测 Root 状态"
        )
    }
    
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = color.copy(alpha = 0.1f)
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(24.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = color,
                modifier = Modifier.size(48.dp)
            )
            Column {
                Text(
                    text = message,
                    style = MaterialTheme.typography.titleMedium,
                    color = color
                )
                Text(
                    text = when (status) {
                        RootStatus.ROOTED -> "Magisk/KernelSU 已安装"
                        RootStatus.NOT_ROOTED -> "需要安装 Root 方案"
                        RootStatus.UNKNOWN -> "请检查权限"
                    },
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
    }
}

@Composable
fun FeatureGrid(
    onModulesClick: () -> Unit,
    onAppsClick: () -> Unit,
    onLogsClick: () -> Unit
) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            FeatureCard(
                icon = Icons.Outlined.Extension,
                title = "模块管理",
                subtitle = "Magisk 模块",
                onClick = onModulesClick,
                modifier = Modifier.weight(1f)
            )
            FeatureCard(
                icon = Icons.Outlined.Apps,
                title = "应用管理",
                subtitle = "Root 授权",
                onClick = onAppsClick,
                modifier = Modifier.weight(1f)
            )
        }
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            FeatureCard(
                icon = Icons.Outlined.Assignment,
                title = "日志",
                subtitle = "操作记录",
                onClick = onLogsClick,
                modifier = Modifier.weight(1f)
            )
            FeatureCard(
                icon = Icons.Outlined.Security,
                title = "安全",
                subtitle = "权限检查",
                onClick = { /* TODO */ },
                modifier = Modifier.weight(1f)
            )
        }
    }
}

@Composable
fun FeatureCard(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    subtitle: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        onClick = onClick,
        modifier = modifier,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(32.dp),
                tint = MaterialTheme.colorScheme.primary
            )
            Spacer(modifier = Modifier.height(12.dp))
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                textAlign = TextAlign.Center
            )
            Text(
                text = subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f),
                textAlign = TextAlign.Center
            )
        }
    }
}

@Composable
fun SystemInfoCard(info: SystemInfo) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            InfoRow("Android 版本", info.androidVersion)
            InfoRow("API 级别", info.apiLevel)
            InfoRow("设备型号", info.deviceModel)
            InfoRow("安全补丁", info.securityPatch)
            InfoRow("SELinux", info.selinuxStatus)
        }
    }
}

@Composable
fun InfoRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurface
        )
    }
}