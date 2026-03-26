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
import com.rootguard.app.utils.AndroidVersionCompat
import com.rootguard.app.utils.CompatibilityTester
import com.rootguard.app.utils.Logger
import com.rootguard.app.utils.SystemAdapter
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
            "com.zhenxi.hunter" to "Hunter检测器",
            "icu.nullptr.applistdetector" to "AppList Detector"
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
            
            // 运行兼容性检查（仅记录信息）
            runCompatibilityCheck()
        }

        setContent {
            // 检查 Root 权限状态
            var authorizationStatus by remember { mutableStateOf<RootEnvironmentDetector.AuthorizationStatus?>(null) }
            var isCheckingPermission by remember { mutableStateOf(true) }
            LaunchedEffect(Unit) {
                val status = RootEnvironmentDetector.getAuthorizationStatus(this@MainActivity)
                authorizationStatus = status
                isCheckingPermission = false
                
                Logger.d("Permission check result: hasPermission=${status.hasPermission}, rootMode=${status.rootMode}")
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
            } else if (authorizationStatus?.hasPermission != true) {
                RootPermissionGuide(
                    onAuthorized = {
                        // 重新获取授权状态
                        lifecycleScope.launch {
                            val newStatus = RootEnvironmentDetector.getAuthorizationStatus(this@MainActivity)
                            authorizationStatus = newStatus
                        }
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
                            hasRootPermission = true
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
    
    /**
     * 运行兼容性检查并记录信息
     */
    private fun runCompatibilityCheck() {
        try {
            // 记录系统信息
            val deviceManufacturer = AndroidVersionCompat.getDeviceManufacturer()
            val customOS = AndroidVersionCompat.getCustomOS()
            val androidVersion = AndroidVersionCompat.getVersionDescription()
            
            Logger.d("系统兼容性信息:")
            Logger.d("  设备厂商: ${deviceManufacturer.name}")
            Logger.d("  定制系统: ${customOS.name}")
            Logger.d("  Android 版本: $androidVersion")
            Logger.d("  SDK_INT: ${AndroidVersionCompat.SDK_INT}")
            
            // 检查系统功能支持
            val supportsSeccomp = AndroidVersionCompat.supportsSeccomp()
            val supportsScopedStorage = AndroidVersionCompat.supportsScopedStorage()
            val supportsDynamicColor = AndroidVersionCompat.supportsDynamicColor()
            
            Logger.d("功能支持检查:")
            Logger.d("  Seccomp 支持: $supportsSeccomp (需要 Android 8.0+)")
            Logger.d("  分区存储支持: $supportsScopedStorage (需要 Android 10+)")
            Logger.d("  动态色彩支持: $supportsDynamicColor (需要 Android 12+)")
            
            // 生成兼容性报告
            val report = AndroidVersionCompat.generateCompatibilityReport()
            Logger.d("兼容性报告:")
            Logger.d("  设备信息: ${report.deviceInfo}")
            Logger.d("  支持的功能: ${report.supportedFeatures.joinToString(", ")}")
            Logger.d("  不支持的功能: ${report.unsupportedFeatures.joinToString(", ")}")
            
            // 记录建议
            if (report.suggestions.isNotEmpty()) {
                Logger.d("系统建议:")
                report.suggestions.forEach { suggestion ->
                    Logger.d("  - $suggestion")
                }
            }
            
            // 根据定制系统记录特定信息
            when (customOS) {
                AndroidVersionCompat.CustomOS.HYPEROS -> {
                    Logger.d("HyperOS 系统检测: 可能需要特殊权限处理")
                }
                AndroidVersionCompat.CustomOS.MIUI -> {
                    Logger.d("MIUI 系统检测: 需要处理 FLAG_SYSTEM 标志异常")
                }
                AndroidVersionCompat.CustomOS.COLOROS -> {
                    Logger.d("ColorOS 系统检测: 有严格的权限管理机制")
                }
                else -> {
                    Logger.d("标准 Android 系统: 使用常规适配")
                }
            }
            
            Logger.d("兼容性检查完成")
            
        } catch (e: Exception) {
            Logger.w("兼容性检查失败: ${e.message}")
        }
    }
}
