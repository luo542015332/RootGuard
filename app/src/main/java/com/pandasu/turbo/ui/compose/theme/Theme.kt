package com.pandasu.turbo.ui.compose.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val LightColorScheme = lightColorScheme(
    primary = PandaPrimary,
    onPrimary = Color.White,
    primaryContainer = Color(0xFFDBEAFE),
    secondary = PandaSecondary,
    onSecondary = Color.White,
    tertiary = PandaGold,
    background = PandaBackground,
    onBackground = PandaOnSurface,
    surface = Color.White,
    onSurface = PandaOnSurface,
    surfaceVariant = Color(0xFFF1F5F9),
    onSurfaceVariant = PandaSubText,
    outline = PandaDivider,
    outlineVariant = PandaDivider,
    inverseSurface = PandaOnSurface,
    inverseOnSurface = Color.White
)

@Composable
fun PandaTurboTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = LightColorScheme,
        content = content
    )
}
