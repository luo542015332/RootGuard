package com.pandasu.turbo

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.content.pm.PackageInfo
import android.os.Bundle
import android.view.MenuItem
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SwitchCompat
import com.pandasu.turbo.ui.HistoryActivity
import com.pandasu.turbo.ui.ProfileListActivity

class GameSettingsActivity : AppCompatActivity() {

    private lateinit var prefs: android.content.SharedPreferences

    // Switches
    private lateinit var switchAutoTurbo: SwitchCompat
    private lateinit var switchAutoClean: SwitchCompat
    private lateinit var switchDnd: SwitchCompat

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_settings)

        supportActionBar?.apply {
            title = "游戏模式"
            setDisplayHomeAsUpEnabled(true)
        }

        prefs = getSharedPreferences("turbo_settings", MODE_PRIVATE)

        // 绑定控件
        switchAutoTurbo = findViewById(R.id.switchAutoTurbo)
        switchAutoClean = findViewById(R.id.switchAutoClean)
        switchDnd = findViewById(R.id.switchDnd)

        // 读取当前状态
        switchAutoTurbo.isChecked = prefs.getBoolean("auto_turbo_enabled", false)
        switchAutoClean.isChecked = prefs.getBoolean("auto_clean_enabled", true)
        switchDnd.isChecked = prefs.getBoolean("auto_dnd_enabled", true)

        // 监听变化，自动保存
        switchAutoTurbo.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("auto_turbo_enabled", isChecked).apply()
        }
        switchAutoClean.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("auto_clean_enabled", isChecked).apply()
        }
        switchDnd.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("auto_dnd_enabled", isChecked).apply()
        }

        // 入口卡片：历史记录
        findViewById<android.view.View>(R.id.cardHistory)?.setOnClickListener {
            startActivity(Intent(this, HistoryActivity::class.java))
        }

        // 入口卡片：游戏配置
        findViewById<android.view.View>(R.id.cardProfile)?.setOnClickListener {
            startActivity(Intent(this, ProfileListActivity::class.java))
        }

        // 语言按钮：暂不支持
        findViewById<android.view.View>(R.id.btnLangZh)?.setOnClickListener {
            Toast.makeText(this, "语言切换开发中", Toast.LENGTH_SHORT).show()
        }
        findViewById<android.view.View>(R.id.btnLangEn)?.setOnClickListener {
            Toast.makeText(this, "Language switch WIP", Toast.LENGTH_SHORT).show()
        }

        // 版本信息
        val versionName = try {
            packageManager.getPackageInfo(packageName, 0).versionName ?: "?"
        } catch (e: Exception) { "?" }
        val versionCode = try {
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.P) {
                packageManager.getPackageInfo(packageName, 0).longVersionCode.toString()
            } else {
                @Suppress("DEPRECATION")
                packageManager.getPackageInfo(packageName, 0).versionCode.toString()
            }
        } catch (e: Exception) { "?" }
        findViewById<android.widget.TextView>(R.id.tvVersion)?.text = "PandaTurbo v$versionName ($versionCode)"
    }

    override fun onResume() {
        super.onResume()
        // 每次返回时刷新无障碍状态提示
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
