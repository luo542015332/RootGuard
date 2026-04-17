package com.pandasu.turbo.ui.toolkit

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
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.pandasu.turbo.util.BatteryUtil
import com.pandasu.turbo.util.ModuleInstallerUtil
import com.pandasu.turbo.util.ThermalUtil
import kotlinx.coroutines.*

class BatteryInfoActivity : AppCompatActivity() {
    private lateinit var tvLevel: TextView
    private lateinit var progressLevel: ProgressBar
    private lateinit var tvTemp: TextView
    private lateinit var tvCurrent: TextView
    private lateinit var tvVoltage: TextView
    private lateinit var tvTech: TextView
    private lateinit var tvStatus: TextView
    private lateinit var tvHealth: TextView
    private lateinit var tvPlugged: TextView
    private lateinit var tvCapacity: TextView
    private lateinit var tvCurrentCap: TextView
    private lateinit var tvCycleCount: TextView
    private lateinit var tvHealthPercent: TextView
    private var refreshJob: Job? = null
    private var moduleInstallJob: Job? = null
    private lateinit var moduleStatusTv: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "电池信息"
            setDisplayHomeAsUpEnabled(true)
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }
        val scrollView = ScrollView(this)
        scrollView.addView(root)
        setContentView(scrollView)

        buildUI(root)
        checkModuleStatus()
        startRefresh()
    }

    override fun onDestroy() {
        refreshJob?.cancel()
        super.onDestroy()
    }

    private fun buildUI(root: LinearLayout) {
        // ── 大电量卡片 ─────────────────────────────────────────
        val batteryCard = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setPadding(dp(24), dp(24), dp(24), dp(24))
            setBackgroundColor(Color.WHITE)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) elevation = 2f
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(12) }
        }

        tvLevel = TextView(this).apply {
            text = "--%"
            textSize = 72f
            typeface = Typeface.create("sans-serif-light", Typeface.NORMAL)
            gravity = Gravity.CENTER
            setTextColor(0xFF4CAF50.toInt())
        }

        progressLevel = ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            max = 100
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(20)
            ).apply { topMargin = dp(12); bottomMargin = dp(12) }
        }

        tvStatus = TextView(this).apply {
            text = ""
            textSize = 14f
            gravity = Gravity.CENTER
            setPadding(dp(8), dp(4), dp(8), dp(4))
            setBackgroundColor(0xFFEEFFEE.toInt())
            visibility = View.GONE
        }

        batteryCard.addView(tvLevel)
        batteryCard.addView(progressLevel)
        batteryCard.addView(tvStatus)
        root.addView(batteryCard)

        // ── 基础信息 ─────────────────────────────────────────
        card(root, "基础信息") {
            tvTemp = addRow(it, "电池温度", "--")
            tvCurrent = addRow(it, "实时电流", "--")
            tvVoltage = addRow(it, "当前电压", "--")
            tvTech = addRow(it, "电池技术", "--")
            tvHealth = addRow(it, "电池健康", "--")
            tvPlugged = addRow(it, "充电方式", "--")
        }

        // ── 容量与循环 ─────────────────────────────────────────
        card(root, "容量与循环") {
            tvCapacity = addRow(it, "设计容量", "--")
            tvCurrentCap = addRow(it, "当前容量", "--")
            tvCycleCount = addRow(it, "循环次数", "--")
            tvHealthPercent = addRow(it, "电池健康度", "--")
        }

        // ── 温度欺骗（需要 root）─────────────────────────────
        card(root, "温度欺骗 ⚡") {
            addHint(it, "伪装电池温度，绕过充电温控限制")
            actionBtn(it, "❄️ 伪装为 25°C") {
                BatteryUtil.spoofBatteryTemp(25) { r ->
                    showToast(if (r.ok) "✓ ${r.msg}" else "✗ ${r.msg}")
                }
            }
            actionBtn(it, "🌡️ 伪装为 35°C") {
                BatteryUtil.spoofBatteryTemp(35) { r ->
                    showToast(if (r.ok) "✓ ${r.msg}" else "✗ ${r.msg}")
                }
            }
            actionBtn(it, "🔄 恢复真实温度") {
                BatteryUtil.spoofBatteryTemp(null) { r ->
                    showToast(if (r.ok) "✓ ${r.msg}" else "✗ ${r.msg}")
                }
            }
        }

        // ── 充电控制（需要 root）─────────────────────────────
        card(root, "充电控制 ⚡") {
            addHint(it, "需要 Root 权限")
            actionBtn(it, "🔌 解除充电电流限制") {
                BatteryUtil.setChargeCurrent(5000) { r ->
                    showToast(if (r.ok) "✓ ${r.msg}" else "✗ ${r.msg}")
                }
            }
            actionBtn(it, "⚡ 开启快充") {
                BatteryUtil.enableFastCharge { r ->
                    showToast(if (r.ok) "✓ ${r.msg}" else "✗ ${r.msg}")
                }
            }
        }

        // ── Magisk 模块（温度欺骗需要先装这个）────────────────
        card(root, "Magisk 模块 🔧") {
            moduleStatusTv = TextView(this@BatteryInfoActivity).apply {
                textSize = 13f
                setPadding(0, dp(4), 0, dp(10))
            }
            it.addView(moduleStatusTv)
            addHint(it, "温度欺骗需要 Magisk 模块刷入，需要一次重启生效")
            actionBtn(it, "📦 安装 Magisk 模块") {
                installModule()
            }
            actionBtn(it, "🗑️ 卸载 Magisk 模块") {
                uninstallModule()
            }
            addHint(it, "没装 Magisk？点击「打开 Magisk App」手动刷入 zip")
            actionBtn(it, "📱 打开 Magisk App") {
                ModuleInstallerUtil.openMagiskApp(this@BatteryInfoActivity)
            }
        }

        // ── 说明 ─────────────────────────────────────────────
        card(root, "说明") {
            addHint(it, """
                • 电量、温度、电流等基础数据无需 Root
                • 设计容量、循环次数来自 sysfs 节点，部分设备不支持
                • 温度欺骗、充电控制、温控解除需要 Root 权限
                • HyperOS 可能限制部分 sysfs 节点的写入权限
            """.trimIndent())
        }
    }

    // ─────────────────────────────────────────────────────────────────────
    // UI 辅助方法
    // ─────────────────────────────────────────────────────────────────────

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

    private fun addHint(parent: LinearLayout, text: String) {
        parent.addView(TextView(this).apply {
            this.text = text
            textSize = 12f
            setTextColor(0xFFBDBDBD.toInt())
            setPadding(0, dp(4), 0, dp(8))
        })
    }

    private fun actionBtn(parent: LinearLayout, label: String, action: () -> Unit) {
        val btn = Button(this).apply {
            text = label
            textSize = 14f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
            setOnClickListener { action() }
        }
        parent.addView(btn)
    }

    private fun showToast(msg: String) {
        runOnUiThread { Toast.makeText(this, msg, Toast.LENGTH_SHORT).show() }
    }

    private fun installModule() {
        if (moduleInstallJob?.isActive == true) {
            showToast("正在安装中...")
            return
        }
        moduleInstallJob = CoroutineScope(Dispatchers.Main).launch {
            // 临时在说明区显示进度
            ModuleInstallerUtil.install(this@BatteryInfoActivity) { msg ->
                showToast(msg)
            }
        }
    }

    private fun uninstallModule() {
        moduleInstallJob = CoroutineScope(Dispatchers.Main).launch {
            ModuleInstallerUtil.uninstall { msg ->
                showToast(msg)
                if (msg.startsWith("✓")) checkModuleStatus()
            }
        }
    }

    private fun checkModuleStatus() {
        CoroutineScope(Dispatchers.Main).launch {
            val installed = withContext(Dispatchers.IO) {
                ModuleInstallerUtil.isModuleInstalled()
            }
            moduleStatusTv.text = if (installed) {
                "✅ 模块已安装，重启后生效"
            } else {
                "⚠️ 模块未安装"
            }
            moduleStatusTv.setTextColor(
                if (installed) 0xFF4CAF50.toInt() else 0xFFFF9800.toInt()
            )
        }
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    // ─────────────────────────────────────────────────────────────────────
    // 数据刷新
    // ─────────────────────────────────────────────────────────────────────

    private fun startRefresh() {
        refreshJob?.cancel()
        refreshJob = CoroutineScope(Dispatchers.Main).launch {
            while (isActive) {
                try {
                    // getBatteryInfo 内部可能执行 root 命令读 sysfs，切 IO 线程避免阻塞主线程
                    val info = withContext(Dispatchers.IO) {
                        BatteryUtil.getBatteryInfo(this@BatteryInfoActivity)
                    }

                    tvLevel.text = "${info.level}%"
                    progressLevel.progress = info.level
                    tvLevel.setTextColor(when {
                        info.level > 60 -> 0xFF4CAF50.toInt()
                        info.level > 20 -> 0xFFFF9800.toInt()
                        else -> 0xFFF44336.toInt()
                    })

                    tvTemp.text = String.format("%.1f °C", info.tempCelsius)
                    tvTemp.setTextColor(when {
                        info.tempCelsius > 45 -> 0xFFF44336.toInt()
                        info.tempCelsius > 40 -> 0xFFFF9800.toInt()
                        else -> 0xFF4CAF50.toInt()
                    })

                    tvCurrent.text = info.currentMa?.let { "${it} mA" } ?: "不支持"
                    tvVoltage.text = if (info.voltage > 0) "%.2f V".format(info.voltage / 1000f) else "不支持"
                    tvTech.text = info.technology
                    tvHealth.text = info.health
                    tvHealth.setTextColor(when (info.health) {
                        "良好" -> 0xFF4CAF50.toInt()
                        "过热", "过压" -> 0xFFF44336.toInt()
                        else -> 0xFF757575.toInt()
                    })
                    tvPlugged.text = info.plugged

                    tvCapacity.text = info.capacity?.let { "${it} mAh" } ?: "不支持"
                    tvCurrentCap.text = info.currentCapacity?.let { "${it} mAh" } ?: "不支持"
                    tvCycleCount.text = info.cycleCount?.toString() ?: "不支持"
                    tvHealthPercent.text = BatteryUtil.getBatteryHealthPercent()?.let {
                        "%.1f %%".format(it)
                    } ?: "不支持"

                    tvStatus.text = info.status
                    tvStatus.visibility = View.VISIBLE
                    tvStatus.setBackgroundColor(when (info.status) {
                        "充电中" -> 0xFFE8F5E9.toInt()
                        "放电中" -> 0xFFFFF3E0.toInt()
                        "已充满" -> 0xFFE8F5E9.toInt()
                        else -> 0xFFEEEEEE.toInt()
                    })
                    tvStatus.setTextColor(when (info.status) {
                        "充电中" -> 0xFF388E3C.toInt()
                        "放电中" -> 0xFFE65100.toInt()
                        "已充满" -> 0xFF388E3C.toInt()
                        else -> 0xFF757575.toInt()
                    })

                } catch (e: Exception) {
                    tvLevel.text = "ERR"
                }
                delay(2000)
            }
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
