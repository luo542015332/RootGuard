.class public Lcom/pandasu/turbo/hook/PackageManagerHookHelper;
.super Ljava/lang/Object;
.source "PackageManagerHookHelper.java"


# static fields
.field private static final HIDE_KEYWORDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PandaSU-PMHook"

.field private static final TARGET_PACKAGE:Ljava/lang/String; = "com.pandasu.turbo"

.field private static sCurrentContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$smfilterPackageList(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->filterPackageList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smshouldHidePackage(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->shouldHidePackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 196

    .line 25
    const-string v0, "lsposed"

    const-string v1, "lspd"

    const-string v2, "org.lsposed"

    const-string v3, "com.lsposed"

    const-string v4, "org.lsposed.manager"

    const-string v5, "org.lsposed.lspd"

    const-string v6, "lsposedmanager"

    const-string v7, "riru"

    const-string v8, "com.rikk.rikk"

    const-string v9, "com.rikk.blocksms"

    const-string v10, "com.rikk.whatsapp"

    const-string v11, "xposed"

    const-string v12, "de.robv.android.xposed"

    const-string v13, "org.meowcat.edxposed"

    const-string v14, "org.meowcat.edxposed.manager"

    const-string v15, "magisk"

    const-string v16, "com.topjohnwu.magisk"

    const-string v17, "com.topjohnwu.magisk.delta"

    const-string v18, "com.topjohnwu.magisk.dtok"

    const-string v19, "kernelsu"

    const-string v20, "ksu"

    const-string v21, "me.weishu.kernelsu"

    const-string v22, "me.weishu.kernelsu.ui"

    const-string v23, "me.weishu.exp"

    const-string v24, "apatch"

    const-string v25, "com.apatch"

    const-string v26, "npf.android"

    const-string v27, "com.npftech"

    const-string v28, "supersu"

    const-string v29, "eu.chainfire.supersu"

    const-string v30, "com.noshufou.android.su"

    const-string v31, "com.koushikdutta.superuser"

    const-string v32, "kingroot"

    const-string v33, "com.kingroot"

    const-string v34, "com.kingouser"

    const-string v35, "com.kingroot.kinguser"

    const-string v36, "com.baidu"

    const-string v37, "com.qihoo"

    const-string v38, "com.shuame"

    const-string v39, "icu.nullptr.applistdetector"

    const-string v40, "com.zhenxi.hunter"

    const-string v41, "zhenxi.hunter"

    const-string v42, "com.github.byxiaorun.ruru"

    const-string v43, "byxiaorun.ruru"

    const-string v44, "com.RabahX.Securify"

    const-string v45, "krypton.tbsafetychecker"

    const-string v46, "momo"

    const-string v47, "com.momo"

    const-string v48, "leaname"

    const-string v49, "com.android.leaname"

    const-string v50, "com.leaname"

    const-string v51, "scene"

    const-string v52, "aliuoud"

    const-string v53, "com.aliuoud"

    const-string v54, "com.now"

    const-string v55, "now"

    const-string v56, "com.qihoo360"

    const-string v57, "com.qihoo.security"

    const-string v58, "com.qihoo.appstore"

    const-string v59, "com.lbe.security"

    const-string v60, "com.lbe.securitymirror"

    const-string v61, "hidemyapplist"

    const-string v62, "com.tsng.hidemyapplist"

    const-string v63, "com.tsng.hma"

    const-string v64, "hmaplugin"

    const-string v65, "icebox"

    const-string v66, "com.catchingnow"

    const-string v67, "com.icebox"

    const-string v68, "sandbox"

    const-string v69, "isolated"

    const-string v70, "hide"

    const-string v71, "ghost"

    const-string v72, "cloner"

    const-string v73, "dual"

    const-string v74, "shizuku"

    const-string v75, "moe.shizuku.privileged"

    const-string v76, "rikka"

    const-string v77, "asylum"

    const-string v78, "com.asylum"

    const-string v79, "npf.asylum"

    const-string v80, "multiclone"

    const-string v81, "com.clone"

    const-string v82, "parallel"

    const-string v83, "dualapp"

    const-string v84, "com.dualapp"

    const-string v85, "com.icbc"

    const-string v86, "com.ccb"

    const-string v87, "com.boc"

    const-string v88, "com.abc"

    const-string v89, "com.bankcomm"

    const-string v90, "cmbc"

    const-string v91, "com.cmbc"

    const-string v92, "cib"

    const-string v93, "com.cib"

    const-string v94, "psbc"

    const-string v95, "spdb"

    const-string v96, "com.spdb"

    const-string v97, "citic"

    const-string v98, "com.citic"

    const-string v99, "pingan"

    const-string v100, "com.pingan"

    const-string v101, "cgb"

    const-string v102, "com.cgb"

    const-string v103, "cebbank"

    const-string v104, "com.ceb"

    const-string v105, "hxbank"

    const-string v106, "com.hxb"

    const-string v107, "czbank"

    const-string v108, "com.czbank"

    const-string v109, "bohaib"

    const-string v110, "com.bohaib"

    const-string v111, "srcb"

    const-string v112, "zjnx"

    const-string v113, "nxbank"

    const-string v114, "com.alipay.mobile.quinox"

    const-string v115, "com.eg.android.AlipayGphone"

    const-string v116, "alipay"

    const-string v117, "com.jd.jrapp"

    const-string v118, "com.jd.paying"

    const-string v119, "jdjr"

    const-string v120, "com.unionpay"

    const-string v121, "com.chinamworld"

    const-string v122, "cmbcfinance"

    const-string v123, "com.ss.android.ugc.pay"

    const-string v124, "com.bytedance.pay"

    const-string v125, "com.xunmeng.pinduoduo"

    const-string v126, "pinduoduo"

    const-string v127, "com.sankuai.meituan"

    const-string v128, "meituan"

    const-string v129, "dianping"

    const-string v130, "com.netease.game"

    const-string v131, "neteasepay"

    const-string v132, "com.bestpay"

    const-string v133, "woPay"

    const-string v134, "com.wo.pay"

    const-string v135, "com.onebank"

    const-string v136, "yqb"

    const-string v137, "tenpay"

    const-string v138, "qwallet"

    const-string v139, "com.tenpay.wallet"

    const-string v140, "quickpay"

    const-string v141, "unionpay"

    const-string v142, "com.tencent.tmgp.sgame"

    const-string v143, "com.tencent.tmgp.pubgmhd"

    const-string v144, "com.tencent.tmgp.cf"

    const-string v145, "com.tencent.tmgp.cod"

    const-string v146, "com.tencent.tmgp.wuxia"

    const-string v147, "com.miHoYo.GenshinImpact"

    const-string v148, "com.miHoYo.enterprise.GenshinImpact"

    const-string v149, "com.netease.onmyoji"

    const-string v150, "com.netease.wyhmxy"

    const-string v151, "com.netease.Immortal"

    const-string v152, "com.netease.qmzs"

    const-string v153, "com.mihoyo.hyperion"

    const-string v154, "com.mihoyo.\u5d29\u574f\u661f\u7a79\u94c1\u9053"

    const-string v155, "com.mihoyo.hkrpg"

    const-string v156, "com.aligames"

    const-string v157, "aligames"

    const-string v158, "com.wantu"

    const-string v159, "perfect"

    const-string v160, "com.perfectworld"

    const-string v161, "com.youzu"

    const-string v162, "youzu"

    const-string v163, "com.shanda"

    const-string v164, "shanda"

    const-string v165, "com.qihoo.game"

    const-string v166, "game.qihoo"

    const-string v167, "com.baidu.game"

    const-string v168, "baidugame"

    const-string v169, "com.oppo.game"

    const-string v170, "com.vivo.game"

    const-string v171, "com.huawei.game"

    const-string v172, "su"

    const-string v173, "supersu"

    const-string v174, "superruser"

    const-string v175, "root"

    const-string v176, "kingoroot"

    const-string v177, "rootuser"

    const-string v178, "rootmaster"

    const-string v179, "frida"

    const-string v180, "xhook"

    const-string v181, "libxhook"

    const-string v182, "substrate"

    const-string v183, "inlinehook"

    const-string v184, "hook"

    const-string v185, "detector"

    const-string v186, "detection"

    const-string v187, "checker"

    const-string v188, "safety"

    const-string v189, "integrity"

    const-string v190, "safetynet"

    const-string v191, "attestation"

    const-string v192, "playintegrity"

    const-string v193, "verify"

    const-string v194, "rootcloak"

    const-string v195, "rootcloakplus"

    filled-new-array/range {v0 .. v195}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->HIDE_KEYWORDS:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->sCurrentContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterPackageList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 282
    .local p0, "originalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 287
    .local v1, "hiddenCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 288
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->shouldHidePackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 293
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    goto :goto_0

    .line 295
    :cond_2
    if-lez v1, :cond_3

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filtered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packages, remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PandaSU-PMHook"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    return-object v0
.end method

.method private static hookPackageManager()V
    .locals 13

    .line 180
    const-string v0, "PandaSU-PMHook"

    :try_start_0
    sget-object v1, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->sCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    .local v1, "systemPM":Landroid/content/pm/PackageManager;
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 184
    .local v2, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 185
    .local v3, "currentActivityThread":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 188
    .local v5, "currentThread":Ljava/lang/Object;
    const-string v6, "sPackageManager"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 189
    .local v6, "sPackageManagerField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManager;

    .line 193
    .local v8, "originalPM":Landroid/content/pm/PackageManager;
    new-instance v9, Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;

    invoke-direct {v9, v8}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;-><init>(Landroid/content/pm/PackageManager;)V

    .line 257
    .local v9, "handler":Ljava/lang/reflect/InvocationHandler;
    const-string v10, "android.content.pm.IPackageManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 258
    .local v10, "iPackageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 259
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Class;

    aput-object v10, v12, v4

    .line 258
    invoke-static {v11, v12, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 264
    .local v4, "proxyPM":Ljava/lang/Object;
    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    const-class v11, Landroid/content/Context;

    const-string v12, "mPackageManager"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 268
    .local v11, "mPMField":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 269
    sget-object v7, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->sCurrentContext:Landroid/content/Context;

    invoke-virtual {v11, v7, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    const-string v7, "PackageManager replaced successfully"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .end local v1    # "systemPM":Landroid/content/pm/PackageManager;
    .end local v2    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "currentActivityThread":Ljava/lang/reflect/Method;
    .end local v4    # "proxyPM":Ljava/lang/Object;
    .end local v5    # "currentThread":Ljava/lang/Object;
    .end local v6    # "sPackageManagerField":Ljava/lang/reflect/Field;
    .end local v8    # "originalPM":Landroid/content/pm/PackageManager;
    .end local v9    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v10    # "iPackageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "mPMField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to hook PackageManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 165
    const-string v0, "PandaSU-PMHook"

    :try_start_0
    const-string v1, "PackageManagerHookHelper.init() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->sCurrentContext:Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->hookPackageManager()V

    .line 168
    const-string v1, "PackageManager hook installed successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init PackageManager hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static jniInit(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 325
    invoke-static {p0}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->init(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method private static shouldHidePackage(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 308
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "lowerName":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->HIDE_KEYWORDS:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 311
    .local v5, "keyword":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hiding package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (matched: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PandaSU-PMHook"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x1

    return v0

    .line 310
    .end local v5    # "keyword":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_2
    return v0
.end method
