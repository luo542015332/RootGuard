package com.rootguard.app.ui.screens.apps

import android.graphics.drawable.Drawable
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.core.graphics.drawable.toBitmap
import androidx.hilt.navigation.compose.hiltViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppsScreen(
    onNavigateBack: () -> Unit,
    onNavigateToIsolation: (String, String) -> Unit = { _, _ -> },
    viewModel: AppsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    var searchQuery by remember { mutableStateOf("") }
    var showFilterMenu by remember { mutableStateOf(false) }
    // 使用 viewModel 的 filter 状态而不是本地状态
    var currentFilter by remember { mutableStateOf(uiState.filter) }

    // 当 viewModel 的 filter 状态变化时,更新本地状态
    LaunchedEffect(uiState.filter) {
        currentFilter = uiState.filter
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("🛡️ 超级用户授权管理") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    IconButton(onClick = { showFilterMenu = true }) {
                        Icon(Icons.Default.FilterList, contentDescription = "筛选")
                    }
                    DropdownMenu(
                        expanded = showFilterMenu,
                        onDismissRequest = { showFilterMenu = false }
                    ) {
                        // 应用类型筛选
                        DropdownMenuItem(
                            text = { Text("全部应用") },
                            leadingIcon = {
                                Icon(
                                    imageVector = Icons.Default.Apps,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp)
                                )
                            },
                            onClick = {
                                currentFilter = AppFilter.ALL
                                viewModel.setFilter(AppFilter.ALL)
                                showFilterMenu = false
                            }
                        )
                        Divider()
                        DropdownMenuItem(
                            text = { Text("📱 用户应用") },
                            leadingIcon = {
                                Icon(
                                    imageVector = Icons.Default.PhoneAndroid,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp)
                                )
                            },
                            onClick = {
                                currentFilter = AppFilter.USER
                                viewModel.setFilter(AppFilter.USER)
                                showFilterMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("⚙️ 系统应用") },
                            leadingIcon = {
                                Icon(
                                    imageVector = Icons.Default.Settings,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp)
                                )
                            },
                            onClick = {
                                currentFilter = AppFilter.SYSTEM
                                viewModel.setFilter(AppFilter.SYSTEM)
                                showFilterMenu = false
                            }
                        )
                        Divider()
                        // Root 权限状态筛选
                        DropdownMenuItem(
                            text = { Text("✅ 已授权") },
                            leadingIcon = {
                                Icon(
                                    imageVector = Icons.Default.CheckCircle,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp),
                                    tint = MaterialTheme.colorScheme.primary
                                )
                            },
                            onClick = {
                                currentFilter = AppFilter.GRANTED
                                viewModel.setFilter(AppFilter.GRANTED)
                                showFilterMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("❌ 已拒绝") },
                            leadingIcon = {
                                Icon(
                                    imageVector = Icons.Default.Cancel,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp),
                                    tint = MaterialTheme.colorScheme.error
                                )
                            },
                            onClick = {
                                currentFilter = AppFilter.DENIED
                                viewModel.setFilter(AppFilter.DENIED)
                                showFilterMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("❓ 待询问") },
                            leadingIcon = {
                                Icon(
                                    imageVector = Icons.Default.Help,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp),
                                    tint = MaterialTheme.colorScheme.tertiary
                                )
                            },
                            onClick = {
                                currentFilter = AppFilter.PROMPT
                                viewModel.setFilter(AppFilter.PROMPT)
                                showFilterMenu = false
                            }
                        )
                    }
                }
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // Search bar
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { 
                    searchQuery = it
                    viewModel.search(it)
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                placeholder = { Text("搜索应用") },
                leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                singleLine = true
            )
            
            // Stats row
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                StatCard(
                    title = "📱 用户",
                    count = uiState.userAppCount,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.weight(1f)
                )
                StatCard(
                    title = "⚙️ 系统",
                    count = uiState.systemAppCount,
                    color = MaterialTheme.colorScheme.tertiary,
                    modifier = Modifier.weight(1f)
                )
                StatCard(
                    title = "✅ 已授权",
                    count = uiState.grantedCount,
                    color = Color(0xFF4CAF50),
                    modifier = Modifier.weight(1f)
                )
                StatCard(
                    title = "❌ 已拒绝",
                    count = uiState.deniedCount,
                    color = MaterialTheme.colorScheme.error,
                    modifier = Modifier.weight(1f)
                )
            }
            
            Spacer(modifier = Modifier.height(8.dp))
            
            // Filter indicator
            if (currentFilter != AppFilter.ALL) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "筛选: ${currentFilter.displayName}",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                    Spacer(modifier = Modifier.weight(1f))
                    TextButton(onClick = { 
                        currentFilter = AppFilter.ALL
                        viewModel.setFilter(AppFilter.ALL)
                    }) {
                        Text("清除筛选")
                    }
                }
            }
            
            // App list
            if (uiState.isLoading) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator()
                }
            } else if (uiState.filteredApps.isEmpty()) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center
                ) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Icon(
                            imageVector = Icons.Default.Android,
                            contentDescription = null,
                            modifier = Modifier.size(64.dp),
                            tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.3f)
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "没有找到应用",
                            style = MaterialTheme.typography.bodyLarge,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                        )
                    }
                }
            } else {
                LazyColumn(
                    modifier = Modifier.fillMaxSize(),
                    contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    items(uiState.filteredApps) { app ->
                        AppCard(
                            app = app,
                            onStatusChange = { newStatus ->
                                viewModel.setRootAccess(app.packageName, newStatus)
                            },
                            onIsolationClick = {
                                onNavigateToIsolation(app.packageName, app.name)
                            }
                        )
                    }
                }
            }
        }
    }
}

