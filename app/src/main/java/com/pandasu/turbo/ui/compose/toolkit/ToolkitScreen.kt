package com.pandasu.turbo.ui.compose.toolkit

import android.content.Intent
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.pandasu.turbo.GameAccessibilityService
import com.pandasu.turbo.ui.compose.theme.*
import com.pandasu.turbo.ui.toolkit.*

/**
 * 工具箱 Tab — 调用原有 Activity，保持向后兼容
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ToolkitScreen(
    onNavigate: (String) -> Unit = {}
) {
    val context = LocalContext.current

    // 合并后的工具列表（已去重）
    // - 性能监控/系统信息 → 合并为 SystemInfoActivity
    // - 广告屏蔽 → 合并到 SystemTweaksScreen
    // - 温控调度 + 系统优化 → 合并为 ThermalControlActivity（含一键优化）
    val categories = listOf(
        ToolCategory("⚡ 性能工具", listOf(
            ToolItem("🔥 温控调度", "CPU/GPU 频率、温控墙、MIUI 性能模式", Icons.Default.Thermostat, PandaAccent, ThermalControlActivity::class.java),
            ToolItem("📊 性能监控", "实时 CPU/内存/帧率/系统信息", Icons.Default.Speed, PandaGold, SystemInfoActivity::class.java),
        )),
        ToolCategory("🔋 电池管理", listOf(
            ToolItem("💾 电池信息", "实时温度/电压/电流监控", Icons.Default.BatteryFull, PandaGreen, BatteryInfoActivity::class.java),
        )),
        ToolCategory("🛠️ 系统工具", listOf(
            ToolItem("🚀 系统优化", "动画/刷新率/自启动/广告屏蔽", Icons.Default.Tune, PandaPrimary, null, "system_tweaks"),
            ToolItem("📦 应用管理", "提取 APK / 强制停止 / 禁用 / 卸载", Icons.Default.Apps, PandaAccent, AppManagerActivity::class.java),
            ToolItem("🖼️ 显示设置", "刷新率/亮度/DPI", Icons.Default.DisplaySettings, PandaGreen, DisplaySettingsActivity::class.java),
            ToolItem("🌐 网络工具", "IP/端口/测速/DNS", Icons.Default.Wifi, PandaOrange, NetworkToolsActivity::class.java),
            ToolItem("💡 开发者工具", "Shell 命令执行 / SELinux", Icons.Default.Terminal, PandaSecondary, DevToolsActivity::class.java),
        )),
    )

    Scaffold(
        containerColor = PandaBackground,
        topBar = {
            TopAppBar(
                title = { Text("工具", fontWeight = FontWeight.Bold) },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color.White,
                    titleContentColor = PandaOnSurface
                )
            )
        }
    ) { padding ->
        LazyColumn(
            modifier = Modifier.fillMaxSize().padding(padding),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            categories.forEach { category ->
                item {
                    Text(
                        category.title,
                        fontSize = 13.sp, fontWeight = FontWeight.SemiBold,
                        color = PandaGray, modifier = Modifier.padding(vertical = 4.dp)
                    )
                }
                item {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        category.tools.chunked(2).forEach { row ->
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                row.forEach { tool ->
                                    ToolCard(
                                        modifier = Modifier.weight(1f),
                                        tool = tool,
                                        onClick = {
                                            when {
                                                tool.navigationRoute != null -> onNavigate(tool.navigationRoute)
                                                tool.activityClass != null -> {
                                                    try {
                                                        context.startActivity(Intent(context, tool.activityClass))
                                                    } catch (e: Exception) {
                                                        // ignore
                                                    }
                                                }
                                            }
                                        }
                                    )
                                }
                                // 奇数行补空
                                if (row.size == 1) {
                                    Spacer(modifier = Modifier.weight(1f))
                                }
                            }
                        }
                    }
                }
            }
            item { Spacer(modifier = Modifier.height(60.dp)) }
        }
    }
}

@Composable
fun ToolCard(
    modifier: Modifier = Modifier,
    tool: ToolItem,
    onClick: () -> Unit
) {
    Card(
        modifier = modifier,
        colors = CardDefaults.cardColors(containerColor = PandaSurface),
        shape = RoundedCornerShape(12.dp),
        onClick = onClick
    ) {
        Column(
            modifier = Modifier.padding(14.dp)
        ) {
            Icon(tool.icon, null, tint = tool.color, modifier = Modifier.size(28.dp))
            Spacer(modifier = Modifier.height(10.dp))
            Text(tool.name, fontSize = 14.sp, fontWeight = FontWeight.Medium, color = PandaOnSurface)
            Text(tool.desc, fontSize = 11.sp, color = PandaSubText, maxLines = 2)
        }
    }
}

// === 数据模型 ===

data class ToolCategory(
    val title: String,
    val tools: List<ToolItem>
)

data class ToolItem(
    val name: String,
    val desc: String,
    val icon: ImageVector,
    val color: Color,
    val activityClass: Class<*>? = null,
    val navigationRoute: String? = null
)
