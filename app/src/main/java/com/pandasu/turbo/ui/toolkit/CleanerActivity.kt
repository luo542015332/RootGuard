package com.pandasu.turbo.ui.toolkit

import android.app.ProgressDialog
import android.graphics.Color
import android.graphics.Typeface
import android.os.Build
import android.os.Bundle
import android.view.Gravity
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.pandasu.turbo.util.CleanerUtil

class CleanerActivity : AppCompatActivity() {

    private lateinit var recyclerView: RecyclerView
    private lateinit var progressBar: ProgressBar
    private lateinit var tvTotal: TextView
    private lateinit var btnClearAll: Button
    private var cacheList = mutableListOf<CleanerUtil.CacheInfo>()
    private lateinit var adapter: CacheListAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "垃圾清理"
            setDisplayHomeAsUpEnabled(true)
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }

        // 概览卡片
        val summaryCard = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(Color.WHITE)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) elevation = 2f
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(12) }
        }
        summaryCard.addView(ImageView(this).apply {
            setImageResource(android.R.drawable.ic_menu_delete)
            layoutParams = LinearLayout.LayoutParams(dp(48), dp(48))
        })
        tvTotal = TextView(this).apply {
            text = "点击下方扫描按钮开始检测"
            textSize = 18f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
            setPadding(dp(12), 0, 0, 0)
        }
        summaryCard.addView(tvTotal)
        root.addView(summaryCard)

        // 进度条
        progressBar = ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            max = 100
            visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(8)
            ).apply { bottomMargin = dp(12) }
        }
        root.addView(progressBar)

        // 操作按钮
        val btnLayout = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(12) }
        }
        val btnScan = Button(this).apply {
            text = "扫描缓存"
            layoutParams = LinearLayout.LayoutParams(0, dp(48), 1f).apply { rightMargin = dp(8) }
            setOnClickListener { scanCache() }
        }
        btnClearAll = Button(this).apply {
            text = "一键清理"
            isEnabled = false
            layoutParams = LinearLayout.LayoutParams(0, dp(48), 1f).apply { leftMargin = dp(8) }
            setOnClickListener { confirmClearAll() }
        }
        btnLayout.addView(btnScan)
        btnLayout.addView(btnClearAll)
        root.addView(btnLayout)

        // 大文件扫描
        val btnBigFile = Button(this).apply {
            text = "扫描大文件 (>10MB)"
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(48)
            ).apply { bottomMargin = dp(12) }
            setOnClickListener { scanBigFiles() }
        }
        root.addView(btnBigFile)

        // 列表
        recyclerView = RecyclerView(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f)
            layoutManager = LinearLayoutManager(this@CleanerActivity)
        }
        root.addView(recyclerView)

        setContentView(root)

        adapter = CacheListAdapter(cacheList) { cache ->
            confirmClearCache(cache)
        }
        recyclerView.adapter = adapter
    }

    private fun scanCache() {
        progressBar.visibility = View.VISIBLE
        progressBar.progress = 0

        CleanerUtil.scanCache(this,
            onProgress = { progress -> runOnUiThread { progressBar.progress = progress } },
            onComplete = { results ->
                runOnUiThread {
                    progressBar.visibility = View.GONE
                    cacheList.clear()
                    cacheList.addAll(results)
                    adapter.notifyDataSetChanged()
                    val totalSize = results.sumOf { it.totalSize }
                    tvTotal.text = "可清理：${CleanerUtil.formatSize(totalSize)}"
                    btnClearAll.isEnabled = results.isNotEmpty()
                }
            }
        )
    }

    private fun confirmClearCache(cache: CleanerUtil.CacheInfo) {
        AlertDialog.Builder(this)
            .setTitle("清理 ${cache.appName}？")
            .setMessage("缓存大小：${cache.totalSizeStr}")
            .setPositiveButton("清理") { _, _ -> doClearCache(cache) }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun doClearCache(cache: CleanerUtil.CacheInfo) {
        CleanerUtil.clearCache(cache.packageName) { success, msg ->
            runOnUiThread {
                Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
                if (success) {
                    val idx = cacheList.indexOfFirst { it.packageName == cache.packageName }
                    if (idx >= 0) {
                        cacheList.removeAt(idx)
                        adapter.notifyItemRemoved(idx)
                        val totalSize = cacheList.sumOf { it.totalSize }
                        tvTotal.text = "可清理：${CleanerUtil.formatSize(totalSize)}"
                        btnClearAll.isEnabled = cacheList.isNotEmpty()
                    }
                }
            }
        }
    }

    private fun confirmClearAll() {
        val totalSize = cacheList.sumOf { it.totalSize }
        AlertDialog.Builder(this)
            .setTitle("一键清理")
            .setMessage("将清理 ${CleanerUtil.formatSize(totalSize)} 缓存数据，需要 Root 权限")
            .setPositiveButton("清理") { _, _ -> doClearAll() }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun doClearAll() {
        val pd = ProgressDialog(this).apply { setMessage("正在清理..."); show() }
        CleanerUtil.clearAllCache { success, msg ->
            pd.dismiss()
            runOnUiThread {
                Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
                if (success) {
                    cacheList.clear()
                    adapter.notifyDataSetChanged()
                    tvTotal.text = "已清理完成"
                    btnClearAll.isEnabled = false
                }
            }
        }
    }

    private fun scanBigFiles() {
        CleanerUtil.findBigFiles(
            onProgress = { _, _ -> },
            onComplete = { files ->
                runOnUiThread {
                    if (files.isEmpty()) {
                        Toast.makeText(this, "未发现大于 10MB 的文件", Toast.LENGTH_SHORT).show()
                        return@runOnUiThread
                    }
                    val totalSize = files.sumOf { it.size }
                    val displayFiles = files.take(20)
                    val options = displayFiles.map {
                        "${it.path.substringAfterLast("/")}  (${it.sizeStr})"
                    }.toMutableList()
                    options.add(0, "共 ${files.size} 个文件，总计 ${CleanerUtil.formatSize(totalSize)}")
                    AlertDialog.Builder(this)
                        .setTitle("大文件列表")
                        .setItems(options.toTypedArray()) { _, which ->
                            if (which > 0) {
                                val file = displayFiles[which - 1]
                                confirmDeleteFile(file)
                            }
                        }
                        .setPositiveButton("关闭", null)
                        .show()
                }
            }
        )
    }

    private fun confirmDeleteFile(file: CleanerUtil.BigFile) {
        AlertDialog.Builder(this)
            .setTitle("确认删除？")
            .setMessage("文件：${file.path}\n大小：${file.sizeStr}\n\n删除后无法恢复！")
            .setPositiveButton("删除") { _, _ ->
                CleanerUtil.deleteBigFile(file.path) { success ->
                    Toast.makeText(this,
                        if (success) "已删除" else "删除失败",
                        Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}

class CacheListAdapter(
    private val caches: List<CleanerUtil.CacheInfo>,
    private val onAction: (CleanerUtil.CacheInfo) -> Unit
) : RecyclerView.Adapter<CacheListAdapter.VH>() {

    class VH(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val name: TextView = itemView.findViewById(android.R.id.text1)
        val size: TextView = itemView.findViewById(android.R.id.text2)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val v = android.view.LayoutInflater.from(parent.context)
            .inflate(android.R.layout.simple_list_item_2, parent, false)
        return VH(v)
    }

    override fun onBindViewHolder(holder: VH, position: Int) {
        val cache = caches[position]
        holder.name.text = cache.appName + (if (cache.sourceHint.isNotEmpty()) " ${cache.sourceHint}" else "")
        holder.size.text = "缓存：${cache.totalSizeStr}（点击清理）"
        holder.itemView.setOnClickListener { onAction(cache) }
    }

    override fun getItemCount() = caches.size
}
