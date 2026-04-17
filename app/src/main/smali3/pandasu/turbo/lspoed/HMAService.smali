.class public final Lcom/pandasu/turbo/lspoed/HMAService;
.super Ljava/lang/Object;
.source "HMAService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/lspoed/HMAService$Companion;,
        Lcom/pandasu/turbo/lspoed/HMAService$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMAService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMAService.kt\ncom/pandasu/turbo/lspoed/HMAService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n1611#2:277\n1855#2:278\n1856#2:280\n1612#2:281\n1855#2,2:282\n1#3:279\n*S KotlinDebug\n*F\n+ 1 HMAService.kt\ncom/pandasu/turbo/lspoed/HMAService\n*L\n159#1:277\n159#1:278\n159#1:280\n159#1:281\n272#1:282,2\n159#1:279\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 42\u00020\u0001:\u000245B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u0015J\u000e\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u0015J\u0010\u0010&\u001a\u00020\u000e2\u0008\u0010$\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020(H\u0002J\u001e\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020\u00152\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020(0-H\u0002J\u001a\u0010.\u001a\u00020\u000e2\u0008\u0010/\u001a\u0004\u0018\u00010\u00152\u0008\u00100\u001a\u0004\u0018\u00010\u0015J\u001a\u00101\u001a\u00020\u000e2\u0008\u0010/\u001a\u0004\u0018\u00010\u00152\u0008\u00100\u001a\u0004\u0018\u00010\u0015J\u0006\u00102\u001a\u00020(J\u0006\u00103\u001a\u00020(R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0017\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0017\u00a8\u00066"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "",
        "pms",
        "pmn",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V",
        "getClassLoader",
        "()Ljava/lang/ClassLoader;",
        "config",
        "Lcom/pandasu/turbo/lspoed/HMAService$Config;",
        "getConfig",
        "()Lcom/pandasu/turbo/lspoed/HMAService$Config;",
        "detailLog",
        "",
        "getDetailLog",
        "()Z",
        "setDetailLog",
        "(Z)V",
        "detectorApps",
        "",
        "",
        "getDetectorApps",
        "()Ljava/util/Set;",
        "hiddenPackages",
        "",
        "getHiddenPackages",
        "hooks",
        "",
        "Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;",
        "getPmn",
        "()Ljava/lang/Object;",
        "getPms",
        "systemApps",
        "getSystemApps",
        "isAppDataIsolationExcluded",
        "packageName",
        "isHookEnabled",
        "isHookEnabledForActivity",
        "loadAdditionalHooks",
        "",
        "loadSystemApps",
        "safeLoad",
        "name",
        "block",
        "Lkotlin/Function0;",
        "shouldHide",
        "caller",
        "target",
        "shouldHideActivityLaunch",
        "startHook",
        "unload",
        "Companion",
        "Config",
        "PandaSU-LSPosed_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/pandasu/turbo/lspoed/HMAService$Companion;

.field private static instance:Lcom/pandasu/turbo/lspoed/HMAService;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

.field private configLastModified:J

.field private detailLog:Z

.field private final detectorApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hiddenPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;",
            ">;"
        }
    .end annotation
.end field

.field private final pmn:Ljava/lang/Object;

.field private final pms:Ljava/lang/Object;

