package com.pandasu.turbo.util

import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.hardware.Sensor
import android.hardware.SensorManager
import android.os.BatteryManager
import android.os.Build
import android.os.Environment
import android.os.StatFs
import android.util.DisplayMetrics
import android.view.WindowManager
import java.io.BufferedReader
import java.io.File
import java.io.FileReader
import java.text.DecimalFormat

/**
 * 系统信息读取工具
 */
object SystemInfoUtil {

    private val df = DecimalFormat("#,##0.#")

    // ==================== 设备信息 ====================

    data class DeviceInfo(
        val brand: String, val model: String, val device: String,
        val androidVersion: String, val sdk: Int, val securityPatch: String?,
        val buildId: String, val buildType: String, val bootloader: String,
        val hardware: String, val board: String
    )

    fun getDeviceInfo() = DeviceInfo(
        brand = Build.BRAND,
        model = Build.MODEL,
        device = Build.DEVICE,
        androidVersion = Build.VERSION.RELEASE,
        sdk = Build.VERSION.SDK_INT,
        securityPatch = Build.VERSION.SECURITY_PATCH,
        buildId = Build.ID,
        buildType = Build.TYPE,
        bootloader = Build.BOOTLOADER,
        hardware = Build.HARDWARE,
        board = Build.BOARD
    )

    // ==================== CPU 信息 ====================

    data class CpuInfo(
        val coreCount: Int,
        val frequencies: List<Pair<Int, Long>>,   // coreIndex -> freq_kHz
        val maxFrequencyKHz: Long,
        val minFrequencyKHz: Long,
        val governor: String,
        val cpuArchitecture: String,
        val supportedAbis: String
    )

    fun getCpuInfo(): CpuInfo {
        val coreCount = Runtime.getRuntime().availableProcessors()
        val frequencies = mutableListOf<Pair<Int, Long>>()

        for (i in 0 until coreCount) {
            val freqStr = readFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq")
            val freqKHz = freqStr?.trim()?.toLongOrNull() ?: 0L
            frequencies.add(i to freqKHz)
        }

        val maxFreqKHz = readFile("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq")?.trim()?.toLongOrNull() ?: 0L
        val minFreqKHz = readFile("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq")?.trim()?.toLongOrNull() ?: 0L
        val governor = readFile("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor")?.trim() ?: "N/A"

        return CpuInfo(
            coreCount = coreCount,
            frequencies = frequencies,
            maxFrequencyKHz = maxFreqKHz,
            minFrequencyKHz = minFreqKHz,
            governor = governor,
            cpuArchitecture = System.getProperty("os.arch") ?: "N/A",
            supportedAbis = Build.SUPPORTED_ABIS.joinToString(", ")
        )
    }

    /** 将 kHz 转换为 MHz 字符串，如 "2496 MHz"，未知返回 "N/A" */
    private fun fmtMhz(khz: Long): String {
        return if (khz > 0) "${df.format(khz / 1000.0)} MHz" else "N/A"
    }

    /** 格式化温度，thermal_zone 原始值是毫摄氏度（m°C），BatteryManager 是十分之一度（d°C） */
    private fun fmtTemp(raw: String?, unit: TempUnit): String {
        if (raw == null) return "N/A"
        val value = raw.trim().toFloatOrNull() ?: return raw
        return when (unit) {
            TempUnit.MILLI_DEGREE -> {
                // thermal_zone 文件：毫摄氏度 → 转为摄氏度
                val c = value / 1000f
                if (c < -50 || c > 150) return "$raw (异常)"
                "%.1f C".format(c)
            }
            TempUnit.TENTH_DEGREE -> {
                // BatteryManager / battery system_node：十分之一度 → 转为摄氏度
                val c = value / 10f
                if (c < -50 || c > 150) return "$raw (异常)"
                "%.1f C".format(c)
            }
        }
    }

    private enum class TempUnit { MILLI_DEGREE, TENTH_DEGREE }

    // ==================== 内存信息 ====================

