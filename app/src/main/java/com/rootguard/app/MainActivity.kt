package com.rootguard.app

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.lifecycle.lifecycleScope
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.local.SettingsDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.model.IsolationLevel
import com.rootguard.app.data.model.IsolationPresets
import com.rootguard.app.ui.navigation.RootGuardNavHost
import com.rootguard.app.ui.navigation.Screen
import com.rootguard.app.ui.theme.RootGuardTheme
import com.rootguard.app.utils.Logger
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : ComponentActivity() {

    @Inject
    lateinit var settingsDataStore: SettingsDataStore

    @Inject
    lateinit var isolationDataStore: IsolationDataStore

    @Inject
    lateinit var rootHider: RootHider

    companion object {
        const val EXTRA_MODULE_URI = "extra_module_uri"

        // 需要强制应用银行级隔离的税务应用
        private val TAX_APPS = listOf(
            "cn.gov.tax.its" to "电子税务",
            "cn.gov.chinatax.gt4.app" to "中国税务"
        )
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        val splashScreen = installSplashScreen()
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        // 测试 Toast 显示
        Toast.makeText(this, "PandaSU v${com.rootguard.app.BuildConfig.VERSION_NAME} 启动", Toast.LENGTH_LONG).show()

        // 测试日志输出
        Logger.d("MainActivity onCreate called")
        Logger.d("BuildConfig.VERSION_NAME: ${com.rootguard.app.BuildConfig.VERSION_NAME}")

        // 自动为税务应用应用银行级隔离
        applyBankingIsolationForTaxApps()

        // 检查是否有模块文件被分享过来
        val moduleUri = handleIntent(intent)

        setContent {
            val startDestination = remember { mutableStateOf(Screen.Home.route) }
            
            // 读取主题设置 - 使用 collectAsState 实时响应变化
            var isLoading by remember { mutableStateOf(true) }
            val themeId by settingsDataStore.currentTheme.collectAsState(initial = "classic")
            val isDarkMode by settingsDataStore.darkMode.collectAsState(initial = false)
            val useDynamicColors by settingsDataStore.dynamicColors.collectAsState(initial = false)
            
            // 初始化完成标记
            LaunchedEffect(Unit) {
                isLoading = false
                
                // 如果有模块文件，跳转到模块页面
                if (moduleUri != null) {
                    startDestination.value = Screen.Modules.route
                }
            }
            
            if (!isLoading) {
                RootGuardTheme(
                    darkTheme = isDarkMode,
                    dynamicColor = useDynamicColors,
                    themeId = themeId
                ) {
                    Surface(
                        modifier = Modifier.fillMaxSize(),
                        color = MaterialTheme.colorScheme.background
                    ) {
                        RootGuardNavHost(
                            startDestination = startDestination.value,
                            sharedModuleUri = moduleUri
                        )
                    }
                }
            }
        }
    }
    
    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        // 处理新的 Intent（当 Activity 已经在前台时）
        handleIntent(intent)
    }
    
    private fun handleIntent(intent: Intent?): Uri? {
        return when (intent?.action) {
            Intent.ACTION_SEND -> {
                // 处理分享的文件
                if (intent.type == "application/zip") {
                    intent.getParcelableExtra<Uri>(Intent.EXTRA_STREAM)
                } else null
            }
            Intent.ACTION_VIEW -> {
                // 处理打开的文件
                intent.data
            }
            else -> null
        }
    }

    /**
     * 为税务类应用自动应用银行级隔离
     * 税务类应用需要最高级别的隔离防护，防止检测到 Root 权限
     * 强制更新为银行级配置，无论现有配置如何
     */
    private fun applyBankingIsolationForTaxApps() {
        lifecycleScope.launch {
            try {
                TAX_APPS.forEach { (packageName, appName) ->
                    Logger.d("Applying banking isolation for $packageName ($appName)")
                    val preset = IsolationPresets.bankingPreset(packageName, appName)
                    isolationDataStore.saveIsolationConfig(preset)
                    rootHider.applyIsolation(preset)
                    Logger.d("Banking isolation applied for $packageName")
                }
            } catch (e: Exception) {
                Logger.e("Failed to apply banking isolation for tax apps", e)
            }
        }
    }
}