enum class AppFilter(val displayName: String, val isStatusFilter: Boolean = true) {
    ALL("全部应用"),
    SYSTEM("系统应用", false),
    USER("用户应用", false),
    GRANTED("已授权"),
    DENIED("已拒绝"),
    PROMPT("待询问")
}

@Composable
fun StatCard(title: String, count: Int, color: androidx.compose.ui.graphics.Color, modifier: Modifier = Modifier) {
    Card(modifier = modifier) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                text = count.toString(),
                style = MaterialTheme.typography.headlineMedium,
                color = color
            )
            Text(
                text = title,
                style = MaterialTheme.typography.bodySmall
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppCard(
    app: AppItem,
    onStatusChange: (RootAccessStatus) -> Unit,
    onIsolationClick: (() -> Unit)? = null
) {
    var showMenu by remember { mutableStateOf(false) }
    
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(12.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                // App icon
                AppIcon(
                    drawable = app.icon,
                    appName = app.name,
                    packageName = app.packageName,
                    modifier = Modifier.size(48.dp)
                )
                
                Column(modifier = Modifier.weight(1f)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(
                            text = app.name,
                            style = MaterialTheme.typography.titleMedium
                        )
                        if (app.isSystemApp) {
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = "系统",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.tertiary,
                                modifier = Modifier
                                    .padding(horizontal = 4.dp)
                            )
                        }
                        if (app.isIsolated) {
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = "🛡️",
                                style = MaterialTheme.typography.labelSmall
                            )
                        }
                    }
                    Text(
                        text = app.packageName,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                    )
                }
                
                // Status dropdown
                Box {
                    AssistChip(
                        onClick = { showMenu = true },
                        label = { 
                            Text(
                                when (app.rootStatus) {
                                    RootAccessStatus.GRANTED -> "已授权"
                                    RootAccessStatus.DENIED -> "已拒绝"
                                    RootAccessStatus.PROMPT -> "待询问"
                                }
                            )
                        },
                        leadingIcon = {
                            when (app.rootStatus) {
                                RootAccessStatus.GRANTED -> {
                                    Icon(
                                        imageVector = Icons.Default.CheckCircle,
                                        contentDescription = null,
                                        modifier = Modifier.size(18.dp),
                                        tint = MaterialTheme.colorScheme.primary
                                    )
                                }
                                RootAccessStatus.DENIED -> {
                                    Icon(
                                        imageVector = Icons.Default.Cancel,
                                        contentDescription = null,
                                        modifier = Modifier.size(18.dp),
                                        tint = MaterialTheme.colorScheme.error
                                    )
                                }
                                RootAccessStatus.PROMPT -> {
                                    Icon(
                                        imageVector = Icons.Default.Help,
                                        contentDescription = null,
                                        modifier = Modifier.size(18.dp),
                                        tint = MaterialTheme.colorScheme.tertiary
                                    )
                                }
                            }
                        }
                    )
                    
                    DropdownMenu(
                        expanded = showMenu,
                        onDismissRequest = { showMenu = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text("允许") },
                            leadingIcon = {
                                Icon(
                                    Icons.Default.CheckCircle,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.primary
                                )
                            },
                            onClick = {
                                onStatusChange(RootAccessStatus.GRANTED)
                                showMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("拒绝") },
                            leadingIcon = {
                                Icon(
                                    Icons.Default.Cancel,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.error
                                )
                            },
                            onClick = {
                                onStatusChange(RootAccessStatus.DENIED)
                                showMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("询问") },
                            leadingIcon = {
                                Icon(
                                    Icons.Default.Help,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.tertiary
                                )
                            },
                            onClick = {
                                onStatusChange(RootAccessStatus.PROMPT)
                                showMenu = false
                            }
                        )
                    }
                }
            }
            
            // 隔离设置按钮
            if (onIsolationClick != null) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 12.dp, vertical = 4.dp),
                    horizontalArrangement = Arrangement.End
                ) {
                    TextButton(
                        onClick = onIsolationClick,
                        colors = ButtonDefaults.textButtonColors(
                            contentColor = if (app.isIsolated) {
                                MaterialTheme.colorScheme.primary
                            } else {
                                MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                            }
                        )
                    ) {
                        Icon(
                            imageVector = Icons.Default.Security,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            if (app.isIsolated) "🛡️ 已隔离" else "隔离设置"
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun AppIcon(
    drawable: Drawable?,
    appName: String,
    packageName: String? = null,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    var iconDrawable by remember { mutableStateOf<Drawable?>(null) }

    LaunchedEffect(packageName) {
        if (drawable == null && packageName != null) {
            // 异步加载图标
            try {
                val pm = context.packageManager
                val packageInfo = pm.getPackageInfo(packageName, 0)
                iconDrawable = pm.getApplicationIcon(packageInfo.applicationInfo)
            } catch (e: Exception) {
                // 加载失败，使用默认显示
            }
        } else {
            iconDrawable = drawable
        }
    }

    if (iconDrawable != null) {
        Image(
            bitmap = iconDrawable!!.toBitmap().asImageBitmap(),
            contentDescription = appName,
            modifier = modifier
        )
    } else {
        Surface(
            modifier = modifier,
            shape = MaterialTheme.shapes.medium,
            color = MaterialTheme.colorScheme.primaryContainer
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(
                    text = appName.firstOrNull()?.toString() ?: "?",
                    style = MaterialTheme.typography.titleLarge,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
            }
        }
    }
}

data class AppItem(
    val packageName: String,
    val name: String,
    val rootStatus: RootAccessStatus,
    val isSystemApp: Boolean = false,
    val icon: android.graphics.drawable.Drawable? = null,
    val isIsolated: Boolean = false
)

enum class RootAccessStatus {
    GRANTED,
    DENIED,
    PROMPT
}