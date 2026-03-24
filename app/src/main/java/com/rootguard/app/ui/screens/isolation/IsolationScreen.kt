package com.rootguard.app.ui.screens.isolation

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.model.DetectionItem
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.data.model.IsolationLevel
import com.rootguard.app.data.model.OneClickIsolationPreset
import com.rootguard.app.utils.OneClickIsolationHelper

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun IsolationScreen(
    packageName: String? = null,
    appName: String? = null,
    onNavigateBack: () -> Unit,
    onNavigateToAppIsolation: ((String, String) -> Unit)? = null,
    onNavigateToLogs: (() -> Unit)? = null,
    onNavigateToEnvScoreDetail: (() -> Unit)? = null,
    hasRootPermission: Boolean = true,
    viewModel: IsolationViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    LaunchedEffect(hasRootPermission) { viewModel.setRootPermission(hasRootPermission) }
    LaunchedEffect(packageName, appName) { if (packageName != null && appName != null) viewModel.loadAppConfig(packageName, appName) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(if (packageName != null) "$appName" else "Root 隔离") },
                navigationIcon = { if (packageName != null) IconButton(onClick = onNavigateBack) { Icon(Icons.Default.ArrowBack, "返回") } },
                actions = {
                    if (packageName == null) {
                        // 主界面显示日志按钮
                        IconButton(onClick = { onNavigateToLogs?.invoke() }) {
                            Icon(Icons.Default.List, "日志")
                        }
                    } else {
                        // 应用特定界面显示保存按钮
                        IconButton(onClick = { viewModel.saveConfig() }) {
                            Icon(Icons.Default.Save, "保存")
                        }
                    }
                }
            )
        }
    ) { pv ->
        if (packageName != null) {
            LazyColumn(Modifier.fillMaxSize().padding(pv).padding(16.dp), verticalArrangement = Arrangement.spacedBy(16.dp)) {
                item { AppIsolationCard(uiState.currentConfig, { viewModel.updateConfig(it) }) }
                item { PresetSelectionCard { viewModel.applyPreset(packageName, appName ?: "", it) } }
                item { AdvancedIsolationSettings(uiState.currentConfig, { viewModel.updateConfig(it) }) }
                item { Spacer(Modifier.height(32.dp)) }
            }
        } else {
            val filteredApps = remember(uiState.userApps, uiState.systemApps, uiState.searchQuery, uiState.activeTab) { viewModel.getFilteredApps() }
            LazyColumn(Modifier.fillMaxSize().padding(pv)) {
                item { RootPermissionStatusCard(uiState.hasRootPermission) }
                uiState.successMessage?.let { item { MessageCard(it, false) } }
                uiState.errorMessage?.let { item { MessageCard(it, true) } }

                // 环境检测评分卡片
                item { EnvScoreCard(uiState.envScore, uiState.envChecks, uiState.isEnvChecking, viewModel::runEnvironmentCheck, onNavigateToEnvScoreDetail) }

                // 快捷操作
                item {
                    Card(
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
                        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
                    ) {
                        Column(modifier = Modifier.padding(12.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                            Text("快捷操作", style = MaterialTheme.typography.labelMedium, fontWeight = FontWeight.Bold)
                            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                OutlinedButton(
                                    onClick = { viewModel.forceDenyList() },
                                    modifier = Modifier.weight(1f)
                                ) {
                                    Text("强制DenyList${if (uiState.isDenyListEnabled) " ✓" else ""}", style = MaterialTheme.typography.labelSmall, maxLines = 1)
                                }
                                OutlinedButton(
                                    onClick = { viewModel.applyFullPropSpoof() },
                                    modifier = Modifier.weight(1f)
                                ) {
                                    Text("属性伪装${if (uiState.isPropSpoofEnabled) " ✓" else ""}", style = MaterialTheme.typography.labelSmall, maxLines = 1)
                                }
                            }
                        }
                    }
                }

                item { AppSearchBar(uiState.searchQuery, { viewModel.updateSearchQuery(it) }) }
                item { AppFilterTabRow(uiState.activeTab, { viewModel.setActiveTab(it) }, uiState.userApps.size, uiState.systemApps.size) }
                item {
                    OneClickIsolationSection(uiState.oneClickProgress, uiState.selectedOneClickPreset,
                        { viewModel.setOneClickPreset(it) }, { viewModel.startOneClickIsolation() },
                        { viewModel.getPresetLabel(it) }, { viewModel.getPresetEmoji(it) })
                }
                item {
                    Row(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.SpaceBetween) {
                        Text("${uiState.activeTab.label}  ${filteredApps.size} 个", style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.Bold, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f))
                        if (uiState.searchQuery.isNotEmpty()) TextButton(onClick = { viewModel.updateSearchQuery("") }) { Text("清除", style = MaterialTheme.typography.labelSmall) }
                    }
                }
                if (uiState.isAppListLoading) {
                    item { Box(Modifier.fillMaxWidth().padding(32.dp), contentAlignment = Alignment.Center) { CircularProgressIndicator() } }
                } else if (filteredApps.isEmpty()) {
                    item { Box(Modifier.fillMaxWidth().padding(48.dp), contentAlignment = Alignment.Center) { Text(if (uiState.searchQuery.isNotEmpty()) "未找到匹配" else "无应用", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.4f)) } }
                } else {
                    items(filteredApps, key = { it.packageName }) { app ->
                        val iso = uiState.isolatedApps.any { it.packageName == app.packageName }
                        AppListItem(app, iso, { viewModel.toggleAppIsolation(app) }, { onNavigateToAppIsolation?.invoke(app.packageName, app.appName) })
                    }
                }
                item { Spacer(Modifier.height(16.dp)) }
            }
        }
    }
}

