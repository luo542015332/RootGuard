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
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.core.graphics.drawable.toBitmap
import androidx.hilt.navigation.compose.hiltViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppsScreen(
    onNavigateBack: () -> Unit,
    viewModel: AppsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    var searchQuery by remember { mutableStateOf("") }
    var showFilterMenu by remember { mutableStateOf(false) }
    var currentFilter by remember { mutableStateOf(AppFilter.ALL) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("超级用户授权管理") },
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
                        DropdownMenuItem(
                            text = { Text("全部应用") },
                            onClick = { 
                                currentFilter = AppFilter.ALL
                                viewModel.setFilter(AppFilter.ALL)
                                showFilterMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("已授权") },
                            onClick = { 
                                currentFilter = AppFilter.GRANTED
                                viewModel.setFilter(AppFilter.GRANTED)
                                showFilterMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("已拒绝") },
                            onClick = { 
                                currentFilter = AppFilter.DENIED
                                viewModel.setFilter(AppFilter.DENIED)
                                showFilterMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("待询问") },
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
                    title = "已授权",
                    count = uiState.grantedCount,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.weight(1f)
                )
                StatCard(
                    title = "已拒绝",
                    count = uiState.deniedCount,
                    color = MaterialTheme.colorScheme.error,
                    modifier = Modifier.weight(1f)
                )
                StatCard(
                    title = "待询问",
                    count = uiState.promptCount,
                    color = MaterialTheme.colorScheme.tertiary,
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
                            }
                        )
                    }
                }
            }
        }
    }
}

enum class AppFilter(val displayName: String) {
    ALL("全部应用"),
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
    onStatusChange: (RootAccessStatus) -> Unit
) {
    var showMenu by remember { mutableStateOf(false) }
    
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
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
    }
}

@Composable
fun AppIcon(
    drawable: Drawable?,
    appName: String,
    modifier: Modifier = Modifier
) {
    if (drawable != null) {
        Image(
            bitmap = drawable.toBitmap().asImageBitmap(),
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
    val icon: android.graphics.drawable.Drawable? = null
)

enum class RootAccessStatus {
    GRANTED,
    DENIED,
    PROMPT
}