package com.pandasu.turbo.ui

import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.pandasu.turbo.R
import com.pandasu.turbo.data.GameRecord
import com.pandasu.turbo.data.GameRecordDao
import com.pandasu.turbo.databinding.ActivityHistoryBinding
import com.pandasu.turbo.util.ImportExportUtil
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class HistoryActivity : AppCompatActivity() {

    private lateinit var binding: ActivityHistoryBinding
    private lateinit var dao: GameRecordDao
    private val adapter = HistoryAdapter()
    private var allRecords: List<GameRecord> = emptyList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityHistoryBinding.inflate(layoutInflater)
        setContentView(binding.root)
        dao = GameRecordDao.getInstance(this)
        setupUI()
        loadData()
    }

    private fun setupUI() {
        binding.toolbar.title = getString(R.string.history_title)
        binding.toolbar.setNavigationOnClickListener { finish() }

        binding.recyclerView.layoutManager = LinearLayoutManager(this)
        binding.recyclerView.adapter = adapter

        binding.btnExportCsv.setOnClickListener {
            val csv = ImportExportUtil.exportRecordsAsCsv(this)
            val file = File(cacheDir, "panda_turbo_records.csv")
            file.writeText(csv)
            Toast.makeText(this, getString(R.string.export_success) + ": " + file.name, Toast.LENGTH_SHORT).show()
        }

        binding.btnClearOld.setOnClickListener {
            val deleted = dao.deleteOld(30)
            Toast.makeText(this, "已清理 ${deleted} 条记录", Toast.LENGTH_SHORT).show()
            loadData()
        }

        binding.spinnerGame.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, view: View?, pos: Int, id: Long) {
                val pkg = if (pos == 0) null else allRecords.map { it.gameName }.distinct().getOrNull(pos - 1)
                filterData(pkg)
            }
            override fun onNothingSelected(parent: AdapterView<*>?) {}
        }

        val stats = dao.getStats()
        binding.tvStats.text = getString(R.string.stats_summary,
            stats.sessionCount, stats.avgFps.toInt(), stats.avgTemp)
    }

    private fun loadData() {
        allRecords = dao.queryAll(200)
        val gameNames = allRecords.map { it.gameName }.distinct()
        val spinnerItems = mutableListOf(getString(R.string.history_all_games)) + gameNames
        binding.spinnerGame.adapter = ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, spinnerItems)
        filterData(null)
    }

    private fun filterData(gameName: String?) {
        val filtered = if (gameName == null) allRecords else allRecords.filter { it.gameName == gameName }
        adapter.submitList(filtered.take(50))
        binding.tvEmpty.visibility = if (filtered.isEmpty()) View.VISIBLE else View.GONE
    }
}

class HistoryAdapter : RecyclerView.Adapter<HistoryAdapter.VH>() {
    private var items: List<GameRecord> = emptyList()
    private val dateFormat = SimpleDateFormat("MM-dd HH:mm", Locale.getDefault())

    fun submitList(list: List<GameRecord>) { items = list; notifyDataSetChanged() }

    class VH(val textView: TextView) : RecyclerView.ViewHolder(textView)

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): VH {
        val tv = TextView(parent.context).apply {
            setPadding(48, 32, 48, 32)
            textSize = 14f
            setTextColor(0xFFCCCCCC.toInt())
        }
        return VH(tv)
    }

    override fun onBindViewHolder(holder: VH, pos: Int) {
        val r = items[pos]
        holder.textView.text = buildString {
            append(r.gameName)
            append("  ")
            append(dateFormat.format(Date(r.timestamp)))
            append("\nFPS: ${r.avgFps.toInt()}/${r.maxFps.toInt()}  ")
            append("温度: ${r.avgTemp}C  ")
            append(if (r.turboEnabled) "[Turbo]" else "")
        }
    }

    override fun getItemCount() = items.size
}