package com.pandasu.turbo

import android.content.Intent
import android.os.*
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.ui.platform.ComposeView
import com.pandasu.turbo.databinding.ActivityMainBinding
import com.pandasu.turbo.ui.compose.MainScaffold
import com.pandasu.turbo.ui.compose.theme.PandaTurboTheme
import com.pandasu.turbo.util.BatteryUtil
import com.pandasu.turbo.util.ShizukuHelper
import com.pandasu.turbo.util.SystemInfoUtil
import kotlinx.coroutines.*
import android.content.res.Configuration

/**
 * PandaTurbo 融合版主界面
 * 使用 Compose 实现首页/隔离/工具箱/日志四个 Tab
 * 原有 Activity 工具通过工具箱 Tab 跳转调用
 */
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private var statusUpdateJob: Job? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // 隐藏系统状态栏，实现全屏沉浸
        window.decorView.systemUiVisibility = (
            android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            or android.view.View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
        )

        // 替换为 Compose 界面
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // 将 ComposeView 嵌入到原有布局中，隐藏旧的 BottomNav 和 FragmentContainer
        val composeView = ComposeView(this).apply {
            setContent {
                PandaTurboTheme {
                    MainScaffold()
                }
            }
        }

        binding.composeContainer.removeAllViews()
        binding.composeContainer.addView(composeView)

        // 隐藏旧的底部导航和 fragment 容器
        binding.bottomNav?.let { (it as? android.view.View)?.visibility = android.view.View.GONE }
        binding.fragmentContainer?.let { (it as? android.view.View)?.visibility = android.view.View.GONE }

        // Shizuku 提示（内部已异步处理，避免主线程阻塞）
        checkShizukuPrompt()
    }

    override fun onResume() {
        super.onResume()
        startStatusBarUpdate()
    }

    override fun onPause() {
        super.onPause()
        statusUpdateJob?.cancel()
    }

    private fun startStatusBarUpdate() {
        statusUpdateJob?.cancel()
        statusUpdateJob = CoroutineScope(Dispatchers.Main).launch {
            while (isActive) {
                try {
                    val thermal = withContext(Dispatchers.IO) {
                        SystemInfoUtil.getThermalInfo(this@MainActivity)
                    }
                    // CPU 温度数据会通过 Compose State 更新到首页卡片
                    val battery = BatteryUtil.getBatteryInfo(this@MainActivity)
                    // 电池数据同样通过 Compose State 共享
                } catch (e: Exception) {
                    // 忽略异常
                }
                delay(5000)
            }
        }
    }

    private fun checkShizukuPrompt() {
        // checkStatus() 可能阻塞（执行 su 命令检测 Root），必须在 IO 线程
        CoroutineScope(Dispatchers.IO).launch {
            val status = ShizukuHelper.checkStatus()
            if (status == ShizukuHelper.STATUS_SHIZUKU_READY) return@launch

            val prefs = getSharedPreferences("toolkit_prefs", MODE_PRIVATE)
            val lastShown = prefs.getLong("shizuku_prompt_last", 0)
            val now = System.currentTimeMillis()
            if (now - lastShown < 24 * 3600 * 1000) return@launch

            prefs.edit().putLong("shizuku_prompt_last", now).apply()

            // AlertDialog 必须在主线程显示
            withContext(Dispatchers.Main) {
                AlertDialog.Builder(this@MainActivity)
                    .setTitle("💡 推荐安装 Shizuku")
                    .setMessage("融合版需要 Shizuku 授权实现系统级操作。\n\n支持：温控解除 / APK 提取 / App 隔离 / 广告屏蔽。")
                    .setPositiveButton("下载 Shizuku") { _, _ ->
                        try {
                            startActivity(Intent(Intent.ACTION_VIEW,
                                android.net.Uri.parse("market://details?id=moe.shizuku.privileged.api")))
                        } catch (e: Exception) {
                            startActivity(Intent(Intent.ACTION_VIEW,
                                android.net.Uri.parse("https://play.google.com/store/apps/details?id=moe.shizuku.privileged.api")))
                        }
                    }
                    .setNegativeButton("暂不需要", null)
                    .show()
            }
        }
    }

    @Deprecated("Deprecated in Java")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == SHIZUKU_REQUEST) {
            checkShizukuPrompt()
        }
    }

    private val SHIZUKU_REQUEST = 1001
}
