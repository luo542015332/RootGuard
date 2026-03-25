package com.rootguard.app

import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.*
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.lifecycle.lifecycleScope
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.local.SettingsDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.model.IsolationPresets
import com.rootguard.app.ui.components.RootPermissionGuide
import com.rootguard.app.ui.navigation.RootGuardNavHost
import com.rootguard.app.ui.navigation.Screen
import com.rootguard.app.ui.theme.RootGuardTheme
import com.rootguard.app.util.RootEnvironmentDetector
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
        // 需要强制应用银行级隔离的税务应用
        private val TAX_APPS = listOf(
            "cn.gov.tax.its" to "电子税务",
            "cn.gov.chinatax.gt4.app" to "中国税务"
        )
        
        // 需要强制应用银行级隔离的高风险检测应用
        private val HIGH_RISK_DETECTOR_APPS = listOf(
            "com.zhenxi.hunter" to "Hunter检测器"
        )
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        val splashScreen = installSplashScreen()
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        Toast.makeText(this, "PandaSU v${BuildConfig.VERSION_NAME} 启动", Toast.LENGTH_LONG).show()
        Logger.d("MainActivity onCreate called - Isolation Only Mode")
        Logger.d("BuildConfig.VERSION_NAME: ${BuildConfig.VERSION_NAME}")

        // 检查 Root 权限（异步）
        lifecycleScope.launch {
            val status = RootEnvironmentDetector.getAuthorizationStatus(this@MainActivity)
            Logger.d("Root authorization status: ${status.rootMode}, hasPermission=${status.hasPermission}")

            if (status.hasPermission) {
                applyBankingIsolationForTaxApps()
            }
        }

        setContent {
            // 检查 Root 权限状态
            var hasRootPermission by remember { mutableStateOf(false) }
            var isCheckingPermission by remember { mutableStateOf(true) }

            LaunchedEffect(Unit) {
                val status = RootEnvironmentDetector.getAuthorizationStatus(this@MainActivity)
                hasRootPermission = status.hasPermission
                isCheckingPermission = false
                Logger.d("Permission check result: hasRootPermission=$hasRootPermission")
            }

            // 读取主题设置
            var isLoading by remember { mutableStateOf(true) }
            val themeId by settingsDataStore.currentTheme.collectAsState(initial = "classic")
            val isDarkMode by settingsDataStore.darkMode.collectAsState(initial = false)
            val useDynamicColors by settingsDataStore.dynamicColors.collectAsState(initial = false)

            LaunchedEffect(Unit) {
                isLoading = false
            }

            if (isCheckingPermission) {
                RootGuardTheme {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            CircularProgressIndicator()
                            Text("正在检查权限...")
                        }
                    }
                }
            } else if (!hasRootPermission) {
                RootPermissionGuide(
                    onAuthorized = {
                        hasRootPermission = true
                    }
                )
            } else if (!isLoading) {
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
                            startDestination = Screen.Home.route,
                            hasRootPermission = hasRootPermission
                        )
                    }
                }
            }
        }
    }

    /**
     * 为税务类应用自动应用银行级隔离
     */
    private fun applyBankingIsolationForTaxApps() {
        lifecycleScope.launch {
            try {
                // 税务应用
                TAX_APPS.forEach { (packageName, appName) ->
                    Logger.d("Applying banking isolation for $packageName ($appName)")
                    val preset = IsolationPresets.bankingPreset(packageName, appName)
                    isolationDataStore.saveIsolationConfig(preset)
                    rootHider.applyIsolation(preset)
                    Logger.d("Banking isolation applied for $packageName")
                }
                
                // 高风险检测应用
                HIGH_RISK_DETECTOR_APPS.forEach { (packageName, appName) ->
                    Logger.d("Applying banking isolation for high-risk detector: $packageName ($appName)")
                    val preset = IsolationPresets.bankingPreset(packageName, appName)
                    isolationDataStore.saveIsolationConfig(preset)
                    rootHider.applyIsolation(preset)
                    Logger.d("Banking isolation applied for high-risk detector: $packageName")
                }
            } catch (e: Exception) {
                Logger.e("Failed to apply banking isolation for tax apps", e)
            }
        }
    }
}
