package com.pandasu.turbo.ui.compose.isolation

import android.widget.Toast
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import com.pandasu.turbo.ui.compose.theme.*
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.pandasu.turbo.util.ShizukuHelper
import kotlinx.coroutines.delay

// ─── 数据模型 ────────────────────────────────────────────────────────────────

enum class AppFilterTab { ALL, SYSTEM, USER }

enum class OneClickIsolationPreset { CONSERVATIVE, BALANCED, AGGRESSIVE }

/** smali SandboxLevel ordinal: STRICT=0, MODERATE=1, PERMISSIVE=2, DISABLED=3 */
enum class IsolationLevel(val level: Int) {
    DISABLED(3),  // 关闭隔离
    PERMISSIVE(2), // 保守，3个开关
    MODERATE(1),  // 均衡，6个开关
    STRICT(0);    // 严格，11个开关

    companion object {
        fun fromLevel(level: Int): IsolationLevel =
            entries.find { it.level == level } ?: DISABLED
    }
}

data class OneClickProgress(
    val isRunning: Boolean = false,
    val current: Int = 0,
    val total: Int = 0,
    val currentAppName: String = ""
)

data class AppInfo(
    val name: String,
    val packageName: String,
    val isolated: Boolean = false,
    val level: Int = 1,          // IsolationLevel ordinal: STRICT=0, MODERATE=1, PERMISSIVE=2, DISABLED=3
    val strictLevel: Int = 0,    // 同上，与 smali SandboxLevel ordinal 一致
    val isSystem: Boolean = false,
    // 高级配置（从原版 IsolationConfig）
    val hideMagisk: Boolean = true,
    val hideSuBinary: Boolean = true,
    val hideBusybox: Boolean = true,
    val hideXposed: Boolean = true,
    val hideMagiskApp: Boolean = true,
    val isolateStorage: Boolean = false,
    val disableRootAccess: Boolean = false,
    val enableAppDataIsolation: Boolean = false,
    val enablePmsHook: Boolean = true,
    val enablePlatformCompatHook: Boolean = false,
    val propSpoofEnabled: Boolean = false,
    val bootRelatedEnabled: Boolean = false
)

// ─── 主页面 ───────────────────────────────────────────────────────────────────

@Composable
fun IsolationScreen(
    viewModel: IsolationViewModel,
    onNavigateBack: () -> Unit = {}
) {
    val uiState by viewModel.uiState.collectAsState()
    val context = LocalContext.current

    LaunchedEffect(Unit) {
        viewModel.attachContext(context)
    }

    // 详情面板选中应用
    var selectedApp by remember { mutableStateOf<AppInfo?>(null) }

    Box(modifier = Modifier.fillMaxSize()) {
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
                .padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(top = 8.dp, bottom = 24.dp)
        ) {
            // ① 预设选择区
            item {
                PresetSelectionCard(
                    selectedPreset = uiState.selectedPreset,
                    progress = uiState.oneClickProgress,
                    appCount = uiState.allApps.size,
                    onPresetSelected = { preset ->
                        viewModel.setOneClickPreset(preset)
                    },
                    onStartOneClick = {
                        viewModel.startOneClickIsolation()
                    }
                )
            }

            // 消息提示
            uiState.successMessage?.let {
                item { MessageCard(it, isError = false) }
            }
            uiState.errorMessage?.let {
                item { MessageCard(it, isError = true) }
            }

            // 进度指示
            if (uiState.oneClickProgress.isRunning) {
                item {
                    OneClickProgressBar(
                        progress = uiState.oneClickProgress,
                        onDismiss = { viewModel.dismissProgress() }
                    )
                }
            }

            // 搜索栏
            item {
                SearchBar(
                    query = uiState.searchQuery,
                    onQueryChange = { viewModel.setSearchQuery(it) }
                )
            }

            // Tab 筛选栏
            item {
                AppFilterTabRow(
                    activeTab = uiState.activeTab,
                    counts = Triple(
                        uiState.allApps.size,
                        uiState.systemApps.size,
                        uiState.userApps.size
                    ),
                    onTabSelected = { viewModel.setActiveTab(it) }
                )
            }

            // 应用列表
            val filtered = when (uiState.activeTab) {
                AppFilterTab.ALL -> uiState.allApps
                AppFilterTab.SYSTEM -> uiState.systemApps
                AppFilterTab.USER -> uiState.userApps
            }.filter {
                uiState.searchQuery.isEmpty() ||
                        it.name.contains(uiState.searchQuery, ignoreCase = true) ||
                        it.packageName.contains(uiState.searchQuery, ignoreCase = true)
            }

            items(filtered, key = { it.packageName }) { app ->
                AppListItem(
                    app = app,
                    onClick = { selectedApp = app }
                )
            }
        }

        // ─── 详情 BottomSheet ───────────────────────────────────────────────
        selectedApp?.let { app ->
            AppDetailSheet(
                app = app,
                onDismiss = { selectedApp = null },
                onSave = { updatedApp ->
                    viewModel.updateAppConfig(updatedApp)
                    selectedApp = null
                }
            )
        }
    }
}