.field private final systemApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/lspoed/HMAService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/lspoed/HMAService;->Companion:Lcom/pandasu/turbo/lspoed/HMAService$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .registers 34
    .param p1, "pms"    # Ljava/lang/Object;
    .param p2, "pmn"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 31
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/pandasu/turbo/lspoed/HMAService;->pms:Ljava/lang/Object;

    .line 33
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/pandasu/turbo/lspoed/HMAService;->pmn:Ljava/lang/Object;

    .line 34
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/pandasu/turbo/lspoed/HMAService;->classLoader:Ljava/lang/ClassLoader;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v0, Lcom/pandasu/turbo/lspoed/HMAService;->hooks:Ljava/util/List;

    .line 53
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Set;

    iput-object v4, v0, Lcom/pandasu/turbo/lspoed/HMAService;->systemApps:Ljava/util/Set;

    .line 56
    nop

    .line 58
    const-string v5, "com.topjohnwu.magisk"

    .line 59
    const-string v6, "io.github.vvb2060.magisk"

    .line 58
    nop

    .line 60
    const-string v7, "me.weishu.kernelsu"

    .line 58
    nop

    .line 61
    const-string v8, "me.weishu.freereflection"

    .line 58
    nop

    .line 62
    const-string v9, "com.pandasu.turbo"

    .line 58
    nop

    .line 63
    const-string v10, "com.pandasu.turbo.lspoed"

    .line 58
    nop

    .line 65
    const-string v11, "de.robv.android.xposed.installer"

    .line 58
    nop

    .line 66
    const-string v12, "org.lsposed.manager"

    .line 58
    nop

    .line 67
    const-string v13, "com.tsng.hidemyapplist"

    .line 58
    nop

    .line 68
    const-string v14, "org.frknkrc44.hma_oss"

    .line 58
    nop

    .line 70
    const-string v15, "com.android36ime.a"

    .line 58
    nop

    .line 71
    const-string v16, "com.twiser.security.installer"

    .line 58
    nop

    .line 72
    const-string v17, "com.modify.installer"

    .line 58
    nop

    .line 73
    const-string v18, "com.byyang.appmodify"

    .line 58
    nop

    .line 74
    const-string v19, "com.coderstory.toolkit"

    .line 58
    nop

    .line 75
    const-string v20, "com.omarea.vtools"

    .line 58
    nop

    .line 76
    const-string v21, "com.foobnix.band.manager"

    .line 58
    nop

    .line 77
    const-string v22, "com.github.tvbox.osc"

    .line 58
    nop

    .line 78
    const-string v23, "com.yifeplayte.logrequestmanager"

    .line 58
    nop

    .line 80
    const-string v24, "com.scottyab.rootbeer.sample"

    .line 58
    nop

    .line 81
    const-string v25, "com.joeykrim.rootcheck"

    .line 58
    nop

    .line 82
    const-string v26, "com.amphoras.hidemyroothelper"

    .line 58
    nop

    .line 84
    const-string v27, "com.singularsys.riru_easypay"

    .line 58
    nop

    .line 85
    const-string v28, "com.singularsys.xposed"

    .line 58
    nop

    .line 86
    const-string v29, "com.miui.systemuihook"

    filled-new-array/range {v5 .. v29}, [Ljava/lang/String;

    move-result-object v4

    .line 58
    nop

    .line 56
    invoke-static {v4}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v0, Lcom/pandasu/turbo/lspoed/HMAService;->hiddenPackages:Ljava/util/Set;

    .line 90
    nop

    .line 92
    const-string v5, "icu.nullptr.applistdetector"

    .line 93
    const-string v6, "com.zhenxi.hunter"

    .line 92
    nop

    .line 94
    const-string v7, "com.oaseng.apecheck"

    .line 92
    nop

    .line 95
    const-string v8, "io.github.nitsuya.donottryaccessibility"

    .line 92
    nop

    .line 97
    const-string v9, "com.scottyab.rootbeer.sample"

    .line 92
    nop

    .line 98
    const-string v10, "com.joeykrim.rootcheck"

    .line 92
    nop

    .line 99
    const-string v11, "com.izzysoft.androidquake"

    .line 92
    nop

    .line 100
    const-string v12, "com.amphoras.hidemyroothelper"

    .line 92
    nop

    .line 101
    const-string v13, "org.fdroid.fdroid"

    .line 92
    nop

    .line 102
    const-string v14, "com.termux"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v4

    .line 92
    nop

    .line 90
    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    .line 106
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/pandasu/turbo/lspoed/HMAService;->detailLog:Z

    .line 109
    new-instance v4, Lcom/pandasu/turbo/lspoed/HMAService$Config;

    invoke-direct {v4}, Lcom/pandasu/turbo/lspoed/HMAService$Config;-><init>()V

    iput-object v4, v0, Lcom/pandasu/turbo/lspoed/HMAService;->config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

    .line 139
    nop

    .line 140
    sput-object v0, Lcom/pandasu/turbo/lspoed/HMAService;->instance:Lcom/pandasu/turbo/lspoed/HMAService;

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/pandasu/turbo/lspoed/HMAService;->loadSystemApps()V

    .line 142
    nop

    .line 31
    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/pandasu/turbo/lspoed/HMAService;
    .registers 1

    .line 31
    sget-object v0, Lcom/pandasu/turbo/lspoed/HMAService;->instance:Lcom/pandasu/turbo/lspoed/HMAService;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .registers 1
    .param p0, "<set-?>"    # Lcom/pandasu/turbo/lspoed/HMAService;

    .line 31
    sput-object p0, Lcom/pandasu/turbo/lspoed/HMAService;->instance:Lcom/pandasu/turbo/lspoed/HMAService;

    return-void
.end method

.method private final applyCustomProps(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propsJson"    # Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_41

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_41

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_41

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    # applySetProp removed for APatch compatibility

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_44

    :catchall_44
    :cond_44
    return-void
.end method

.method private final applyMagiskHide(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    :try_start_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    move-object v3, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_29

    :catchall_29
    return-void
.end method

.method private final applySetProp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    :try_start_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    move-object v3, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetProp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logD(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logD(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_50

    :catchall_50
    return-void
.end method

.method private final loadAdditionalHooks()V
    .registers 4

    .line 202
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$1;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$1;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "ActivityHook"

    invoke-direct {p0, v1, v0}, Lcom/pandasu/turbo/lspoed/HMAService;->safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 205
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$2;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$2;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "ContentProviderHook"

    invoke-direct {p0, v1, v0}, Lcom/pandasu/turbo/lspoed/HMAService;->safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2a

    .line 209
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$3;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$3;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "ZygoteHook"

    invoke-direct {p0, v1, v0}, Lcom/pandasu/turbo/lspoed/HMAService;->safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 213
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3c

    .line 214
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$4;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$4;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v2, "AppDataIsolationHook"

    invoke-direct {p0, v2, v0}, Lcom/pandasu/turbo/lspoed/HMAService;->safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 218
    :cond_3c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_54

    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

    invoke-virtual {v0}, Lcom/pandasu/turbo/lspoed/HMAService$Config;->getForceMountData()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 219
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$5;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$5;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "PlatformCompatHook"

    invoke-direct {p0, v1, v0}, Lcom/pandasu/turbo/lspoed/HMAService;->safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 223
    :cond_54
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$6;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/HMAService$loadAdditionalHooks$6;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "SafetyNetHook"

    invoke-direct {p0, v1, v0}, Lcom/pandasu/turbo/lspoed/HMAService;->safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 224
    return-void
.end method

.method private final loadSystemApps()V
    .registers 18

    .line 148
    move-object/from16 v1, p0

    .line 150
    :try_start_2
    iget-object v0, v1, Lcom/pandasu/turbo/lspoed/HMAService;->pms:Ljava/lang/Object;

    if-eqz v0, :cond_a6

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "pmsClass":Ljava/lang/Class;
    nop

    .line 153
    const-string v2, "getInstalledApplications"

    .line 154
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 152
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 157
    .local v2, "getInstalledAppsMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 158
    iget-object v4, v1, Lcom/pandasu/turbo/lspoed/HMAService;->pms:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_3c

    check-cast v3, Ljava/util/List;

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    .line 159
    .local v3, "apps":Ljava/util/List;
    :goto_3d
    if-eqz v3, :cond_7d

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    iget-object v6, v1, Lcom/pandasu/turbo/lspoed/HMAService;->systemApps:Ljava/util/Set;

    check-cast v6, Ljava/util/Collection;

    .local v4, "$this$mapNotNullTo$iv":Ljava/lang/Iterable;
    .local v6, "destination$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 277
    .local v8, "$i$f$mapNotNullTo":I
    move-object v9, v4

    .local v9, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 278
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_78

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 277
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv":I
    move-object v15, v13

    .local v15, "it":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 160
    .local v16, "$i$a$-mapNotNullTo-HMAService$loadSystemApps$1":I
    instance-of v5, v15, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_6e

    .line 161
    move-object v5, v15

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_6e

    .line 162
    move-object v5, v15

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_6f

    .line 163
    :cond_6e
    const/4 v5, 0x0

    .line 160
    :goto_6f
    nop

    .line 277
    .end local v15    # "it":Ljava/lang/Object;
    .end local v16    # "$i$a$-mapNotNullTo-HMAService$loadSystemApps$1":I
    if-eqz v5, :cond_76

    .line 279
    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 277
    .local v15, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv":I
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv":I
    .end local v15    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv":I
    :cond_76
    nop

    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_4d

    .line 280
    :cond_78
    nop

    .line 281
    .end local v9    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    nop

    .end local v4    # "$this$mapNotNullTo$iv":Ljava/lang/Iterable;
    .end local v6    # "destination$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$mapNotNullTo":I
    move-object v4, v6

    check-cast v4, Ljava/util/Set;

    .line 165
    :cond_7d
    iget-object v4, v1, Lcom/pandasu/turbo/lspoed/HMAService;->systemApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " system apps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logI(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logI(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_2 .. :try_end_9f} :catchall_a0

    .end local v0    # "pmsClass":Ljava/lang/Class;
    .end local v2    # "getInstalledAppsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "apps":Ljava/util/List;
    goto :goto_a6

    .line 167
    :catchall_a0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Failed to load system apps"

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a6
    :goto_a6
    return-void
.end method

.method private final parsePackageConfig(Ljava/lang/String;)V
    .registers 10
    .param p1, "configStr"    # Ljava/lang/String;

    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_60

    add-int/lit8 v0, v0, 0xc

    const-string v1, "\""

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pandasu/turbo/lspoed/HMAService;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "isolateStorage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_38

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    # applyMagiskHide removed - magisk hide not supported on APatch

    :cond_38
    const-string v5, "customProps"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_60

    add-int/lit8 v5, v5, 0xc

    const-string v6, "{"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_60

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_60

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/pandasu/turbo/lspoed/HMAService;->applyCustomProps(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_60

    :catchall_60
    :cond_60
    return-void
.end method

.method private final reloadConfig()V
    .registers 13

    :try_start_0
    const-string v0, "/data/user/0/com.pandasu.turbo/cache/config.dat"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pandasu/turbo/lspoed/HMAService;->configLastModified:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_19

    iput-wide v2, p0, Lcom/pandasu/turbo/lspoed/HMAService;->configLastModified:J

    :cond_19
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_37

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_37
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabledPackages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6d

    const-string v4, "["

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "]"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    :goto_63
    if-ge v6, v5, :cond_6d

    aget-object v7, v4, v6

    invoke-direct {p0, v7}, Lcom/pandasu/turbo/lspoed/HMAService;->parsePackageConfig(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_6d
    const-string v3, "detectorApps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b7

    const-string v4, "["

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "]"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    :goto_94
    if-ge v6, v5, :cond_b7

    aget-object v7, v4, v6

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_a5

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_a5
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b4

    iget-object v8, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b4
    add-int/lit8 v6, v6, 0x2

    goto :goto_94

    :cond_b7
    const-string v0, "Config reloaded successfully"

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logD(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logD(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_0 .. :try_end_bc} :catchall_bc

    :catchall_bc
    :cond_bc
    return-void
.end method

.method private final safeLoad(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 227
    nop

    .line 228
    :try_start_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logI(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logI(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_32

    .line 230
    :catchall_1b
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_32
    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public final getConfig()Lcom/pandasu/turbo/lspoed/HMAService$Config;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

    return-object v0
.end method

.method public final getDetailLog()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detailLog:Z

    return v0
.end method

.method public final getDetectorApps()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    return-object v0
.end method

.method public final getHiddenPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->hiddenPackages:Ljava/util/Set;

    return-object v0
.end method

.method public final getPmn()Ljava/lang/Object;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->pmn:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPms()Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->pms:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSystemApps()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->systemApps:Ljava/util/Set;

    return-object v0
.end method

.method public final isAppDataIsolationExcluded(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string v0, "com.pandasu.turbo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isHookEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isHookEnabledForActivity(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 260
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setDetailLog(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detailLog:Z

    return-void
.end method

.method public final shouldHide(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    :try_start_0
    const-string v3, "/data/user/0/com.pandasu.turbo/cache/config.dat"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v2, p0, Lcom/pandasu/turbo/lspoed/HMAService;->configLastModified:J

    cmp-long v3, v4, v2

    if-eqz v3, :cond_1a

    invoke-direct {p0}, Lcom/pandasu/turbo/lspoed/HMAService;->reloadConfig()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    .line 239
    :catchall_1a
    :cond_1a
    const/4 v0, 0x0

    if-eqz p2, :cond_69

    if-nez p1, :cond_20

    goto :goto_69

    .line 240
    :cond_20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v0

    .line 241
    :cond_27
    const-string v1, "com.pandasu.turbo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    return v0

    .line 244
    :cond_30
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/HMAService;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 246
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/HMAService;->detectorApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldHide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logD(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logD(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_68
    return v0

    .line 239
    :cond_69
    :goto_69
    return v0
.end method

.method public final shouldHideActivityLaunch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/lspoed/HMAService;->shouldHide(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final startHook()V
    .registers 5

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting hooks for SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logI(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logI(Ljava/lang/String;)V

    .line 175
    nop

    .line 178
    nop

    .line 179
    :try_start_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_28

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    goto :goto_73

    .line 180
    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_36

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget34;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget34;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    goto :goto_73

    .line 181
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_44

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    goto :goto_73

    .line 182
    :cond_44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_52

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget31;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget31;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    goto :goto_73

    .line 183
    :cond_52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_60

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget30;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget30;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    goto :goto_73

    .line 184
    :cond_60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6e

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    check-cast v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    goto :goto_73

    .line 185
    :cond_6e
    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    .line 178
    :goto_73
    nop

    .line 188
    .local v0, "pmsHook":Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;
    invoke-virtual {v0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->load()V

    .line 189
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/HMAService;->hooks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logI(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logI(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/pandasu/turbo/lspoed/HMAService;->loadAdditionalHooks()V
    :try_end_9d
    .catchall {:try_start_1a .. :try_end_9d} :catchall_9e

    .end local v0    # "pmsHook":Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;
    goto :goto_a4

    .line 195
    :catchall_9e
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Failed to load hooks"

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a4
    return-void
.end method

.method public final unload()V
    .registers 7

    .line 272
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->hooks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;

    .local v4, "it":Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;
    const/4 v5, 0x0

    .line 272
    .local v5, "$i$a$-forEach-HMAService$unload$1":I
    invoke-interface {v4}, Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;->unload()V

    .line 282
    .end local v4    # "it":Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;
    .end local v5    # "$i$a$-forEach-HMAService$unload$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_9

    .line 283
    :cond_1c
    nop

    .line 273
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/HMAService;->hooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    return-void
.end method
