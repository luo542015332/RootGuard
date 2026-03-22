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
import com.rootguard.app.data.local.SettingsDataStore
import com.rootguard.app.ui.navigation.RootGuardNavHost
import com.rootguard.app.ui.navigation.Screen
import com.rootguard.app.ui.theme.RootGuardTheme
import com.rootguard.app.utils.Logger
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.first
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    @Inject
    lateinit var settingsDataStore: SettingsDataStore
    
    companion object {
        const val EXTRA_MODULE_URI = "extra_module_uri"
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
}