    data class MemoryInfo(
        val totalRamMB: Long,
        val availableRamMB: Long,
        val usedRamMB: Long,
        val lowMemory: Boolean,
        val thresholdMB: Long
    ) {
        val totalRamStr: String get() = "${df.format(totalRamMB / 1024.0)} GB"
        val availableRamStr: String get() = "${df.format(availableRamMB / 1024.0)} GB"
        val usedRamStr: String get() = "${df.format(usedRamMB / 1024.0)} GB"
        val usedPercent: Int get() = ((usedRamMB.toFloat() / totalRamMB.toFloat()) * 100).toInt().coerceIn(0, 100)
    }

    fun getMemoryInfo(context: Context): MemoryInfo {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val memInfo = ActivityManager.MemoryInfo()
        am.getMemoryInfo(memInfo)

        val totalMB = memInfo.totalMem / (1024 * 1024)
        val availMB = memInfo.availMem / (1024 * 1024)
        val usedMB = totalMB - availMB

        return MemoryInfo(
            totalRamMB = totalMB,
            availableRamMB = availMB,
            usedRamMB = usedMB,
            lowMemory = memInfo.lowMemory,
            thresholdMB = memInfo.threshold / (1024 * 1024)
        )
    }

    // ==================== 存储信息 ====================

    data class StorageInfo(
        val internalTotalGB: Double,
        val internalFreeGB: Double,
        val internalUsedGB: Double,
        val internalUsedPercent: Int,
        val externalTotalGB: Double?,
        val externalFreeGB: Double?
    ) {
        val internalTotalStr: String get() = "${df.format(internalTotalGB)} GB"
        val internalFreeStr: String get() = "${df.format(internalFreeGB)} GB"
        val internalUsedStr: String get() = "${df.format(internalUsedGB)} GB"
        val externalTotalStr: String? get() = externalTotalGB?.let { "${df.format(it)} GB" }
        val externalFreeStr: String? get() = externalFreeGB?.let { "${df.format(it)} GB" }
    }

    fun getStorageInfo(): StorageInfo {
        val path = Environment.getDataDirectory()
        val stat = StatFs(path.path)
        val totalB = stat.blockSizeLong * stat.blockCountLong
        val freeB = stat.blockSizeLong * stat.availableBlocksLong
        val usedB = totalB - freeB

        val totalGB = totalB / (1024.0 * 1024 * 1024)
        val freeGB = freeB / (1024.0 * 1024 * 1024)
        val usedGB = usedB / (1024.0 * 1024 * 1024)
        val percent = ((usedB.toFloat() / totalB.toFloat()) * 100).toInt().coerceIn(0, 100)

        var extTotalGB: Double? = null
        var extFreeGB: Double? = null
        if (Environment.getExternalStorageState() == Environment.MEDIA_MOUNTED) {
            try {
                val extPath = Environment.getExternalStorageDirectory()
                val extStat = StatFs(extPath.path)
                extTotalGB = (extStat.blockSizeLong * extStat.blockCountLong) / (1024.0 * 1024 * 1024)
                extFreeGB = (extStat.blockSizeLong * extStat.availableBlocksLong) / (1024.0 * 1024 * 1024)
            } catch (e: Exception) { }
        }

        return StorageInfo(
            internalTotalGB = totalGB,
            internalFreeGB = freeGB,
            internalUsedGB = usedGB,
            internalUsedPercent = percent,
            externalTotalGB = extTotalGB,
            externalFreeGB = extFreeGB
        )
    }

    // ==================== 屏幕信息 ====================

    data class DisplayInfo(
        val widthPx: Int, val heightPx: Int,
        val density: Float, val densityDpi: Int,
        val refreshRate: Float
    )

    fun getDisplayInfo(context: Context): DisplayInfo {
        val wm = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val dm = DisplayMetrics()
        @Suppress("DEPRECATION")
        wm.defaultDisplay.getRealMetrics(dm)

        val refreshRate = try {
            @Suppress("DEPRECATION")
            wm.defaultDisplay.refreshRate
        } catch (e: Exception) { 60f }

        return DisplayInfo(
            widthPx = dm.widthPixels,
            heightPx = dm.heightPixels,
            density = dm.density,
            densityDpi = dm.densityDpi,
            refreshRate = refreshRate
        )
    }

    // ==================== 传感器列表 ====================

    fun getSensorList(context: Context): List<String> {
        val sm = context.getSystemService(Context.SENSOR_SERVICE) as SensorManager
        return sm.getSensorList(Sensor.TYPE_ALL).map { sensor ->
            "${sensor.name} (${sensor.vendor}, type=${sensor.type})"
        }
    }

