package com.rootguard.app.ui.screens.envscore

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Assessment
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.List
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Shield
import androidx.compose.material.icons.filled.Warning
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Shape
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.background
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.ui.theme.successColor
import com.rootguard.app.ui.theme.warningColor
import com.rootguard.app.ui.theme.errorColor
import com.rootguard.app.ui.theme.infoColor

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EnvScoreDetailScreen(
    onNavigateBack: () -> Unit,
    viewModel: EnvScoreDetailViewModel = hiltViewModel()
) {
    var selectedTabIndex by remember { mutableStateOf(0) }
    val tabs = listOf("概览", "详细信息")

    // 使用 collectAsState 观察数据变化
    val envChecks by viewModel.envChecks.collectAsState()
    val moduleStatuses by viewModel.moduleStatuses.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("环境安全评分详情") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "返回")
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
            // Tab 导航
            TabRow(
                selectedTabIndex = selectedTabIndex,
                containerColor = MaterialTheme.colorScheme.surface,
                contentColor = MaterialTheme.colorScheme.primary,
                modifier = Modifier.fillMaxWidth()
            ) {
                tabs.forEachIndexed { index, title ->
                    Tab(
                        selected = selectedTabIndex == index,
                        onClick = { selectedTabIndex = index },
                        modifier = Modifier.padding(vertical = 8.dp),
                        text = { 
                            Text(
                                text = title,
                                style = MaterialTheme.typography.labelLarge
                            ) 
                        },
                        icon = {
                            Icon(
                                imageVector = when (index) {
                                    0 -> Icons.Default.Assessment
                                    1 -> Icons.Default.List
                                    else -> Icons.Default.Info
                                },
                                contentDescription = title
                            )
                        }
                    )
                }
            }
            
            // Tab 内容
            when (selectedTabIndex) {
                0 -> OverviewTabContent(
                    envChecks = envChecks,
                    moduleStatuses = moduleStatuses,
                    isLoading = isLoading,
                    onRefresh = { viewModel.loadData() }
                )
                1 -> DetailTabContent(
                    envChecks = envChecks,
                    moduleStatuses = moduleStatuses
                )
            }
        }
    }
}