// ─── ① 预设选择区 ────────────────────────────────────────────────────────────

@Composable
private fun PresetSelectionCard(
    selectedPreset: OneClickIsolationPreset,
    progress: OneClickProgress,
    appCount: Int,
    onPresetSelected: (OneClickIsolationPreset) -> Unit,
    onStartOneClick: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "🔒 一键隔离",
                fontWeight = FontWeight.Bold,
                fontSize = 16.sp
            )
            Spacer(Modifier.height(4.dp))
            Text(
                text = "选择预设并应用隔离配置",
                fontSize = 12.sp,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(Modifier.height(12.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                PresetChip(
                    emoji = "🛡️", label = "保守", sub = "3个开关",
                    selected = selectedPreset == OneClickIsolationPreset.CONSERVATIVE,
                    onClick = { onPresetSelected(OneClickIsolationPreset.CONSERVATIVE) },
                    modifier = Modifier.weight(1f)
                )
                PresetChip(
                    emoji = "🔥", label = "激进", sub = "6个开关",
                    selected = selectedPreset == OneClickIsolationPreset.BALANCED,
                    onClick = { onPresetSelected(OneClickIsolationPreset.BALANCED) },
                    modifier = Modifier.weight(1f)
                )
                PresetChip(
                    emoji = "🔐", label = "严格", sub = "11个开关",
                    selected = selectedPreset == OneClickIsolationPreset.AGGRESSIVE,
                    onClick = { onPresetSelected(OneClickIsolationPreset.AGGRESSIVE) },
                    modifier = Modifier.weight(1f)
                )
            }

            Spacer(Modifier.height(14.dp))

            Button(
                onClick = onStartOneClick,
                enabled = !progress.isRunning && appCount > 0,
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(10.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = PandaPrimary
                )
            ) {
                if (progress.isRunning) {
                    Box(
                        modifier = Modifier
                            .size(18.dp)
                            .background(
                                color = Color.White,
                                shape = RoundedCornerShape(50)
                            )
                    )
                    Spacer(Modifier.width(8.dp))
                    Text("处理中 ${progress.current}/${progress.total}")
                } else {
                    Text("▶ 一键应用隔离", fontWeight = FontWeight.Medium)
                }
            }
        }
    }
}

// ─── ② 消息提示卡 ────────────────────────────────────────────────────────────

@Composable
private fun MessageCard(message: String, isError: Boolean) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = if (isError)
                PandaRed.copy(alpha = 0.08f)
            else
                PandaGreen.copy(alpha = 0.08f)
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(text = if (isError) "❌" else "✅", fontSize = 16.sp)
            Spacer(Modifier.width(10.dp))
            Text(
                text = message,
                fontSize = 14.sp,
                color = if (isError) PandaRed else PandaGreen
            )
        }
    }
}

// ─── ③ 进度条 ───────────────────────────────────────────────────────────────

@Composable
private fun OneClickProgressBar(
    progress: OneClickProgress,
    onDismiss: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = PandaPrimary.copy(alpha = 0.06f)
        )
    ) {
        Column(modifier = Modifier.padding(14.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = "正在处理: ${progress.currentAppName}",
                    fontWeight = FontWeight.Medium,
                    fontSize = 14.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.weight(1f),
                    color = PandaOnSurface
                )
                Text(
                    text = "${progress.current}/${progress.total}",
                    fontSize = 12.sp,
                    color = PandaSubText
                )
            }
            Spacer(Modifier.height(8.dp))
            val fraction = if (progress.total > 0) progress.current.toFloat() / progress.total else 0f
            @Suppress("DEPRECATION")
            LinearProgressIndicator(
                progress = fraction,
                modifier = Modifier
                    .fillMaxWidth()
                    .height(6.dp)
                    .clip(RoundedCornerShape(3.dp)),
                color = PandaPrimary,
                trackColor = PandaPrimary.copy(alpha = 0.15f)
            )
        }
    }
}

