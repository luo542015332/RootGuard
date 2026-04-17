package com.pandasu.turbo.ui.toolkit

import android.app.KeyguardManager
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.Color
import android.graphics.Typeface
import android.os.Build
import android.os.Bundle
import android.os.BatteryManager
import android.view.Gravity
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.ScrollView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.pandasu.turbo.util.SystemInfoUtil
import kotlinx.coroutines.*

class SystemInfoActivity : AppCompatActivity() {

    private lateinit var root: LinearLayout

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "系统信息"
            setDisplayHomeAsUpEnabled(true)
        }

        root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }
        setContentView(ScrollView(this).apply {
            addView(root)
        })

        loadAllInfo()
    }

    private fun loadAllInfo() {
        // 设备信息（同步）
        val device = SystemInfoUtil.getDeviceInfo()
        section("设备信息") {
            row("品牌", device.brand)
            row("型号", device.model)
            row("Android", "${device.androidVersion} (API ${device.sdk})")
            row("安全补丁", device.securityPatch ?: "不支持")
            row("构建号", device.buildId)
            row("构建类型", device.buildType)
        }

        // CPU 信息（异步）—— 在协程启动前捕获 sec 引用
        val cpuSec = section("CPU 信息") {}
        CoroutineScope(Dispatchers.Main).launch {
            val cpu = withContext(Dispatchers.IO) { SystemInfoUtil.getCpuInfo() }
            runOnUiThread {
                row(cpuSec, "核心数", "${cpu.coreCount}")
                row(cpuSec, "架构", cpu.cpuArchitecture)
                row(cpuSec, "调度器", cpu.governor)
                row(cpuSec, "最大频率", "${(cpu.maxFrequencyKHz / 1000)} MHz")
                row(cpuSec, "最小频率", "${(cpu.minFrequencyKHz / 1000)} MHz")
                cpu.frequencies.take(8).forEach { (core, freqKHz) ->
                    val mhz = if (freqKHz > 0) freqKHz / 1000 else 0L
                    row(cpuSec, "核心 $core", if (mhz > 0) "$mhz MHz" else "离线")
                }
            }
        }

        // 内存信息（异步）
        val memSec = section("内存信息") {}
        CoroutineScope(Dispatchers.Main).launch {
            val mem = withContext(Dispatchers.IO) {
                SystemInfoUtil.getMemoryInfo(this@SystemInfoActivity)
            }
            runOnUiThread {
                row(memSec, "总内存", mem.totalRamStr)
                row(memSec, "已用", "${mem.usedRamStr} (${mem.usedPercent}%)")
                row(memSec, "可用", mem.availableRamStr)
                row(memSec, "低内存阈值", "${mem.thresholdMB} MB")
                row(memSec, "低内存状态", if (mem.lowMemory) "是（内存紧张）" else "否")
                progressBar(memSec, mem.usedPercent)
            }
        }

        // 存储信息（异步）
        val storageSec = section("存储信息") {}
        CoroutineScope(Dispatchers.Main).launch {
            val storage = withContext(Dispatchers.IO) { SystemInfoUtil.getStorageInfo() }
            runOnUiThread {
                row(storageSec, "内部总量", storage.internalTotalStr)
                row(storageSec, "内部已用", "${storage.internalUsedStr} (${storage.internalUsedPercent}%)")
                row(storageSec, "内部可用", storage.internalFreeStr)
                progressBar(storageSec, storage.internalUsedPercent)
                storage.externalTotalStr?.let { t ->
                    storage.externalFreeStr?.let { f ->
                        row(storageSec, "外部存储", "总量 $t / 可用 $f")
                    }
                }
            }
        }

        // 屏幕信息（同步）
        section("屏幕信息") {
            val display = SystemInfoUtil.getDisplayInfo(this)
            row("分辨率", "${display.widthPx} x ${display.heightPx}")
            row("密度", "${display.density} (${display.densityDpi} dpi)")
            row("刷新率", "${display.refreshRate.toInt()} Hz")
        }

        // 温度信息（异步）
        val thermalSec = section("温度信息") {}
        CoroutineScope(Dispatchers.Main).launch {
            val thermal = withContext(Dispatchers.IO) {
                SystemInfoUtil.getThermalInfo(this@SystemInfoActivity)
            }
            runOnUiThread {
                row(thermalSec, "CPU 温度", thermal.cpuTemp ?: "N/A")
                thermal.batteryTemp?.let { row(thermalSec, "电池温度", it) }
                thermal.thermalZones.forEach { (type, temp) ->
                    row(thermalSec, type, temp)
                }
                if (thermal.thermalZones.isEmpty() && thermal.cpuTemp == "N/A" && thermal.batteryTemp == null) {
                    row(thermalSec, "状态", "无温度数据（需要 Root）")
                }
            }
        }

        // 安全信息
        val securitySec = section("安全信息") {}
        CoroutineScope(Dispatchers.Main).launch {
            val selinux = withContext(Dispatchers.IO) { SystemInfoUtil.getSelinuxStatus() }
            runOnUiThread {
                row(securitySec, "SELinux", selinux)
                try {
                    val km = getSystemService(KEYGUARD_SERVICE) as KeyguardManager
                    row(securitySec, "屏幕锁定", if (km.isDeviceSecure) "已开启" else "未开启")
                } catch (e: Exception) { }
            }
        }

        // 电池信息（同步）
        section("电池信息") {
            val bm = registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            val level = bm?.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) ?: -1
            val scale = bm?.getIntExtra(BatteryManager.EXTRA_SCALE, 100) ?: 100
            val pct = if (scale > 0) (level * 100 / scale) else -1
            val status = when (bm?.getIntExtra(BatteryManager.EXTRA_STATUS, -1)) {
                BatteryManager.BATTERY_STATUS_CHARGING -> "充电中"
                BatteryManager.BATTERY_STATUS_DISCHARGING -> "放电中"
                BatteryManager.BATTERY_STATUS_FULL -> "已充满"
                BatteryManager.BATTERY_STATUS_NOT_CHARGING -> "未充电"
                else -> "未知"
            }
            val tech = bm?.getStringExtra(BatteryManager.EXTRA_TECHNOLOGY) ?: "N/A"
            val voltage = bm?.getIntExtra(BatteryManager.EXTRA_VOLTAGE, -1)?.takeIf { it > 0 }?.let { "${it} mV" } ?: "N/A"
            row("电量", "$pct%")
            row("状态", status)
            row("电池技术", tech)
            row("电压", voltage)
        }

        // 传感器（异步）
        section("传感器列表") {
            val activityCtx: android.content.Context = this
            CoroutineScope(Dispatchers.Main).launch {
                val sensors = withContext(Dispatchers.IO) {
                    SystemInfoUtil.getSensorList(activityCtx)
                }
                val sec = latestSection()
                runOnUiThread {
                    sec.addView(TextView(activityCtx).apply {
                        text = "共 ${sensors.size} 个传感器"
                        textSize = 13f
                        setTextColor(0xFF757575.toInt())
                        setPadding(0, dp(4), 0, dp(8))
                    })
                    sensors.take(15).forEach { sensor ->
                        val name = sensor.substringBefore(" (")
                        val detail = sensor.substringAfter("(").substringBefore(")")
                        row(sec, name, detail)
                    }
                    if (sensors.size > 15) {
                        row(sec, "...", "还有 ${sensors.size - 15} 个")
                    }
                }
            }
        }
    }

    private fun section(title: String, block: () -> Unit): LinearLayout {
        val sec = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(14), dp(16), dp(14))
            setBackgroundColor(Color.WHITE)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) elevation = 2f
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(12) }
        }
        sec.addView(TextView(this).apply {
            text = title
            textSize = 16f
            setTextColor(0xFF1976D2.toInt())
            typeface = Typeface.DEFAULT_BOLD
            setPadding(0, 0, 0, dp(10))
        })
        root.addView(sec)  // ← 先加到 root，再执行 block
        block()
        return sec
    }

    private fun latestSection(): LinearLayout {
        return root.getChildAt(root.childCount - 1) as LinearLayout
    }

    private fun row(label: String, value: String) {
        row(latestSection(), label, value)
    }

    private fun row(sec: LinearLayout, label: String, value: String) {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dp(5), 0, dp(5))
        }
        row.addView(TextView(this).apply {
            text = label
            textSize = 14f
            setTextColor(0xFF757575.toInt())
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
        })
        row.addView(TextView(this).apply {
            text = value
            textSize = 14f
            setTextColor(0xFF212121.toInt())
            gravity = Gravity.END
        })
        sec.addView(row)
    }

    private fun progressBar(sec: LinearLayout, percent: Int) {
        sec.addView(ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            max = 100
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(20)
            ).apply { topMargin = dp(4); bottomMargin = dp(8) }
            this.progress = percent.coerceIn(0, 100)
        })
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
