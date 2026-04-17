package com.pandasu.turbo.ui.toolkit

import android.content.Context
import android.content.ComponentName
import android.content.Intent
import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.app.UiModeManager
import android.view.Gravity
import android.view.MenuItem
import android.view.ViewGroup
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.SeekBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

/**
 * 显示设置 Activity
 *
 * 功能分级（按权限需求从低到高）：
 *  1. 刷新率      → 无需任何权限，Window API 实现
 *  2. 亮度调节    → 无需任何权限，window.screenBrightness 实现
 *  3. 护眼模式    → 跳转系统显示设置，无需权限
 *  4. 息屏时间    → 跳转到系统设置页面
 *  5. 开发者选项  → 跳转到系统开发者选项页面
 */
class DisplaySettingsActivity : AppCompatActivity() {

    private val handler = Handler(Looper.getMainLooper())
    private var rootContainer: LinearLayout? = null

    // ═══════════════════════════════════════════════════════
    // Activity 生命周期
    // ═══════════════════════════════════════════════════════

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setupActionBar()

        val scrollView = ScrollView(this).apply {
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }
        rootContainer = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        scrollView.addView(rootContainer)
        setContentView(scrollView)

        buildUI()
    }

    override fun onResume() {
        super.onResume()
        buildUI()  // 每次返回页面刷新状态（用户可能从系统设置回来了）
    }

    override fun onDestroy() {
        super.onDestroy()
        handler.removeCallbacksAndMessages(null)
    }

    // ── ActionBar ────────────────────────────────────────────
    private fun setupActionBar() {
        supportActionBar?.apply {
            title = "显示设置"
            setDisplayHomeAsUpEnabled(true)
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }

    // ═══════════════════════════════════════════════════════
    // UI 构建
    // ═══════════════════════════════════════════════════════

    private fun buildUI() {
        val root = rootContainer ?: return
        root.removeAllViews()

        // ─── 1. 刷新率（无需权限）────────────────────────────
        sectionRefreshRate(root)

        // ─── 2. 亮度调节（无需权限，window.screenBrightness）──
        sectionBrightness(root)

        // ─── 3. 护眼模式（无需权限）───────────────────────────
        sectionNightMode(root)

        // ─── 4. 息屏时间（跳转系统设置）───────────────────────
        sectionScreenTimeout(root)

        // ─── 5. 开发者选项（跳转系统设置）────────────────────
        sectionDevOptions(root)

        // ─── 6. 说明 ────────────────────────────────────────
        sectionNote(root)
    }

    // ═══════════════════════════════════════════════════════
    // 1. 刷新率
    // ═══════════════════════════════════════════════════════

    private fun sectionRefreshRate(root: LinearLayout) {
        section(root, "刷新率", "无需权限") {
            val rate = getCurrentRefreshRate()
            val supported = getSupportedRefreshRates()
            infoRow(it, "当前", "${rate.toInt()} Hz")
            infoRow(it, "支持", if (supported.size > 1) supported.joinToString(" / ") { "${it} Hz" }
                               else "仅 60 Hz（设备不支持切换）")

            if (supported.size > 1) {
                it.addView(TextView(this).apply {
                    text = "切换刷新率："
                    textSize = 13f
                    setTextColor(0xFF757575.toInt())
                    setPadding(0, dp(8), 0, dp(4))
                })
                val btnRow = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
                supported.forEach { fps ->
                    btnRow.addView(Button(this).apply {
                        text = "${fps}Hz${if (fps == rate.toInt()) " ✓" else ""}"
                        textSize = 13f
                        isEnabled = fps != rate.toInt()
                        layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                            .apply { marginEnd = dp(6) }
                        setOnClickListener { applyRefreshRate(fps) }
                    })
                }
                it.addView(btnRow)
            } else {
                infoRow(it, "说明", "部分机型锁死了刷新率，此处无法切换，请前往系统设置")
            }
        }
    }

    private fun getCurrentRefreshRate(): Float {
        return try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                display?.refreshRate ?: 60f
            } else {
                @Suppress("DEPRECATION")
                windowManager.defaultDisplay.refreshRate
            }
        } catch (e: Exception) { 60f }
    }

    private fun getSupportedRefreshRates(): List<Int> {
        return try {
            val disp = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) display
                       else { @Suppress("DEPRECATION") windowManager.defaultDisplay }
            disp?.supportedModes
                ?.map { it.refreshRate.toInt() }
                ?.distinct()
                ?.sorted()
                ?: listOf(60)
        } catch (e: Exception) { listOf(60) }
    }

    private fun applyRefreshRate(fps: Int) {
        val ok = setRefreshRate(fps)
        Toast.makeText(this,
            if (ok) "已切换到 ${fps} Hz" else "切换失败（系统可能限制此操作）",
            Toast.LENGTH_LONG).show()
        if (ok) handler.postDelayed({ buildUI() }, 300)
    }

    private fun setRefreshRate(targetFps: Int): Boolean {
        return try {
            val disp = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) display
                       else { @Suppress("DEPRECATION") windowManager.defaultDisplay }
            val modes = disp?.supportedModes ?: return false
            val best = modes.filter { it.refreshRate.toInt() == targetFps }
                .maxByOrNull { it.physicalWidth * it.physicalHeight }
                ?: modes.firstOrNull { it.refreshRate.toInt() == targetFps }
                ?: return false
            val params = window.attributes
            params.preferredDisplayModeId = best.modeId
            window.attributes = params
            true
        } catch (e: Exception) { false }
    }

    // ═══════════════════════════════════════════════════════
    // 2. 亮度调节（window.screenBrightness，无需任何权限）
    // ═══════════════════════════════════════════════════════

    private fun sectionBrightness(root: LinearLayout) {
        section(root, "亮度调节", "无需权限") {
            // 读取系统亮度（读取不需要权限）
            val sysBrightness = getSystemBrightness()
            val percent = (sysBrightness * 100 / 255)
            infoRow(it, "系统亮度", "$sysBrightness / 255（$percent%）")

            // 滑块实时调整（window.screenBrightness 不需要任何权限）
            val seekBar = SeekBar(this).apply {
                max = 255
                progress = sysBrightness.coerceIn(0, 255)
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { bottomMargin = dp(8) }
                setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
                    override fun onProgressChanged(sb: SeekBar?, p: Int, fromUser: Boolean) {}
                    override fun onStartTrackingTouch(sb: SeekBar?) {}
                    override fun onStopTrackingTouch(sb: SeekBar?) {
                        val v = sb?.progress?.coerceIn(1, 255) ?: 128
                        setWindowBrightness(v.toFloat() / 255f)
                        Toast.makeText(this@DisplaySettingsActivity,
                            "亮度已设为 ${v * 100 / 255}%", Toast.LENGTH_SHORT).show()
                    }
                })
            }
            it.addView(seekBar)

            // 快捷档位
            val quickRow = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
            listOf("低" to 0.2f, "中" to 0.5f, "高" to 0.75f, "最高" to 1.0f).forEach { (label, ratio) ->
                quickRow.addView(Button(this).apply {
                    text = label
                    textSize = 13f
                    layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                        .apply { marginEnd = dp(4) }
                    setOnClickListener {
                        seekBar.progress = (ratio * 255).toInt().coerceIn(1, 255)
                        setWindowBrightness(ratio)
                        Toast.makeText(this@DisplaySettingsActivity,
                            "亮度已设为 ${(ratio * 100).toInt()}%", Toast.LENGTH_SHORT).show()
                    }
                })
            }
            it.addView(quickRow)

            // 跳系统亮度设置
            actionBtn(it, "打开系统亮度设置（永久生效）") {
                openSystemBrightnessSettings()
            }
        }
    }

    private fun getSystemBrightness(): Int {
        return try {
            Settings.System.getInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS)
        } catch (e: Exception) { 128 }
    }

    /** 通过 window.screenBrightness 调整亮度，无需任何权限，仅影响当前 Activity */
    private fun setWindowBrightness(brightness: Float) {
        try {
            val params = window.attributes
            params.screenBrightness = brightness.coerceIn(0.01f, 1.0f)
            window.attributes = params
        } catch (e: Exception) { /* ignore */ }
    }

    private fun openSystemBrightnessSettings() {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startActivity(Intent(Settings.ACTION_DISPLAY_SETTINGS))
            } else {
                startActivity(Intent(Settings.ACTION_SETTINGS))
            }
        } catch (e: Exception) {
            Toast.makeText(this, "无法打开系统设置", Toast.LENGTH_SHORT).show()
        }
    }

    // ═══════════════════════════════════════════════════════
    // 3. 护眼模式 / 夜间模式（跳转 HyperOS 专属页面）
    // ═══════════════════════════════════════════════════════

    private fun sectionNightMode(root: LinearLayout) {
        section(root, "护眼模式", "跳转 HyperOS 专属设置") {
            val nightMode = getNightMode()
            infoRow(it, "系统状态", when (nightMode) {
                UiModeManager.MODE_NIGHT_YES -> "已开启"
                UiModeManager.MODE_NIGHT_NO  -> "已关闭"
                UiModeManager.MODE_NIGHT_AUTO -> "自动（日出日落）"
                else -> "跟随系统"
            })

            // 直接跳转 HyperOS 护眼模式设置页面（用显式组件名绕过 MiuiSoundSettings 劫持）
            actionBtn(it, "打开护眼模式设置") {
                try {
                    val intent = Intent().setComponent(
                        ComponentName(
                            "com.android.settings",
                            "com.android.settings.Settings\$NightDisplaySettingsActivity"
                        )
                    )
                    startActivity(intent)
                } catch (e: Exception) {
                    Toast.makeText(this, "无法打开护眼设置，请手动在系统设置中查找", Toast.LENGTH_LONG).show()
                }
            }

            // 尝试 API 开关（可能静默失败，但试试）
            actionBtn(it, "开启护眼模式（API）") {
                val ok = setNightMode(true)
                if (ok) {
                    Toast.makeText(this, "护眼模式已开启", Toast.LENGTH_SHORT).show()
                    handler.postDelayed({ buildUI() }, 500)
                } else {
                    Toast.makeText(this, "API 无效，请点上方按钮跳转设置", Toast.LENGTH_LONG).show()
                }
            }
            actionBtn(it, "关闭护眼模式（API）") {
                val ok = setNightMode(false)
                if (ok) {
                    Toast.makeText(this, "护眼模式已关闭", Toast.LENGTH_SHORT).show()
                    handler.postDelayed({ buildUI() }, 500)
                } else {
                    Toast.makeText(this, "API 无效，请点上方按钮跳转设置", Toast.LENGTH_LONG).show()
                }
            }
        }
    }

    // ═══════════════════════════════════════════════════════
    // 4. 息屏时间（跳转系统设置，无权限需求）
    // ═══════════════════════════════════════════════════════

    private fun sectionScreenTimeout(root: LinearLayout) {
        section(root, "息屏时间", "跳转系统设置") {
            val current = getScreenTimeout()
            infoRow(it, "当前", formatTimeout(current))

            actionBtn(it, "打开显示与息屏设置") {
                try {
                    // HyperOS：声音与显示设置里有息屏时间
                    startActivity(Intent(Settings.ACTION_SOUND_SETTINGS))
                } catch (e: Exception) {
                    try {
                        startActivity(Intent(Settings.ACTION_DISPLAY_SETTINGS))
                    } catch (e2: Exception) {
                        startActivity(Intent(Settings.ACTION_SETTINGS))
                    }
                }
            }
        }
    }

    private fun getScreenTimeout(): Long {
        return try {
            Settings.System.getLong(contentResolver, Settings.System.SCREEN_OFF_TIMEOUT)
        } catch (e: Exception) { 30000L }
    }

    private fun formatTimeout(ms: Long): String {
        return when {
            ms < 0 || ms >= Int.MAX_VALUE -> "永不息屏"
            ms >= 3600000 -> "${ms / 3600000} 小时"
            ms >= 60000 -> "${ms / 60000} 分钟"
            else -> "${ms / 1000} 秒"
        }
    }

    // ═══════════════════════════════════════════════════════
    // 5. 开发者选项（跳转系统设置，无权限需求）
    // ═══════════════════════════════════════════════════════

    private fun sectionDevOptions(root: LinearLayout) {
        section(root, "开发者选项", "跳转系统设置") {
            actionBtn(it, "打开开发者选项") {
                try {
                    startActivity(Intent(Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS))
                } catch (e: Exception) {
                    try {
                        startActivity(Intent(Settings.ACTION_DEVICE_INFO_SETTINGS))
                    } catch (e2: Exception) {
                        Toast.makeText(this, "无法打开开发者选项，请手动在系统设置中查找", Toast.LENGTH_LONG).show()
                    }
                }
            }
            infoRow(it, "说明", "触摸显示等开发者选项在系统开发者页面中手动开启即可")
        }
    }

    // ═══════════════════════════════════════════════════════
    // 6. 说明
    // ═══════════════════════════════════════════════════════

    private fun sectionNote(root: LinearLayout) {
        section(root, "功能说明", "无需权限") {
            val lines = listOf(
                "刷新率：通过 Window API 实现，无需权限。部分机型（尤其是 ColorOS/HyperOS）可能锁死最高刷新率。",
                "亮度调节：通过窗口属性实时调节，无需权限，仅在 app 处于前台时生效。点「打开系统亮度设置」可永久修改。",
                "护眼模式：跳转系统显示设置页面操作，HyperOS 完全兼容。",
                "息屏时间 / 开发者选项：HyperOS 限制第三方 app 写入系统设置，因此跳转到系统设置页面中操作。",
            )
            lines.forEach { line ->
                it.addView(TextView(this).apply {
                    text = "• $line"
                    textSize = 12f
                    setTextColor(0xFF9E9E9E.toInt())
                    setPadding(0, dp(3), 0, dp(3))
                })
            }
        }
    }

    // ═══════════════════════════════════════════════════════
    // UI 工具函数
    // ═══════════════════════════════════════════════════════

    private fun section(parent: LinearLayout, title: String, badge: String, block: (LinearLayout) -> Unit) {
        val sec = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(14), dp(16), dp(14))
            setBackgroundColor(Color.WHITE)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                elevation = 2f
            }
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(12) }
        }
        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(0, 0, 0, dp(8))
        }
        header.addView(TextView(this).apply {
            text = title
            textSize = 16f
            setTextColor(0xFF1976D2.toInt())
            paint.isFakeBoldText = true
        })
        header.addView(TextView(this).apply {
            text = " $badge"
            textSize = 11f
            setTextColor(0xFF9E9E9E.toInt())
            setPadding(dp(6), 0, 0, 0)
        })
        sec.addView(header)
        block(sec)
        parent.addView(sec)
    }

    private fun infoRow(parent: LinearLayout, label: String, value: String) {
        parent.addView(LinearLayout(parent.context).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dp(3), 0, dp(3))
            addView(TextView(context).apply {
                text = label
                textSize = 13f
                setTextColor(0xFF757575.toInt())
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { marginEnd = dp(8) }
            })
            addView(TextView(context).apply {
                text = value
                textSize = 13f
                setTextColor(0xFF424242.toInt())
            })
        })
    }

    private fun actionBtn(parent: LinearLayout, label: String, action: () -> Unit) {
        parent.addView(Button(this).apply {
            text = label
            textSize = 14f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(6) }
            setOnClickListener { action() }
        })
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    private fun getNightMode(): Int {
        return try {
            val uimm = getSystemService(Context.UI_MODE_SERVICE) as UiModeManager
            uimm.nightMode
        } catch (e: Exception) { -1 }
    }

    private fun setNightMode(enabled: Boolean): Boolean {
        return try {
            val uimm = getSystemService(Context.UI_MODE_SERVICE) as UiModeManager
            uimm.nightMode = if (enabled) UiModeManager.MODE_NIGHT_YES else UiModeManager.MODE_NIGHT_NO
            true
        } catch (e: Exception) { false }
    }
}
