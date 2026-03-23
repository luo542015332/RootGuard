package com.rootguard.app.ui.navigation

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.rootguard.app.ui.screens.isolation.IsolationScreen
import com.rootguard.app.ui.screens.logs.LogsScreen

sealed class Screen(val route: String) {
    data object Home : Screen("home")
    data object AppIsolation : Screen("app_isolation/{packageName}/{appName}") {
        fun createRoute(packageName: String, appName: String) = "app_isolation/$packageName/$appName"
    }
    data object Logs : Screen("logs")
}

@Composable
fun RootGuardNavHost(
    navController: NavHostController = rememberNavController(),
    startDestination: String = Screen.Home.route,
    hasRootPermission: Boolean = true
) {
    NavHost(
        navController = navController,
        startDestination = startDestination
    ) {
        // 主界面 = 隔离设置
        composable(Screen.Home.route) {
            IsolationScreen(
                packageName = null,
                appName = null,
                onNavigateBack = { },
                onNavigateToAppIsolation = { packageName, appName ->
                    navController.navigate(Screen.AppIsolation.createRoute(packageName, appName))
                },
                onNavigateToLogs = { navController.navigate(Screen.Logs.route) },
                hasRootPermission = hasRootPermission
            )
        }
        // 应用特定隔离设置
        composable(
            route = Screen.AppIsolation.route,
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
                onNavigateBack = { navController.popBackStack() },
                onNavigateToAppIsolation = null,
                onNavigateToLogs = null,
                hasRootPermission = hasRootPermission
            )
        }
        // 日志查看
        composable(Screen.Logs.route) {
            LogsScreen(onNavigateBack = { navController.popBackStack() })
        }
    }
}
