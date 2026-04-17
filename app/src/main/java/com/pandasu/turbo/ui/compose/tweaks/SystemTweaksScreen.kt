package com.pandasu.turbo.ui.compose.tweaks

import android.widget.Toast
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
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
import com.pandasu.turbo.util.SystemTweaksHelper
import kotlinx.coroutines.launch

/**
 * 系统优化页面
 * 提供 MIUI/HyperOS 一键优化功能
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SystemTweaksScreen(
    viewModel: SystemTweaksViewModel = viewModel(),
    onNavigateBack: () -> Unit = {},
    onNavigate: (String) -> Unit = {}
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val scrollState = rememberScrollState()
    
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    
    var showOneKeyDialog by remember { mutableStateOf(false) }
    var showResetDialog by remember { mutableStateOf(false) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("系统优化") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    IconButton(onClick = { showResetDialog = true }) {
                        Icon(Icons.Default.Refresh, contentDescription = "恢复默认")
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .verticalScroll(scrollState)
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // 一键优化卡片
            OneKeyOptimizeCard(
                onOptimize = { showOneKeyDialog = true },
                isOptimizing = uiState.isOptimizing,
                lastResult = uiState.lastOptimizeResult
            )
            
            // 第一档：快速优化
            QuickTweaksCard(
                animationScales = uiState.animationScales,
                onAnimationChange = { scale ->
                    scope.launch {
                        viewModel.setAnimationScale(scale)
                    }
                }
            )
            
            // 第二档：深度优化
            DeepTweaksCard(
                autoStartCount = uiState.autoStartDisabledCount,
                onDisableAutoStart = {
                    scope.launch {
                        viewModel.disableAllAutoStart()
                    }
                },
                adsDisabled = uiState.adsDisabled,
                onToggleAds = { disable ->
                    scope.launch {
                        if (disable) viewModel.disableAds()
                        else viewModel.enableAds()
                    }
                },
                lockScreenAdsDisabled = uiState.lockScreenAdsDisabled,
                onToggleLockScreenAds = { disable ->
                    scope.launch {
                        if (disable) viewModel.disableLockScreenAds()
                        else viewModel.enableLockScreenAds()
                    }
                }
            )
            
            // 第三档：iOS 式后台管理
            iOSBackgroundCard(
                onClick = { onNavigate("background_manager") }
            )
            
            // 提示信息
            Card(
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Text(
                        "使用说明",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        "• 部分功能需要 Root 权限\n" +
                        "• 刷新率锁定可能因机型而异\n" +
                        "• 温控/性能模式请使用「温控调度」页面\n" +
                        "• 广告关闭后可能需要重启生效",
                        style = MaterialTheme.typography.bodySmall
                    )
                }
            }
        }
    }
    
    // 一键优化确认对话框
    if (showOneKeyDialog) {
        AlertDialog(
            onDismissRequest = { showOneKeyDialog = false },
            title = { Text("一键优化") },
            text = {
                Text(
                    "将执行以下操作：\n\n" +
                    "✓ 关闭所有动画\n" +
                    "✓ 锁定 120Hz 刷新率\n" +
                    "✓ 关闭非系统应用自启动\n" +
                    "✓ 关闭系统广告\n\n" +
                    "确定继续吗？"
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showOneKeyDialog = false
                        scope.launch {
                            viewModel.oneKeyOptimize()
                            Toast.makeText(context, "优化完成", Toast.LENGTH_SHORT).show()
                        }
                    }
                ) {
                    Text("确定")
                }
            },
            dismissButton = {
                TextButton(onClick = { showOneKeyDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
    
    // 恢复默认确认对话框
    if (showResetDialog) {
        AlertDialog(
            onDismissRequest = { showResetDialog = false },
            title = { Text("恢复默认") },
            text = { Text("将所有设置恢复为系统默认值？") },
            confirmButton = {
                TextButton(
                    onClick = {
                        showResetDialog = false
                        scope.launch {
                            viewModel.resetToDefaults()
                            Toast.makeText(context, "已恢复默认", Toast.LENGTH_SHORT).show()
                        }
                    }
                ) {
                    Text("确定")
                }
            },
            dismissButton = {
                TextButton(onClick = { showResetDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
}

@Composable
private fun OneKeyOptimizeCard(
    onOptimize: () -> Unit,
    isOptimizing: Boolean,
    lastResult: SystemTweaksHelper.OptimizeResult?
) {
    Card(
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                imageVector = Icons.Default.Speed,
                contentDescription = null,
                modifier = Modifier.size(48.dp),
                tint = MaterialTheme.colorScheme.onPrimaryContainer
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                "一键优化",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.onPrimaryContainer
            )
            
            Text(
                "5分钟立即见效",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.7f)
            )
            
            Spacer(modifier = Modifier.height(16.dp))
            
            Button(
                onClick = onOptimize,
                enabled = !isOptimizing,
                modifier = Modifier.fillMaxWidth()
            ) {
                if (isOptimizing) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(20.dp),
                        strokeWidth = 2.dp
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                }
                Text(if (isOptimizing) "优化中..." else "立即优化")
            }
            
            lastResult?.let { result ->
                Spacer(modifier = Modifier.height(12.dp))
                Column(
                    verticalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    OptimizeResultItem("动画已关闭", result.animationDisabled)
                    OptimizeResultItem("刷新率已锁定", result.refreshRateLocked)
                    OptimizeResultItem("性能模式已启用", result.batteryModeSet)
                    if (result.autoStartDisabled > 0) {
                        OptimizeResultItem("自启动应用: ${result.autoStartDisabled} 个已禁用", true)
                    }
                    OptimizeResultItem("广告已关闭", result.adsDisabled)
                }
            }
        }
    }
}

@Composable
private fun OptimizeResultItem(label: String, success: Boolean) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Icon(
            imageVector = if (success) Icons.Default.CheckCircle else Icons.Default.Error,
            contentDescription = null,
            tint = if (success) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error,
            modifier = Modifier.size(16.dp)
        )
        Text(
            label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onPrimaryContainer
        )
    }
}

@Composable
private fun QuickTweaksCard(
    animationScales: SystemTweaksHelper.AnimationScales,
    onAnimationChange: (Float) -> Unit
) {
    val context = LocalContext.current
    
    Card {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text(
                "第一档：快速优化 (5分钟)",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )
            
            // 动画设置
            Column {
                Text(
                    "动画速度",
                    style = MaterialTheme.typography.bodyMedium,
                    fontWeight = FontWeight.Medium
                )
                Text(
                    "当前: 窗口=${animationScales.window}x, 过渡=${animationScales.transition}x",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    FilterChip(
                        selected = animationScales.window == 0f,
                        onClick = { onAnimationChange(0f) },
                        label = { Text("关闭") }
                    )
                    FilterChip(
                        selected = animationScales.window == 0.5f,
                        onClick = { onAnimationChange(0.5f) },
                        label = { Text("0.5x") }
                    )
                    FilterChip(
                        selected = animationScales.window == 1f,
                        onClick = { onAnimationChange(1f) },
                        label = { Text("默认") }
                    )
                }
            }
            
            HorizontalDivider()
            
            // 刷新率设置 - 跳转到 DisplaySettingsActivity（无需权限）
            Column {
                Text(
                    "屏幕刷新率",
                    style = MaterialTheme.typography.bodyMedium,
                    fontWeight = FontWeight.Medium
                )
                Text(
                    "点击跳转到显示设置（无需 Root 权限）",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(modifier = Modifier.height(8.dp))
                OutlinedButton(
                    onClick = { 
                        try {
                            context.startActivity(android.content.Intent(context, com.pandasu.turbo.ui.toolkit.DisplaySettingsActivity::class.java))
                        } catch (e: Exception) {
                            // ignore
                        }
                    },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Icon(Icons.Default.DisplaySettings, contentDescription = null)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("打开显示设置")
                }
            }
            
            // 电池场景已移至 ThermalControlActivity（MIUI 温控模式）
        }
    }
}

@Composable
private fun DeepTweaksCard(
    autoStartCount: Pair<Int, Int>?,
    onDisableAutoStart: () -> Unit,
    adsDisabled: Boolean,
    onToggleAds: (Boolean) -> Unit,
    lockScreenAdsDisabled: Boolean,
    onToggleLockScreenAds: (Boolean) -> Unit
) {
    Card {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text(
                "第二档：深度优化 (10分钟)",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )
            
            // 自启动管理
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        "关闭应用自启动",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    autoStartCount?.let { (success, failed) ->
                        Text(
                            "已禁用 $success 个应用${if (failed > 0) " ($failed 个失败)" else ""}",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    } ?: Text(
                        "一键关闭所有非系统应用的自启动权限",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Button(onClick = onDisableAutoStart) {
                    Text("执行")
                }
            }
            
            HorizontalDivider()
            
            // 系统广告
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        "关闭系统广告",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        "MSA、Analytics、推荐通知等",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Switch(
                    checked = adsDisabled,
                    onCheckedChange = onToggleAds
                )
            }
            
            HorizontalDivider()
            
            // 锁屏广告
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        "关闭锁屏广告",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        "杂志锁屏、快捷入口广告",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Switch(
                    checked = lockScreenAdsDisabled,
                    onCheckedChange = onToggleLockScreenAds
                )
            }
        }
    }
}

@Composable
private fun iOSBackgroundCard(onClick: () -> Unit) {
    Card(
        onClick = onClick,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.secondaryContainer
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Icon(
                    Icons.Default.Memory,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSecondaryContainer,
                    modifier = Modifier.size(28.dp)
                )
                Column {
                    Text(
                        "iOS 式后台管理",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                    Text(
                        "禁止后台运行 / 墓碑机制 / 内存清理",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSecondaryContainer.copy(alpha = 0.7f)
                    )
                }
            }
            Icon(
                Icons.Default.ChevronRight,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSecondaryContainer.copy(alpha = 0.5f)
            )
        }
    }
}