// ========== 环境检测评分卡片 ==========
@Composable
fun EnvScoreCard(
    score: Int, checks: List<RootHider.DetectionResult>,
    isChecking: Boolean, onRefresh: () -> Unit,
    onNavigateToDetail: (() -> Unit)? = null
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp)
            .clickable(
                enabled = onNavigateToDetail != null && !isChecking && score >= 0,
                onClick = { onNavigateToDetail?.invoke() }
            ),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        ),
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            // 图标
            Icon(
                Icons.Default.Shield,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(28.dp)
            )

            // 名字
            Text(
                text = "环境安全评分",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.weight(1f)
            )

            // 分数
            if (isChecking) {
                CircularProgressIndicator(
                    modifier = Modifier.size(24.dp),
                    strokeWidth = 2.dp,
                    color = MaterialTheme.colorScheme.primary
                )
            } else if (score >= 0) {
                val scoreColor = when {
                    score >= 80 -> Color(0xFF4CAF50)
                    score >= 60 -> Color(0xFFFF9800)
                    else -> Color(0xFFF44336)
                }
                Box(
                    Modifier.size(44.dp)
                        .clip(CircleShape)
                        .background(scoreColor.copy(alpha = 0.15f)),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        "$score",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = scoreColor
                    )
                }
            }

            // 刷新按钮
            IconButton(onClick = onRefresh, enabled = !isChecking) {
                if (isChecking) CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                else Icon(Icons.Default.Refresh, "刷新", modifier = Modifier.size(20.dp))
            }
        }
    }
}

// ========== 搜索栏 ==========
@Composable
fun AppSearchBar(query: String, onQueryChange: (String) -> Unit) {
    OutlinedTextField(
        value = query, onValueChange = onQueryChange,
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
        placeholder = { Text("搜索应用名称或包名...", color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.4f)) },
        leadingIcon = { Icon(Icons.Default.Search, null, tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f)) },
        trailingIcon = { if (query.isNotEmpty()) IconButton(onClick = { onQueryChange("") }) { Icon(Icons.Default.Close, null, tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f), modifier = Modifier.size(20.dp)) } },
        singleLine = true, shape = RoundedCornerShape(12.dp),
        colors = OutlinedTextFieldDefaults.colors(unfocusedBorderColor = MaterialTheme.colorScheme.outline.copy(alpha = 0.3f), focusedBorderColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)),
        keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search)
    )
}

// ========== Tab ==========
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppFilterTabRow(activeTab: AppFilterTab, onTabSelected: (AppFilterTab) -> Unit, userCount: Int, systemCount: Int) {
    Row(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        AppFilterTab.values().forEach { tab ->
            val c = when (tab) { AppFilterTab.ALL -> userCount + systemCount; AppFilterTab.USER -> userCount; AppFilterTab.SYSTEM -> systemCount }
            FilterChip(selected = tab == activeTab, onClick = { onTabSelected(tab) }, label = { Text("${tab.label}  $c", style = MaterialTheme.typography.labelMedium) }, shape = RoundedCornerShape(20.dp), modifier = Modifier.weight(1f))
        }
    }
}

