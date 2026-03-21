package com.rootguard.app.ui.screens.settings

import android.app.Activity
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons

import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.ui.dialog.ConfirmShutdownDialog
import com.rootguard.app.ui.dialog.RestartDialog
import com.rootguard.app.utils.OverlayPermissionHelper

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onNavigateBack: () -> Unit,
    onNavigateToTheme: () -> Unit = {},
    viewModel: SettingsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val context = LocalContext.current
    val activity = context as? Activity
    
    // 检查悬浮窗权限
    var hasOverlayPermission by remember { 
        mutableStateOf(OverlayPermissionHelper.canDrawOverlays(context)) 
    }
    
    // 重启对话框状态
    var showRestartDialog by remember { mutableStateOf(false) }
    var showShutdownConfirm by remember { mutableStateOf(false) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("设置") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            item {
                SettingsSection(title = "外观") {
                    SettingsClickableItem(
                        icon = Icons.Default.Palette,
                        title = "主题设置",
                        onClick = onNavigateToTheme
                    )
                    
                    SettingsSwitchItem(
                        icon = Icons.Default.DarkMode,
                        title = "深色模式",
                        subtitle = "使用深色主题",
                        checked = uiState.isDarkMode,
                        onCheckedChange = { viewModel.setDarkMode(it) }
                    )
                    
                    SettingsSwitchItem(
                        icon = Icons.Default.ColorLens,
                        title = "动态颜色",
                        subtitle = "跟随系统主题色",
                        checked = uiState.useDynamicColors,
                        onCheckedChange = { viewModel.setDynamicColors(it) }
                    )
                }
            }
            
            item {
                SettingsSection(title = "安全") {
                    SettingsSwitchItem(
                        icon = Icons.Default.Security,
                        title = "自动响应",
                        subtitle = "自动拒绝未知应用的 Root 请求",
                        checked = uiState.autoDenyUnknown,
                        onCheckedChange = { viewModel.setAutoDenyUnknown(it) }
                    )
                    
                    SettingsSwitchItem(
                        icon = Icons.Default.Notifications,
                        title = "通知",
                        subtitle = "显示 Root 请求通知",
                        checked = uiState.showNotifications,
                        onCheckedChange = { viewModel.setShowNotifications(it) }
                    )
                    
                    SettingsSwitchItem(
                        icon = Icons.Default.Fullscreen,
                        title = "弹窗提示",
                        subtitle = if (hasOverlayPermission) "使用悬浮窗显示 Root 请求" else "需要悬浮窗权限",
                        checked = uiState.showFloatingDialog && hasOverlayPermission,
                        onCheckedChange = { enabled ->
                            if (enabled && !hasOverlayPermission) {
                                activity?.let {
                                    OverlayPermissionHelper.requestOverlayPermission(it)
                                }
                            } else {
                                viewModel.setShowFloatingDialog(enabled)
                            }
                        }
                    )
                }
            }
            
            item {
                SettingsSection(title = "系统") {
                    SettingsClickableItem(
                        icon = Icons.Default.RestartAlt,
                        title = "重启选项",
                        onClick = { showRestartDialog = true }
                    )
                }
            }
            
            item {
                SettingsSection(title = "关于") {
                    SettingsInfoItem(
                        icon = Icons.Default.Info,
                        title = "版本",
                        value = uiState.appVersion
                    )
                    
                    SettingsInfoItem(
                        icon = Icons.Default.Code,
                        title = "Magisk 版本",
                        value = uiState.magiskVersion
                    )
                    
                    SettingsClickableItem(
                        icon = Icons.Default.Update,
                        title = "检查更新",
                        onClick = { viewModel.checkForUpdates() }
                    )
                    
                    SettingsClickableItem(
                        icon = Icons.Default.BugReport,
                        title = "反馈问题",
                        onClick = { /* TODO */ }
                    )
                }
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
fun SettingsSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    Column {
        Text(
            text = title,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.primary,
            modifier = Modifier.padding(start = 16.dp, top = 24.dp, bottom = 8.dp)
        )
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp)
        ) {
            Column {
                content()
            }
        }
    }
}

@Composable
fun SettingsSwitchItem(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    subtitle: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    ListItem(
        headlineContent = { Text(title) },
        supportingContent = { Text(subtitle) },
        leadingContent = {
            Icon(icon, contentDescription = null)
        },
        trailingContent = {
            Switch(checked = checked, onCheckedChange = onCheckedChange)
        }
    )
}

@Composable
fun SettingsInfoItem(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    value: String
) {
    ListItem(
        headlineContent = { Text(title) },
        trailingContent = { Text(value) },
        leadingContent = {
            Icon(icon, contentDescription = null)
        }
    )
}

@Composable
fun SettingsClickableItem(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    onClick: () -> Unit
) {
    ListItem(
        headlineContent = { Text(title) },
        leadingContent = {
            Icon(icon, contentDescription = null)
        },
        modifier = Modifier.clickable { onClick() }
    )
}