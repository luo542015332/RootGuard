package com.rootguard.app.ui.theme

import android.app.Activity
import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat

// 主题颜色常量
val successColor = Color(0xFF4CAF50)
val warningColor = Color(0xFFFF9800)
val errorColor = Color(0xFFF44336)
val infoColor = Color(0xFF2196F3)

/**
 * 获取熊猫主题颜色方案
 */
fun getPandaColorScheme(themeId: String, darkTheme: Boolean): androidx.compose.material3.ColorScheme {
    val theme = getPandaTheme(themeId)
    
    return if (darkTheme || theme.isDark) {
        darkColorScheme(
            primary = theme.primary,
            secondary = theme.secondary,
            tertiary = theme.tertiary,
            background = theme.background,
            surface = theme.surface,
            onPrimary = theme.onPrimary,
            onBackground = theme.onBackground,
            onSurface = theme.onSurface
        )
    } else {
        lightColorScheme(
            primary = theme.primary,
            secondary = theme.secondary,
            tertiary = theme.tertiary,
            background = theme.background,
            surface = theme.surface,
            onPrimary = theme.onPrimary,
            onBackground = theme.onBackground,
            onSurface = theme.onSurface
        )
    }
}

@Composable
fun RootGuardTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    dynamicColor: Boolean = false,
    themeId: String = "classic",
    content: @Composable () -> Unit
) {
    val colorScheme = when {
        dynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
            val context = LocalContext.current
            if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        }
        else -> getPandaColorScheme(themeId, darkTheme)
    }
    
    val view = LocalView.current
    if (!view.isInEditMode) {
        SideEffect {
            val window = (view.context as Activity).window
            window.statusBarColor = colorScheme.primary.toArgb()
            WindowCompat.getInsetsController(window, view).isAppearanceLightStatusBars = !darkTheme
        }
    }

    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        content = content
    )
}