// ========== 一键隔离 ==========
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OneClickIsolationSection(progress: OneClickProgress, selectedPreset: OneClickIsolationPreset, onPresetSelected: (OneClickIsolationPreset) -> Unit, onStartIsolation: () -> Unit, getLabel: (OneClickIsolationPreset) -> String, getEmoji: (OneClickIsolationPreset) -> String) {
    Card(
        Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
            // 标题行
            Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                Icon(Icons.Default.AutoAwesome, null, tint = MaterialTheme.colorScheme.primary, modifier = Modifier.size(22.dp))
                Text("一键隔离", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                Spacer(Modifier.weight(1f))
                Text("自动为用户应用批量配置隔离", style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f))
            }

            Divider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.3f))

            // 预设选择
            Text("选择隔离强度", style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f))
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                OneClickIsolationPreset.values().forEach { p ->
                    PresetFilterChip(getEmoji(p), getLabel(p), p == selectedPreset, { onPresetSelected(p) }, Modifier.weight(1f))
                }
            }

            // 进度或按钮
            if (progress.isRunning) {
                Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                    LinearProgressIndicator(progress = if (progress.total > 0) progress.current.toFloat() / progress.total else 0f, modifier = Modifier.fillMaxWidth().clip(RoundedCornerShape(4.dp)), color = MaterialTheme.colorScheme.primary, trackColor = MaterialTheme.colorScheme.primaryContainer)
                    Text("正在隔离: ${progress.currentAppName} (${progress.current}/${progress.total})", style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f))
                }
            } else {
                Button(onClick = onStartIsolation, modifier = Modifier.fillMaxWidth().height(44.dp), shape = RoundedCornerShape(12.dp), colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary)) {
                    Icon(Icons.Default.PlayArrow, null, modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(6.dp))
                    Text("开始一键隔离", style = MaterialTheme.typography.labelLarge)
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PresetFilterChip(emoji: String, label: String, isSelected: Boolean, onClick: () -> Unit, modifier: Modifier = Modifier) {
    Surface(
        onClick = onClick, modifier = modifier.height(52.dp),
        shape = RoundedCornerShape(12.dp),
        color = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f),
        contentColor = if (isSelected) MaterialTheme.colorScheme.onPrimary else MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.8f),
        border = if (isSelected) null else androidx.compose.foundation.BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.3f))
    ) {
        Column(Modifier.fillMaxSize().padding(horizontal = 4.dp, vertical = 6.dp), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) {
            Text(emoji, style = MaterialTheme.typography.labelMedium)
            Text(label, style = MaterialTheme.typography.labelSmall, maxLines = 1, overflow = TextOverflow.Ellipsis)
        }
    }
}

// ========== Root 权限卡片 ==========
@Composable
fun RootPermissionStatusCard(hasRootPermission: Boolean) {
    Card(
        Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (hasRootPermission)
                Color(0xFF4CAF50).copy(alpha = 0.1f)
            else MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.5f)
        ),
        shape = RoundedCornerShape(12.dp)
    ) {
        Row(
            Modifier.fillMaxWidth().padding(14.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Icon(
                if (hasRootPermission) Icons.Default.CheckCircle else Icons.Default.Warning,
                null,
                tint = if (hasRootPermission) Color(0xFF4CAF50) else MaterialTheme.colorScheme.error,
                modifier = Modifier.size(24.dp)
            )
            Text(
                if (hasRootPermission) "Root 权限已获取" else "未获取 Root 权限",
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = FontWeight.Medium,
                color = MaterialTheme.colorScheme.onSurface
            )
        }
    }
}

// ========== 应用列表项 ==========
@Composable
fun AppListItem(appInfo: OneClickIsolationHelper.AppInfo, isIsolated: Boolean, onToggle: () -> Unit, onClick: () -> Unit) {
    Surface(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 2.dp).clickable(onClick = onClick), shape = RoundedCornerShape(8.dp),
        color = if (isIsolated) MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.3f) else MaterialTheme.colorScheme.surface) {
        Row(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 12.dp), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.SpaceBetween) {
            Row(Modifier.weight(1f), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                val icon = when (appInfo.category) { com.rootguard.app.data.model.AppCategory.FINANCE -> Icons.Default.AccountBalance; com.rootguard.app.data.model.AppCategory.GAME -> Icons.Default.SportsEsports; com.rootguard.app.data.model.AppCategory.SOCIAL -> Icons.Default.Chat; else -> Icons.Default.Android }
                val iconColor = when (appInfo.category) { com.rootguard.app.data.model.AppCategory.FINANCE -> MaterialTheme.colorScheme.tertiary; com.rootguard.app.data.model.AppCategory.GAME -> MaterialTheme.colorScheme.primary; com.rootguard.app.data.model.AppCategory.SOCIAL -> MaterialTheme.colorScheme.secondary; else -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f) }
                Box(Modifier.size(36.dp).clip(CircleShape), contentAlignment = Alignment.Center) { Icon(icon, null, tint = iconColor, modifier = Modifier.size(20.dp)) }
                Column(Modifier.weight(1f)) {
                    Text(appInfo.appName, style = MaterialTheme.typography.bodyLarge, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(appInfo.packageName, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f), maxLines = 1, overflow = TextOverflow.Ellipsis, modifier = Modifier.weight(1f))
                        if (appInfo.isSystemApp) Surface(shape = RoundedCornerShape(4.dp), color = MaterialTheme.colorScheme.tertiaryContainer) { Text("系统", style = MaterialTheme.typography.labelSmall, modifier = Modifier.padding(horizontal = 6.dp, vertical = 1.dp), color = MaterialTheme.colorScheme.tertiary) }
                    }
                }
            }
            Spacer(Modifier.width(8.dp))
            Switch(checked = isIsolated, onCheckedChange = { onToggle() }, modifier = Modifier.padding(start = 4.dp))
        }
    }
}

