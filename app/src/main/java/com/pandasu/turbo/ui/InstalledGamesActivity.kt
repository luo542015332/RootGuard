package com.pandasu.turbo.ui

import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.pandasu.turbo.R
import com.pandasu.turbo.data.GameProfile
import com.pandasu.turbo.data.GameProfileStore
import com.pandasu.turbo.databinding.ActivityInstalledGamesBinding

class InstalledGamesActivity : AppCompatActivity() {

    private lateinit var binding: ActivityInstalledGamesBinding
    private lateinit var store: GameProfileStore

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityInstalledGamesBinding.inflate(layoutInflater)
        setContentView(binding.root)
        store = GameProfileStore(this)
        setupUI()
        loadGames()
    }

    private fun setupUI() {
        binding.toolbar.title = getString(R.string.add_game_profile)
        binding.toolbar.setNavigationOnClickListener { finish() }
        binding.recyclerView.layoutManager = LinearLayoutManager(this)
    }

    private fun loadGames() {
        val pm = packageManager
        val knownPkgs = GameProfileStore.GAME_PACKAGES
        val installedApps = pm.getInstalledApplications(PackageManager.GET_META_DATA)
            .filter { (it.flags and ApplicationInfo.FLAG_SYSTEM) == 0 }  // 排除系统应用
            .filter {
                val pkg = it.packageName
                // 过滤掉当前应用自身和配置存储
                pkg != packageName && !pkg.contains("pandasu.turbo")
            }
            .filter {
                val pkg = it.packageName
                // 优先显示游戏类应用，但也显示其他应用供用户选择
                pkg.contains("game", ignoreCase = true) ||
                knownPkgs.any { kp -> pkg.startsWith(kp) } ||
                isLikelyGame(pkg) ||
                true  // 显示所有非系统应用
            }
            .map { app ->
                InstalledGame(
                    packageName = app.packageName,
                    displayName = pm.getApplicationLabel(app).toString(),
                    icon = try { pm.getApplicationIcon(app) } catch (e: Throwable) { null }
                )
            }
            .distinctBy { it.packageName }
            .sortedBy { it.displayName }

        binding.recyclerView.adapter = InstalledGamesAdapter(installedApps) { game ->
            runOnUiThread {
                try {
                    val profile = GameProfile(packageName = game.packageName, displayName = game.displayName)
                    val success = store.saveProfile(profile)
                    if (success) {
                        Toast.makeText(this@InstalledGamesActivity, "已添加: ${game.displayName}", Toast.LENGTH_SHORT).show()
                        // 设置结果并返回，让 MainScaffold 知道需要刷新列表
                        setResult(RESULT_OK)
                        finish()
                    } else {
                        Toast.makeText(this@InstalledGamesActivity, "添加失败", Toast.LENGTH_SHORT).show()
                    }
                } catch (e: Exception) {
                    Toast.makeText(this@InstalledGamesActivity, "添加失败: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }
        }
        binding.tvEmpty.visibility = if (installedApps.isEmpty()) View.VISIBLE else View.GONE
    }

    private fun isLikelyGame(pkg: String): Boolean {
        val keywords = listOf(
            // 英文关键词
            "game", "games", "gaming", "play", "playable", "arcade",
            "pubg", "minecraft", "genshin", "honkai", "honkai3rd",
            "lol", "valorant", "cod", "fortnite", "apex",
            "mobile legends", "mlbb", "wildrift", "arena",
            "clash", "clashroyale", "clashofclans", "brawl",
            "candycrush", "candy", "subway", "subwaysurfers",
            "mario", "pokemon", "pokémon", "miniclip",
            "football", "soccer", "basketball", "tennis",
            "racing", "race", "drift", "car", "traffic",
            "rpg", "mmorpg", "moba", "fps", "tps", "rts",
            "simulator", "simulation", "tycoon", "builder",
            "puzzle", "match3", "towerdefense", "defense",
            "shooter", "shooting", "gun", "war", "battle",
            "adventure", "rpg", "story", "quest",
            "snake", "bird", "flappy", "subway",
            // 中文关键词
            "游戏", "手游", "游戏中心", "应用宝", "游戏盒",
            "王者荣耀", "和平精英", "蛋仔", "迷你", "cf", "穿越",
            "原神", "崩坏", "星穹", "绝区", "未定", "铁道",
            "第五人格", "明日之后", "光遇", "阴阳师", "逆水寒",
            "欢乐斗地主", "斗地主", "象棋", "麻将", "扑克",
            "狼人杀", "剧本杀", "三国杀",
            "植物大战僵尸", "僵尸", "植物",
            "消消乐", "泡泡龙", "连连看", "消消", "对对碰",
            "我的世界", "我的世界", "Minecraft",
            // 包名前缀（常见游戏厂商）
            "com.tencent.tmgp", "com.tencent.game",
            "com.netease", "com.miHoYo", "com.mihoyo",
            "com.supercell", "com.king.", "com.rovio",
            "com.epicgames", "com.ea.", "com.garena",
            "com.miniclip", "com.playdemic",
            "com.activision", "com.riotgames",
        )
        return keywords.any { pkg.contains(it, ignoreCase = true) }
    }

    data class InstalledGame(val packageName: String, val displayName: String, val icon: android.graphics.drawable.Drawable?)
}

class InstalledGamesAdapter(
    private val games: List<InstalledGamesActivity.InstalledGame>,
    private val onAdd: (InstalledGamesActivity.InstalledGame) -> Unit
) : RecyclerView.Adapter<InstalledGamesAdapter.VH>() {

    class VH(view: View) : RecyclerView.ViewHolder(view) {
        val tvName: TextView = view.findViewById(R.id.tvGameName)
        val ivIcon: ImageView = view.findViewById(R.id.ivGameIcon)
        val btnAdd: Button = view.findViewById(R.id.btnAddGame)
    }

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): VH {
        val v = android.view.LayoutInflater.from(parent.context)
            .inflate(R.layout.item_installed_game, parent, false)
        return VH(v)
    }

    override fun onBindViewHolder(holder: VH, pos: Int) {
        val g = games[pos]
        holder.tvName.text = g.displayName
        val icon = g.icon
        if (icon != null) holder.ivIcon.setImageDrawable(icon) else holder.ivIcon.setImageResource(android.R.drawable.sym_def_app_icon)
        holder.btnAdd.setOnClickListener { onAdd(g) }
    }

    override fun getItemCount() = games.size
}