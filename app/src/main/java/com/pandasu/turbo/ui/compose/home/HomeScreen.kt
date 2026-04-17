package com.pandasu.turbo.ui.compose.home

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.pandasu.turbo.ui.compose.theme.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.withContext
import com.pandasu.turbo.util.ShizukuHelper
import java.io.File

/**
 * 首页 — 性能状态 + 快捷工具入口
 */
@Composable
fun HomeScreen(
    onNavigate: (route: String) -> Unit
) {
    val scrollState = rememberScrollState()

    var cpuTemp by remember { mutableStateOf("--") }
    var cpuFreq by remember { mutableStateOf("--") }
    var batteryTemp by remember { mutableStateOf("--") }
    var batteryLevel by remember { mutableStateOf("--") }
    var batteryCurrent by remember { mutableStateOf("--") }

    // root 可用性缓存：首次检测后缓存结果，避免每3秒反复 fork su 进程
    var rootAvailable by remember { mutableStateOf<Boolean?>(null) }

    // 定时刷新数据
    LaunchedEffect(Unit) {
        while (true) {
            withContext(Dispatchers.IO) {
                // 首次检测 root 是否可用（带缓存）
                if (rootAvailable == null) {
                    rootAvailable = checkRootQuick()
                }
                val useRoot = rootAvailable == true

                if (useRoot) {
                    // Root 可用：用 su 0 cat 读取（兼容 HyperOS SELinux 限制）
                    cpuTemp = readNodeAsRoot("/sys/class/thermal/thermal_zone0/temp")?.let { "${it.toInt() / 1000}°C" }
                        ?: readNode("/sys/class/thermal/thermal_zone0/temp")?.let { "${it.toInt() / 1000}°C" }
                        ?: "--"
                    cpuFreq = readNodeAsRoot("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")
                        ?.let { "${it.toInt() / 1000} MHz" }
                        ?: readNode("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")?.let { "${it.toInt() / 1000} MHz" }
                        ?: "--"
                    batteryTemp = readNodeAsRoot("/sys/class/power_supply/battery/temp")?.let {
                        "${it.toInt() / 10}°C"
                    } ?: readNode("/sys/class/power_supply/battery/temp")?.let {
                        "${it.toInt() / 10}°C"
                    } ?: "--"
                    batteryLevel = readNodeAsRoot("/sys/class/power_supply/battery/capacity")
                        ?: readNode("/sys/class/power_supply/battery/capacity")
                        ?: "--"
                    batteryCurrent = readNodeAsRoot("/sys/class/power_supply/battery/current_now")
                        ?.let { "${(it.toLong() / 1000)} mA" }
                        ?: readNode("/sys/class/power_supply/battery/current_now")?.let { "${(it.toLong() / 1000)} mA" }
                        ?: "--"
                } else {
                    // 无 Root：直接读文件（部分设备可读）
                    cpuTemp = readNode("/sys/class/thermal/thermal_zone0/temp")?.let { "${it.toInt() / 1000}°C" } ?: "--"
                    cpuFreq = readNode("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")?.let { "${it.toInt() / 1000} MHz" } ?: "--"
                    batteryTemp = readNode("/sys/class/power_supply/battery/temp")?.let { "${it.toInt() / 10}°C" } ?: "--"
                    batteryLevel = readNode("/sys/class/power_supply/battery/capacity") ?: "--"
                    batteryCurrent = readNode("/sys/class/power_supply/battery/current_now")?.let { "${(it.toLong() / 1000)} mA" } ?: "--"
                }
            }
            delay(3000)
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(PandaBackground)
            .verticalScroll(scrollState)
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        // 顶部标题
        Text(
            "熊猫工具箱",
            fontSize = 22.sp,
            fontWeight = FontWeight.Bold,
            color = PandaOnSurface
        )
        Text("v3.2.5", fontSize = 12.sp, color = PandaSubText)

        Spacer(modifier = Modifier.height(4.dp))

        // === 性能监控卡片（横排） ===
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            PerfCard(
                modifier = Modifier.weight(1f),
                icon = Icons.Default.Memory,
                title = "CPU 温度",
                value = cpuTemp,
                color = when {
                    cpuTemp == "--" -> PandaGray
                    cpuTemp.replace("°C", "").toIntOrNull() ?: 0 > 45 -> PandaRed
                    else -> PandaGreen
                }
            )
            PerfCard(
                modifier = Modifier.weight(1f),
                icon = Icons.Default.Speed,
                title = "CPU 频率",
                value = cpuFreq,
                color = PandaAccent
            )
        }

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            PerfCard(
                modifier = Modifier.weight(1f),
                icon = Icons.Default.BatteryFull,
                title = "电池温度",
                value = batteryTemp,
                color = when {
                    batteryTemp == "--" -> PandaGray
                    batteryTemp.replace("°C", "").toIntOrNull() ?: 0 > 40 -> PandaOrange
                    else -> PandaGreen
                }
            )
            PerfCard(
                modifier = Modifier.weight(1f),
                icon = Icons.Default.BatteryChargingFull,
                title = "电池电量",
                value = "$batteryLevel%",
                color = when {
                    batteryLevel == "--" -> PandaGray
                    batteryLevel.toIntOrNull() ?: 0 < 20 -> PandaRed
                    else -> PandaGreen
                }
            )
        }

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            PerfCard(
                modifier = Modifier.weight(1f),
                icon = Icons.Default.BatteryStd,
                title = "充电电流",
                value = batteryCurrent,
                color = PandaSecondary
            )
            PerfCard(
                modifier = Modifier.weight(1f),
                icon = Icons.Default.Info,
                title = "系统状态",
                value = if (rootAvailable == true) "Root" else "无Root",
                color = if (rootAvailable == true) PandaGreen else PandaOrange
            )
        }

        // === 底部提示 ===
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = PandaSurface.copy(alpha = 0.5f)),
            shape = RoundedCornerShape(10.dp)
        ) {
            Column(
                modifier = Modifier.padding(14.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text("点击下方「工具」进入全部功能", fontSize = 13.sp, color = PandaGray)
            }
        }

        Spacer(modifier = Modifier.height(60.dp))
    }
}