// ========== 通用组件 ==========
@Composable
fun MessageCard(message: String, isError: Boolean) {
    Card(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
        colors = CardDefaults.cardColors(containerColor = if (isError) MaterialTheme.colorScheme.errorContainer else MaterialTheme.colorScheme.tertiaryContainer)) {
        Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(12.dp)) {
            Icon(if (isError) Icons.Default.Error else Icons.Default.CheckCircle, null, tint = if (isError) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.primary)
            Text(message, style = MaterialTheme.typography.bodyMedium)
        }
    }
}

@Composable
fun AppIsolationCard(config: IsolationConfig?, onConfigChange: (IsolationConfig) -> Unit) {
    Card(modifier = Modifier.fillMaxWidth()) {
        Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Text("隔离设置", style = MaterialTheme.typography.titleMedium)
            if (config != null) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                    Text("启用隔离"); Switch(checked = config.isEnabled, onCheckedChange = { onConfigChange(config.copy(isEnabled = it)) })
                }
                if (config.isEnabled) {
                    Divider()
                    IsolationToggleItem("隐藏 Magisk", config.hideMagisk) { onConfigChange(config.copy(hideMagisk = it)) }
                    IsolationToggleItem("隐藏 su", config.hideSuBinary) { onConfigChange(config.copy(hideSuBinary = it)) }
                    IsolationToggleItem("隐藏 Busybox", config.hideBusybox) { onConfigChange(config.copy(hideBusybox = it)) }
                    IsolationToggleItem("隐藏 Xposed", config.hideXposed) { onConfigChange(config.copy(hideXposed = it)) }
                    IsolationToggleItem("隐藏 Magisk App", config.hideMagiskApp) { onConfigChange(config.copy(hideMagiskApp = it)) }
                    Divider()
                    IsolationToggleItem("禁用 Root 访问", config.disableRootAccess) { onConfigChange(config.copy(disableRootAccess = it)) }
                }
            }
        }
    }
}

@Composable
fun IsolationToggleItem(title: String, checked: Boolean, onCheckedChange: (Boolean) -> Unit) {
    Row(Modifier.fillMaxWidth().padding(vertical = 4.dp), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
        Text(title, style = MaterialTheme.typography.bodyMedium)
        Switch(checked = checked, onCheckedChange = onCheckedChange)
    }
}

@Composable
fun PresetSelectionCard(onSelectPreset: (IsolationLevel) -> Unit) {
    Card(modifier = Modifier.fillMaxWidth()) {
        Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Text("快速预设", style = MaterialTheme.typography.titleMedium)
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                PresetButton("🏦", "银行", "最高隔离", { onSelectPreset(IsolationLevel.STRICT) }, Modifier.weight(1f))
                PresetButton("🎮", "游戏", "标准隔离", { onSelectPreset(IsolationLevel.STANDARD) }, Modifier.weight(1f))
                PresetButton("💬", "社交", "基础隔离", { onSelectPreset(IsolationLevel.BASIC) }, Modifier.weight(1f))
            }
        }
    }
}

@Composable
fun PresetButton(emoji: String, label: String, desc: String, onClick: () -> Unit, modifier: Modifier = Modifier) {
    Card(modifier = modifier.clickable(onClick = onClick), colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.secondaryContainer)) {
        Column(Modifier.fillMaxWidth().padding(12.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            Text(emoji, style = MaterialTheme.typography.headlineMedium); Spacer(Modifier.height(4.dp))
            Text(label, style = MaterialTheme.typography.bodyMedium); Text(desc, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f))
        }
    }
}

@Composable
fun AdvancedIsolationSettings(config: IsolationConfig?, onConfigChange: (IsolationConfig) -> Unit) {
    Card(modifier = Modifier.fillMaxWidth()) {
        Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Text("高级设置", style = MaterialTheme.typography.titleMedium)
            if (config != null) {
                IsolationToggleItem("存储隔离", config.isolateStorage) { onConfigChange(config.copy(isolateStorage = it)) }
                Text("自定义系统属性 / 高级伪装", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f), modifier = Modifier.padding(top = 8.dp))
            }
        }
    }
}
