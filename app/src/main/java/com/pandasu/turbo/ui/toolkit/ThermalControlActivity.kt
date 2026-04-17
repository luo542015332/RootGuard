package com.pandasu.turbo.ui.toolkit

import android.app.ProgressDialog
import android.graphics.Color
import android.graphics.Typeface
import android.os.Build
import android.os.Bundle
import android.view.Gravity
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.pandasu.turbo.util.PowerKeeperHelper
import com.pandasu.turbo.util.ShizukuHelper
import com.pandasu.turbo.util.SystemInfoUtil
import kotlinx.coroutines.*
import java.text.DecimalFormat

class ThermalControlActivity : AppCompatActivity() {

    private lateinit var tvCpuTemp: TextView
    private lateinit var tvBatteryTemp: TextView
    private lateinit var tvGovernor: TextView
    private lateinit var tvCpuFreq: TextView
    private lateinit var tvStatus: TextView
    private lateinit var tvCurrentMode: TextView
    private var refreshJob: Job? = null
    private var currentMode: PowerKeeperHelper.ThermalMode? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "性能 & 温控"
            setDisplayHomeAsUpEnabled(true)
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }
        setContentView(root)

        buildUI(root)
        startRefresh()
    }

    override fun onDestroy() {
        refreshJob?.cancel()
        super.onDestroy()
    }

    private fun buildUI(root: LinearLayout) {
        // 实时状态卡片
        card(root, "实时状态") { sec ->
            tvCpuTemp = addRow(sec, "CPU 温度", "--")
            tvBatteryTemp = addRow(sec, "电池温度", "--")
            tvGovernor = addRow(sec, "调度器", "--")
            tvCpuFreq = addRow(sec, "当前频率", "--")
            tvStatus = addRow(sec, "温控状态", "检测中...")
        }

        // MIUI 温控模式（5档切换）
        if (PowerKeeperHelper.isSupported()) {
            card(root, "MIUI 温控模式") { sec ->
                tvCurrentMode = TextView(this).apply {
                    text = "当前: 检测中..."
                    textSize = 13f
                    setTextColor(0xFF9E9E9E.toInt())
                    setPadding(0, 0, 0, dp(10))
                }
                sec.addView(tvCurrentMode)

                // 5 个模式按钮横向排列
                val modeRow = android.widget.LinearLayout(this).apply {
                    orientation = android.widget.LinearLayout.HORIZONTAL
                    layoutParams = android.widget.LinearLayout.LayoutParams(
                        android.view.ViewGroup.LayoutParams.MATCH_PARENT,
                        android.view.ViewGroup.LayoutParams.WRAP_CONTENT
                    )
                }
                for (mode in PowerKeeperHelper.ThermalMode.entries) {
                    val btn = android.widget.Button(this).apply {
                        text = "${mode.icon}\n${mode.label}"
                        textSize = 11f
                        setBackgroundColor(mode.color)
                        setTextColor(0xFFFFFFFF.toInt())
                        layoutParams = android.widget.LinearLayout.LayoutParams(0, dp(56), 1f).apply {
                            marginEnd = dp(4)
                        }
                        setOnClickListener { applyThermalMode(mode) }
                    }
                    modeRow.addView(btn)
                }
                sec.addView(modeRow)

                // 检测当前模式
                CoroutineScope(Dispatchers.IO).launch {
                    val detected = PowerKeeperHelper.detectCurrentMode()
                    currentMode = detected
                    withContext(Dispatchers.Main) {
                        val mode = detected
                        tvCurrentMode.text = "当前: ${mode?.let { "${it.icon} ${it.label}" } ?: "未知"}"
                        tvCurrentMode.setTextColor(mode?.color ?: 0xFF9E9E9E.toInt())
                    }
                }
            }
        }

        // 温控管理
        card(root, "温控管理") {
            actionBtn(it, "解除温控墙", "调高温控阈值（重启后恢复）") {
                performAction("解除温控墙") { cb -> com.pandasu.turbo.util.ThermalUtil.disableThermalThrottle(cb) }
            }
            actionBtn(it, "恢复温控", "恢复正常温控策略") {
                performAction("恢复温控") { cb -> com.pandasu.turbo.util.ThermalUtil.restoreThermalThrottle(cb) }
            }
        }

        // CPU 调频
        card(root, "CPU 调频") {
            actionBtn(it, "Performance", "CPU 始终最高频率") { setGovernor("performance") }
            actionBtn(it, "Powersave", "CPU 始终最低频率") { setGovernor("powersave") }
            actionBtn(it, "Schedutil", "系统默认智能调度") { setGovernor("schedutil") }
            actionBtn(it, "Ondemand", "按需动态调频") { setGovernor("ondemand") }
        }

        // 其他优化（不需要 root）
        card(root, "其他优化") {
            actionBtn(it, "关闭预加载", "加快旧设备响应") {
                com.pandasu.turbo.util.ThermalUtil.disablePreload(this@ThermalControlActivity) {
                    runOnUiThread { Toast.makeText(this@ThermalControlActivity, if (it) "预加载已关闭" else "操作失败", Toast.LENGTH_SHORT).show() }
                }
            }
            actionBtn(it, "强制 GPU 渲染", "提升渲染性能") {
                com.pandasu.turbo.util.ThermalUtil.enableHardwareRendering(this@ThermalControlActivity) {
                    runOnUiThread { Toast.makeText(this@ThermalControlActivity, if (it) "GPU 渲染已开启" else "操作失败", Toast.LENGTH_SHORT).show() }
                }
            }
        }
    }

    private fun card(parent: LinearLayout, title: String, block: (LinearLayout) -> Unit): LinearLayout {
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
        block(sec)
        parent.addView(sec)
        return sec
    }

    private fun addRow(parent: LinearLayout, label: String, value: String): TextView {
        val row = LinearLayout(parent.context).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dp(5), 0, dp(5))
        }
        val l = TextView(parent.context).apply {
            text = label
            textSize = 14f
            setTextColor(0xFF757575.toInt())
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
        }
        val v = TextView(parent.context).apply {
            text = value
            textSize = 14f
            setTextColor(0xFF212121.toInt())
            gravity = Gravity.END
        }
        row.addView(l)
        row.addView(v)
        parent.addView(row)
        return v
    }

    private fun actionBtn(parent: LinearLayout, label: String, desc: String, action: () -> Unit) {
        val btn = Button(this).apply {
            text = "$label\n$desc"
            textSize = 13f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
            setOnClickListener { action() }
        }
        parent.addView(btn)
    }

    private fun actionBtn(parent: LinearLayout, label: String, action: () -> Unit) {
        val btn = Button(this).apply {
            text = label
            textSize = 13f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
            setOnClickListener { action() }
        }
        parent.addView(btn)
    }

    private fun startRefresh() {
        val activityCtx = this
        refreshJob = CoroutineScope(Dispatchers.Main).launch {
            while (isActive) {
                try {
                    val thermal = withContext(Dispatchers.IO) { SystemInfoUtil.getThermalInfo(activityCtx) }
                    val cpu = withContext(Dispatchers.IO) { SystemInfoUtil.getCpuInfo() }

                    // CPU 温度（已格式化）
                    tvCpuTemp.text = thermal.cpuTemp ?: "N/A"
                    val cpuTempVal = thermal.cpuTemp?.replace(" C", "")?.toFloatOrNull()
                    tvCpuTemp.setTextColor(colorForTemp(cpuTempVal))

                    // 电池温度（已格式化）
                    tvBatteryTemp.text = thermal.batteryTemp ?: "N/A"

                    // 调度器
                    tvGovernor.text = cpu.governor.ifBlank { "N/A" }

                    // 当前频率（取第一个核，已是 kHz）
                    val freqMhz = cpu.frequencies.firstOrNull()?.second?.div(1000)
                    tvCpuFreq.text = freqMhz?.let { "$it MHz" } ?: "N/A"

                    // 温控状态
                    tvStatus.text = when {
                        cpuTempVal != null && cpuTempVal > 60 -> "过热"
                        cpuTempVal != null && cpuTempVal > 45 -> "温热"
                        else -> "正常"
                    }
                    tvStatus.setTextColor(when {
                        cpuTempVal != null && cpuTempVal > 60 -> 0xFFF44336.toInt()
                        cpuTempVal != null && cpuTempVal > 45 -> 0xFFFF9800.toInt()
                        else -> 0xFF4CAF50.toInt()
                    })

                } catch (e: Exception) { }
                delay(3000)
            }
        }
    }

    private fun colorForTemp(c: Float?): Int {
        return when {
            c == null -> 0xFF757575.toInt()
            c > 60 -> 0xFFF44336.toInt()
            c > 45 -> 0xFFFF9800.toInt()
            else -> 0xFF4CAF50.toInt()
        }
    }

    private fun applyThermalMode(mode: PowerKeeperHelper.ThermalMode) {
        val warning = mode.warning
        if (warning != null) {
            AlertDialog.Builder(this)
                .setTitle("${mode.icon} ${mode.label}")
                .setMessage("$warning\n\n确定要切换到此模式吗？")
                .setPositiveButton("确定") { _, _ -> doApplyThermalMode(mode) }
                .setNegativeButton("取消", null)
                .show()
        } else {
            doApplyThermalMode(mode)
        }
    }

    private fun doApplyThermalMode(mode: PowerKeeperHelper.ThermalMode) {
        val pd = ProgressDialog(this).apply { setMessage("正在切换模式..."); show() }
        PowerKeeperHelper.applyMode(this, mode) { result ->
            pd.dismiss()
            runOnUiThread {
                if (result.ok) {
                    currentMode = mode
                    tvCurrentMode.text = "当前: ${mode.icon} ${mode.label}"
                    tvCurrentMode.setTextColor(mode.color)
                    Toast.makeText(this, result.msg, Toast.LENGTH_SHORT).show()
                } else {
                    AlertDialog.Builder(this)
                        .setTitle("切换失败")
                        .setMessage(result.msg)
                        .setPositiveButton("确定", null)
                        .show()
                }
            }
        }
    }

    private fun setGovernor(gov: String) {
        val coreCount = Runtime.getRuntime().availableProcessors()
        val commands = (0 until coreCount).map {
            "echo $gov > /sys/devices/system/cpu/cpu$it/cpufreq/scaling_governor"
        }
        val pd = ProgressDialog(this).apply { setMessage("切换调度器..."); show() }
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                // execScript 用 && 串联，exitCode != 0 表示至少一个失败
                // 但 shell && 的 exitCode 是最后一个命令的结果
                // 更可靠的方式是回读验证
                ShizukuHelper.readFile("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor", useSu = true) { actualGov ->
                    runOnUiThread {
                        pd.dismiss()
                        if (actualGov?.trim() == gov) {
                            Toast.makeText(this@ThermalControlActivity, "调度器已切换: $gov", Toast.LENGTH_SHORT).show()
                        } else {
                            Toast.makeText(this@ThermalControlActivity, "切换失败（$actualGov），可能需要 Root 权限", Toast.LENGTH_LONG).show()
                        }
                    }
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    pd.dismiss()
                    Toast.makeText(this@ThermalControlActivity, "操作失败: $msg", Toast.LENGTH_LONG).show()
                }
            }
        })
    }

    private fun performAction(name: String, action: ((Boolean, String) -> Unit) -> Unit) {
        val progress = ProgressDialog(this).apply { setMessage("正在执行..."); show() }
        action { success, msg ->
            progress.dismiss()
            runOnUiThread {
                if (success) Toast.makeText(this, "操作成功", Toast.LENGTH_SHORT).show()
                else Toast.makeText(this, "操作失败: $msg", Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