@Composable
fun PerfCard(
    modifier: Modifier = Modifier,
    icon: ImageVector,
    title: String,
    value: String,
    color: Color
) {
    Card(
        modifier = modifier,
        colors = CardDefaults.cardColors(containerColor = PandaSurface),
        shape = RoundedCornerShape(12.dp)
    ) {
        Column(
            modifier = Modifier.padding(14.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(icon, contentDescription = null, tint = color, modifier = Modifier.size(24.dp))
            Spacer(modifier = Modifier.height(6.dp))
            Text(value, fontSize = 16.sp, fontWeight = FontWeight.Bold, color = color)
            Text(title, fontSize = 11.sp, color = PandaGray)
        }
    }
}

// 快速检测 root 是否可用（1秒超时，用于缓存判断，避免反复 fork su）
fun checkRootQuick(): Boolean {
    return try {
        val process = Runtime.getRuntime().exec(ShizukuHelper.suArgs("id"))
        val completed = process.waitFor(1, java.util.concurrent.TimeUnit.SECONDS)
        if (!completed) {
            process.destroyForcibly()
            return false
        }
        val stdout = process.inputStream.bufferedReader().readText()
        process.exitValue() == 0 && stdout.contains("uid=0")
    } catch (e: Exception) {
        false
    }
}

fun readNode(path: String): String? {
    return try {
        // 先尝试直接读取（部分设备可能允许）
        File(path).takeIf { it.exists() }?.readText()?.trim()
    } catch (e: Exception) {
        null
    }
}

// 通过 su 命令读取系统节点（需要 root，用 su 0 绕过受限 shell）
// 带超时防止阻塞 IO 线程导致白屏
fun readNodeAsRoot(path: String): String? {
    return try {
        val process = Runtime.getRuntime().exec(ShizukuHelper.suArgs("cat '" + path + "'" ))
        // 超时等待：3秒内未完成则销毁进程
        val completed = process.waitFor(3, java.util.concurrent.TimeUnit.SECONDS)
        if (!completed) {
            process.destroyForcibly()
            return null
        }
        if (process.exitValue() != 0) return null
        val result = process.inputStream.bufferedReader().readText().trim()
        if (result.isNotEmpty()) result else null
    } catch (e: Exception) {
        null
    }
}
