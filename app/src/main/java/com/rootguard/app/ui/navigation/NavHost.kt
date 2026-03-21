package com.rootguard.app.ui.navigation

import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.navArgument
import androidx.navigation.compose.rememberNavController
import com.rootguard.app.ui.screens.home.HomeScreen
import com.rootguard.app.ui.screens.modules.ModulesScreen
import com.rootguard.app.ui.screens.settings.SettingsScreen
import com.rootguard.app.ui.screens.settings.ThemeSettingsScreen
import com.rootguard.app.ui.screens.apps.AppsScreen
import com.rootguard.app.ui.screens.logs.LogsScreen
import com.rootguard.app.ui.screens.isolation.IsolationScreen

sealed class Screen(val route: String) {
    data object Home : Screen("home")
    data object Modules : Screen("modules")
    data object Apps : Screen("apps")
    data object Logs : Screen("logs")
    data object Settings : Screen("settings")
    data object ThemeSettings : Screen("theme_settings")
    data object Isolation : Screen("isolation/{packageName}/{appName}") {
        fun createRoute(packageName: String, appName: String) = "isolation/$packageName/$appName"
    }
}

@Composable
fun RootGuardNavHost(
    navController: NavHostController = rememberNavController(),
    startDestination: String = Screen.Home.route,
    sharedModuleUri: Uri? = null
) {
    NavHost(
        navController = navController,
        startDestination = startDestination
    ) {
        composable(Screen.Home.route) {
            HomeScreen(
                onNavigateToModules = { navController.navigate(Screen.Modules.route) },
                onNavigateToApps = { navController.navigate(Screen.Apps.route) },
                onNavigateToLogs = { navController.navigate(Screen.Logs.route) },
                onNavigateToSettings = { navController.navigate(Screen.Settings.route) }
            )
        }
        composable(Screen.Modules.route) {
            ModulesScreen(
                onNavigateBack = { navController.popBackStack() },
                sharedModuleUri = sharedModuleUri
            )
        }
        composable(Screen.Apps.route) {
            AppsScreen(
                onNavigateBack = { navController.popBackStack() },
                onNavigateToIsolation = { packageName, appName ->
                    navController.navigate(Screen.Isolation.createRoute(packageName, appName))
                }
            )
        }
        composable(
            route = Screen.Isolation.route,
            arguments = listOf(
                navArgument("packageName") { type = NavType.StringType },
                navArgument("appName") { type = NavType.StringType }
            )
        ) { backStackEntry ->
            val packageName = backStackEntry.arguments?.getString("packageName") ?: ""
            val appName = backStackEntry.arguments?.getString("appName") ?: ""
            IsolationScreen(
                packageName = packageName,
                appName = appName,
                onNavigateBack = { navController.popBackStack() }
            )
        }
        composable(Screen.Logs.route) {
            LogsScreen(
                onNavigateBack = { navController.popBackStack() }
            )
        }
        composable(Screen.Settings.route) {
            SettingsScreen(
                onNavigateBack = { navController.popBackStack() },
                onNavigateToTheme = { navController.navigate(Screen.ThemeSettings.route) }
            )
        }
        composable(Screen.ThemeSettings.route) {
            ThemeSettingsScreen(
                onNavigateBack = { navController.popBackStack() }
            )
        }
    }
}