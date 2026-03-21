package com.rootguard.app.ui.screens.modules

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.utils.FileUtils
import kotlinx.coroutines.launch

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ModulesScreen(
    onNavigateBack: () -> Unit,
    viewModel: ModulesViewModel = hiltViewModel(),
    sharedModuleUri: Uri? = null
) {
    val uiState by viewModel.uiState.collectAsState()
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    
    // 文件选择器启动器
    val filePickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let {
            scope.launch {
                viewModel.installModuleFromUri(context, it)
            }
        }
    }
    
    // 安装进度对话框
    var showInstallDialog by remember { mutableStateOf(false) }
    var installProgress by remember { mutableStateOf(0f) }
    var installMessage by remember { mutableStateOf("") }
    
    // 结果对话框
    var showResultDialog by remember { mutableStateOf(false) }
    var resultTitle by remember { mutableStateOf("") }
    var resultMessage by remember { mutableStateOf("") }
    var isSuccess by remember { mutableStateOf(false) }
    
    // 监听安装状态
    LaunchedEffect(uiState.installStatus) {
        when (val status = uiState.installStatus) {
            is InstallStatus.Installing -> {
                showInstallDialog = true
                installProgress = status.progress
                installMessage = status.message
            }
            is InstallStatus.Success -> {
                showInstallDialog = false
                isSuccess = true
                resultTitle = "安装成功"
                resultMessage = status.message
                showResultDialog = true
                viewModel.clearInstallStatus()
            }
            is InstallStatus.Error -> {
                showInstallDialog = false
                isSuccess = false
                resultTitle = "安装失败"
                resultMessage = status.message
                showResultDialog = true
                viewModel.clearInstallStatus()
            }
            else -> {}
        }
    }
    
    // 处理从其他应用分享过来的模块文件
    LaunchedEffect(sharedModuleUri) {
        sharedModuleUri?.let { uri ->
            scope.launch {
                viewModel.installModuleFromUri(context, uri)
            }
        }
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("模块管理") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    IconButton(onClick = { viewModel.refresh() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "刷新")
                    }
                }
            )
        },
        floatingActionButton = {
            ExtendedFloatingActionButton(
                onClick = { 
                    // 启动文件选择器，只允许选择 .zip 文件
                    filePickerLauncher.launch("application/zip")
                },
                icon = { Icon(Icons.Default.Add, contentDescription = null) },
                text = { Text("安装模块") }
            )
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            when {
                uiState.isLoading -> {
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center)
                    )
                }
                uiState.modules.isEmpty() -> {
                    EmptyModulesView(
                        onInstallClick = { 
                            filePickerLauncher.launch("application/zip")
                        }
                    )
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(uiState.modules) { module ->
                            ModuleCard(
                                module = module,
                                onToggle = { viewModel.onToggleModule(module.id) },
                                onUninstall = { viewModel.onUninstallModule(module.id) },
                                onBackup = { viewModel.backupModule(module.id) },
                                onRestore = { viewModel.restoreModule(module.id) },
                                viewModel = viewModel
                            )
                        }
                    }
                }
            }
        }
    }
    
    // 安装进度对话框
    if (showInstallDialog) {
        AlertDialog(
            onDismissRequest = { /* 不可取消 */ },
            title = { Text("正在安装模块") },
            text = {
                Column {
                    Text(installMessage)
                    Spacer(modifier = Modifier.height(16.dp))
                    LinearProgressIndicator(
                        progress = installProgress,
                        modifier = Modifier.fillMaxWidth()
                    )
                    Text(
                        text = "${(installProgress * 100).toInt()}%",
                        style = MaterialTheme.typography.bodySmall,
                        modifier = Modifier.align(Alignment.End)
                    )
                }
            },
            confirmButton = { }
        )
    }
    
    // 结果对话框（带重启选项）
    if (showResultDialog) {
        AlertDialog(
            onDismissRequest = { showResultDialog = false },
            icon = {
                Icon(
                    imageVector = if (isSuccess) Icons.Default.CheckCircle else Icons.Default.Error,
                    contentDescription = null,
                    tint = if (isSuccess) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error
                )
            },
            title = { Text(resultTitle) },
            text = { Text(resultMessage) },
            confirmButton = {
                if (isSuccess) {
                    // 安装成功后显示重启按钮
                    Row {
                        TextButton(onClick = { showResultDialog = false }) {
                            Text("稍后重启")
                        }
                        Spacer(modifier = Modifier.width(8.dp))
                        Button(
                            onClick = {
                                showResultDialog = false
                                viewModel.reboot()
                            }
                        ) {
                            Icon(Icons.Default.Refresh, contentDescription = null)
                            Spacer(modifier = Modifier.width(4.dp))
                            Text("立即重启")
                        }
                    }
                } else {
                    TextButton(onClick = { showResultDialog = false }) {
                        Text("确定")
                    }
                }
            }
        )
    }

    // 备份和恢复状态提示
    val backupState by viewModel.backupState.collectAsState()

    // 备份成功提示
    if (backupState.lastBackup != null) {
        AlertDialog(
            onDismissRequest = { viewModel.clearBackupStatus() },
            icon = {
                Icon(
                    imageVector = Icons.Default.CheckCircle,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
            },
            title = { Text("备份成功") },
            text = {
                Column {
                    Text("模块备份成功！")
                    Text(
                        text = "${backupState.lastBackup!!.name}",
                        style = MaterialTheme.typography.bodyMedium,
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = "备份时间: ${backupState.lastBackup!!.getFormattedBackupTime()}",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                    )
                }
            },
            confirmButton = {
                Button(onClick = { viewModel.clearBackupStatus() }) {
                    Text("确定")
                }
            }
        )
    }

    // 备份失败提示
    if (backupState.backupError != null) {
        AlertDialog(
            onDismissRequest = { viewModel.clearBackupStatus() },
            icon = {
                Icon(
                    imageVector = Icons.Default.Error,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.error
                )
            },
            title = { Text("备份失败") },
            text = { Text(backupState.backupError ?: "未知错误") },
            confirmButton = {
                Button(onClick = { viewModel.clearBackupStatus() }) {
                    Text("确定")
                }
            }
        )
    }

    // 恢复成功提示
    if (backupState.restoreSuccess) {
        AlertDialog(
            onDismissRequest = { viewModel.clearBackupStatus() },
            icon = {
                Icon(
                    imageVector = Icons.Default.CheckCircle,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
            },
            title = { Text("恢复成功") },
            text = {
                Column {
                    Text("模块恢复成功！")
                    Spacer(modifier = Modifier.height(8.dp))
                    Text("建议重启设备以使更改生效")
                }
            },
            confirmButton = {
                Button(onClick = {
                    viewModel.clearBackupStatus()
                    viewModel.reboot()
                }) {
                    Icon(Icons.Default.Refresh, contentDescription = null)
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("立即重启")
                }
            }
        )
    }

    // 恢复失败提示
    if (backupState.restoreError != null) {
        AlertDialog(
            onDismissRequest = { viewModel.clearBackupStatus() },
            icon = {
                Icon(
                    imageVector = Icons.Default.Error,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.error
                )
            },
            title = { Text("恢复失败") },
            text = { Text(backupState.restoreError ?: "未知错误") },
            confirmButton = {
                Button(onClick = { viewModel.clearBackupStatus() }) {
                    Text("确定")
                }
            }
        )
    }
}

@Composable
fun EmptyModulesView(onInstallClick: () -> Unit) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = Icons.Default.Extension,
            contentDescription = null,
            modifier = Modifier.size(80.dp),
            tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "暂无模块",
            style = MaterialTheme.typography.titleLarge
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = "点击下方按钮安装 Magisk 模块",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f),
            textAlign = androidx.compose.ui.text.style.TextAlign.Center
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = onInstallClick,
            modifier = Modifier.fillMaxWidth(0.7f)
        ) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text("安装模块")
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ModuleCard(
    module: ModuleItem,
    onToggle: () -> Unit,
    onUninstall: () -> Unit,
    onBackup: () -> Unit,
    onRestore: () -> Unit,
    viewModel: ModulesViewModel
) {
    val backupState by viewModel.backupState.collectAsState()

    Card(
        modifier = Modifier.fillMaxWidth()
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
                Column(modifier = Modifier.weight(1f)) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text(
                            text = module.name,
                            style = MaterialTheme.typography.titleMedium
                        )
                        if (module.hasBackup) {
                            Icon(
                                imageVector = Icons.Default.Backup,
                                contentDescription = "已备份",
                                tint = MaterialTheme.colorScheme.primary,
                                modifier = Modifier.size(16.dp)
                            )
                        }
                    }
                    Text(
                        text = "v${module.version}",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                    )
                }
                Switch(
                    checked = module.isEnabled,
                    onCheckedChange = { onToggle() }
                )
            }

            if (module.description.isNotBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = module.description,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.8f)
                )
            }

            if (module.hasBackup) {
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text = "备份: ${module.getBackupTime()}",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.8f)
                )
            }

            Spacer(modifier = Modifier.height(8.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = module.author,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f)
                )
                Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                    // 备份/恢复按钮
                    if (module.hasBackup) {
                        // 显示恢复按钮
                        Button(
                            onClick = onRestore,
                            enabled = !backupState.isRestoring || backupState.restoreBackupId != module.id,
                            modifier = Modifier.height(32.dp),
                            contentPadding = PaddingValues(horizontal = 8.dp),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = MaterialTheme.colorScheme.tertiary
                            )
                        ) {
                            Icon(
                                imageVector = Icons.Default.Restore,
                                contentDescription = null,
                                modifier = Modifier.size(16.dp)
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text("恢复", style = MaterialTheme.typography.bodySmall)
                        }
                    } else {
                        // 显示备份按钮
                        OutlinedButton(
                            onClick = onBackup,
                            enabled = !backupState.isBackingUp || backupState.backupModuleId != module.id,
                            modifier = Modifier.height(32.dp),
                            contentPadding = PaddingValues(horizontal = 8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.Backup,
                                contentDescription = null,
                                modifier = Modifier.size(16.dp)
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text("备份", style = MaterialTheme.typography.bodySmall)
                        }
                    }

                    // 卸载按钮
                    TextButton(
                        onClick = onUninstall,
                        colors = ButtonDefaults.textButtonColors(
                            contentColor = MaterialTheme.colorScheme.error
                        ),
                        modifier = Modifier.height(32.dp),
                        contentPadding = PaddingValues(horizontal = 8.dp)
                    ) {
                        Icon(Icons.Default.Delete, contentDescription = null, modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(2.dp))
                        Text("卸载", style = MaterialTheme.typography.bodySmall)
                    }
                }
            }
        }
    }
}

data class ModuleItem(
    val id: String,
    val name: String,
    val version: String,
    val description: String,
    val author: String,
    val isEnabled: Boolean,
    val hasBackup: Boolean = false,
    val backupTime: Long? = null
) {
    fun getBackupTime(): String {
        return backupTime?.let {
            val formatter = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
            formatter.format(java.util.Date(it))
        } ?: "无备份"
    }
}

// 安装状态
sealed class InstallStatus {
    data object Idle : InstallStatus()
    data class Installing(val progress: Float, val message: String) : InstallStatus()
    data class Success(val message: String) : InstallStatus()
    data class Error(val message: String) : InstallStatus()
}