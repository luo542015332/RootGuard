package com.applist.test

import android.content.pm.PackageManager
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import android.util.Log
import android.os.AsyncTask
import android.os.Environment
import java.io.File
import java.io.FileWriter
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.text.SimpleDateFormat
import java.util.*

class MainActivity : AppCompatActivity() {

    private lateinit var resultText: TextView
    private val TAG = "AppListTest"
    private val dateFormat = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault())

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        resultText = findViewById(R.id.resultText)

        // 显示初始提示
        resultText.text = "应用列表测试工具\n\n请点击下方按钮开始测试\n\n包含3种获取方法：\n1. PackageManager (GET_META_DATA)\n2. pm list packages -3\n3. PackageManager (MATCH_ALL)\n\n每个方法会显示：\n- 总应用数\n- 用户/系统应用数\n- 关键应用（微信、QQ等）是否找到\n- 前30个应用列表"

        findViewById<Button>(R.id.btnPackageManager).setOnClickListener {
            Log.d(TAG, "按钮1被点击")
            testPackageManager()
        }

        findViewById<Button>(R.id.btnPMCommand).setOnClickListener {
            Log.d(TAG, "按钮2被点击")
            testPMCommand()
        }

        findViewById<Button>(R.id.btnAllPackages).setOnClickListener {
            Log.d(TAG, "按钮3被点击")
            testAllPackagesFlag()
        }

        findViewById<Button>(R.id.btnPathBased).setOnClickListener {
            Log.d(TAG, "按钮4被点击")
            testPathBasedDetection()
        }
    }

    private fun testPackageManager() {
        Log.d(TAG, "testPackageManager 开始")
        resultText.text = "正在测试 PackageManager API (GET_META_DATA)...\n\n请稍候..."

        GlobalScope.launch(Dispatchers.IO) {
            try {
                Log.d(TAG, " doInBackground 调用 getInstalledPackages")
                val startTime = System.currentTimeMillis()

                val packages = packageManager.getInstalledPackages(
                    PackageManager.GET_META_DATA
                )

                val endTime = System.currentTimeMillis()
                val duration = endTime - startTime
                Log.d(TAG, " doInBackground 获取到 ${packages.size} 个应用，耗时 ${duration}ms")

                // 分类统计
                var userApps = 0
                var systemApps = 0
                val userAppList = mutableListOf<String>()

                packages.forEach { pkg ->
                    val isSystem = pkg.applicationInfo?.let {
                        it.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM != 0
                    } ?: false
                    if (isSystem) {
                        systemApps++
                    } else {
                        userApps++
                        userAppList.add(pkg.packageName)
                    }
                }

                Log.d(TAG, " doInBackground 用户应用: $userApps, 系统应用: $systemApps")

                val result = StringBuilder()
                result.append("=== PackageManager API (GET_META_DATA) ===\n")
                result.append("总应用数: ${packages.size}\n")
                result.append("耗时: ${duration}ms\n")
                result.append("时间: ${java.util.Date()}\n\n")

                result.append("用户应用: $userApps\n")
                result.append("系统应用: $systemApps\n\n")

                result.append("关键应用检查:\n")
                val keyApps = listOf(
                    "com.tencent.mm" to "微信",
                    "com.tencent.mobileqq" to "QQ",
                    "com.tencent.tmgp.sgame" to "王者荣耀",
                    "com.netease.dk" to "梦幻西游"
                )

                var foundCount = 0
                keyApps.forEach { (pkgName, appName) ->
                    val found = userAppList.contains(pkgName)
                    if (found) foundCount++
                    result.append("  $appName ($pkgName): ${if (found) "✓ 找到" else "✗ 未找到"}\n")
                }

                result.append("\n找到 $foundCount/${keyApps.size} 个关键应用\n\n")

                result.append("前30个用户应用:\n")
                userAppList.take(30).forEach { result.append("  $it\n") }
                if (userAppList.size > 30) {
                    result.append("  ... (还有 ${userAppList.size - 30} 个)\n")
                }

                Log.d(TAG, " doInBackground 结果生成完成")

                // 写入文件
                saveResultToFile("method1_getmetada", result.toString())

                // 切换回主线程更新 UI
                withContext(Dispatchers.Main) {
                    Log.d(TAG, " onPostExecute 更新UI")
                    resultText.text = result.toString()
                }
            } catch (e: Exception) {
                Log.e(TAG, " doInBackground 测试失败", e)
                val error = "❌ 错误: ${e.message}\n\n详细信息:\n${e.stackTraceToString()}"
                saveResultToFile("method1_error", error)
                withContext(Dispatchers.Main) {
                    resultText.text = error
                }
            }
        }
    }

    private fun saveResultToFile(methodName: String, content: String) {
        try {
            val downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
            val file = File(downloadsDir, "apptest_${methodName}_${dateFormat.format(Date())}.txt")
            val writer = FileWriter(file)
            writer.write(content)
            writer.close()
            Log.d(TAG, "结果已保存到: ${file.absolutePath}")
        } catch (e: Exception) {
            Log.e(TAG, "保存文件失败", e)
        }
    }

    private fun testPMCommand() {
        Log.d(TAG, "testPMCommand 开始")
        resultText.text = "正在测试 pm list packages -3 命令...\n\n请稍候..."

        GlobalScope.launch(Dispatchers.IO) {
            try {
                val startTime = System.currentTimeMillis()

                Log.d(TAG, " doInBackground 执行 shell 命令")
                val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", "pm list packages -3"))
                val output = process.inputStream.bufferedReader().readText()
                val errorOutput = process.errorStream.bufferedReader().readText()
                val exitCode = process.waitFor()

                val endTime = System.currentTimeMillis()
                val duration = endTime - startTime

                Log.d(TAG, " doInBackground 命令执行完成，退出码: $exitCode, 耗时: ${duration}ms")

                if (exitCode != 0) {
                    throw Exception("命令执行失败 (退出码: $exitCode)\n错误输出: $errorOutput")
                }

                val packages = output.lines()
                    .filter { it.startsWith("package:") }
                    .map { it.substring("package:".length) }
                    .toSet()

                Log.d(TAG, " doInBackground 获取到 ${packages.size} 个应用")

                val result = StringBuilder()
                result.append("=== pm list packages -3 命令 ===\n")
                result.append("总应用数: ${packages.size}\n")
                result.append("耗时: ${duration}ms\n")
                result.append("时间: ${java.util.Date()}\n\n")

                result.append("关键应用检查:\n")
                val keyApps = listOf(
                    "com.tencent.mm" to "微信",
                    "com.tencent.mobileqq" to "QQ",
                    "com.tencent.tmgp.sgame" to "王者荣耀",
                    "com.netease.dk" to "梦幻西游"
                )

                var foundCount = 0
                keyApps.forEach { (pkgName, appName) ->
                    val found = packages.contains(pkgName)
                    if (found) foundCount++
                    result.append("  $appName ($pkgName): ${if (found) "✓ 找到" else "✗ 未找到"}\n")
                }

                result.append("\n找到 $foundCount/${keyApps.size} 个关键应用\n\n")

                result.append("前30个应用:\n")
                packages.take(30).forEach { result.append("  $it\n") }
                if (packages.size > 30) {
                    result.append("  ... (还有 ${packages.size - 30} 个)\n")
                }

                saveResultToFile("method2_pmlist", result.toString())

                withContext(Dispatchers.Main) {
                    Log.d(TAG, " onPostExecute 更新UI")
                    resultText.text = result.toString()
                }
            } catch (e: Exception) {
                Log.e(TAG, " doInBackground 测试失败", e)
                val error = "❌ 错误: ${e.message}\n\n详细信息:\n${e.stackTraceToString()}"
                saveResultToFile("method2_error", error)
                withContext(Dispatchers.Main) {
                    resultText.text = error
                }
            }
        }
    }

    private fun testAllPackagesFlag() {
        Log.d(TAG, "testAllPackagesFlag 开始")
        resultText.text = "正在测试 PackageManager API (MATCH_ALL)...\n\n请稍候..."

        GlobalScope.launch(Dispatchers.IO) {
            try {
                val startTime = System.currentTimeMillis()

                Log.d(TAG, " doInBackground 尝试使用 MATCH_ALL")
                val packages = try {
                    packageManager.getInstalledPackages(
                        PackageManager.MATCH_ALL
                    )
                } catch (e: Exception) {
                    Log.w(TAG, " doInBackground MATCH_ALL 不支持，回退到 GET_UNINSTALLED_PACKAGES")
                    // 如果 MATCH_ALL 不支持，回退到 GET_UNINSTALLED_PACKAGES
                    packageManager.getInstalledPackages(
                        PackageManager.GET_UNINSTALLED_PACKAGES
                    )
                }

                val endTime = System.currentTimeMillis()
                val duration = endTime - startTime
                Log.d(TAG, " doInBackground 获取到 ${packages.size} 个应用，耗时 ${duration}ms")

                // 分类统计
                var userApps = 0
                var systemApps = 0
                val userAppList = mutableListOf<String>()

                packages.forEach { pkg ->
                    val isSystem = pkg.applicationInfo?.let {
                        it.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM != 0
                    } ?: false
                    if (isSystem) {
                        systemApps++
                    } else {
                        userApps++
                        userAppList.add(pkg.packageName)
                    }
                }

                Log.d(TAG, " doInBackground 用户应用: $userApps, 系统应用: $systemApps")

                val result = StringBuilder()
                result.append("=== PackageManager API (MATCH_ALL) ===\n")
                result.append("总应用数: ${packages.size}\n")
                result.append("耗时: ${duration}ms\n")
                result.append("时间: ${java.util.Date()}\n\n")

                result.append("用户应用: $userApps\n")
                result.append("系统应用: $systemApps\n\n")

                result.append("关键应用检查:\n")
                val keyApps = listOf(
                    "com.tencent.mm" to "微信",
                    "com.tencent.mobileqq" to "QQ",
                    "com.tencent.tmgp.sgame" to "王者荣耀",
                    "com.netease.dk" to "梦幻西游"
                )

                var foundCount = 0
                keyApps.forEach { (pkgName, appName) ->
                    val found = userAppList.contains(pkgName)
                    if (found) foundCount++
                    result.append("  $appName ($pkgName): ${if (found) "✓ 找到" else "✗ 未找到"}\n")
                }

                result.append("\n找到 $foundCount/${keyApps.size} 个关键应用\n\n")

                result.append("前30个用户应用:\n")
                userAppList.take(30).forEach { result.append("  $it\n") }
                if (userAppList.size > 30) {
                    result.append("  ... (还有 ${userAppList.size - 30} 个)\n")
                }

                saveResultToFile("method3_matchall", result.toString())

                withContext(Dispatchers.Main) {
                    Log.d(TAG, " onPostExecute 更新UI")
                    resultText.text = result.toString()
                }
            } catch (e: Exception) {
                Log.e(TAG, " doInBackground 测试失败", e)
                val error = "❌ 错误: ${e.message}\n\n详细信息:\n${e.stackTraceToString()}"
                saveResultToFile("method3_error", error)
                withContext(Dispatchers.Main) {
                    resultText.text = error
                }
            }
        }
    }

    private fun testPathBasedDetection() {
        Log.d(TAG, "testPathBasedDetection 开始")
        resultText.text = "正在测试基于安装路径的判断方法...\n\n请稍候..."

        GlobalScope.launch(Dispatchers.IO) {
            try {
                val startTime = System.currentTimeMillis()

                Log.d(TAG, " doInBackground 获取所有包")
                val packages = packageManager.getInstalledPackages(
                    PackageManager.MATCH_ALL
                )

                val endTime = System.currentTimeMillis()
                val duration = endTime - startTime
                Log.d(TAG, " doInBackground 获取到 ${packages.size} 个应用，耗时 ${duration}ms")

                // 分类统计 - 使用安装路径判断
                var userApps = 0
                var systemApps = 0
                val userAppList = mutableListOf<String>()
                val userAppsWithPath = mutableListOf<Pair<String, String>>()

                packages.forEach { pkg ->
                    val appInfo = pkg.applicationInfo
                    val sourceDir = appInfo?.sourceDir ?: ""
                    val isSystemByFlag = appInfo?.let {
                        it.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM != 0
                    } ?: false

                    // 使用安装路径判断
                    val isUserApp = sourceDir.startsWith("/data/app/")
                    val isSystemByPath = sourceDir.startsWith("/system/") ||
                                        sourceDir.startsWith("/vendor/") ||
                                        sourceDir.startsWith("/product/")

                    if (isUserApp) {
                        userApps++
                        userAppList.add(pkg.packageName)
                        userAppsWithPath.add(pkg.packageName to sourceDir)
                    } else {
                        systemApps++
                    }
                }

                Log.d(TAG, " doInBackground 用户应用: $userApps, 系统应用: $systemApps")

                val result = StringBuilder()
                result.append("=== 基于安装路径的判断方法 ===\n")
                result.append("总应用数: ${packages.size}\n")
                result.append("耗时: ${duration}ms\n")
                result.append("时间: ${java.util.Date()}\n\n")

                result.append("用户应用: $userApps\n")
                result.append("系统应用: $systemApps\n\n")

                result.append("关键应用检查:\n")
                val keyApps = listOf(
                    "com.tencent.mm" to "微信",
                    "com.tencent.mobileqq" to "QQ",
                    "com.tencent.tmgp.sgame" to "王者荣耀",
                    "com.netease.dk" to "梦幻西游"
                )

                var foundCount = 0
                keyApps.forEach { (pkgName, appName) ->
                    val found = userAppList.contains(pkgName)
                    if (found) foundCount++
                    result.append("  $appName ($pkgName): ${if (found) "✓ 找到" else "✗ 未找到"}\n")
                }

                result.append("\n找到 $foundCount/${keyApps.size} 个关键应用\n\n")

                result.append("前30个用户应用（含路径）:\n")
                userAppsWithPath.take(30).forEach { (pkgName, path) ->
                    result.append("  $pkgName\n")
                    result.append("    $path\n")
                }
                if (userAppsWithPath.size > 30) {
                    result.append("  ... (还有 ${userAppsWithPath.size - 30} 个)\n")
                }

                saveResultToFile("method4_pathbased", result.toString())

                withContext(Dispatchers.Main) {
                    Log.d(TAG, " onPostExecute 更新UI")
                    resultText.text = result.toString()
                }
            } catch (e: Exception) {
                Log.e(TAG, " doInBackground 测试失败", e)
                val error = "❌ 错误: ${e.message}\n\n详细信息:\n${e.stackTraceToString()}"
                saveResultToFile("method4_error", error)
                withContext(Dispatchers.Main) {
                    resultText.text = error
                }
            }
        }
    }
}
