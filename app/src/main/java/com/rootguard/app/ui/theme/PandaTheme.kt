package com.rootguard.app.ui.theme

import androidx.compose.ui.graphics.Color

// ==================== 熊猫主题颜色 ====================

// 熊猫基础色
val PandaBlack = Color(0xFF1A1A1A)        // 熊猫黑
val PandaWhite = Color(0xFFFAFAFA)        // 熊猫白
val PandaGray = Color(0xFF4A4A4A)         // 熊猫灰
val PandaLightGray = Color(0xFFE0E0E0)    // 浅灰

// 熊猫强调色
val BambooGreen = Color(0xFF7CB342)       // 竹子绿
val BambooLight = Color(0xFFAED581)       // 浅竹绿
val BambooDark = Color(0xFF558B2F)        // 深竹绿

// 熊猫点缀色
val PandaPink = Color(0xFFF48FB1)         // 熊猫粉（耳朵内侧）
val PandaBlush = Color(0xFFFFCDD2)        // 腮红粉

// ==================== 预设主题 ====================

// 经典熊猫主题（黑白）
val ClassicPandaPrimary = PandaBlack
val ClassicPandaSecondary = PandaGray
val ClassicPandaBackground = PandaWhite
val ClassicPandaSurface = Color(0xFFF5F5F5)

// 竹林熊猫主题（绿色系）
val BambooPandaPrimary = BambooGreen
val BambooPandaSecondary = BambooDark
val BambooPandaBackground = Color(0xFFF1F8E9)
val BambooPandaSurface = Color(0xFFDCEDC8)

// 暗夜熊猫主题（深色）
val NightPandaPrimary = Color(0xFF90A4AE)
val NightPandaSecondary = Color(0xFFB0BEC5)
val NightPandaBackground = Color(0xFF121212)
val NightPandaSurface = Color(0xFF1E1E1E)

// 樱花熊猫主题（粉色系）
val SakuraPandaPrimary = Color(0xFFEC407A)
val SakuraPandaSecondary = Color(0xFFF06292)
val SakuraPandaBackground = Color(0xFFFCE4EC)
val SakuraPandaSurface = Color(0xFFF8BBD9)

// 金黄熊猫主题（暖色系）
val GoldenPandaPrimary = Color(0xFFFFA000)
val GoldenPandaSecondary = Color(0xFFFFB300)
val GoldenPandaBackground = Color(0xFFFFF8E1)
val GoldenPandaSurface = Color(0xFFFFECB3)

// 海洋熊猫主题（蓝色系）
val OceanPandaPrimary = Color(0xFF0288D1)
val OceanPandaSecondary = Color(0xFF29B6F6)
val OceanPandaBackground = Color(0xFFE1F5FE)
val OceanPandaSurface = Color(0xFFB3E5FC)

// ==================== 主题数据类 ====================

data class PandaTheme(
    val id: String,
    val name: String,
    val nameEn: String,
    val primary: Color,
    val secondary: Color,
    val tertiary: Color = primary,
    val background: Color,
    val surface: Color,
    val onPrimary: Color = Color.White,
    val onBackground: Color = PandaBlack,
    val onSurface: Color = PandaBlack,
    val isDark: Boolean = false,
    val icon: String = "🐼"
)

// 所有预设主题
val PandaThemes = listOf(
    PandaTheme(
        id = "classic",
        name = "经典熊猫",
        nameEn = "Classic Panda",
        primary = ClassicPandaPrimary,
        secondary = ClassicPandaSecondary,
        background = ClassicPandaBackground,
        surface = ClassicPandaSurface,
        icon = "🐼"
    ),
    PandaTheme(
        id = "bamboo",
        name = "竹林熊猫",
        nameEn = "Bamboo Panda",
        primary = BambooPandaPrimary,
        secondary = BambooPandaSecondary,
        tertiary = BambooDark,
        background = BambooPandaBackground,
        surface = BambooPandaSurface,
        icon = "🎋"
    ),
    PandaTheme(
        id = "night",
        name = "暗夜熊猫",
        nameEn = "Night Panda",
        primary = NightPandaPrimary,
        secondary = NightPandaSecondary,
        background = NightPandaBackground,
        surface = NightPandaSurface,
        onBackground = Color.White,
        onSurface = Color.White,
        isDark = true,
        icon = "🌙"
    ),
    PandaTheme(
        id = "sakura",
        name = "樱花熊猫",
        nameEn = "Sakura Panda",
        primary = SakuraPandaPrimary,
        secondary = SakuraPandaSecondary,
        background = SakuraPandaBackground,
        surface = SakuraPandaSurface,
        icon = "🌸"
    ),
    PandaTheme(
        id = "golden",
        name = "金黄熊猫",
        nameEn = "Golden Panda",
        primary = GoldenPandaPrimary,
        secondary = GoldenPandaSecondary,
        background = GoldenPandaBackground,
        surface = GoldenPandaSurface,
        icon = "🌟"
    ),
    PandaTheme(
        id = "ocean",
        name = "海洋熊猫",
        nameEn = "Ocean Panda",
        primary = OceanPandaPrimary,
        secondary = OceanPandaSecondary,
        background = OceanPandaBackground,
        surface = OceanPandaSurface,
        icon = "🌊"
    )
)

// 获取主题
fun getPandaTheme(id: String): PandaTheme {
    return PandaThemes.find { it.id == id } ?: PandaThemes.first()
}