// ─── ④ 搜索栏 ───────────────────────────────────────────────────────────────

@Composable
private fun SearchBar(
    query: String,
    onQueryChange: (String) -> Unit
) {
    OutlinedTextField(
        value = query,
        onValueChange = onQueryChange,
        modifier = Modifier.fillMaxWidth(),
        placeholder = { Text("搜索应用名称或包名...") },
        leadingIcon = { Text("🔍", fontSize = 16.sp) },
        trailingIcon = {
            if (query.isNotEmpty()) {
                IconButton(onClick = { onQueryChange("") }) {
                    Text("✕", fontSize = 14.sp)
                }
            }
        },
        singleLine = true,
        shape = RoundedCornerShape(12.dp),
        colors = OutlinedTextFieldDefaults.colors(
            focusedBorderColor = PandaPrimary,
            unfocusedBorderColor = Color.Transparent
        )
    )
}

// ─── ⑤ Tab 筛选栏 ───────────────────────────────────────────────────────────

@Composable
private fun AppFilterTabRow(
    activeTab: AppFilterTab,
    counts: Triple<Int, Int, Int>,
    onTabSelected: (AppFilterTab) -> Unit
) {
    val tabs = listOf(
        "全部 (${counts.first})" to AppFilterTab.ALL,
        "系统 (${counts.second})" to AppFilterTab.SYSTEM,
        "用户 (${counts.third})" to AppFilterTab.USER
    )

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(MaterialTheme.colorScheme.surfaceVariant)
            .padding(4.dp),
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        tabs.forEach { (label, tab) ->
            val isActive = activeTab == tab
            val bgColor by animateColorAsState(
                targetValue = if (isActive) MaterialTheme.colorScheme.surface else Color.Transparent,
                label = "tabbg"
            )
            Text(
                text = label,
                modifier = Modifier
                    .weight(1f)
                    .clip(RoundedCornerShape(8.dp))
                    .background(bgColor)
                    .clickable { onTabSelected(tab) }
                    .padding(vertical = 8.dp),
                textAlign = TextAlign.Center,
                fontWeight = if (isActive) FontWeight.Bold else FontWeight.Normal,
                fontSize = 13.sp,
                color = if (isActive)
                    MaterialTheme.colorScheme.primary
                else
                    MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

// ─── ⑥ 应用列表项 ───────────────────────────────────────────────────────────

@Composable
private fun AppListItem(
    app: AppInfo,
    onClick: () -> Unit
) {
    val levelLabel = if (!app.isolated) "未隔离" else when {
        app.strictLevel == 0 -> "严格"    // STRICT, 11开关
        app.strictLevel == 1 -> "保守"    // MODERATE, 3开关
        app.strictLevel == 2 -> "激进"    // PERMISSIVE, 6开关
        else -> "未隔离"
    }
    val levelColor = if (!app.isolated) PandaGray else when {
        app.strictLevel == 0 -> PandaRed  // 严格，红
        app.strictLevel == 1 -> PandaGreen  // 保守，绿
        app.strictLevel == 2 -> PandaOrange  // 激进，橙
        else -> PandaGray
    }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
        colors = CardDefaults.cardColors(
            containerColor = if (app.isolated)
                PandaPrimary.copy(alpha = 0.06f)
            else
                MaterialTheme.colorScheme.surface
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // 应用图标占位
            Box(
                modifier = Modifier
                    .size(44.dp)
                    .clip(RoundedCornerShape(10.dp))
                    .background(
                        if (app.isolated) PandaPrimary.copy(alpha = 0.12f)
                        else MaterialTheme.colorScheme.surfaceVariant
                    ),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = app.name.take(1).uppercase(),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = if (app.isolated) PandaPrimary else MaterialTheme.colorScheme.primary
                )
            }

            Spacer(Modifier.width(12.dp))

            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = app.name,
                    fontWeight = FontWeight.Medium,
                    fontSize = 14.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                Spacer(Modifier.height(2.dp))
                Text(
                    text = app.packageName,
                    fontSize = 11.sp,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }

            Spacer(Modifier.width(8.dp))

            // 隔离状态标签
            Box(
                modifier = Modifier
                    .clip(RoundedCornerShape(6.dp))
                    .background(
                        if (app.isolated) levelColor.copy(alpha = 0.15f)
                        else PandaGray.copy(alpha = 0.1f)
                    )
                    .padding(horizontal = 8.dp, vertical = 4.dp)
            ) {
                Text(
                    text = levelLabel,
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Medium,
                    color = if (app.isolated) levelColor else PandaGray
                )
            }

            Spacer(Modifier.width(4.dp))
            Text("›", fontSize = 18.sp, color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
    }
}

// ─── ⑦ 应用详情面板（Dialog）─────────────────────────────────────────────────

@Composable
private fun AppDetailSheet(
    app: AppInfo,
    onDismiss: () -> Unit,
    onSave: (AppInfo) -> Unit
) {
    var hideMagisk by remember(app) { mutableStateOf(app.hideMagisk) }
    var hideSuBinary by remember(app) { mutableStateOf(app.hideSuBinary) }
    var hideBusybox by remember(app) { mutableStateOf(app.hideBusybox) }
    var hideXposed by remember(app) { mutableStateOf(app.hideXposed) }
    var hideMagiskApp by remember(app) { mutableStateOf(app.hideMagiskApp) }
    var isolateStorage by remember(app) { mutableStateOf(app.isolateStorage) }
    var disableRootAccess by remember(app) { mutableStateOf(app.disableRootAccess) }
    var propSpoofEnabled by remember(app) { mutableStateOf(app.propSpoofEnabled) }
    var enableAppDataIsolation by remember(app) { mutableStateOf(app.enableAppDataIsolation) }
    var enablePmsHook by remember(app) { mutableStateOf(app.enablePmsHook) }
    var enablePlatformCompatHook by remember(app) { mutableStateOf(app.enablePlatformCompatHook) }

    // 隔离状态 = 任意开关开启即为已隔离
    val switchCount = listOf(
        hideMagisk, hideSuBinary, hideBusybox, hideXposed, hideMagiskApp,
        isolateStorage, disableRootAccess, propSpoofEnabled,
        enableAppDataIsolation, enablePmsHook, enablePlatformCompatHook
    ).count { it }
    val isIsolated = switchCount > 0

    AlertDialog(
        onDismissRequest = onDismiss,
        modifier = Modifier
            .fillMaxWidth(0.95f)
            .wrapContentHeight(),
        shape = RoundedCornerShape(20.dp),
        containerColor = MaterialTheme.colorScheme.surface,
        title = {
            Column {
                Text(text = app.name, fontWeight = FontWeight.Bold, fontSize = 17.sp)
                Text(
                    text = app.packageName,
                    fontSize = 11.sp,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 480.dp)
                    .verticalScroll(rememberScrollState())
            ) {
                // ── 隔离状态 ──
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clip(RoundedCornerShape(8.dp))
                        .background(
                            if (isIsolated) Color(0xFF4CAF50).copy(alpha = 0.1f)
                            else PandaGray.copy(alpha = 0.1f)
                        )
                        .padding(10.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = if (isIsolated) "✅ 已隔离（$switchCount / 11 个开关）" else "⭕ 未隔离",
                        fontWeight = FontWeight.Medium,
                        fontSize = 13.sp,
                        color = if (isIsolated) Color(0xFF4CAF50) else PandaGray
                    )
                }

                Divider(modifier = Modifier.padding(vertical = 12.dp))

                // ── 隐藏 Root ──
                SectionTitle("隐藏 Root")
                SwitchRow("隐藏 Magisk",     emoji = "🔰", checked = hideMagisk,
                    onCheckedChange = { hideMagisk = it })
                SwitchRow("隐藏 SU 二进制",  emoji = "⚡", checked = hideSuBinary,
                    onCheckedChange = { hideSuBinary = it })
                SwitchRow("隐藏 BusyBox",    emoji = "📦", checked = hideBusybox,
                    onCheckedChange = { hideBusybox = it })
                SwitchRow("隐藏 Xposed",     emoji = "🔌", checked = hideXposed,
                    onCheckedChange = { hideXposed = it })
                SwitchRow("隐藏 LSPosed",    emoji = "🎯", checked = hideMagiskApp,
                    onCheckedChange = { hideMagiskApp = it })

                Divider(modifier = Modifier.padding(vertical = 12.dp))

                // ── 存储与 Root ──
                SectionTitle("存储与 Root")
                SwitchRow("存储隔离",        emoji = "💾", checked = isolateStorage,
                    onCheckedChange = { isolateStorage = it })
                SwitchRow("禁用 Root 访问",  emoji = "🚫", checked = disableRootAccess,
                    onCheckedChange = { disableRootAccess = it })

                Divider(modifier = Modifier.padding(vertical = 12.dp))

                // ── 属性伪装 ──
                SectionTitle("属性伪装")
                SwitchRow("系统属性伪装",     emoji = "🛡️", checked = propSpoofEnabled,
                    onCheckedChange = { propSpoofEnabled = it })

                Divider(modifier = Modifier.padding(vertical = 12.dp))

                // ── 应用隔离 ──
                SectionTitle("应用隔离")
                SwitchRow("应用数据隔离",     emoji = "📁", checked = enableAppDataIsolation,
                    onCheckedChange = { enableAppDataIsolation = it })

                Divider(modifier = Modifier.padding(vertical = 12.dp))

                // ── Hook ──
                SectionTitle("Hook 配置")
                SwitchRow("PMS Hook",        emoji = "🔧", checked = enablePmsHook,
                    onCheckedChange = { enablePmsHook = it })
                SwitchRow("平台兼容性 Hook", emoji = "🔧", checked = enablePlatformCompatHook,
                    onCheckedChange = { enablePlatformCompatHook = it })

                Spacer(Modifier.height(8.dp))
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    onSave(app.copy(
                        isolated = isIsolated,
                        hideMagisk = hideMagisk,
                        hideSuBinary = hideSuBinary,
                        hideBusybox = hideBusybox,
                        hideXposed = hideXposed,
                        hideMagiskApp = hideMagiskApp,
                        isolateStorage = isolateStorage,
                        disableRootAccess = disableRootAccess,
                        propSpoofEnabled = propSpoofEnabled,
                        enableAppDataIsolation = enableAppDataIsolation,
                        enablePmsHook = enablePmsHook,
                        enablePlatformCompatHook = enablePlatformCompatHook
                    ))
                    onDismiss()
                },
                shape = RoundedCornerShape(10.dp),
                colors = ButtonDefaults.buttonColors(containerColor = PandaPrimary)
            ) {
                Text("💾 保存", fontWeight = FontWeight.Medium)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("取消")
            }
        }
    )
}

// ─── 辅助组件 ─────────────────────────────────────────────────────────────────

@Composable
private fun PresetChip(
    emoji: String, label: String, sub: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val borderColor by animateColorAsState(
        targetValue = if (selected) PandaPrimary else Color.Transparent,
        label = "border"
    )
    val bgColor by animateColorAsState(
        targetValue = if (selected) PandaPrimary.copy(alpha = 0.1f) else MaterialTheme.colorScheme.surfaceVariant,
        label = "bg"
    )

    Column(
        modifier = modifier
            .clip(RoundedCornerShape(12.dp))
            .background(bgColor)
            .border(
                width = if (selected) 2.dp else 0.dp,
                color = borderColor,
                shape = RoundedCornerShape(12.dp)
            )
            .clickable(onClick = onClick)
            .padding(vertical = 10.dp, horizontal = 8.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(text = emoji, fontSize = 20.sp)
        Spacer(Modifier.height(4.dp))
        Text(
            text = label,
            fontWeight = FontWeight.SemiBold,
            fontSize = 13.sp
        )
        Text(
            text = sub,
            fontSize = 10.sp,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable
private fun SectionTitle(title: String) {
    Text(
        text = title,
        fontWeight = FontWeight.Bold,
        fontSize = 14.sp,
        color = MaterialTheme.colorScheme.primary
    )
}

@Composable
private fun SwitchRow(
    label: String,
    emoji: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onCheckedChange(!checked) }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(text = emoji, fontSize = 14.sp)
            Spacer(Modifier.width(8.dp))
            Text(
                text = label,
                fontSize = 13.sp,
                color = MaterialTheme.colorScheme.onSurface
            )
        }
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange,
            colors = SwitchDefaults.colors(
                checkedThumbColor = Color.White,
                checkedTrackColor = PandaPrimary
            )
        )
    }
}
