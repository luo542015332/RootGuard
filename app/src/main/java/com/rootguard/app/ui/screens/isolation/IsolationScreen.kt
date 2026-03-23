package com.rootguard.app.ui.screens.isolation

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.clickable
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.data.model.IsolationLevel
import com.rootguard.app.data.model.IsolationPresets

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun IsolationScreen(
    packageName: String? = null,
    appName: String? = null,
    onNavigateBack: () -> Unit,
    viewModel: IsolationViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    
    // 如果是针对特定应用的隔离设置
    LaunchedEffect(packageName, appName) {
        if (packageName != null && appName != null) {
            viewModel.loadAppConfig(packageName, appName)
        }
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Text(
                        if (packageName != null) "🛡️ $appName" else "Root 隔离设置"
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    if (packageName != null) {
                        IconButton(onClick = { viewModel.saveConfig() }) {
                            Icon(Icons.Default.Save, contentDescription = "保存")
                        }
                    }
                }
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
            // 全局开关
            item {
                GlobalIsolationCard(
                    enabled = uiState.globalEnabled,
                    onToggle = { viewModel.toggleGlobalIsolation(it) }
                )
            }
            
            if (packageName != null) {
                // 应用特定设置
                item {
                    AppIsolationCard(
                        config = uiState.currentConfig,
                        onConfigChange = { viewModel.updateConfig(it) }
                    )
                }
                
                // 预设选择
                item {
                    PresetSelectionCard(
                        onSelectPreset = { preset ->
                            viewModel.applyPreset(packageName, appName ?: "", preset)
                        }
                    )
                }
                
                // 高级设置
                item {
                    AdvancedIsolationSettings(
                        config = uiState.currentConfig,
                        onConfigChange = { viewModel.updateConfig(it) }
                    )
                }
            } else {
                // 一键隔离功能
                item {
                    OneClickIsolationSection(
                        progress = uiState.oneClickProgress,
                        onStartIsolation = { viewModel.startOneClickIsolation(com.rootguard.app.data.model.OneClickIsolationPreset.BALANCED) }
                    )
                }

                // 成功/错误消息
                uiState.successMessage?.let { msg ->
                    item {
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            colors = CardDefaults.cardColors(
                                containerColor = MaterialTheme.colorScheme.tertiaryContainer
                            )
                        ) {
                            Row(
                                modifier = Modifier.padding(16.dp),
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(12.dp)
                            ) {
                                Icon(
                                    imageVector = Icons.Default.CheckCircle,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.primary
                                )
                                Text(
                                    text = msg,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }
                        }
                    }
                }

                uiState.errorMessage?.let { msg ->
                    item {
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            colors = CardDefaults.cardColors(
                                containerColor = MaterialTheme.colorScheme.errorContainer
                            )
                        ) {
                            Row(
                                modifier = Modifier.padding(16.dp),
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(12.dp)
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Error,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.error
                                )
                                Text(
                                    text = msg,
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        }
                    }
                }

                // 已配置隔离的应用列表
                item {
                    Text(
                        text = "已隔离应用",
                        style = MaterialTheme.typography.titleMedium,
                        modifier = Modifier.padding(vertical = 8.dp)
                    )
                }
                
                items(uiState.isolatedApps) { config ->
                    IsolatedAppItem(
                        config = config,
                        onClick = { /* 打开详细设置 */ },
                        onRemove = { viewModel.removeIsolation(config.packageName) }
                    )
                }
                
                if (uiState.isolatedApps.isEmpty()) {
                    item {
                        EmptyIsolationState()
                    }
                }
            }
        }
    }
}

@Composable
fun GlobalIsolationCard(
    enabled: Boolean,
    onToggle: (Boolean) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = if (enabled) {
                MaterialTheme.colorScheme.primaryContainer
            } else {
                MaterialTheme.colorScheme.surfaceVariant
            }
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Icon(
                    imageVector = if (enabled) Icons.Default.Security else Icons.Default.Security,
                    contentDescription = null,
                    tint = if (enabled) {
                        MaterialTheme.colorScheme.primary
                    } else {
                        MaterialTheme.colorScheme.onSurfaceVariant
                    }
                )
                Column {
                    Text(
                        text = "Root 隔离",
                        style = MaterialTheme.typography.titleMedium
                    )
                    Text(
                        text = if (enabled) "已启用 - 保护应用免受检测" else "已禁用",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                    )
                }
            }
            Switch(
                checked = enabled,
                onCheckedChange = onToggle
            )
        }
    }
}

