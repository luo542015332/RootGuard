package com.pandasu.turbo.util

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import java.io.BufferedReader
import java.io.File
import java.io.FileReader
import java.io.InputStreamReader
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import com.pandasu.turbo.util.BatterySpoofManager

/**
 * 电池信息读取 & 充电控制工具
 *
 * - 读取功能：无需 root，通过系统 API 和 sysfs 节点获取
 * - 控制功能：需要 root 权限（内部通过 su 执行）
 * - 所有控制方法均为异步：内部开线程，回调在主线程
 */
object BatteryUtil {
    private const val TAG = "BatteryUtil"

    /** Root 可用性缓存：检测一次，后续直接跳过 root 尝试 */
    @Volatile
    private var rootChecked = false
    @Volatile
    private var rootAvailable = false

    /** 快速检测 root 是否可用（复用 ShizukuHelper 的格式探测，仅检测一次） */
    private fun isRootAvailable(): Boolean {
        if (rootChecked) return rootAvailable
        val available = ShizukuHelper.isSuAvailable()
        rootChecked = true
        rootAvailable = available
        return available
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 公共数据类型
    // ═══════════════════════════════════════════════════════════════════════

    data class BatteryInfo(
        val level: Int,
        val status: String,
        val health: String,
        val plugged: String,
        val temperature: Float,
        val voltage: Int,
        val technology: String,
        val currentNow: Long?,
        val chargeCounter: Long?,
        val energyCounter: Long?,
        val cycleCount: Int?,
        val capacity: Int?,
        val currentCapacity: Int?,
        val readWarnings: List<String> = emptyList()  // 读取时的警告信息
    ) {
        val tempCelsius: Float get() = temperature / 10f
        val currentMa: Long? get() = currentNow?.let { Math.abs(it) / 1000 }
        val powerMw: Float? get() {
            val i = currentMa ?: return null
            return i * voltage / 1000f
        }
    }

    /** 控制操作结果 */
    data class CtrlResult(
        val ok: Boolean,
        val msg: String,
        val changed: Int = 0,
        val failed: Int = 0,
        val details: List<String> = emptyList()  // 每个节点的具体结果
    )

    // ═══════════════════════════════════════════════════════════════════════
    // sysfs 节点路径常量
    // ═══════════════════════════════════════════════════════════════════════

    private val BATT_TEMP_PATHS = listOf(
        "/sys/class/power_supply/battery/batt_temp",
        "/sys/class/power_supply/battery/temp_batt",
        "/sys/class/power_supply/battery/temp",
        "/sys/class/power_supply/Battery/temp",
        "/sys/class/power_supply/bms/temp",
        "/sys/class/power_supply/qpnp-bms/temp",
        "/sys/class/power_supply/smb5-battery/temp"
    )

    private val CAPACITY_PATHS = listOf(
        "/sys/class/power_supply/battery/capacity",
        "/sys/class/power_supply/Battery/capacity",
        "/sys/class/power_supply/bms/capacity",
        "/sys/class/power_supply/qpnp-bms/capacity"
    )

    private val CYCLE_COUNT_PATHS = listOf(
        "/sys/class/power_supply/battery/cycle_count",
        "/sys/class/power_supply/Battery/cycle_count",
        "/sys/class/power_supply/bms/cycle_count",
        "/sys/class/power_supply/battery/cyc_count",
        "/sys/class/power_supply/battery/qb_cycle_count",
        "/sys/class/power_supply/qpnp-bms/cycle_count",
        "/sys/class/power_supply/qpnp-fg-gen3/cycle_count",
        "/sys/class/power_supply/maxfg/cycle_count",
        "/sys/class/power_supply/maxfg/cyc_count",
        "/sys/class/power_supply/petalite/cycle_count"
    )

    private val DESIGN_CAPACITY_PATHS = listOf(
        "/sys/class/power_supply/battery/charge_full_design",
        "/sys/class/power_supply/Battery/charge_full_design",
        "/sys/class/power_supply/bms/charge_full_design",
        "/sys/class/power_supply/qpnp-bms/charge_full_design",
        "/sys/class/power_supply/qpnp-fg-gen3/charge_full_design",
        "/sys/class/power_supply/maxfg/charge_full_design",
        "/sys/class/power_supply/petalite/charge_full_design",
        "/sys/class/power_supply/battery/design_capacity"
    )

    private val FULL_CAPACITY_PATHS = listOf(
        "/sys/class/power_supply/battery/charge_full",
        "/sys/class/power_supply/Battery/charge_full",
        "/sys/class/power_supply/bms/charge_full",
        "/sys/class/power_supply/qpnp-bms/charge_full",
        "/sys/class/power_supply/qpnp-fg-gen3/charge_full",
        "/sys/class/power_supply/maxfg/charge_full",
        "/sys/class/power_supply/petalite/charge_full",
        "/sys/class/power_supply/battery/full_capacity"
    )

    private val CHARGE_CURRENT_PATHS = listOf(
        "/sys/class/power_supply/battery/constant_charge_current",
        "/sys/class/power_supply/battery/constant_charge_current_max",
        "/sys/class/power_supply/battery/input_current_limit",
        "/sys/class/power_supply/usb/input_current_limit",
        "/sys/class/power_supply/battery/sdp_input_current_limit",
        "/sys/class/power_supply/battery/fast_charge_current"
    )

    private val FAST_CHARGE_PATHS = listOf(
        "/sys/class/power_supply/battery/allow_hvdcp",
        "/sys/class/power_supply/battery/allow_hvdcp_detection",
        "/sys/class/power_supply/usb/hvdcp_opti",
        "/sys/class/power_supply/battery/hvdcp_detect",
        "/sys/class/power_supply/battery/charge_type"
    )

    // ═══════════════════════════════════════════════════════════════════════
    // 第一部分：电池信息读取（无需 root）
    // ═══════════════════════════════════════════════════════════════════════

    fun getBatteryInfo(context: Context): BatteryInfo {
        val warnings = mutableListOf<String>()
        val intent = context.registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))

