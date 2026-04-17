@file:OptIn(ExperimentalMaterial3Api::class)

package com.pandasu.turbo.ui.compose

import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import androidx.compose.runtime.Composable
import com.pandasu.turbo.ui.compose.dialog.UpdateDialog
import com.pandasu.turbo.ui.compose.home.HomeScreen
import com.pandasu.turbo.ui.compose.isolation.IsolationScreen
import com.pandasu.turbo.ui.compose.isolation.IsolationViewModel
import com.pandasu.turbo.ui.compose.toolkit.ToolkitScreen
import com.pandasu.turbo.ui.compose.theme.*
import com.pandasu.turbo.util.UpdateInfo
import com.pandasu.turbo.util.UpdateManager
import kotlinx.coroutines.launch
import kotlin.concurrent.thread

/**
 * 主脚手架：底部导航 + NavHost
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScaffold(
    navController: NavHostController = rememberNavController()
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val navBackStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = navBackStackEntry?.destination?.route
    val scope = rememberCoroutineScope()

    // 更新弹窗状态
    var updateInfo by remember { mutableStateOf<UpdateInfo?>(null) }

    // 检查更新
    LaunchedEffect(Unit) {
        scope.launch {
            try {
                val info = UpdateManager.checkUpdate(context)
                if (info != null && info.hasNewVersion) {
                    updateInfo = info
                }
            } catch (e: Throwable) {
                // 协程异常兜底：不影响主流程，静默失败
            }
        }
    }

    // 更新弹窗
    if (updateInfo != null) {
        UpdateDialog(
            version = updateInfo!!.version,
            description = updateInfo!!.updateDescription,
            isForce = updateInfo!!.needForceUpdate,
            onDismiss = { updateInfo = null },
            onUpdate = {
                UpdateManager.downloadAndInstall(context, updateInfo!!.downloadUrl)
                updateInfo = null
            }
        )
    }

    val tabs = listOf(
        TabItem("首页", Icons.Default.Home, Screen.Home.route),
        TabItem("隔离", Icons.Default.Shield, Screen.Isolation.route),
        TabItem("游戏", Icons.Default.SportsEsports, Screen.Games.route),
        TabItem("工具", Icons.Default.Build, Screen.Toolkit.route),
    )

    Scaffold(
        containerColor = PandaBackground,
        bottomBar = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White)
                    .navigationBarsPadding()
            ) {
                HorizontalDivider(color = PandaDivider, thickness = 0.5.dp)
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(56.dp),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    tabs.forEach { tab ->
                        val selected = currentRoute == tab.route
                        Column(
                            modifier = Modifier
                                .weight(1f)
                                .fillMaxHeight()
                                .clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = null
                                ) {
                                    if (currentRoute != tab.route) {
                                        navController.navigate(tab.route) {
                                            popUpTo(Screen.Home.route) { saveState = true }
                                            launchSingleTop = true
                                            restoreState = true
                                        }
                                    }
                                },
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            Icon(
                                tab.icon,
                                contentDescription = tab.label,
                                modifier = Modifier.size(24.dp),
                                tint = if (selected) PandaPrimary else PandaGray
                            )
                            Spacer(modifier = Modifier.height(2.dp))
                            Text(
                                tab.label,
                                fontSize = 12.sp,
                                fontWeight = if (selected) FontWeight.Medium else FontWeight.Normal,
                                color = if (selected) PandaPrimary else PandaGray
                            )
                        }
                    }
                }
            }
        }
    ) { padding ->
        NavHost(
            navController = navController,
            startDestination = Screen.Home.route,
            modifier = Modifier.padding(padding)
        ) {
            composable(Screen.Home.route) {
                HomeScreen(
                    onNavigate = { route ->
                        when (route) {
                            "thermal" -> navController.navigate(Screen.Toolkit.route)
                            "battery" -> navController.navigate(Screen.Toolkit.route)
                            "developer" -> navController.navigate(Screen.Toolkit.route)
                            "games" -> navController.navigate(Screen.Games.route)
                        }
                    }
                )
            }
            composable(Screen.Isolation.route) {
                IsolationScreenContent()
            }
            composable(Screen.Games.route) {
                GamesScreenContent()
            }
            composable(Screen.Toolkit.route) {
                ToolkitScreen(
                    onNavigate = { route ->
                        when (route) {
                            "system_tweaks" -> navController.navigate(Screen.SystemTweaks.route)
                            "background_manager" -> navController.navigate(Screen.BackgroundManager.route)
                            else -> {}
                        }
                    }
                )
            }
            composable(Screen.SystemTweaks.route) {
                com.pandasu.turbo.ui.compose.tweaks.SystemTweaksScreen(
                    onNavigateBack = { navController.popBackStack() },
                    onNavigate = { route ->
                        when (route) {
                            "background_manager" -> navController.navigate(Screen.BackgroundManager.route)
                            else -> {}
                        }
                    }
                )
            }
            composable(Screen.BackgroundManager.route) {
                com.pandasu.turbo.ui.compose.background.BackgroundManagerScreen(
                    onNavigateBack = { navController.popBackStack() }
                )
            }
        }
    }
}

data class TabItem(
    val label: String,
    val icon: androidx.compose.ui.graphics.vector.ImageVector,
    val route: String
)

@Composable
fun IsolationScreenContent() {
    val viewModel = IsolationViewModel()
    IsolationScreen(viewModel = viewModel)
}

@Composable
fun GamesScreenContent() {
    val context = LocalContext.current
    
    // 每次重组时重新读取最新数据，不用 remember 缓存
    val prefs = context.getSharedPreferences("turbo_settings", android.content.Context.MODE_PRIVATE)
    
    // 使用 key 来触发重组读取最新数据
    var dataVersion by remember { mutableIntStateOf(0) }
    
    // 每次 dataVersion 变化时重新读取 profiles
    val store = remember(dataVersion) { 
        com.pandasu.turbo.data.GameProfileStore(context.applicationContext) 
    }
    val profiles = store.allProfiles
    
    var autoTurbo by remember(dataVersion) { mutableStateOf(prefs.getBoolean("auto_turbo_enabled", false)) }
    var autoClean by remember(dataVersion) { mutableStateOf(prefs.getBoolean("auto_clean_enabled", true)) }
    var autoDnd by remember(dataVersion) { mutableStateOf(prefs.getBoolean("auto_dnd_enabled", true)) }
    
    var isScanning by remember { mutableStateOf(false) }
    var scanStatus by remember { mutableStateOf<String?>(null) }
    var scanLogs by remember { mutableStateOf(listOf<String>()) }
    var showScanLogs by remember { mutableStateOf(false) }
    
    // 刷新数据的函数
    val refreshData: () -> Unit = {
        dataVersion++
    }
    
    // Activity 返回监听 - 手动添加游戏后刷新列表
    val addGameLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult()
    ) { _ ->
        refreshData()
    }
    
    // History 返回监听
    val historyLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult()
    ) { _ ->
        refreshData()
    }
    
    // 自动扫描函数
    fun performAutoScan() {
        if (isScanning) return
        
        isScanning = true
        scanStatus = "扫描中..."
        scanLogs = mutableListOf("🔍 开始扫描...")
        showScanLogs = true
        
        // 在后台线程执行扫描
        thread {
            try {
                val addedNames = mutableListOf<String>()
                val failedNames = mutableListOf<String>()
                val pm = context.packageManager
                val myPid = android.os.Process.myPid()
                val logs = mutableListOf("🔍 开始扫描...")
                
                fun addLog(msg: String) {
                    logs.add(msg)
                    Handler(Looper.getMainLooper()).post {
                        scanLogs = logs.toList()
                    }
                }
                
                addLog("📱 获取已安装应用...")
                
                // 预置游戏包名列表（常见游戏）
                val KNOWN_GAMES = mapOf(
                    // 腾讯
                    "com.tencent.tmgp.sgame" to "王者荣耀",
                    "com.tencent.ig" to "和平精英",
                    "com.tencent.lolm" to "英雄联盟手游",
                    "com.tencentgame.cod" to "使命召唤手游",
                    "com.tencent.tmgp.cf" to "穿越火线",
                    "com.tencent.tmgp.aria" to "Arena of Valor",
                    "com.tencentgame.harry" to "哈利波特",
                    "com.tencent.tmgp.wingsky" to "腾讯天美飞车",
                    // 网易
                    "com.netease.lztgglobal" to "率土之滨",
                    "com.netease.mobglory" to "阴阳师",
                    "com.netease.qc" to "倩女幽魂",
                    "com.netease.wyzt3" to "梦幻西游3D",
                    "com.netease.onmyoji" to "阴阳师",
                    "com.netease.mrzh" to "明日之后",
                    "com.netease.gnbook" to "光·遇",
                    "com.netease.ewxys" to "恶魇之息",
                    "com.netease.hot" to "Hot",
                    // 米哈游
                    "com.miHoYo.Yuanshen" to "原神",
                    "com.miHoYo.blank" to "崩坏：星穹铁道",
                    "com.miHoYo.bh3" to "崩坏3",
                    "com.miHoYo.GenshinImpact" to "原神",
                    // 阿里
                    "com.idlegame.ch" to "三国志·战略版",
                    // 字节
                    "com.bytedance.lightstalk" to "星球：重启",
                    "com.netease.viva" to "晶核",
                    // 其他
                    "com.pearlabyss.blackdesertm" to "黑色沙漠",
                    "com.campmobile.skm" to "我的英雄梦",
                    "com.supercell.clashofclans" to "部落冲突",
                    "com.supercell.clashroyale" to "皇室战争",
                    "com.king.candycrushsaga" to "糖果传奇",
                    "com.king.candycrush4" to "糖果传奇4",
                    "com.innersloth.amongus" to "Among Us",
                    "com.roblox.client" to "Roblox",
                    "com.epicgames.fortnite" to "Fortnite",
                    "com.pubg.krmobile" to "PUBG Mobile",
                    "com.garena.game.codm" to "Garena COD",
                    "com.maxplaygames.vanguard" to "Vanguard",
                    // 射击类
                    "com.wydby.miniworld" to "迷你世界",
                    // 赛车
                    "com.tencent.tmgp.speedmobile" to "QQ飞车",
                    "com.tencent.tmgp.nba" to "NBA2K",
                    // FPS
                    "com.netease.nbc" to "荒野行动",
                    "com.netease.mhxy" to "梦幻西游",
                    "com.netease.ldxx" to "领导办公室",
                    "com.game.prefix" to " prefix",
                    // 休闲
                    "com.rovio.angrybirds" to "愤怒的小鸟",
                    "com.rovio.mighty" to "Mighty",
                    "com.innersloth.amongus" to "Among Us",
                    "com.cuttheapp.absurd" to "抽象",
                    // RPG
                    "com.worm.badland" to "Badland",
                    "com.crocogame.tactic" to "Tactic",
                    // 默认
                    "" to ""
                )
                
                // 获取当前已配置的游戏包名
                val scanStore = com.pandasu.turbo.data.GameProfileStore(context.applicationContext)
                val existingSet = scanStore.allProfiles.map { it.packageName }.toMutableSet()
                addLog("📋 已配置: ${existingSet.size} 个")
                
                val installedApps = pm.getInstalledApplications(
                    android.content.pm.PackageManager.GET_META_DATA
                )
                addLog("📦 安装应用: ${installedApps.size} 个")
                
                var checkedCount = 0
                var gameCount = 0
                
                for (app in installedApps) {
                    // 跳过系统应用
                    if ((app.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0) continue
                    
                    val pkg = app.packageName
                    if (pkg == context.packageName || pkg.contains("pandasu.turbo")) continue
                    if (pkg in existingSet) continue
                    
                    checkedCount++
                    
                    // 双重检测：FLAG_IS_GAME 或预置列表
                    val isGame = (app.flags and android.content.pm.ApplicationInfo.FLAG_IS_GAME) != 0
                    val isKnownGame = pkg in KNOWN_GAMES
                    
                    if (isGame || isKnownGame) {
                        gameCount++
                        try {
                            // 优先使用应用实际名称，其次预置名称
                            val appName = pm.getApplicationLabel(app).toString()
                            val displayName = if (appName != pkg && appName.length > 1) {
                                appName
                            } else {
                                KNOWN_GAMES[pkg] ?: appName
                            }
                            addLog("🎮 发现游戏: $displayName ($pkg)")
                            
                            // 使用性能预设创建配置
                            val profile = com.pandasu.turbo.data.GamePreset.performance(pkg, displayName)
                            
                            // 保存配置
                            val saved = scanStore.saveProfile(profile)
                            
                            if (saved) {
                                addLog("✅ 已添加: $displayName")
                                addedNames.add(displayName)
                                existingSet.add(pkg)
                            } else {
                                addLog("❌ 保存失败: $displayName")
                                failedNames.add(displayName)
                            }
                        } catch (e: Exception) {
                            addLog("⚠️ 错误: ${e.message}")
                        }
                    }
                    
                    // 每检查50个应用更新一次进度
                    if (checkedCount % 50 == 0) {
                        addLog("⏳ 已检查 $checkedCount 个...")
                    }
                }
                
                addLog("")
                val resultMsg = when {
                    addedNames.isEmpty() && failedNames.isEmpty() -> "😴 未发现新游戏"
                    failedNames.isNotEmpty() -> "⚠️ 完成: ${addedNames.size}成功, ${failedNames.size}失败"
                    else -> "🎉 已添加 ${addedNames.size} 个游戏"
                }
                addLog(resultMsg)
                
                // 回到主线程更新 UI
                Handler(Looper.getMainLooper()).post {
                    scanStatus = resultMsg
                    isScanning = false
                    refreshData()
                }
            } catch (e: Exception) {
                e.printStackTrace()
                Handler(Looper.getMainLooper()).post {
                    scanStatus = "❌ 扫描失败: ${e.javaClass.simpleName}"
                    scanLogs = scanLogs + "❌ 异常: ${e.message}"
                    isScanning = false
                }
            }
        }
    }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(PandaBackground)
            .padding(16.dp)
            .verticalScroll(rememberScrollState()) // 添加垂直滚动
    ) {
        // 标题
        Text(
            text = "🎮 游戏模式",
            fontSize = 22.sp,
            fontWeight = FontWeight.Bold,
            color = PandaOnSurface
        )
        
        Spacer(modifier = Modifier.height(20.dp))
        
        // 自动化开关卡片
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = PandaSurface),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column(modifier = Modifier.padding(16.dp)) {
                // Turbo 开关
                GameSwitchRow(
                    title = "自动开启 Turbo",
                    desc = "进入游戏时自动启用性能模式",
                    checked = autoTurbo,
                    onCheckedChange = {
                        autoTurbo = it
                        prefs.edit().putBoolean("auto_turbo_enabled", it).apply()
                    }
                )
                
                HorizontalDivider(color = PandaDivider, modifier = Modifier.padding(vertical = 12.dp))
                
                // 清理开关
                GameSwitchRow(
                    title = "自动后台清理",
                    desc = "进入游戏时自动清理后台进程",
                    checked = autoClean,
                    onCheckedChange = {
                        autoClean = it
                        prefs.edit().putBoolean("auto_clean_enabled", it).apply()
                    }
                )
                
                HorizontalDivider(color = PandaDivider, modifier = Modifier.padding(vertical = 12.dp))
                
                // 勿扰开关
                GameSwitchRow(
                    title = "自动勿扰模式",
                    desc = "进入游戏时自动开启勿扰",
                    checked = autoDnd,
                    onCheckedChange = {
                        autoDnd = it
                        prefs.edit().putBoolean("auto_dnd_enabled", it).apply()
                    }
                )
            }
        }
        
        Spacer(modifier = Modifier.height(16.dp))
        
        // 入口卡片
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = PandaSurface),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column {
                // 自动扫描添加
                GameEntryRow(
                    title = "🔍 自动扫描添加",
                    subtitle = if (isScanning) "扫描中..." else scanStatus,
                    showSpinner = isScanning,
                    onClick = { performAutoScan() }
                )
                
                // 扫描日志显示
                if (showScanLogs && scanLogs.isNotEmpty()) {
                    Card(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 16.dp, vertical = 8.dp)
                            .heightIn(max = 200.dp),
                        colors = CardDefaults.cardColors(containerColor = Color(0xFF1E1E1E)),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Column(modifier = Modifier.padding(12.dp)) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = "📜 扫描日志",
                                    fontSize = 12.sp,
                                    fontWeight = FontWeight.Medium,
                                    color = Color(0xFF00D9FF)
                                )
                                Row {
                                    // 复制按钮
                                    TextButton(
                                        onClick = {
                                            val clipboard = context.getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
                                            val clip = android.content.ClipData.newPlainText(
                                                "扫描日志",
                                                scanLogs.joinToString("\n")
                                            )
                                            clipboard.setPrimaryClip(clip)
                                            android.widget.Toast.makeText(context, "已复制到剪贴板", android.widget.Toast.LENGTH_SHORT).show()
                                        },
                                        contentPadding = PaddingValues(horizontal = 8.dp)
                                    ) {
                                        Text("📋 复制", fontSize = 12.sp, color = Color(0xFF4CAF50))
                                    }
                                    // 收起按钮
                                    TextButton(
                                        onClick = { showScanLogs = false },
                                        contentPadding = PaddingValues(0.dp)
                                    ) {
                                        Text("收起", fontSize = 12.sp, color = Color.Gray)
                                    }
                                }
                            }
                            HorizontalDivider(color = Color(0xFF333333), modifier = Modifier.padding(vertical = 8.dp))
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .weight(1f, fill = false)
                            ) {
                                Column {
                                    scanLogs.takeLast(20).forEach { log ->
                                        Text(
                                            text = log,
                                            fontSize = 11.sp,
                                            color = when {
                                                log.startsWith("🎉") || log.startsWith("✅") -> Color(0xFF4CAF50)
                                                log.startsWith("❌") || log.startsWith("⚠️") -> Color(0xFFFF5722)
                                                log.startsWith("🎮") -> Color(0xFFFFEB3B)
                                                log.startsWith("⏳") -> Color(0xFF9E9E9E)
                                                else -> Color(0xFFB0B0B0)
                                            },
                                            fontFamily = androidx.compose.ui.text.font.FontFamily.Monospace
                                        )
                                    }
                                    // 扫描中显示加载动画
                                    if (isScanning) {
                                        Row(verticalAlignment = Alignment.CenterVertically) {
                                            CircularProgressIndicator(
                                                modifier = Modifier.size(12.dp),
                                                strokeWidth = 2.dp,
                                                color = Color(0xFF00D9FF)
                                            )
                                            Spacer(modifier = Modifier.width(8.dp))
                                            Text(
                                                text = "扫描中...",
                                                fontSize = 11.sp,
                                                color = Color(0xFF00D9FF)
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                HorizontalDivider(color = PandaDivider, modifier = Modifier.padding(horizontal = 16.dp))
                GameEntryRow(
                    title = "➕ 手动添加游戏",
                    onClick = { 
                        val intent = Intent(context, com.pandasu.turbo.ui.InstalledGamesActivity::class.java)
                        addGameLauncher.launch(intent)
                    }
                )
                HorizontalDivider(color = PandaDivider, modifier = Modifier.padding(horizontal = 16.dp))
                GameEntryRow(
                    title = "📜 使用历史",
                    onClick = { 
                        val intent = Intent(context, com.pandasu.turbo.ui.HistoryActivity::class.java)
                        historyLauncher.launch(intent)
                    }
                )
            }
        }
        
        Spacer(modifier = Modifier.height(16.dp))
        
        // 已配置游戏标题
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 8.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "已配置游戏",
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
                color = PandaSubText
            )
            if (profiles.isNotEmpty()) {
                Text(
                    text = "${profiles.size}个",
                    fontSize = 12.sp,
                    color = PandaGray
                )
            }
        }
        
        // 游戏列表（使用 LazyColumn 支持滚动）
        if (profiles.isEmpty()) {
            // 空状态提示
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = PandaSurface),
                shape = RoundedCornerShape(12.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Icon(
                        Icons.Default.SportsEsports,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = PandaGray
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "暂无配置的游戏",
                        fontSize = 14.sp,
                        color = PandaSubText
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "点击上方「添加游戏」开始配置",
                        fontSize = 12.sp,
                        color = PandaGray
                    )
                }
            }
        } else {
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = PandaSurface),
                shape = RoundedCornerShape(12.dp)
            ) {
                Column {
                    profiles.forEachIndexed { index, profile ->
                        val profilePkg = profile.packageName
                        GameProfileRow(
                            profile = profile,
                            onEdit = {
                                val intent = Intent(context, com.pandasu.turbo.ui.ProfileEditActivity::class.java).apply {
                                    putExtra("packageName", profilePkg)
                                }
                                context.startActivity(intent)
                            },
                            onDelete = {
                                com.pandasu.turbo.data.GameProfileStore(context.applicationContext).removeProfile(profilePkg)
                                refreshData()
                            }
                        )
                        if (index < profiles.size - 1) {
                            HorizontalDivider(color = PandaDivider, modifier = Modifier.padding(horizontal = 16.dp))
                        }
                    }
                }
            }
        }
        
        Spacer(modifier = Modifier.height(80.dp)) // 底部留空
    }
}

@Composable
private fun GameProfileRow(
    profile: com.pandasu.turbo.data.GameProfile,
    onEdit: () -> Unit,
    onDelete: () -> Unit
) {
    val context = LocalContext.current
    var showDeleteDialog by remember { mutableStateOf(false) }
    val pkgName = profile.packageName
    
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onEdit)
            .padding(16.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // 应用图标
        val icon = remember(pkgName) {
            try {
                context.packageManager.getApplicationIcon(pkgName)
            } catch (e: Exception) {
                null
            }
        }
        if (icon != null) {
            Image(
                bitmap = icon.toBitmap().asImageBitmap(),
                contentDescription = null,
                modifier = Modifier.size(40.dp)
            )
        } else {
            Icon(
                Icons.Default.Games,
                contentDescription = null,
                modifier = Modifier.size(40.dp),
                tint = PandaPrimary
            )
        }
        
        Spacer(modifier = Modifier.width(12.dp))
        
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = profile.displayName,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                color = PandaOnSurface
            )
            Text(
                text = buildString {
                    append(profile.performanceMode)
                    if (profile.autoTurbo) append(" | Turbo")
                    if (profile.autoDnd) append(" | 勿扰")
                },
                fontSize = 12.sp,
                color = PandaSubText
            )
        }
        
        IconButton(onClick = { showDeleteDialog = true }) {
            Icon(Icons.Default.Delete, contentDescription = "删除", tint = PandaGray)
        }
    }
    
    if (showDeleteDialog) {
        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = { Text("删除游戏") },
            text = { Text("确定删除 \"${profile.displayName}\" 的配置？") },
            confirmButton = {
                TextButton(onClick = {
                    onDelete()
                    showDeleteDialog = false
                }) {
                    Text("删除", color = Color.Red)
                }
            },
            dismissButton = {
                TextButton(onClick = { showDeleteDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
}

// 扩展函数：将 Drawable 转为 Bitmap
private fun android.graphics.drawable.Drawable.toBitmap(): android.graphics.Bitmap {
    if (this is android.graphics.drawable.BitmapDrawable) {
        return this.bitmap
    }
    val width = if (intrinsicWidth > 0) intrinsicWidth else 48
    val height = if (intrinsicHeight > 0) intrinsicHeight else 48
    val bitmap = android.graphics.Bitmap.createBitmap(width, height, android.graphics.Bitmap.Config.ARGB_8888)
    val canvas = android.graphics.Canvas(bitmap)
    setBounds(0, 0, canvas.width, canvas.height)
    draw(canvas)
    return bitmap
}

@Composable
private fun GameSwitchRow(
    title: String,
    desc: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(title, fontSize = 15.sp, fontWeight = FontWeight.Medium, color = PandaOnSurface)
            Text(desc, fontSize = 12.sp, color = PandaSubText)
        }
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange,
            colors = SwitchDefaults.colors(checkedTrackColor = PandaPrimary)
        )
    }
}

@Composable
private fun GameEntryRow(
    title: String,
    subtitle: String? = null,
    showSpinner: Boolean = false,
    onClick: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(16.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(title, fontSize = 15.sp, color = PandaOnSurface)
            if (subtitle != null) {
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = subtitle,
                    fontSize = 12.sp,
                    color = if (subtitle.contains("已添加")) PandaPrimary else PandaGray
                )
            }
        }
        if (showSpinner) {
            CircularProgressIndicator(
                modifier = Modifier.size(20.dp),
                strokeWidth = 2.dp,
                color = PandaPrimary
            )
        } else {
            Icon(Icons.Default.ChevronRight, contentDescription = null, tint = PandaSubText)
        }
    }
}
