package com.pandasu.turbo.ui.compose

/**
 * 融合版底部导航路由
 */
sealed class Screen(val route: String) {
    object Home : Screen("home")
    object Isolation : Screen("isolation")
    object Games : Screen("games")
    object Toolkit : Screen("toolkit")
    object SystemTweaks : Screen("system_tweaks")
    object BackgroundManager : Screen("background_manager")
}