@Composable
fun OverviewTabContent(
    envChecks: List<RootHider.DetectionResult> = emptyList(),
    moduleStatuses: List<RootHider.ModuleStatus> = emptyList(),
    isLoading: Boolean = false,
    onRefresh: () -> Unit = {}
) {
    val scrollState = rememberScrollState()

    // 计算总分
    val totalScore = remember(envChecks) {
        if (envChecks.isEmpty()) 100
        else {
            var score = 100
            envChecks.forEach { check ->
                if (check.detected) score -= check.severity
            }
            score.coerceIn(0, 100)
        }
    }

    // 根据检测结果生成数据
    val detectedProblems = remember(envChecks) {
        envChecks.filter { it.detected }.map { it.label to it.severity }
    }

    // 根据检测结果生成建议
    val suggestions = remember(envChecks) {
        buildList {
            envChecks.forEach { check ->
                if (check.detected) {
                    when {
                        check.item.name.contains("Shamiko") ->
                            add("安装 Shamiko 模块隐藏 Root/Zygisk 痕迹")
                        check.item.name.contains("Tricky") ->
                            add("安装 Tricky Store 模块隐藏 Magisk 管理器")
                        check.item.name.contains("PlayIntegrityFix") ->
                            add("安装 PlayIntegrityFix 修复 Google 设备完整性")
                        check.item.name.contains("su 二进制") ->
                            add("使用一键隔离隐藏 su 文件")
                        check.item.name.contains("Root 应用") ->
                            add("使用一键隔离隐藏 Root 管理应用")
                        check.item.name.contains("ro.debuggable") ->
                            add("使用属性伪装修复 debuggable 属性")
                        check.item.name.contains("test-keys") ->
                            add("使用属性伪装修复签名问题")
                    }
                }
            }
        }.distinct()
    }

    // 评分颜色
    val scoreColor = when {
        totalScore >= 80 -> successColor
        totalScore >= 60 -> warningColor
        else -> errorColor
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(scrollState)
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // 主评分卡片 - 刷新按钮整合到卡片内部
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surface
            ),
            shape = RoundedCornerShape(16.dp),
            elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(20.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                // 标题行
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            Icons.Default.Shield,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.primary,
                            modifier = Modifier.size(24.dp)
                        )
                        Text(
                            text = "环境安全评分",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                    }

                    // 刷新按钮
                    IconButton(
                        onClick = onRefresh,
                        enabled = !isLoading,
                        modifier = Modifier.size(36.dp)
                    ) {
                        if (isLoading) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(20.dp),
                                strokeWidth = 2.dp
                            )
                        } else {
                            Icon(
                                Icons.Default.Refresh,
                                contentDescription = "刷新检测",
                                tint = MaterialTheme.colorScheme.primary,
                                modifier = Modifier.size(20.dp)
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                // 分数显示 - 大号数字
                Box(
                    contentAlignment = Alignment.Center,
                    modifier = Modifier.size(120.dp)
                ) {
                    // 背景圆环
                    Surface(
                        shape = CircleShape,
                        color = scoreColor.copy(alpha = 0.15f),
                        modifier = Modifier.size(120.dp)
                    ) {}

                    // 分数
                    Text(
                        text = totalScore.toString(),
                        style = MaterialTheme.typography.displayMedium,
                        fontWeight = FontWeight.Bold,
                        color = scoreColor
                    )
                }

                Spacer(modifier = Modifier.height(8.dp))

                // 评分描述
                Text(
                    text = when {
                        totalScore >= 80 -> "安全状态良好"
                        totalScore >= 60 -> "存在安全隐患"
                        else -> "危险！需要修复"
                    },
                    style = MaterialTheme.typography.bodyLarge,
                    color = scoreColor,
                    fontWeight = FontWeight.Medium
                )

                // 问题数量提示
                if (detectedProblems.isNotEmpty()) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = errorColor.copy(alpha = 0.1f)
                    ) {
                        Text(
                            text = "检测到 ${detectedProblems.size} 个问题",
                            modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp),
                            style = MaterialTheme.typography.bodySmall,
                            color = errorColor,
                            fontWeight = FontWeight.Medium
                        )
                    }
                }
            }
        }

        // 检测到的问题
        if (detectedProblems.isNotEmpty()) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                ),
                shape = RoundedCornerShape(12.dp)
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Warning,
                            null,
                            tint = errorColor,
                            modifier = Modifier.size(20.dp)
                        )
                        Spacer(Modifier.width(8.dp))
                        Text(
                            text = "检测到的问题 (${detectedProblems.size})",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = errorColor
                        )
                    }
                    detectedProblems.forEach { (name, severity) ->
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text(
                                text = name,
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurface
                            )
                            Surface(
                                shape = RoundedCornerShape(4.dp),
                                color = errorColor.copy(alpha = 0.1f)
                            ) {
                                Text(
                                    text = "-$severity",
                                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = errorColor,
                                    fontWeight = FontWeight.Medium
                                )
                            }
                        }
                    }
                }
            }
        }

        // 优化建议
        if (suggestions.isNotEmpty()) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                ),
                shape = RoundedCornerShape(12.dp)
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Info,
                            null,
                            tint = Color(0xFF2196F3),
                            modifier = Modifier.size(20.dp)
                        )
                        Spacer(Modifier.width(8.dp))
                        Text(
                            text = "优化建议",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = Color(0xFF2196F3)
                        )
                    }
                    suggestions.forEach { suggestion ->
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            verticalAlignment = Alignment.Top,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Text(
                                text = "•",
                                style = MaterialTheme.typography.bodyMedium,
                                color = Color(0xFF2196F3)
                            )
                            Text(
                                text = suggestion,
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurface
                            )
                        }
                    }
                }
            }
        }

    }
}

