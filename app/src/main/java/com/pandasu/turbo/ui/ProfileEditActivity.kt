package com.pandasu.turbo.ui

import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.pandasu.turbo.R
import com.pandasu.turbo.data.GameProfile
import com.pandasu.turbo.data.GameProfileStore
import com.pandasu.turbo.data.GamePreset
import com.pandasu.turbo.databinding.ActivityProfileEditBinding

class ProfileEditActivity : AppCompatActivity() {

    private lateinit var binding: ActivityProfileEditBinding
    private lateinit var store: GameProfileStore
    private lateinit var packageName: String
    private lateinit var displayName: String
    private var existingProfile: GameProfile? = null
    
    // 当前编辑的配置（用于一键配置覆盖）
    private var currentProfile: GameProfile? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityProfileEditBinding.inflate(layoutInflater)
        setContentView(binding.root)
        store = GameProfileStore(this)
        packageName = intent.getStringExtra("packageName") ?: run { finish(); return }
        displayName = intent.getStringExtra("displayName") ?: packageName
        existingProfile = store.getProfile(packageName)
        currentProfile = existingProfile ?: GameProfile(packageName = packageName, displayName = displayName)
        setupUI()
    }

    private fun setupUI() {
        binding.toolbar.title = currentProfile?.displayName ?: packageName
        binding.toolbar.setNavigationOnClickListener { finish() }

        binding.tvPackage.text = packageName
        binding.etDisplayName.setText(currentProfile?.displayName ?: displayName)

        setupPerfSpinner()
        setupFps()
        setupPresetButtons()
        setupSwitches()
        setupButtons()
    }
    
    private fun setupPerfSpinner() {
        val perfModes = arrayOf("PERFORMANCE ⚡", "BALANCED ⚖️", "BATTERY 🔋")
        binding.spinnerPerf.adapter = ArrayAdapter(
            this, android.R.layout.simple_spinner_dropdown_item, perfModes
        )
        currentProfile?.performanceMode?.let { mode ->
            val idx = when(mode) {
                "PERFORMANCE" -> 0
                "BALANCED" -> 1
                "BATTERY" -> 2
                else -> 0
            }
            binding.spinnerPerf.setSelection(idx)
        }
    }
    
    private fun setupFps() {
        val savedFps = currentProfile?.customFps ?: -1
        // 0=跟随系统, 1=60, 2=90, 3=120
        val fpsProgress = when(savedFps) {
            -1 -> 0
            60 -> 1
            90 -> 2
            120 -> 3
            else -> 0
        }
        binding.seekFps.progress = fpsProgress
        binding.tvFpsValue.text = when(savedFps) {
            -1 -> "跟随系统"
            60 -> "60帧"
            90 -> "90帧"
            120 -> "120帧"
            else -> "跟随系统"
        }
        binding.seekFps.setOnSeekBarChangeListener(object : android.widget.SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(sb: android.widget.SeekBar, progress: Int, fromUser: Boolean) {
                binding.tvFpsValue.text = when(progress) {
                    0 -> "跟随系统"
                    1 -> "60帧"
                    2 -> "90帧"
                    3 -> "120帧"
                    else -> "跟随系统"
                }
            }
            override fun onStartTrackingTouch(sb: android.widget.SeekBar) {}
            override fun onStopTrackingTouch(sb: android.widget.SeekBar) {}
        })
    }
    
    private fun setupPresetButtons() {
        binding.btnPresetPerformance.setOnClickListener {
            applyPreset(GamePreset.performance(packageName, displayName))
            Toast.makeText(this, "已应用：性能模式", Toast.LENGTH_SHORT).show()
        }
        binding.btnPresetBalanced.setOnClickListener {
            applyPreset(GamePreset.balanced(packageName, displayName))
            Toast.makeText(this, "已应用：均衡模式", Toast.LENGTH_SHORT).show()
        }
        binding.btnPresetBattery.setOnClickListener {
            applyPreset(GamePreset.battery(packageName, displayName))
            Toast.makeText(this, "已应用：省电模式", Toast.LENGTH_SHORT).show()
        }
        binding.btnPresetCustom.setOnClickListener {
            applyPreset(GamePreset.custom(packageName, displayName))
            Toast.makeText(this, "已应用：自定义模式", Toast.LENGTH_SHORT).show()
        }
    }
    
    private fun applyPreset(preset: GameProfile) {
        currentProfile = preset
        binding.etDisplayName.setText(preset.displayName)
        
        // 更新性能模式
        binding.spinnerPerf.setSelection(when(preset.performanceMode) {
            "PERFORMANCE" -> 0
            "BALANCED" -> 1
            else -> 2
        })
        
        // 更新帧率
        binding.seekFps.progress = when(preset.customFps) {
            -1 -> 0
            60 -> 1
            90 -> 2
            120 -> 3
            else -> 0
        }
        binding.tvFpsValue.text = when(preset.customFps) {
            -1 -> "跟随系统"
            60 -> "60帧"
            90 -> "90帧"
            120 -> "120帧"
            else -> "跟随系统"
        }
        
        // 更新开关
        binding.switchAutoTurbo.isChecked = preset.autoTurbo
        binding.switchAutoDnd.isChecked = preset.autoDnd
        binding.switchKeepScreenOn.isChecked = preset.keepScreenOn
        binding.switchBlockNotif.isChecked = preset.blockNotifications
        binding.switchBlockCalls.isChecked = preset.blockCalls
        binding.switchLockRotation.isChecked = preset.autoLockRotation
        binding.switchKillBackground.isChecked = preset.killBackground
        binding.switchCpuBoost.isChecked = preset.cpuBoost
        binding.switchGpuBoost.isChecked = preset.gpuBoost
        binding.switchWakelock.isChecked = preset.wakelockBoost
    }
    
    private fun setupSwitches() {
        currentProfile?.let { p ->
            binding.switchAutoTurbo.isChecked = p.autoTurbo
            binding.switchAutoDnd.isChecked = p.autoDnd
            binding.switchKeepScreenOn.isChecked = p.keepScreenOn
            binding.switchBlockNotif.isChecked = p.blockNotifications
            binding.switchBlockCalls.isChecked = p.blockCalls
            binding.switchLockRotation.isChecked = p.autoLockRotation
            binding.switchKillBackground.isChecked = p.killBackground
            binding.switchCpuBoost.isChecked = p.cpuBoost
            binding.switchGpuBoost.isChecked = p.gpuBoost
            binding.switchWakelock.isChecked = p.wakelockBoost
        }
    }
    
    private fun setupButtons() {
        binding.btnSave.setOnClickListener { saveProfile() }
        binding.btnDelete.setOnClickListener {
            store.removeProfile(packageName)
            Toast.makeText(this, "已删除", Toast.LENGTH_SHORT).show()
            finish()
        }
    }

    private fun saveProfile() {
        val fps = when(binding.seekFps.progress) {
            0 -> -1
            1 -> 60
            2 -> 90
            3 -> 120
            else -> -1
        }
        val perfMode = when(binding.spinnerPerf.selectedItemPosition) {
            0 -> "PERFORMANCE"
            1 -> "BALANCED"
            else -> "BATTERY"
        }
        
        val profile = GameProfile(
            packageName = packageName,
            displayName = binding.etDisplayName.text.toString().ifBlank { displayName },
            customFps = fps,
            autoTurbo = binding.switchAutoTurbo.isChecked,
            autoDnd = binding.switchAutoDnd.isChecked,
            keepScreenOn = binding.switchKeepScreenOn.isChecked,
            blockNotifications = binding.switchBlockNotif.isChecked,
            blockCalls = binding.switchBlockCalls.isChecked,
            autoLockRotation = binding.switchLockRotation.isChecked,
            killBackground = binding.switchKillBackground.isChecked,
            cpuBoost = binding.switchCpuBoost.isChecked,
            gpuBoost = binding.switchGpuBoost.isChecked,
            wakelockBoost = binding.switchWakelock.isChecked,
            performanceMode = perfMode
        )
        store.saveProfile(profile)
        Toast.makeText(this, "配置已保存", Toast.LENGTH_SHORT).show()
        finish()
    }
}
