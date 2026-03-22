package com.rootguard.app.ui.screens.install

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.selectable
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun InstallScreen(
    onNavigateBack: () -> Unit,
    viewModel: InstallViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    var showFilePicker by remember { mutableStateOf(false) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("安装") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                }
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // 安装方式选择
            Card {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Text(
                        text = "选择安装方式",
                        style = MaterialTheme.typography.titleMedium
                    )
                    
                    // 选择文件
                    InstallOption(
                        selected = uiState.installMethod == InstallMethod.SELECT_FILE,
                        onClick = { viewModel.setInstallMethod(InstallMethod.SELECT_FILE) },
                        icon = Icons.Default.Folder,
                        title = "选择一个文件",
                        subtitle = "建议选择 init_boot 分区镜像"
                    )
                    
                    // 直接安装
                    InstallOption(
                        selected = uiState.installMethod == InstallMethod.DIRECT,
                        onClick = { viewModel.setInstallMethod(InstallMethod.DIRECT) },
                        icon = Icons.Default.SystemUpdate,
                        title = "直接安装（推荐）",
                        subtitle = "自动修补并安装"
                    )
                    
                    // 安装到未使用槽位
                    InstallOption(
                        selected = uiState.installMethod == InstallMethod.OTHER_SLOT,
                        onClick = { viewModel.setInstallMethod(InstallMethod.OTHER_SLOT) },
                        icon = Icons.Default.SwapHoriz,
                        title = "安装到未使用的槽位（OTA 后）",
                        subtitle = "适用于 A/B 分区设备"
                    )
                }
            }
            
            // 使用本地 LKM 文件
            Card(
                onClick = { /* TODO: 选择 LKM 文件 */ }
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.InsertDriveFile,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = "使用本地 LKM 文件",
                            style = MaterialTheme.typography.bodyLarge
                        )
                    }
                    Icon(
                        imageVector = Icons.Default.ChevronRight,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.5f)
                    )
                }
            }
            
            Spacer(modifier = Modifier.weight(1f))
            
            // 下一步按钮
            Button(
                onClick = { viewModel.proceedInstallation() },
                modifier = Modifier.fillMaxWidth(),
                enabled = uiState.canProceed
            ) {
                Text("下一步")
            }
        }
    }
}

@Composable
fun InstallOption(
    selected: Boolean,
    onClick: () -> Unit,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    subtitle: String
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(
                onClick = onClick,
                interactionSource = remember { androidx.compose.foundation.interaction.MutableInteractionSource() },
                indication = androidx.compose.material.ripple.rememberRipple(bounded = true)
            )
            .padding(vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        RadioButton(
            selected = selected,
            onClick = onClick
        )
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = title,
                style = MaterialTheme.typography.bodyLarge
            )
            Text(
                text = subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
            )
        }
    }
}

enum class InstallMethod {
    SELECT_FILE,
    DIRECT,
    OTHER_SLOT
}