@Composable
fun AppIsolationCard(
    config: IsolationConfig?,
    onConfigChange: (IsolationConfig) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = "隔离设置",
                style = MaterialTheme.typography.titleMedium
            )
            
            if (config != null) {
                // 启用隔离
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text("启用隔离")
                    Switch(
                        checked = config.isEnabled,
                        onCheckedChange = {
                            onConfigChange(config.copy(isEnabled = it))
                        }
                    )
                }
                
                if (config.isEnabled) {
                    Divider()
                    
                    // 隐藏选项
                    IsolationToggleItem(
                        title = "隐藏 Magisk",
                        subtitle = "隐藏 Magisk 文件和进程",
                        checked = config.hideMagisk,
                        onCheckedChange = {
                            onConfigChange(config.copy(hideMagisk = it))
                        }
                    )
                    
                    IsolationToggleItem(
                        title = "隐藏 su 命令",
                        subtitle = "隐藏 su 二进制文件",
                        checked = config.hideSuBinary,
                        onCheckedChange = {
                            onConfigChange(config.copy(hideSuBinary = it))
                        }
                    )
                    
                    IsolationToggleItem(
                        title = "隐藏 Busybox",
                        subtitle = "隐藏 Busybox 工具",
                        checked = config.hideBusybox,
                        onCheckedChange = {
                            onConfigChange(config.copy(hideBusybox = it))
                        }
                    )
                    
                    IsolationToggleItem(
                        title = "隐藏 Xposed",
                        subtitle = "隐藏 Xposed 框架痕迹",
                        checked = config.hideXposed,
                        onCheckedChange = {
                            onConfigChange(config.copy(hideXposed = it))
                        }
                    )
                    
                    IsolationToggleItem(
                        title = "隐藏 Magisk 应用",
                        subtitle = "从应用列表隐藏",
                        checked = config.hideMagiskApp,
                        onCheckedChange = {
                            onConfigChange(config.copy(hideMagiskApp = it))
                        }
                    )
                    
                    Divider()
                    
                    // 高级选项
                    IsolationToggleItem(
                        title = "禁用 Root 访问",
                        subtitle = "完全禁止此应用获取 Root",
                        checked = config.disableRootAccess,
                        onCheckedChange = {
                            onConfigChange(config.copy(disableRootAccess = it))
                        }
                    )
                }
            }
        }
    }
}

@Composable
fun IsolationToggleItem(
    title: String,
    subtitle: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(title, style = MaterialTheme.typography.bodyMedium)
            Text(
                subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
            )
        }
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange
        )
    }
}

@Composable
fun PresetSelectionCard(
    onSelectPreset: (IsolationLevel) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = "快速预设",
                style = MaterialTheme.typography.titleMedium
            )
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                PresetButton(
                    emoji = "🏦",
                    label = "银行",
                    description = "最高隔离",
                    onClick = { onSelectPreset(IsolationLevel.STRICT) },
                    modifier = Modifier.weight(1f)
                )
                PresetButton(
                    emoji = "🎮",
                    label = "游戏",
                    description = "标准隔离",
                    onClick = { onSelectPreset(IsolationLevel.STANDARD) },
                    modifier = Modifier.weight(1f)
                )
                PresetButton(
                    emoji = "💬",
                    label = "社交",
                    description = "基础隔离",
                    onClick = { onSelectPreset(IsolationLevel.BASIC) },
                    modifier = Modifier.weight(1f)
                )
            }
        }
    }
}

@Composable
fun PresetButton(
    emoji: String,
    label: String,
    description: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.clickable(onClick = onClick),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.secondaryContainer
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(emoji, style = MaterialTheme.typography.headlineMedium)
            Spacer(modifier = Modifier.height(4.dp))
            Text(label, style = MaterialTheme.typography.bodyMedium)
            Text(
                description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
            )
        }
    }
}

@Composable
fun AdvancedIsolationSettings(
    config: IsolationConfig?,
    onConfigChange: (IsolationConfig) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = "高级设置",
                style = MaterialTheme.typography.titleMedium
            )
            
            if (config != null) {
                IsolationToggleItem(
                    title = "存储隔离",
                    subtitle = "隔离应用存储空间",
                    checked = config.isolateStorage,
                    onCheckedChange = {
                        onConfigChange(config.copy(isolateStorage = it))
                    }
                )
                
                // 自定义属性设置（简化版）
                Text(
                    text = "自定义系统属性",
                    style = MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(top = 8.dp)
                )
                Text(
                    text = "修改 ro.build.tags 等属性以绕过检测",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                )
            }
        }
    }
}

@Composable
fun IsolatedAppItem(
    config: IsolationConfig,
    onClick: () -> Unit,
    onRemove: () -> Unit
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp)
            .clickable(onClick = onClick)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Security,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
                Column {
                    Text(
                        text = config.appName,
                        style = MaterialTheme.typography.bodyLarge
                    )
                    Text(
                        text = config.packageName,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                    )
                }
            }
            
            IconButton(onClick = onRemove) {
                Icon(
                    imageVector = Icons.Default.Delete,
                    contentDescription = "移除隔离",
                    tint = MaterialTheme.colorScheme.error
                )
            }
        }
    }
}

@Composable
fun EmptyIsolationState() {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Icon(
            imageVector = Icons.Default.Security,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.3f)
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "暂无隔离应用",
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
        )
        Text(
            text = "在应用管理中为特定应用配置隔离",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.4f),
            textAlign = TextAlign.Center
        )
    }
}

/**
 * 一键隔离功能区域
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OneClickIsolationSection(
    progress: OneClickProgress,
    onStartIsolation: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.AutoAwesome,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
                Column {
                    Text(
                        text = "一键隔离",
                        style = MaterialTheme.typography.titleMedium
                    )
                    Text(
                        text = "自动为已安装应用配置隔离策略",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                    )
                }
            }

            if (progress.isRunning) {
                // 显示进度
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    LinearProgressIndicator(
                        progress = if (progress.total > 0) progress.current.toFloat() / progress.total else 0f,
                        modifier = Modifier.fillMaxWidth()
                    )
                    Text(
                        text = "正在隔离: ${progress.currentAppName} (${progress.current}/${progress.total})",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                    )
                }
            } else {
                // 开始按钮
                Button(
                    onClick = onStartIsolation,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Icon(
                        imageVector = Icons.Default.PlayArrow,
                        contentDescription = null
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("开始一键隔离")
                }
            }
        }
    }
}
