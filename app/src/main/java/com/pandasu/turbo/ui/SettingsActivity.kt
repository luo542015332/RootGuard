package com.pandasu.turbo.ui

import android.content.Intent
import android.content.res.Configuration
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.pandasu.turbo.R
import com.pandasu.turbo.databinding.ActivitySettingsBinding
import com.pandasu.turbo.data.PreferencesManager
import java.util.Locale

class SettingsActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySettingsBinding
    private lateinit var prefs: PreferencesManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySettingsBinding.inflate(layoutInflater)
        setContentView(binding.root)
        prefs = PreferencesManager(this)
        setupUI()
    }

    private fun setupUI() {
        binding.toolbar.title = getString(R.string.settings_title)
        binding.toolbar.setNavigationOnClickListener { finish() }

        // 自动化开关
        binding.switchAutoTurbo.isChecked = prefs.autoTurboEnabled
        binding.switchAutoClean.isChecked = prefs.autoCleanEnabled
        binding.switchDnd.isChecked = prefs.autoDndEnabled

        binding.switchAutoTurbo.setOnCheckedChangeListener { _, isChecked ->
            prefs.autoTurboEnabled = isChecked
        }
        binding.switchAutoClean.setOnCheckedChangeListener { _, isChecked ->
            prefs.autoCleanEnabled = isChecked
        }
        binding.switchDnd.setOnCheckedChangeListener { _, isChecked ->
            prefs.autoDndEnabled = isChecked
        }

        // 入口卡片
        binding.cardHistory.setOnClickListener {
            startActivity(Intent(this, HistoryActivity::class.java))
        }
        binding.cardProfile.setOnClickListener {
            startActivity(Intent(this, ProfileListActivity::class.java))
        }

        // 语言切换
        updateLanguageButtons()
        binding.btnLangZh.setOnClickListener { setLanguage("zh") }
        binding.btnLangEn.setOnClickListener { setLanguage("en") }

        binding.tvVersion.text = getString(R.string.version_info, getVersionName())
    }

    private fun setLanguage(lang: String) {
        prefs.language = lang
        val locale = if (lang == "zh") Locale.SIMPLIFIED_CHINESE else Locale.ENGLISH
        Locale.setDefault(locale)
        val config = Configuration(resources.configuration)
        config.setLocale(locale)
        @Suppress("DEPRECATION")
        resources.updateConfiguration(config, resources.displayMetrics)
        Toast.makeText(this, if (lang == "zh") "已切换为中文" else "Switched to English", Toast.LENGTH_SHORT).show()
        updateLanguageButtons()
        recreate()
    }

    private fun updateLanguageButtons() {
        val currentLang = prefs.language
        binding.btnLangZh.alpha = if (currentLang == "zh") 1f else 0.5f
        binding.btnLangEn.alpha = if (currentLang != "zh") 1f else 0.5f
    }

    private fun getVersionName(): String {
        return try { packageManager.getPackageInfo(packageName, 0).versionName ?: "1.0" } catch (e: Throwable) { "1.0" }
    }
}