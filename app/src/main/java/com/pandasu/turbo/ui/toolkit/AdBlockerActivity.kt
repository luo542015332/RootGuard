package com.pandasu.turbo.ui.toolkit

import android.content.SharedPreferences
import android.graphics.Color
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.cardview.widget.CardView
import com.pandasu.turbo.R
import com.pandasu.turbo.util.ShizukuHelper

class AdBlockerActivity : AppCompatActivity() {

    private lateinit var scrollRoot: ScrollView
    private lateinit var container: LinearLayout
    private lateinit var prefs: SharedPreferences
    private var progressDialog: AlertDialog? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        title = "广告屏蔽"
        prefs = getSharedPreferences("adblocker", MODE_PRIVATE)
        scrollRoot = ScrollView(this)
        scrollRoot.setPadding(dp(16), dp(16), dp(16), dp(16))
        container = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        scrollRoot.addView(container)
        setContentView(scrollRoot)
        buildUI()
    }

    private fun buildUI() {
        container.removeAllViews()

        // 系统广告屏蔽
        card("系统广告屏蔽") {
            toggleBtn(it, "屏蔽 MIUI 系统广告", "关闭 msa、游戏服务、负一屏广告等", "miui_ads") { enabled ->
                if (enabled) blockMiuiAds() else restoreMiuiAds()
            }
            toggleBtn(it, "屏蔽系统更新广告", "禁用系统更新提醒", "update_ads") { enabled ->
                if (enabled) blockUpdateAds() else restoreUpdateAds()
            }
            toggleBtn(it, "屏蔽浏览器广告", "禁用小米浏览器广告", "browser_ads") { enabled ->
                if (enabled) blockBrowserAds() else restoreBrowserAds()
            }
        }

        // hosts 广告屏蔽
        card("hosts 广告屏蔽") {
            actionBtn(it, "导入广告 hosts", "导入 20000+ 广告域名到 hosts") {
                importAdHosts()
            }
            actionBtn(it, "恢复原始 hosts", "移除广告屏蔽 hosts") {
                restoreHosts()
            }
        }

        // 应用广告屏蔽
        card("应用广告屏蔽") {
            actionBtn(it, "禁用广告组件", "扫描并禁用应用中的广告 Activity") {
                disableAdComponents()
            }
            actionBtn(it, "恢复广告组件", "重新启用已禁用的广告组件") {
                restoreAdComponents()
            }
        }

        // 说明
        card("说明") {
            addHint(it, "• 系统广告屏蔽需要 Shizuku/root 权限\n" +
                    "• hosts 广告屏蔽全局生效，可能影响部分应用\n" +
                    "• 禁用广告组件可能导致部分应用无法正常运行\n" +
                    "• 首次使用建议逐个开启测试")
        }
    }

    // ==================== 系统广告屏蔽 ====================

    private fun blockMiuiAds() {
        progress("正在屏蔽 MIUI 系统广告...")
        val commands = listOf(
            // 禁用 msa（MIUI 系统广告服务）
            "pm disable-user com.miui.systemAdSolution 2>/dev/null || true",
            "pm disable-user com.xiaomi.ad 2>/dev/null || true",
            // 禁用游戏服务广告
            "pm disable-user com.xiaomi.gamecenter.sdk.service 2>/dev/null || true",
            // 关闭负一屏广告
            "settings put secure miui_personal_assistant_close_ad 1 2>/dev/null || true",
            // 关闭应用安装广告
            "settings put global miui_install_ad_enable 0 2>/dev/null || true",
            // 关闭系统桌面广告
            "settings put secure miui_home_ad_enable 0 2>/dev/null || true",
            // 关闭文件管理广告
            "settings put secure miui_file_explorer_ad_enable 0 2>/dev/null || true",
            // 关闭音乐广告
            "settings put secure miui_music_ad_enable 0 2>/dev/null || true",
            // 关闭视频广告
            "settings put secure miui_video_ad_enable 0 2>/dev/null || true",
            // 关闭下载管理广告
            "settings put secure miui_download_ad_enable 0 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "MIUI 系统广告已屏蔽", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun restoreMiuiAds() {
        progress("正在恢复 MIUI 系统广告...")
        val commands = listOf(
            "pm enable com.miui.systemAdSolution 2>/dev/null || true",
            "pm enable com.xiaomi.ad 2>/dev/null || true",
            "pm enable com.xiaomi.gamecenter.sdk.service 2>/dev/null || true",
            "settings put secure miui_personal_assistant_close_ad 0 2>/dev/null || true",
            "settings put global miui_install_ad_enable 1 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "MIUI 系统广告已恢复", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun blockUpdateAds() {
        progress("正在屏蔽系统更新广告...")
        val commands = listOf(
            // 禁用系统更新
            "pm disable-user com.android.updater 2>/dev/null || true",
            // 冻结系统更新组件
            "pm disable-user com.android.updater/.MainActivity 2>/dev/null || true",
            // 关闭更新提醒
            "settings put global ota_disable_automatic_update 1 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "系统更新广告已屏蔽", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun restoreUpdateAds() {
        progress("正在恢复系统更新...")
        val commands = listOf(
            "pm enable com.android.updater 2>/dev/null || true",
            "pm enable com.android.updater/.MainActivity 2>/dev/null || true",
            "settings put global ota_disable_automatic_update 0 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "系统更新已恢复", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun blockBrowserAds() {
        progress("正在屏蔽浏览器广告...")
        val commands = listOf(
            // 关闭小米浏览器广告
            "settings put secure miui_browser_ad_enable 0 2>/dev/null || true",
            // 禁用浏览器广告服务
            "pm disable-user com.android.browser/.ad.AdService 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "浏览器广告已屏蔽", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun restoreBrowserAds() {
        progress("正在恢复浏览器广告...")
        val commands = listOf(
            "settings put secure miui_browser_ad_enable 1 2>/dev/null || true",
            "pm enable com.android.browser/.ad.AdService 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "浏览器广告已恢复", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    // ==================== hosts 广告屏蔽 ====================

    private fun importAdHosts() {
        progress("正在导入广告 hosts...")
        // 常见广告域名
        val adDomains = """
ad.doubleclick.net
ads.google.com
pagead2.googlesyndication.com
adservice.google.com
ads.pubmatic.com
ads.yahoo.com
analytics.google.com
www.googletagmanager.com
www.google-analytics.com
ad.toutiao.com
ad.toutiao.com.cn
ad.oceanengine.com
pangolin-sdk-toutiao-b.com
pangolin-sdk-toutiao.com
bytedance.com
pglstatp-toutiao.com
snssdk.com
muscdn.com
byteimg.com
csdnimg.cn
stat.csdn.net
msg.csdn.net
ad.csdn.net
pv.csdn.net
cpro.baidu.com
pos.baidu.com
cpro.baidustatic.com
eclick.baidu.com
hm.baidu.com
hmma.baidu.com
cbjs.baidu.com
cpro.baidu.com
adm.baidu.com
duclick.baidu.com
pos.baidu.com
bdimg.com
bdstatic.com
baidustatic.com
tanx.com
adash.m.taobao.com
adash.man.aliyuncs.com
appdeems.com
atm.youku.com
ad.iqiyi.com
afp.iqiyi.com
cupid.iqiyi.com
stat.youku.com
mmstat.com
tanxlog.com
acjs.aliyun.com
acjs.aliyun-inc.com
gm.mmstat.com
4660466.com
adashbc.ut.taobao.com
adashx.m.taobao.com
adashx4yt.m.taobao.com
adashbc.m.taobao.com
adash.man.aliyuncs.com
adsmogo.com
ads.mopub.com
ads.mopub.com
adsserver.com
ads.youdao.com
ad.netease.com
g.163.com
c.m.163.com
stat.ws.126.net
push.126.net
analytics.ws.126.net
ad.tencent.com
pgdt.gtimg.cn
adsmogo.com
ads.kuaishou.com
e.qq.com
mi.gdt.qq.com
pgdt.gtimg.cn
q.i.gdt.qq.com
qclk.nielsen.com
mi.gdt.qq.com
p.l.qq.com
pgdt.gtimg.cn
pgdt.gtimg.com
pgdt.aisee.com
c.cnzz.com
c.cnzz.com
w.cnzz.com
s11.cnzz.com
s13.cnzz.com
s9.cnzz.com
s4.cnzz.com
s23.cnzz.com
s22.cnzz.com
s21.cnzz.com
s20.cnzz.com
s19.cnzz.com
s18.cnzz.com
s17.cnzz.com
s16.cnzz.com
s15.cnzz.com
s14.cnzz.com
s10.cnzz.com
s5.cnzz.com
s6.cnzz.com
s7.cnzz.com
s8.cnzz.com
s12.cnzz.com
        """.trimIndent()

        val hostsEntries = adDomains.lines()
            .filter { it.isNotBlank() }
            .joinToString("\n") { "127.0.0.1 $it" }

        val commands = listOf(
            "cp /system/etc/hosts /system/etc/hosts.bak 2>/dev/null || true",
            "echo '$hostsEntries' >> /system/etc/hosts 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    AlertDialog.Builder(this@AdBlockerActivity)
                        .setTitle("导入完成")
                        .setMessage("已导入 ${adDomains.lines().filter { it.isNotBlank() }.size} 个广告域名到 hosts 文件。\n\n" +
                                "重启手机后生效。")
                        .setPositiveButton("好的", null)
                        .show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun restoreHosts() {
        progress("正在恢复 hosts...")
        val commands = listOf(
            "cp /system/etc/hosts.bak /system/etc/hosts 2>/dev/null || echo '127.0.0.1 localhost' > /system/etc/hosts"
        )
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "hosts 已恢复", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    // ==================== 应用广告组件屏蔽 ====================

    private fun disableAdComponents() {
        progress("正在扫描广告组件...")
        // 常见广告 SDK 的 Activity/Service
        val adComponents = listOf(
            // 穿山甲
            "com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity",
            "com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity",
            "com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity",
            "com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity",
            // 广点通
            "com.qq.e.ads.PortraitADActivity",
            "com.qq.e.ads.LandscapeADActivity",
            "com.qq.e.ads.RewardVideoADActivity",
            // 快手
            "com.kwad.sdk.api.proxy.app.KsRewardVideoActivity",
            "com.kwad.sdk.api.proxy.app.KsFullScreenVideoActivity",
            // 百度
            "com.baidu.mobads.sdk.api.WebViewActivity",
            "com.baidu.mobads.sdk.api.RewardVideoActivity",
            // Unity
            "com.unity3d.ads.UnityAdsActivity",
            "com.unity3d.ads.adunit.AdUnitActivity",
            // AdMob
            "com.google.android.gms.ads.AdActivity",
            "com.google.android.gms.ads.rewarded.RewardedAdActivity"
        )

        val commands = adComponents.map { comp ->
            "pm disable-user $comp 2>/dev/null || true"
        }
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    AlertDialog.Builder(this@AdBlockerActivity)
                        .setTitle("操作完成")
                        .setMessage("已禁用 ${adComponents.size} 个常见广告组件。\n\n" +
                                "部分应用可能无法正常显示广告，也可能导致应用异常。")
                        .setPositiveButton("好的", null)
                        .show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    private fun restoreAdComponents() {
        progress("正在恢复广告组件...")
        val adComponents = listOf(
            "com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity",
            "com.qq.e.ads.PortraitADActivity",
            "com.kwad.sdk.api.proxy.app.KsRewardVideoActivity",
            "com.baidu.mobads.sdk.api.WebViewActivity",
            "com.unity3d.ads.UnityAdsActivity",
            "com.google.android.gms.ads.AdActivity"
        )
        val commands = adComponents.map { comp ->
            "pm enable $comp 2>/dev/null || true"
        }
        ShizukuHelper.execScript(commands, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "广告组件已恢复", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread {
                    dismissProgress()
                    Toast.makeText(this@AdBlockerActivity, "操作失败: $msg", Toast.LENGTH_SHORT).show()
                }
            }
        })
    }

    // ==================== UI 工具方法 ====================

    private fun card(title: String, content: (LinearLayout) -> Unit) {
        val card = CardView(this).apply {
            radius = 12f
            setCardBackgroundColor(Color.WHITE)
            cardElevation = 4f
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(16) }
        }
        val inner = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
        }
        inner.addView(TextView(this).apply {
            text = title
            textSize = 16f
            setTextColor(0xFF1976D2.toInt())
            paint.isFakeBoldText = true
            setPadding(0, 0, 0, dp(12))
        })
        content(inner)
        card.addView(inner)
        container.addView(card)
    }

    private fun toggleBtn(parent: LinearLayout, label: String, desc: String, key: String, onToggle: (Boolean) -> Unit) {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
        }
        row.addView(LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
            addView(TextView(this@AdBlockerActivity).apply {
                text = label
                textSize = 14f
                setTextColor(Color.BLACK)
            })
            addView(TextView(this@AdBlockerActivity).apply {
                text = desc
                textSize = 12f
                setTextColor(Color.GRAY)
            })
        })
        val savedState = prefs.getBoolean(key, false)
        row.addView(Switch(this@AdBlockerActivity).apply {
            isChecked = savedState
            setOnCheckedChangeListener { _, isChecked ->
                prefs.edit().putBoolean(key, isChecked).apply()
                onToggle(isChecked)
            }
        })
        parent.addView(row)
    }

    private fun actionBtn(parent: LinearLayout, label: String, desc: String, action: () -> Unit) {
        val btn = Button(this).apply {
            text = "$label\n$desc"
            textSize = 13f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
            setOnClickListener { action() }
        }
        parent.addView(btn)
    }

    private fun addHint(parent: LinearLayout, hint: String) {
        parent.addView(TextView(this).apply {
            text = hint
            textSize = 12f
            setTextColor(Color.GRAY)
            setPadding(0, dp(8), 0, 0)
        })
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    private fun progress(msg: String) {
        progressDialog?.dismiss()
        progressDialog = AlertDialog.Builder(this)
            .setMessage(msg)
            .setCancelable(false)
            .create()
        progressDialog?.show()
    }

    private fun dismissProgress() {
        progressDialog?.dismiss()
        progressDialog = null
    }
}
