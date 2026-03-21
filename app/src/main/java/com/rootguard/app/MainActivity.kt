package com.rootguard.app

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import com.rootguard.app.ui.navigation.RootGuardNavHost
import com.rootguard.app.ui.navigation.Screen
import com.rootguard.app.ui.theme.RootGuardTheme
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    companion object {
        const val EXTRA_MODULE_URI = "extra_module_uri"
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        val splashScreen = installSplashScreen()
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        
        // 检查是否有模块文件被分享过来
        val moduleUri = handleIntent(intent)
        
        setContent {
            val startDestination = remember { mutableStateOf(Screen.Home.route) }
            
            // 如果有模块文件，跳转到模块页面
            LaunchedEffect(moduleUri) {
                if (moduleUri != null) {
                    startDestination.value = Screen.Modules.route
                }
            }
            
            RootGuardTheme {
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