    // ==================== SELinux 状态 ====================

    fun getSelinuxStatus(): String {
        return readFile("/sys/fs/selinux/enforce")?.trim()?.let {
            if (it == "0") "Permissive（宽容模式）" else if (it == "1") "Enforcing（强制模式）" else it
        } ?: "Unknown"
    }

    // ==================== 温度信息 ====================

    data class ThermalInfo(
        val cpuTemp: String?,       // 格式化后的 CPU 温度
        val batteryTemp: String?,   // 格式化后的电池温度
        val thermalZones: List<Pair<String, String>>  // type -> 格式化后的温度
    )

    fun getThermalInfo(context: Context): ThermalInfo {
        // 1. 先从 BatteryManager 读电池温度（无需权限，可靠）
        val batteryTempRaw = try {
            val bm = context.registerReceiver(
                null,
                IntentFilter(Intent.ACTION_BATTERY_CHANGED)
            )
            bm?.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, Int.MIN_VALUE)
        } catch (e: Exception) { null }

        // 2. 从 thermal_zone 目录扫描所有温度节点
        val zones = mutableListOf<Pair<String, String>>()
        val thermalDir = File("/sys/class/thermal")
        if (thermalDir.exists() && thermalDir.isDirectory) {
            thermalDir.listFiles()?.filter { it.isDirectory && it.name.startsWith("thermal_zone") }?.forEach { zone ->
                val type = readFile("${zone.absolutePath}/type")?.trim() ?: return@forEach
                val tempRaw = readFile("${zone.absolutePath}/temp")?.trim() ?: return@forEach
                zones.add(type to fmtTemp(tempRaw, TempUnit.MILLI_DEGREE))
            }
        }

        // 3. 优先从 thermal_zone 找 CPU 温度，其次 fallback
        val cpuTemp = zones.find { (type, _) ->
            type.contains("cpu", ignoreCase = true) && !type.contains("battery", ignoreCase = true)
        }?.second ?: "N/A"

        // 4. 电池温度：优先 thermal_zone，其次 BatteryManager（十分之一度）
        val battTemp = zones.find { (type, _) ->
            type.contains("battery", ignoreCase = true)
        }?.second ?: (if (batteryTempRaw != null && batteryTempRaw != Int.MIN_VALUE) {
            fmtTemp(batteryTempRaw.toString(), TempUnit.TENTH_DEGREE)
        } else null)

        return ThermalInfo(cpuTemp, battTemp, zones.take(8))
    }

    // ==================== 实时频率监控 ====================

    fun getCurrentFrequencies(): Map<Int, Long> {
        val result = mutableMapOf<Int, Long>()
        val coreCount = Runtime.getRuntime().availableProcessors()
        for (i in 0 until coreCount) {
            val freqStr = readFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq")
            result[i] = freqStr?.trim()?.toLongOrNull() ?: 0L
        }
        return result
    }

    // ==================== 工具方法 ====================

    /** 读文件：优先 su 0 读（解决 HyperOS SELinux 限制），fallback Java 直读 */
    private fun readFile(path: String): String? {
        // 优先 su 0 读
        val suResult = suCat(path)
        if (!suResult.isNullOrBlank()) return suResult.trim()
        // fallback：Java 直读
        return try {
            BufferedReader(FileReader(path)).use { it.readLine()?.trim() }
        } catch (e: Exception) { null }
    }

    fun readFileDirect(path: String): String? = readFile(path)

    fun readFileLines(path: String): List<String> {
        // 优先 su 0 读
        val suResult = suCat(path)
        if (!suResult.isNullOrBlank()) return suResult.trim().split("\n")
        // fallback：Java 直读
        return try {
            BufferedReader(FileReader(path)).use { reader ->
                reader.lineSequence().toList()
            }
        } catch (e: Exception) { emptyList() }
    }

    /** 用 su 0 cat 读（绕过受限 shell） */
    private fun suCat(path: String): String? {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs("cat '" + path + "'" ))
            val out = p.inputStream.bufferedReader().readText().trim()
            if (p.waitFor() == 0 && out.isNotBlank()) out else null
        } catch (e: Exception) { null }
    }
}