@Composable
fun DetailTabContent(
    envChecks: List<RootHider.DetectionResult> = emptyList(),
    moduleStatuses: List<RootHider.ModuleStatus> = emptyList()
) {
    val scrollState = rememberScrollState()

    // 计算绿/黄/红数量
    val greenCount = envChecks.count { !it.detected }
    val yellowCount = envChecks.count { it.detected && it.severity <= 10 }
    val redCount = envChecks.count { it.detected && it.severity > 10 }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(scrollState)
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // 安全状态总结
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surface
            ),
            shape = MaterialTheme.shapes.large
        ) {
            Column(
                modifier = Modifier.padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Text(
                    text = "安全状态总结",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.primary
                )

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    // 绿色项
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(2.dp)
                    ) {
                        Text(
                            text = "$greenCount",
                            style = MaterialTheme.typography.headlineMedium,
                            color = successColor,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "绿色项",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }

                    // 黄色项
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(2.dp)
                    ) {
                        Text(
                            text = "$yellowCount",
                            style = MaterialTheme.typography.headlineMedium,
                            color = warningColor,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "黄色项",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }

                    // 红色项
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(2.dp)
                    ) {
                        Text(
                            text = "$redCount",
                            style = MaterialTheme.typography.headlineMedium,
                            color = errorColor,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "红色项",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                Text(
                    text = "绿色：安全通过 | 黄色：有待改进 | 红色：存在风险",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f),
                    textAlign = TextAlign.Center,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }

        // 详细评分项
        Text(
            text = "详细评分项",
            style = MaterialTheme.typography.titleLarge
        )

        // 使用真实检测数据
        val items = remember(envChecks) {
            envChecks.map { check ->
                val color = when {
                    check.detected && check.severity > 10 -> "红色"
                    check.detected -> "黄色"
                    else -> "绿色"
                }
                val desc = if (check.detected) "检测到问题" else "安全通过"
                ScoreItem(check.label, if (check.detected) 100 - check.severity else 100, color, desc)
            }
        }

        items.forEach { item ->
            ScoreDetailCard(item)
        }

        // 已安装模块状态
        if (moduleStatuses.isNotEmpty()) {
            Text(
                text = "模块状态",
                style = MaterialTheme.typography.titleLarge
            )
            moduleStatuses.forEach { module ->
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = if (module.installed) successColor.copy(alpha = 0.1f) else warningColor.copy(alpha = 0.1f)
                    )
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth().padding(12.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(module.name, style = MaterialTheme.typography.bodyMedium, fontWeight = FontWeight.Bold)
                        Text(
                            if (module.installed) "✓ 已安装" else "✗ 未安装",
                            style = MaterialTheme.typography.bodySmall,
                            color = if (module.installed) successColor else warningColor
                        )
                    }
                }
            }
        }

        // 改进建议
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surfaceVariant
            )
        ) {
            Column(
                modifier = Modifier.padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Text(
                    text = "改进建议",
                    style = MaterialTheme.typography.titleLarge
                )
                
                // 改进建议项
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.Top,
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Icon(
                        Icons.Default.Info,
                        contentDescription = null,
                        modifier = Modifier.size(24.dp),
                        tint = warningColor
                    )
                    Column(
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = "优化Tricky Store检测",
                            style = MaterialTheme.typography.bodyMedium,
                            fontWeight = FontWeight.SemiBold,
                            color = warningColor
                        )
                        Text(
                            text = "确保Tricky Store模块路径正确配置，避免被应用检测",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.Top,
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Icon(
                        Icons.Default.Info,
                        contentDescription = null,
                        modifier = Modifier.size(24.dp),
                        tint = warningColor
                    )
                    Column(
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = "增强安全启动",
                            style = MaterialTheme.typography.bodyMedium,
                            fontWeight = FontWeight.SemiBold,
                            color = warningColor
                        )
                        Text(
                            text = "检查设备安全启动状态，确保启动验证正常",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.Top,
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Icon(
                        Icons.Default.Info,
                        contentDescription = null,
                        modifier = Modifier.size(24.dp),
                        tint = infoColor
                    )
                    Column(
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = "定期更新隔离配置",
                            style = MaterialTheme.typography.bodyMedium,
                            fontWeight = FontWeight.SemiBold,
                            color = infoColor
                        )
                        Text(
                            text = "建议每周检查一次隔离配置，确保最新防护",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
        
        // 说明
        Card(
            modifier = Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surface
            )
        ) {
            Column(
                modifier = Modifier.padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = "评分说明",
                    style = MaterialTheme.typography.titleMedium
                )
                
                Text(
                    text = "• 评分范围：0-100分，分数越高越安全\n" +
                          "• 绿色：安全（80-100分）\n" +
                          "• 黄色：警告（60-79分）\n" +
                          "• 红色：危险（0-59分）\n" +
                          "• 建议保持评分在80分以上以确保最佳防护",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

data class ScoreItem(
    val name: String,
    val score: Int,
    val status: String,
    val description: String
)

@Composable
fun ScoreDetailCard(item: ScoreItem) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // 分数显示
            Box(
                contentAlignment = Alignment.Center,
                modifier = Modifier.size(48.dp)
            ) {
                Surface(
                    shape = MaterialTheme.shapes.medium,
                    color = when {
                        item.score >= 80 -> successColor
                        item.score >= 60 -> warningColor
                        else -> errorColor
                    }
                ) {
                    Box(
                        modifier = Modifier.size(48.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = item.score.toString(),
                            style = MaterialTheme.typography.titleLarge,
                            fontSize = 18.sp,
                            color = MaterialTheme.colorScheme.onPrimary
                        )
                    }
                }
            }
            
            // 详细信息
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = item.name,
                    style = MaterialTheme.typography.titleMedium
                )
                
                Row(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Surface(
                        shape = MaterialTheme.shapes.small,
                        color = when (item.status) {
                            "绿色" -> successColor.copy(alpha = 0.1f)
                            "黄色" -> warningColor.copy(alpha = 0.1f)
                            else -> errorColor.copy(alpha = 0.1f)
                        }
                    ) {
                        Text(
                            text = item.status,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp),
                            style = MaterialTheme.typography.labelSmall,
                            color = when (item.status) {
                                "绿色" -> successColor
                                "黄色" -> warningColor
                                else -> errorColor
                            }
                        )
                    }
                    
                    Text(
                        text = item.description,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
}