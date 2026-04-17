@file:OptIn(ExperimentalMaterial3Api::class)

package com.pandasu.turbo.ui.compose.logs

import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.pandasu.turbo.ui.compose.theme.*
import java.text.SimpleDateFormat
import java.util.*

/**
 * 日志页面 — 融合日志查看器
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LogsScreen() {
    val context = LocalContext.current
    var logs by remember { mutableStateOf(sampleLogs()) }
    var selectedLevel by remember { mutableIntStateOf(0) } // 0=全部 1=Info 2=Warn 3=Error
    val levels = listOf("全部", "信息", "警告", "错误")

    val filteredLogs = logs.filter { log ->
        selectedLevel == 0 || log.levelIndex == selectedLevel
    }

    // 分享日志为 txt 文件
    fun shareLogsAsFile() {
        if (filteredLogs.isEmpty()) return
        
        val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(Date())
        val fileName = "PandaTurbo_logs_$timestamp.txt"
        
        val text = buildString {
            appendLine("=== PandaTurbo 隔离日志 ===")
            appendLine("时间: ${SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Date())}")
            appendLine("共 ${filteredLogs.size} 条日志")
            appendLine("=".repeat(30))
            appendLine()
            filteredLogs.forEach { log ->
                val levelName = when (log.levelIndex) {
                    1 -> "[INFO]"
                    2 -> "[WARN]"
                    3 -> "[ERROR]"
                    else -> "[LOG]"
                }
                appendLine("${log.time} ${levelName} ${log.appName}")
                appendLine("  ${log.message}")
                if (log.packageName.isNotEmpty()) {
                    appendLine("  pkg: ${log.packageName}")
                }
                appendLine()
            }
        }
        
        try {
            // 创建临时文件
            val cacheDir = context.cacheDir
            val file = java.io.File(cacheDir, fileName)
            file.writeText(text)
            
            // 分享文件
            val uri = androidx.core.content.FileProvider.getUriForFile(
                context,
                "${context.packageName}.fileprovider",
                file
            )
            
            val sendIntent = Intent(Intent.ACTION_SEND).apply {
                type = "application/octet-stream"  // 二进制流，强制作为文件发送
                putExtra(Intent.EXTRA_STREAM, uri)
                putExtra(Intent.EXTRA_TEXT, "PandaTurbo 日志文件 ($fileName)")  // 文件名提示
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            }
            val shareIntent = Intent.createChooser(sendIntent, "分享日志")
            context.startActivity(shareIntent)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    Scaffold(
        containerColor = PandaBackground,
        topBar = {
            TopAppBar(
                title = {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("📋 隔离日志", fontWeight = FontWeight.Bold)
                        Spacer(modifier = Modifier.width(8.dp))
                        Surface(
                            color = PandaAccent.copy(alpha = 0.2f),
                            shape = RoundedCornerShape(10.dp)
                        ) {
                            Text(
                                "${filteredLogs.size} 条",
                                fontSize = 12.sp, color = PandaAccent,
                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp)
                            )
                        }
                    }
                },
                actions = {
                    IconButton(onClick = { shareLogsAsFile() }) {
                        Icon(Icons.Default.Share, "分享", tint = PandaGray)
                    }
                    IconButton(onClick = { logs = emptyList() }) {
                        Icon(Icons.Default.DeleteSweep, "清空", tint = PandaGray)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color.White,
                    titleContentColor = PandaOnSurface
                )
            )
        }
    ) { padding ->
        Column(modifier = Modifier.fillMaxSize().padding(padding)) {
            // 级别过滤器
            Row(
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                levels.forEachIndexed { i, label ->
                    FilterChip(
                        selected = selectedLevel == i,
                        onClick = { selectedLevel = i },
                        label = { Text(label, fontSize = 13.sp) },
                        colors = FilterChipDefaults.filterChipColors(
                            selectedContainerColor = when (i) {
                                1 -> PandaAccent.copy(alpha = 0.2f)
                                2 -> PandaOrange.copy(alpha = 0.2f)
                                3 -> PandaRed.copy(alpha = 0.2f)
                                else -> PandaAccent.copy(alpha = 0.2f)
                            },
                            selectedLabelColor = when (i) {
                                1 -> PandaAccent
                                2 -> PandaOrange
                                3 -> PandaRed
                                else -> PandaAccent
                            }
                        )
                    )
                }
            }

            if (filteredLogs.isEmpty()) {
                Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Icon(Icons.Default.History, null, tint = PandaGray, modifier = Modifier.size(48.dp))
                        Spacer(modifier = Modifier.height(12.dp))
                        Text("暂无日志", color = PandaGray)
                    }
                }
            } else {
                LazyColumn(
                    modifier = Modifier.fillMaxSize(),
                    contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    items(filteredLogs, key = { it.id }) { log ->
                        LogItemCard(log)
                    }
                    item { Spacer(modifier = Modifier.height(60.dp)) }
                }
            }
        }
    }
}

@Composable
fun LogItemCard(log: LogItem) {
    val levelColor = when (log.levelIndex) {
        1 -> PandaAccent
        2 -> PandaOrange
        3 -> PandaRed
        else -> PandaGray
    }
    val levelIcon = when (log.levelIndex) {
        1 -> Icons.Default.Info
        2 -> Icons.Default.Warning
        3 -> Icons.Default.Error
        else -> Icons.Default.Circle
    }

    Card(
        colors = CardDefaults.cardColors(containerColor = PandaSurface),
        shape = RoundedCornerShape(10.dp)
    ) {
        Row(
            modifier = Modifier.padding(12.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(levelIcon, null, tint = levelColor, modifier = Modifier.size(18.dp))
            Spacer(modifier = Modifier.width(10.dp))
            Column(modifier = Modifier.weight(1f)) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        log.appName,
                        fontSize = 13.sp,
                        color = PandaOnSurface
                    )
                    Text(log.time, fontSize = 11.sp, color = PandaSubText)
                }
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    log.message,
                    fontSize = 12.sp,
                    color = PandaGray,
                    fontFamily = FontFamily.Monospace
                )
                if (log.packageName.isNotEmpty()) {
                    Spacer(modifier = Modifier.height(2.dp))
                    Text(
                        log.packageName,
                        fontSize = 10.sp,
                        color = PandaGray.copy(alpha = 0.6f),
                        fontFamily = FontFamily.Monospace
                    )
                }
            }
        }
    }
}

// === 数据模型 ===

data class LogItem(
    val id: Long,
    val levelIndex: Int, // 1=Info 2=Warn 3=Error
    val appName: String,
    val packageName: String,
    val message: String,
    val time: String
)

fun sampleLogs(): List<LogItem> {
    val now = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
    return listOf(
        LogItem(1, 1, "隔离服务", "com.tencent.mm", "应用隔离已启用: prop spoof", "10:32:15"),
        LogItem(2, 1, "Magisk", "com.pandasu.turbo", "模块加载成功: LSPosed v1.9.2", "10:32:14"),
        LogItem(3, 2, "Root检测", "com.tencent.mm", "检测到 su 二进制路径: /system/xbin/su", "10:32:12"),
        LogItem(4, 1, "LSPosed", "com.pandasu.turbo", "Hook 已激活: PackageManagerService", "10:32:10"),
        LogItem(5, 3, "隔离失败", "com.shanling.music", "无 Root 权限，无法应用 prop spoof", "10:32:08"),
        LogItem(6, 1, "Shizuku", "com.pandasu.turbo", "Shizuku 已连接，版本 13.1.5", "10:32:05"),
        LogItem(7, 1, "隔离配置", "com.miui.securitycenter", "隔离级别: STANDARD", "10:31:58"),
        LogItem(8, 2, "环境检测", "", "SELinux enforcing, 部分节点不可写", "10:31:55"),
        LogItem(9, 1, "Root权限", "", "Root 已授权: com.pandasu.turbo", "10:31:50"),
    )
}