        val level = intent?.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) ?: -1
        val scale = intent?.getIntExtra(BatteryManager.EXTRA_SCALE, 100) ?: 100
        var levelPercent = if (scale > 0) (level * 100 / scale) else level

        // fallback：从 sysfs 读电量
        if (levelPercent <= 0 || levelPercent > 100) {
            val sysLevel = readFromPaths(CAPACITY_PATHS)?.toIntOrNull()
            if (sysLevel != null && sysLevel in 1..100) levelPercent = sysLevel
        }

        val status = when (intent?.getIntExtra(BatteryManager.EXTRA_STATUS, -1)) {
            BatteryManager.BATTERY_STATUS_CHARGING -> "充电中"
            BatteryManager.BATTERY_STATUS_DISCHARGING -> "放电中"
            BatteryManager.BATTERY_STATUS_FULL -> "已充满"
            BatteryManager.BATTERY_STATUS_NOT_CHARGING -> "未充电"
            else -> "未知"
        }

        val health = when (intent?.getIntExtra(BatteryManager.EXTRA_HEALTH, -1)) {
            BatteryManager.BATTERY_HEALTH_GOOD -> "良好"
            BatteryManager.BATTERY_HEALTH_OVERHEAT -> "过热"
            BatteryManager.BATTERY_HEALTH_DEAD -> "损坏"
            BatteryManager.BATTERY_HEALTH_OVER_VOLTAGE -> "过压"
            BatteryManager.BATTERY_HEALTH_COLD -> "过冷"
            else -> "未知"
        }

        val plugged = when (intent?.getIntExtra(BatteryManager.EXTRA_PLUGGED, -1)) {
            BatteryManager.BATTERY_PLUGGED_AC -> "AC 充电"
            BatteryManager.BATTERY_PLUGGED_USB -> "USB 充电"
            BatteryManager.BATTERY_PLUGGED_WIRELESS -> "无线充电"
            0 -> "未插电"
            else -> "未知"
        }

        // 实时电流（API 级别 21+）
        val bm = context.getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        val currentNow = bm.getLongProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW)
        val chargeCounter = bm.getLongProperty(BatteryManager.BATTERY_PROPERTY_CHARGE_COUNTER)
        val energyCounter = bm.getLongProperty(BatteryManager.BATTERY_PROPERTY_ENERGY_COUNTER)

        // 循环次数（API 34+ 或者从 sysfs 读）
        var cycleCount: Int? = null
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            cycleCount = intent?.getIntExtra("cycle_count", -1)?.takeIf { it >= 0 }
        }
        if (cycleCount == null) {
            val cc = readFromPaths(CYCLE_COUNT_PATHS)?.toIntOrNull()
            if (cc != null) cycleCount = cc
            else warnings.add("循环次数：sysfs 节点不可读（HyperOS 可能限制）")
        }

        // 设计容量
        val designCapacity = readFromPaths(DESIGN_CAPACITY_PATHS)?.toLongOrNull()?.let {
            if (it > 1000000) (it / 1000).toInt() else it.toInt()
        } ?: run {
            warnings.add("设计容量：sysfs 节点不可读")
            null
        }

        // 当前容量
        val currentCapacity = chargeCounter?.takeIf { it != Long.MIN_VALUE && Math.abs(it) > 1000 }?.let { cc ->
            val ccMah = Math.abs(cc) / 1000
            if (ccMah in 1..20000) ccMah.toInt() else null
        } ?: run {
            val full = readFromPaths(FULL_CAPACITY_PATHS)?.toLongOrNull()?.let {
                if (it > 1000000) (it / 1000) else it
            }?.toInt()
            if (full != null && levelPercent in 1..100) {
                (full * levelPercent / 100)
            } else {
                warnings.add("当前容量：通过电量百分比估算")
                if (full != null && levelPercent in 1..100) (full * levelPercent / 100) else null
            }
        }

        // 电池温度（API 值优先，sysfs 作为 fallback）
        var temperature = intent?.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, 0)?.toFloat() ?: 0f
        if (temperature == 0f || temperature < -50f || temperature > 1000f) {
            val sysTemp = readFromPaths(BATT_TEMP_PATHS)?.toFloatOrNull()
            if (sysTemp != null) {
                temperature = if (sysTemp > 1000) sysTemp / 10f  // 毫度转十分之一度
                else if (sysTemp > 100) sysTemp / 10f           // 已是十分之一度
                else sysTemp * 10f                              // 摄氏度转十分之一度
            }
        }

        return BatteryInfo(
            level = levelPercent,
            status = status,
            health = health,
            plugged = plugged,
            temperature = temperature,
            voltage = intent?.getIntExtra(BatteryManager.EXTRA_VOLTAGE, 0) ?: 0,
            technology = intent?.getStringExtra(BatteryManager.EXTRA_TECHNOLOGY) ?: "N/A",
            currentNow = currentNow.takeIf { it != Long.MIN_VALUE && Math.abs(it) > 1 },
            chargeCounter = chargeCounter.takeIf { it != Long.MIN_VALUE && Math.abs(it) > 1 },
            energyCounter = energyCounter.takeIf { it != Long.MIN_VALUE && Math.abs(it) > 1 },
            cycleCount = cycleCount,
            capacity = designCapacity,
            currentCapacity = currentCapacity,
            readWarnings = warnings
        )
    }

    fun getBatteryHealthPercent(): Float? {
        val design = readFromPaths(DESIGN_CAPACITY_PATHS)?.toLongOrNull() ?: return null
        val full = readFromPaths(FULL_CAPACITY_PATHS)?.toLongOrNull() ?: return null
        if (design <= 0 || full <= 0) return null
        val d = if (design > 1000000) design / 1000 else design
        val f = if (full > 1000000) full / 1000 else full
        val percent = (f.toFloat() / d.toFloat()) * 100f
        return if (percent in 0.1f..150f) percent else null
    }

    fun getFullChargeCapacity(): Int? {
        return readFromPaths(FULL_CAPACITY_PATHS)?.toLongOrNull()?.let {
            if (it > 1000000) (it / 1000).toInt() else it.toInt()
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 第二部分：充电控制（需要 Root，异步执行）
    // ═══════════════════════════════════════════════════════════════════════

    /**
     * 伪造电池温度（绕过充电温控）
     * 优先级：BatterySpoofManager（mount --bind，APatch/Magisk 通） > 直接写 sysfs
     * @param tempC 温度(°C)，null = 恢复真实温度
     */
    fun spoofBatteryTemp(tempC: Int?, callback: (CtrlResult) -> Unit) {
        runAsync(callback) {
            if (tempC == null) {
                restoreTempInternal()
            } else {
                // 优先用 mount --bind 方式（不需要 root 写 sysfs）
                val bindResult = runBlocking { BatterySpoofManager.setFakeTemp(tempC) }
                if (bindResult.isSuccess) {
                    CtrlResult(true, "温度伪装成功 ${tempC}°C（mount --bind 模式）", 1, 0,
                        listOf("[✓] batt_fake_temp → ${tempC}°C"))
                } else {
                    // 降级：直接写 sysfs
                    fakeTempInternal(tempC)
                }
            }
        }
    }

    /**
     * 设置充电电流上限
     * @param mA 电流上限(mA)，0 = 解除限制
     */
    fun setChargeCurrent(mA: Int, callback: (CtrlResult) -> Unit) {
        runAsync(callback) { setChargeCurrentInternal(mA) }
    }

    /**
     * 开启快充
     */
    fun enableFastCharge(callback: (CtrlResult) -> Unit) {
        runAsync(callback) { enableFastChargeInternal() }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 兼容旧 API
    // ═══════════════════════════════════════════════════════════════════════

    @Deprecated("使用 spoofBatteryTemp", ReplaceWith("spoofBatteryTemp(fakeTempC, callback)"))
    fun setFakeBatteryTemp(fakeTempC: Int?, callback: (Boolean, String) -> Unit) {
        spoofBatteryTemp(fakeTempC) { callback(it.ok, it.msg) }
    }

    @Deprecated("使用 spoofBatteryTemp(null, callback)")
    fun restoreRealBatteryTemp(callback: (Boolean, String) -> Unit) {
        spoofBatteryTemp(null) { callback(it.ok, it.msg) }
    }

    @Deprecated("使用 ThermalUtil.disableThermalThrottle")
    fun disableChargingTempLimit(callback: (Boolean, String) -> Unit) {
        ThermalUtil.disableThermalThrottle(callback)
    }

    @Deprecated("使用 ThermalUtil.restoreThermalThrottle")
    fun restoreChargingTempLimit(callback: (Boolean, String) -> Unit) {
        ThermalUtil.restoreThermalThrottle(callback)
    }

    @Deprecated("使用 ThermalUtil.disableThermalThrottle 或 ThermalUtil 相关方法")
    fun setChargingTempLimit(tempC: Int, callback: (Boolean, String) -> Unit) {
        if (tempC == 999) {
            ThermalUtil.disableThermalThrottle(callback)
        } else {
            callback(false, "请使用温控页面的功能")
        }
    }

    @Deprecated("使用 setChargeCurrent")
    fun setChargingCurrentLimit(mA: Int, callback: (Boolean) -> Unit) {
        setChargeCurrent(mA) { callback(it.ok) }
    }

    @Deprecated("使用 enableFastCharge(CtrlResult)")
    fun enableFastChargeCompat(callback: (Boolean, String) -> Unit) {
        enableFastCharge { callback(it.ok, it.msg) }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：异步框架
    // ═══════════════════════════════════════════════════════════════════════

    private val mainHandler = Handler(Looper.getMainLooper())

    private fun runAsync(callback: (CtrlResult) -> Unit, block: () -> CtrlResult) {
        Thread {
            try {
                val rootStatus = checkRootStatus()
                if (!rootStatus.available) {
                    deliverResult(CtrlResult(false, rootStatus.errorMsg ?: "没有 Root 权限"), callback)
                    return@Thread
                }
                val result = block()
                deliverResult(result, callback)
            } catch (e: Exception) {
                Log.e(TAG, "runAsync error", e)
                deliverResult(CtrlResult(false, "执行异常: ${e.message}"), callback)
            }
        }.start()
    }

    private fun deliverResult(result: CtrlResult, callback: (CtrlResult) -> Unit) {
        mainHandler.post { callback(result) }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：Root 执行原语
    // ═══════════════════════════════════════════════════════════════════════

    data class RootStatus(val available: Boolean, val shellType: String?, val errorMsg: String?)

    /**
     * 全面检查 Root 状态
     */
    private fun checkRootStatus(): RootStatus {
        return try {
            val p1 = Runtime.getRuntime().exec(ShizukuHelper.suArgs("id"))
            val out1 = p1.inputStream.bufferedReader().readText()
            val err1 = p1.errorStream.bufferedReader().readText()
            val exit1 = p1.waitFor()
            if (exit1 == 0 && out1.contains("uid=0")) {
                val shellType = when {
                    out1.contains("magisk") || out1.contains("context=u:r:su") -> "Magisk"
                    out1.contains("context=u:r:shell") -> "Shell"
                    else -> "su"
                }
                return RootStatus(true, shellType, null)
            }
            RootStatus(false, null, "Root 权限被拒绝，请检查 Magisk 授权弹窗")
        } catch (e: Exception) {
            RootStatus(false, null, "Root 检查失败: ${e.message}")
        }
    }

    /**
     * 以 root 执行命令，返回 (exitCode, stdout+stderr)
     * 尝试多种调用方式：优先直接进程（绕过 shell），fallback 到 shell
     */
    private fun suExec(command: String): Pair<Int, String> {
        return try {
            // 方式1：直接 su 运行（不走 shell），绕过受限 shell context
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs(command))
            val stdout = p.inputStream.bufferedReader().readText()
            val stderr = p.errorStream.bufferedReader().readText()
            val exit = p.waitFor()
            if (exit == 0 || stdout.isNotBlank() || stderr.isNotBlank()) {
                return Pair(exit, stdout + if (stderr.isNotBlank()) "\n[stderr] $stderr" else "")
            }
            // 方式2：su 0 sh -c（备用）
            val p2 = Runtime.getRuntime().exec(ShizukuHelper.suArgs(command))
            val out2 = p2.inputStream.bufferedReader().readText()
            val err2 = p2.errorStream.bufferedReader().readText()
            val exit2 = p2.waitFor()
            Pair(exit2, out2 + if (err2.isNotBlank()) "\n[stderr] $err2" else "")
        } catch (e: Exception) {
            Pair(-1, e.message ?: "exec failed")
        }
    }

    /**
     * 直接读文件（绕过 shell，用 su 0 直接 cat）
     */
    private fun suCat(path: String): String? {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs("cat '" + path + "'" ))
            val out = p.inputStream.bufferedReader().readText().trim()
            if (p.waitFor() == 0 && out.isNotBlank()) out else null
        } catch (e: Exception) { null }
    }

    /**
     * 写入 sysfs 节点（优先 tee 避免 shell 重定向被拦截）
     */
    private fun writeNode(path: String, value: String): Boolean {
        return try {
            // 方式1：su 0 tee（不走 shell 重定向）
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs("tee '" + path + "'" ))
            p.outputStream.write(value.toByteArray())
            p.outputStream.flush()
            p.outputStream.close()
            val stdout = p.inputStream.bufferedReader().readText()
            val stderr = p.errorStream.bufferedReader().readText()
            val exit = p.waitFor()
            if (exit != 0 || stderr.contains("Permission denied", ignoreCase = true)) {
                // 方式2：su 0 echo | tee
                val p2 = Runtime.getRuntime().exec(ShizukuHelper.suArgs("echo '$value' | tee '$path'"))
                val exit2 = p2.waitFor()
                val err2 = p2.errorStream.bufferedReader().readText()
                if (exit2 != 0 || err2.contains("Permission denied", ignoreCase = true)) return false
            }
            // 验证回读
            val content = suCat(path) ?: return false
            content.trim().contains(value.trim())
        } catch (e: Exception) {
            Log.e(TAG, "writeNode failed: $path = $value", e)
            false
        }
    }

    /**
     * 写入节点（不验证，用于恢复操作）
     */
    private fun writeNodeQuiet(path: String, value: String): Boolean {
        val (code, _) = suExec("echo '$value' > '$path' 2>/dev/null || true")
        return code == 0
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：具体控制逻辑
    // ═══════════════════════════════════════════════════════════════════════

    private fun fakeTempInternal(tempC: Int): CtrlResult {
        val results = mutableListOf<String>()
        val tempRaw = tempC * 10

        // ══════════════════════════════════════════════════════════════
        // 路径 1：cmd battery set temp（最可靠，Android 10+ 通用）
        // 直接修改 BatteryService 缓存，影响 dumpsys / BatteryManager API
        // ══════════════════════════════════════════════════════════════
        val cmdResult = suExec("cmd battery set temp $tempRaw")
        if (cmdResult.first == 0) {
            results.add("[✓] cmd battery set temp $tempRaw")
            // 验证 dumpsys
            val dumpResult = suExec("dumpsys battery | grep temperature:")
            if (dumpResult.second.contains(tempRaw.toString())) {
                results.add("[✓] dumpsys battery temperature = $tempRaw")
                return CtrlResult(true, "温度伪装成功 ${tempC}°C", 1, 0, results)
            }
            results.add("[✓] 命令执行成功")
            return CtrlResult(true, "温度已设为 ${tempC}°C", 1, 0, results)
        } else {
            results.add("[✗] cmd battery set temp 失败: ${cmdResult.second}")
        }

        // ══════════════════════════════════════════════════════════════
        // 路径 2：sysfs mount --bind（备选）
        // mount bind 后写 fake 文件可影响部分 App 的 sysfs 读取
        // ══════════════════════════════════════════════════════════════
        val fakeFile = "/data/local/tmp/batt_fake_temp"
        val moduleActive = File(fakeFile).exists() && File(fakeFile).canWrite()

        if (moduleActive) {
            writeNode(fakeFile, tempRaw.toString())
            results.add("[~] mount bind 模式: batt_fake_temp → ${tempC}°C")
        } else {
            // 初始化 mount bind
            suExec("chmod 666 $fakeFile 2>/dev/null || true")
            val initOk = writeNode(fakeFile, tempRaw.toString())
            if (initOk) {
                val mountResult = suExec("mount --bind $fakeFile /sys/class/power_supply/battery/temp 2>/dev/null")
                if (mountResult.first == 0) {
                    results.add("[✓] mount --bind 绑定成功")
                } else {
                    results.add("[~] mount bind 失败（SELinux 或权限问题）")
                }
            }
        }

        // ══════════════════════════════════════════════════════════════
        // 路径 3：直接写 sysfs（最后的备选）
        // ══════════════════════════════════════════════════════════════
        var changed = 0
        var failed = 0
        for (node in BATT_TEMP_PATHS) {
            if (!File(node).exists()) continue
            val ok = writeNode(node, tempRaw.toString())
            if (ok) {
                changed++
                results.add("[✓] $node → $tempC°C")
            } else {
                failed++
            }
        }

        // 设置 MIUI 属性（HyperOS 专用）
        suExec("setprop sys.thermal.batt.temp $tempRaw 2>/dev/null")

        return if (changed > 0 || cmdResult.first == 0) {
            CtrlResult(true, "温度伪装成功 ${tempC}°C", 1, failed, results)
        } else {
            CtrlResult(false, "温度伪装失败（SELinux 或系统限制）", 0, failed, results)
        }
    }

    private fun restoreTempInternal(): CtrlResult {
        val results = mutableListOf<String>()

        // 1. 先读取真实温度（从 thermal_zone，因为 battery/temp 可能已被伪装）
        // 找 battery 对应的 thermal_zone
        val thermalZoneResult = suExec("grep -l battery /sys/class/thermal/thermal_zone*/type 2>/dev/null | head -1")
        val thermalZonePath = thermalZoneResult.second.trim()
        
        val realTempRaw = if (thermalZonePath.isNotEmpty()) {
            // 从 thermal_zone 读取（单位: 厘°C）
            val zoneTemp = suExec("cat ${thermalZonePath.replace("/type", "/temp")}").second.trim().toIntOrNull() ?: 35000
            zoneTemp / 1000  // 转换为 厘°C（与 battery/temp 单位一致）
        } else {
            // fallback: 从 battery/temp 读取
            suExec("cat /sys/class/power_supply/battery/temp 2>/dev/null").second.trim()
                .toIntOrNull() ?: 350
        }
        val realTempC = realTempRaw / 10
        
        results.add("[i] 真实温度: ${realTempC}°C ($realTempRaw 厘°C)")

        // 2. 执行 cmd battery reset 恢复其他属性
        val resetResult = suExec("cmd battery reset")
        if (resetResult.first == 0) {
            results.add("[✓] cmd battery reset")
        } else {
            results.add("[~] cmd battery reset 失败: ${resetResult.second}")
        }

        // 3. 设置真实温度（确保温度正确）
        val setResult = suExec("cmd battery set temp $realTempRaw")
        if (setResult.first == 0) {
            results.add("[✓] cmd battery set temp $realTempRaw")
        } else {
            results.add("[~] cmd battery set temp 失败: ${setResult.second}")
        }

        // 4. 验证
        val dumpResult = suExec("dumpsys battery | grep temperature:")
        results.add("[i] dumpsys: ${dumpResult.second.trim()}")

        // 5. 写真实温度到 fake 文件（mount --bind 模式）
        try {
            val fakeFile = File("/data/local/tmp/batt_fake_temp")
            if (fakeFile.exists()) {
                fakeFile.writeText(realTempRaw.toString())
                results.add("[✓] fake 文件已更新: $realTempRaw")
            }
        } catch (_: Exception) {}

        return CtrlResult(true, "温度已恢复真实值 ${realTempC}°C", 1, 0, results)
    }

    private fun setChargeCurrentInternal(mA: Int): CtrlResult {
        val uA = mA * 1000
        val results = mutableListOf<String>()
        var changed = 0
        var failed = 0

        for (path in CHARGE_CURRENT_PATHS) {
            if (!File(path).exists()) {
                results.add("[跳过] $path 不存在")
                continue
            }
            if (writeNode(path, uA.toString())) {
                changed++
                results.add("[✓] $path → ${mA}mA")
            } else {
                failed++
                val (code, out) = suExec("cat '$path' 2>/dev/null || echo __ERR__")
                val current = if (out.trim() != "__ERR__") out.trim() else "无权限"
                results.add("[✗] $path 当前=$current")
            }
        }

        return if (changed > 0) {
            CtrlResult(true, "充电电流已限制为 ${mA}mA（${changed}个节点）", changed, failed, results)
        } else {
            CtrlResult(false, "未找到可写的充电电流节点（HyperOS 可能锁定）", changed, failed, results)
        }
    }

    private fun enableFastChargeInternal(): CtrlResult {
        val results = mutableListOf<String>()
        var changed = 0
        var failed = 0

        // 1. 开启 HVDCP 相关节点
        for (path in FAST_CHARGE_PATHS) {
            if (!File(path).exists()) continue
            if (writeNode(path, "1")) {
                changed++
                results.add("[✓] $path 已开启")
            } else {
                failed++
                results.add("[✗] $path 开启失败")
            }
        }

        // 2. 设置快充属性
        val props = listOf(
            "persist.sys.usb.config mtp,adb" to "USB 配置",
            "persist.qc.hvdcp_boost 1" to "HVDCP Boost",
            "persist.hvdcp.fast_charge 1" to "快速充电",
            "sys.qg.charge_type 2" to "充电类型"
        )
        for ((prop, name) in props) {
            val (code, _) = suExec("setprop $prop")
            results.add(if (code == 0) "[✓] setprop $name" else "[✗] setprop $name 失败")
            if (code == 0) changed++
        }

        return if (changed > 0) {
            CtrlResult(true, "快充已开启（${changed}项已配置）", changed, failed, results)
        } else {
            CtrlResult(false, "快充节点均无写入权限", changed, failed, results)
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：读取工具
    // ═══════════════════════════════════════════════════════════════════════

    /**
     * 从多个路径尝试读取（无 root），返回第一个成功的结果
     */
    private fun readFromPaths(paths: List<String>): String? {
        // 优先 root 读取（仅在 root 可用时尝试，避免无效超时阻塞）
        if (isRootAvailable()) {
            for (path in paths) {
                val rootResult = readFileAsRoot(path)
                if (!rootResult.isNullOrBlank()) return rootResult.trim()
            }
        }
        // fallback 普通读取
        for (path in paths) {
            if (!File(path).exists()) continue
            val result = readFile(path)
            if (!result.isNullOrBlank()) return result.trim()
        }
        return null
    }

    /**
     * 通过 root 读取文件，自动适配 su 格式（APatch 用 su -c，部分 ROM 用 su 0）
     */
    private fun readFileAsRoot(path: String): String? {
        return try {
            val process = Runtime.getRuntime().exec(ShizukuHelper.suArgs("cat '$path'"))
            val completed = process.waitFor(500, java.util.concurrent.TimeUnit.MILLISECONDS)
            if (!completed) {
                process.destroyForcibly()
                return null
            }
            val output = process.inputStream.bufferedReader().readText().trim()
            if (process.exitValue() == 0 && output.isNotBlank()) output else null
        } catch (e: Throwable) { null }
    }

    /**
     * 无 root 读取文件（用于 /data 目录之外的普通文件）
     */
    private fun readFile(path: String): String? {
        return try {
            BufferedReader(FileReader(path)).use { it.readLine()?.trim() }
        } catch (e: Exception) { null }
    }
}
