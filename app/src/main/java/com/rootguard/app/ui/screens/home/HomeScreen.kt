package com.rootguard.app.ui.screens.home

import com.rootguard.app.BuildConfig
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.ui.dialog.ConfirmShutdownDialog
import com.rootguard.app.ui.dialog.RestartDialog
import com.rootguard.app.ui.dialog.UpdateDialog
import com.rootguard.app.ui.theme.*

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeScreen(
    onNavigateToModules: () -> Unit,
    onNavigateToApps: () -> Unit,
    onNavigateToLogs: () -> Unit,
    onNavigateToSettings: () -> Unit,
    onNavigateToIsolation: () -> Unit,
    onNavigateToInstall: () -> Unit,
    viewModel: HomeViewModel = hiltViewModel()
) {
    val context = LocalContext.current
    val uiState by viewModel.uiState.collectAsState()

    // 版本信息
    val currentVersion = BuildConfig.VERSION_NAME

    // 重启对话框状态
    var showRestartDialog by remember { mutableStateOf(false) }
    var showShutdownConfirm by remember { mutableStateOf(false) }

    // 更新对话框状态
    val updateState by viewModel.updateState.collectAsState()

    // 启动时检查更新
    LaunchedEffect(Unit) {
        viewModel.checkForUpdates(currentVersion)
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // 熊猫图标
                        PandaLogo(size = 40.dp)
                        Text(
                            "PandaSU",
                            style = MaterialTheme.typography.headlineMedium,
                            color = MaterialTheme.colorScheme.onPrimaryContainer
                        )
                    }
                },
                actions = {
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
                .padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            item {
                Spacer(modifier = Modifier.height(8.dp))
                RootStatusCard(uiState.rootStatus)
            }
            
            item {
                FeatureSection(
                    onModulesClick = onNavigateToModules,
                    onAppsClick = onNavigateToApps,
                    onLogsClick = onNavigateToLogs,
                    onRebootClick = { showRestartDialog = true },
                    onIsolationClick = onNavigateToIsolation,
                    onInstallClick = onNavigateToInstall
                )
            }
            
            item {
                SystemInfoSection(info = uiState.systemInfo)
            }
            
            item {
                Spacer(modifier = Modifier.height(16.dp))
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

    // 更新对话框
    when (val state = updateState) {
        is UpdateState.UpdateAvailable -> {
            UpdateDialog(
                releaseInfo = state.releaseInfo,
                currentVersion = currentVersion,
                onDismiss = { viewModel.ignoreUpdate() },
                onUpdateClick = { viewModel.downloadAndInstall(state.releaseInfo, context) }
            )
        }
        is UpdateState.Downloading -> {
            // 显示下载进度对话框
            AlertDialog(
                onDismissRequest = { },
                title = { Text("下载中") },
                text = {
                    Column {
                        LinearProgressIndicator(
                            progress = state.progress / 100f,
                            modifier = Modifier.fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text("${state.progress}%")
                    }
                },
                confirmButton = { }
            )
        }
        is UpdateState.DownloadComplete -> {
            // 下载完成，可以自动安装或提示用户
            AlertDialog(
                onDismissRequest = { viewModel.ignoreUpdate() },
                title = { Text("下载完成") },
                text = { Text("APK 文件已下载完成，请到下载目录安装") },
                confirmButton = {
                    Button(onClick = { viewModel.ignoreUpdate() }) {
                        Text("确定")
                    }
                }
            )
        }
        is UpdateState.Error -> {
            AlertDialog(
                onDismissRequest = { viewModel.ignoreUpdate() },
                title = { Text("错误") },
                text = { Text(state.message) },
                confirmButton = {
                    Button(onClick = { viewModel.ignoreUpdate() }) {
                        Text("确定")
                    }
                }
            )
        }
        else -> {}
    }
}


/**
 * 熊猫Logo组件
 */
@Composable
fun PandaLogo(size: Dp = 48.dp) {
    Box(
        modifier = Modifier.size(size),
        contentAlignment = Alignment.Center
    ) {
        // 熊猫头部轮廓
        Canvas(modifier = Modifier.fillMaxSize()) {
            val canvasWidth = size.toPx()
            val canvasHeight = size.toPx()
            val centerX = canvasWidth / 2
            val centerY = canvasHeight / 2
            val headRadius = canvasWidth * 0.35f
            
            // 左耳
            drawCircle(
                color = Color(0xFF1A1A2E),
                radius = headRadius * 0.35f,
                center = Offset(centerX - headRadius * 0.7f, centerY - headRadius * 0.7f)
            )
            // 右耳
            drawCircle(
                color = Color(0xFF1A1A2E),
                radius = headRadius * 0.35f,
                center = Offset(centerX + headRadius * 0.7f, centerY - headRadius * 0.7f)
            )
            // 耳朵内侧粉色
            drawCircle(
                color = Color(0xFFFFB6C1),
                radius = headRadius * 0.2f,
                center = Offset(centerX - headRadius * 0.7f, centerY - headRadius * 0.7f)
            )
            drawCircle(
                color = Color(0xFFFFB6C1),
                radius = headRadius * 0.2f,
                center = Offset(centerX + headRadius * 0.7f, centerY - headRadius * 0.7f)
            )
            // 头部白色
            drawCircle(
                color = Color.White,
                radius = headRadius,
                center = Offset(centerX, centerY)
            )
            // 左眼黑眼圈
            drawOval(
                color = Color(0xFF1A1A2E),
                topLeft = Offset(centerX - headRadius * 0.5f, centerY - headRadius * 0.1f),
                size = androidx.compose.ui.geometry.Size(headRadius * 0.45f, headRadius * 0.55f)
            )
            // 右眼黑眼圈
            drawOval(
                color = Color(0xFF1A1A2E),
                topLeft = Offset(centerX + headRadius * 0.05f, centerY - headRadius * 0.1f),
                size = androidx.compose.ui.geometry.Size(headRadius * 0.45f, headRadius * 0.55f)
            )
            // 鼻子
            drawCircle(
                color = Color(0xFF1A1A2E),
                radius = headRadius * 0.12f,
                center = Offset(centerX, centerY + headRadius * 0.25f)
            )
        }
    }
}

@Composable
fun RootStatusCard(status: RootStatus) {
    val (icon, color, message, bgColor) = when (status) {
        RootStatus.ROOTED -> Quad(
            Icons.Default.Verified,
            Color(0xFF4CAF50),
            "Root 权限已获取",
            Color(0xFFE8F5E9)
        )
        RootStatus.NOT_ROOTED -> Quad(
            Icons.Default.Warning,
            Color(0xFFFF9800),
            "未获取 Root 权限",
            Color(0xFFFFF3E0)
        )
        RootStatus.UNKNOWN -> Quad(
            Icons.Default.Help,
            Color(0xFF9E9E9E),
            "Root 状态未知",
            Color(0xFFF5F5F5)
        )
    }
    
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = bgColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // 状态图标带圆形背景
            Box(
                modifier = Modifier
                    .size(56.dp)
                    .clip(CircleShape)
                    .background(color.copy(alpha = 0.15f)),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    tint = color,
                    modifier = Modifier.size(32.dp)
                )
            }
            Column {
                Text(
                    text = message,
                    style = MaterialTheme.typography.titleMedium,
                    color = color,
                    fontWeight = FontWeight.SemiBold
                )
                Text(
                    text = when (status) {
                        RootStatus.ROOTED -> "🎋 可以愉快地使用 PandaSU 了"
                        RootStatus.NOT_ROOTED -> "🐼 请先安装 Magisk 或 KernelSU"
                        RootStatus.UNKNOWN -> "❓ 无法检测设备状态"
                    },
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
    }
}

// 辅助数据类
private data class Quad<A, B, C, D>(val first: A, val second: B, val third: C, val fourth: D)

/**
 * 功能区域 - 带标题和熊猫装饰
 */
@Composable
fun FeatureSection(
    onModulesClick: () -> Unit,
    onAppsClick: () -> Unit,
    onLogsClick: () -> Unit,
    onRebootClick: () -> Unit,
    onIsolationClick: () -> Unit,
    onInstallClick: () -> Unit
) {
    Column {
        // 标题带熊猫装饰
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = "🎋",
                    style = MaterialTheme.typography.titleLarge
                )
                Text(
                    text = "功能菜单",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold
                )
            }
            Text(
                text = "🐼",
                style = MaterialTheme.typography.titleMedium
            )
        }
        
        // 功能卡片网格 - 3列布局
        Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                FeatureCard(
                    icon = Icons.Outlined.Extension,
                    title = "模块",
                    subtitle = "管理",
                    emoji = "🧩",
                    color = Color(0xFFE3F2FD),
                    onClick = onModulesClick,
                    modifier = Modifier.weight(1f)
                )
                FeatureCard(
                    icon = Icons.Outlined.Apps,
                    title = "应用",
                    subtitle = "授权",
                    emoji = "📱",
                    color = Color(0xFFF3E5F5),
                    onClick = onAppsClick,
                    modifier = Modifier.weight(1f)
                )
                FeatureCard(
                    icon = Icons.Outlined.Assignment,
                    title = "日志",
                    subtitle = "记录",
                    emoji = "📋",
                    color = Color(0xFFFFF3E0),
                    onClick = onLogsClick,
                    modifier = Modifier.weight(1f)
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                FeatureCard(
                    icon = Icons.Outlined.RestartAlt,
                    title = "重启",
                    subtitle = "设备",
                    emoji = "🔄",
                    color = Color(0xFFE8F5E9),
                    onClick = onRebootClick,
                    modifier = Modifier.weight(1f)
                )
                FeatureCard(
                    icon = Icons.Outlined.Security,
                    title = "一键",
                    subtitle = "隔离",
                    emoji = "🛡️",
                    color = Color(0xFFE1F5FE),
                    onClick = onIsolationClick,
                    modifier = Modifier.weight(1f)
                )
                FeatureCard(
                    icon = Icons.Outlined.SystemUpdate,
                    title = "安装",
                    subtitle = "Root",
                    emoji = "⬇️",
                    color = Color(0xFFFFEBEE),
                    onClick = onInstallClick,
                    modifier = Modifier.weight(1f)
                )
            }
        }
    }
}

@OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)
@Composable
fun FeatureCard(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    subtitle: String,
    emoji: String,
    color: Color,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        onClick = onClick,
        modifier = modifier,
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = color),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 16.dp, horizontal = 8.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            // Emoji 图标
            Text(
                text = emoji,
                style = MaterialTheme.typography.headlineMedium
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold,
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

/**
 * 系统信息区域 - 带熊猫主题装饰
 */
@Composable
fun SystemInfoSection(info: SystemInfo) {
    Column {
        // 标题
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = "🖥️",
                style = MaterialTheme.typography.titleLarge
            )
            Text(
                text = "系统信息",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
        }
        
        SystemInfoCard(info)
    }
}

@Composable
fun SystemInfoCard(info: SystemInfo) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            // 主要信息 - 使用更紧凑的网格布局
            InfoRowWithIcon(
                icon = "🤖",
                label = "Android",
                value = info.androidVersion
            )
            InfoRowWithIcon(
                icon = "📊",
                label = "API",
                value = info.apiLevel
            )
            InfoRowWithIcon(
                icon = "📱",
                label = "型号",
                value = info.deviceModel
            )
            InfoRowWithIcon(
                icon = "🔒",
                label = "安全补丁",
                value = info.securityPatch
            )
            InfoRowWithIcon(
                icon = "🛡️",
                label = "SELinux",
                value = info.selinuxStatus
            )
            InfoRowWithIcon(
                icon = "⚙️",
                label = "内核",
                value = info.kernelVersion.take(30) + if (info.kernelVersion.length > 30) "..." else ""
            )
            
            // 分隔线
            Divider(
                modifier = Modifier.padding(vertical = 8.dp),
                color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.5f)
            )
            
            // 系统指纹信息（可折叠显示）
            var showFingerprint by remember { mutableStateOf(false) }
            Column {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { showFingerprint = !showFingerprint }
                        .padding(vertical = 4.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text("🔍")
                        Text(
                            text = "系统指纹",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.8f)
                        )
                    }
                    Icon(
                        imageVector = if (showFingerprint) Icons.Default.ExpandLess else Icons.Default.ExpandMore,
                        contentDescription = if (showFingerprint) "收起" else "展开",
                        tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f),
                        modifier = Modifier.size(20.dp)
                    )
                }
                AnimatedVisibility(visible = showFingerprint) {
                    Text(
                        text = info.systemFingerprint,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f),
                        modifier = Modifier.padding(top = 8.dp, start = 24.dp)
                    )
                }
            }
        }
    }
}

@Composable
fun InfoRowWithIcon(icon: String, label: String, value: String) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 6.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(icon)
            Text(
                text = label,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
            )
        }
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurface,
            fontWeight = FontWeight.Medium
        )
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