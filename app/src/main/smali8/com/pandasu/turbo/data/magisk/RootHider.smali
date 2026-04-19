.class public final Lcom/pandasu/turbo/data/magisk/RootHider;
.super Ljava/lang/Object;
.source "RootHider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/RootHider$Companion;,
        Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;,
        Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 D2\u00020\u0001:\u0003DEFB\u0019\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\"\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\rH\u0082@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0017\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0002\u0010\u0014J\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u001f\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ$\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u00082\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001dH\u0082@\u00a2\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ$\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001d2\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001dH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010.\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010/\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u00100\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u00101\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u000e\u00102\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010\u0010J\u0016\u00103\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u000e\u00104\u001a\u00020#H\u0082@\u00a2\u0006\u0002\u0010\u0010J\u0016\u00105\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001aJ8\u00106\u001a\u00020#2\u0006\u0010!\u001a\u00020\u00082\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001d2\u0012\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\rH\u0082@\u00a2\u0006\u0002\u00108J\u000e\u00109\u001a\u00020:H\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\u001dH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010?\u001a\u00020\u00082\u0006\u0010>\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u001e\u0010@\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010+J\u0016\u0010C\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/RootHider;",
        "",
        "context",
        "Landroid/content/Context;",
        "isolationDataStore",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "(Landroid/content/Context;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V",
        "PANDASU_ZYGISK_MODULE_ID",
        "",
        "cachedRootType",
        "applyCustomProps",
        "",
        "props",
        "",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyFullPropSpoof",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyIsolation",
        "config",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkHideStatus",
        "Lcom/pandasu/turbo/data/magisk/HideStatus;",
        "checkSelfRootPermission",
        "checkToolAvailable",
        "toolName",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "configureMagiskHide",
        "detectModules",
        "",
        "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
        "detectRootType",
        "disableRootForPackage",
        "packageName",
        "emergencyRollback",
        "",
        "executedOperations",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fileExists",
        "path",
        "findDirectoriesContaining",
        "basePath",
        "keyword",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forceDenyList",
        "getIsolatedApps",
        "hideBusyboxForPackage",
        "hideMagiskFilesForPackage",
        "hideSuForPackage",
        "hideXposedForPackage",
        "isPandaSUZygiskModuleEnabled",
        "isolateStorageForPackage",
        "recordAuthorizationFailure",
        "removeIsolation",
        "rollbackOperations",
        "operationResults",
        "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runEnvironmentCheck",
        "",
        "runEnvironmentCheckDetail",
        "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
        "runSuCommand",
        "cmd",
        "runSuCommandOutput",
        "safeMountBind",
        "source",
        "target",
        "verifyIsolation",
        "Companion",
        "DetectionResult",
        "ModuleStatus",
        "app_debug"
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
.field public static final $stable:I

.field private static final BUSYBOX_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/pandasu/turbo/data/magisk/RootHider$Companion;

.field private static final HIDE_MODULE_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final KERNELSU_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGISK_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_TYPE_APATCH:Ljava/lang/String; = "apatch"

.field private static final ROOT_TYPE_KERNELSU:Ljava/lang/String; = "kernelsu"

.field private static final ROOT_TYPE_MAGISK:Ljava/lang/String; = "magisk"

.field private static final ROOT_TYPE_STANDALONE:Ljava/lang/String; = "standalone"

.field private static final XPOSED_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PANDASU_ZYGISK_MODULE_ID:Ljava/lang/String;

.field private cachedRootType:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->Companion:Lcom/pandasu/turbo/data/magisk/RootHider$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/magisk/RootHider;->$stable:I

    .line 29
    nop

    .line 30
    const-string v1, "/system/bin/su"

    const-string v2, "/system/xbin/su"

    const-string v3, "/sbin/su"

    .line 31
    const-string v4, "/su/bin/su"

    .line 30
    nop

    .line 31
    const-string v5, "/data/local/xbin/su"

    .line 30
    nop

    .line 31
    const-string v6, "/data/local/bin/su"

    .line 30
    nop

    .line 32
    const-string v7, "/system/app/Superuser.apk"

    .line 30
    nop

    .line 32
    const-string v8, "/system/app/SuperSU.apk"

    .line 30
    nop

    .line 32
    const-string v9, "/system/app/Magisk.apk"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 30
    nop

    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->ROOT_PATHS:Ljava/util/List;

    .line 34
    nop

    .line 35
    nop

    .line 36
    nop

    .line 35
    nop

    .line 36
    nop

    .line 35
    nop

    .line 36
    const-string v0, "/system/etc/init.d"

    const-string v1, "/data/adb/magisk"

    const-string v2, "/data/adb/modules"

    const-string v3, "/sbin/.magisk"

    const-string v4, "/dev/.magisk.unblock"

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 35
    nop

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->MAGISK_PATHS:Ljava/util/List;

    .line 38
    nop

    .line 39
    nop

    .line 40
    nop

    .line 39
    nop

    .line 40
    const-string v0, "/sys/kernel/ksu"

    const-string v1, "/data/adb/ksu"

    const-string v3, "/dev/ksu"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 39
    nop

    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->KERNELSU_PATHS:Ljava/util/List;

    .line 42
    nop

    .line 43
    const-string v0, "/system/bin/busybox"

    const-string v1, "/data/local/xbin/busybox"

    const-string v2, "/system/xbin/busybox"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->BUSYBOX_PATHS:Ljava/util/List;

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 46
    nop

    .line 47
    const-string v0, "/data/data/de.robv.android.xposed.installer"

    const-string v1, "/system/framework/XposedBridge.jar"

    const-string v2, "/system/bin/app_process_xposed"

    const-string v3, "/system/xbin/xposed"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 46
    nop

    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->XPOSED_PATHS:Ljava/util/List;

    .line 49
    nop

    .line 50
    const-string v1, "com.topjohnwu.magisk"

    const-string v2, "com.topjohnwu.magisk.debug"

    .line 51
    const-string v3, "eu.chainfire.supersu"

    .line 50
    nop

    .line 51
    const-string v4, "com.koushikdutta.superuser"

    .line 50
    nop

    .line 52
    const-string v5, "com.thirdparty.superuser"

    .line 50
    nop

    .line 52
    const-string v6, "com.yellowes.su"

    .line 50
    nop

    .line 53
    const-string v7, "com.kingroot.kinguser"

    .line 50
    nop

    .line 53
    const-string v8, "com.kingo.root"

    .line 50
    nop

    .line 54
    const-string v9, "me.weishu.exp"

    .line 50
    nop

    .line 54
    const-string v10, "me.weishu.kernelsu"

    .line 50
    nop

    .line 55
    const-string v11, "de.robv.android.xposed.installer"

    .line 50
    nop

    .line 55
    const-string v12, "org.meowcat.edxposed.manager"

    .line 50
    nop

    .line 56
    const-string v13, "com.solohsu.android.edxp.manager"

    .line 50
    nop

    .line 56
    const-string v14, "io.github.vvb2060.magisk"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    .line 50
    nop

    .line 49
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->ROOT_PACKAGES:Ljava/util/List;

    .line 59
    nop

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "com.tsng.hidemyapplist"

    const-string v2, "HMA"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    const-string v1, "org.lsposed.manager"

    const-string v2, "LSPosed"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 60
    nop

    .line 62
    const-string v1, "top.canyie.droidguard"

    const-string v2, "DroidGuard"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 60
    nop

    .line 63
    const-string v1, "com.zhenxi.hunter"

    const-string v2, "Hunter"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 60
    nop

    .line 64
    const-string v1, "com.hunter.detector"

    const-string v2, "Hunter\u68c0\u6d4b\u5668"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 60
    nop

    .line 65
    const-string v1, "icu.nullptr.applistdetector"

    const-string v2, "AppList Detector"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    nop

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->HIDE_MODULE_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .param p2, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isolationDataStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 1172
    const-string v0, "zygisk_pandasu"

    iput-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->PANDASU_ZYGISK_MODULE_ID:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static final synthetic access$applyCustomProps(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "props"    # Ljava/util/Map;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyCustomProps(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "toolName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$configureMagiskHide(Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->configureMagiskHide(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectRootType(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$disableRootForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->disableRootForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$emergencyRollback(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "executedOperations"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/RootHider;->emergencyRollback(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$findDirectoriesContaining(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/RootHider;->findDirectoriesContaining(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBUSYBOX_PATHS$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->BUSYBOX_PATHS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->cachedRootType:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getHIDE_MODULE_PACKAGES$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->HIDE_MODULE_PACKAGES:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getIsolationDataStore$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    return-object v0
.end method

.method public static final synthetic access$getKERNELSU_PATHS$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->KERNELSU_PATHS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMAGISK_PATHS$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->MAGISK_PATHS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getPANDASU_ZYGISK_MODULE_ID$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->PANDASU_ZYGISK_MODULE_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getROOT_PACKAGES$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->ROOT_PACKAGES:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getROOT_PATHS$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider;->ROOT_PATHS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$hideBusyboxForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->hideBusyboxForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hideMagiskFilesForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->hideMagiskFilesForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hideSuForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->hideSuForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hideXposedForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->hideXposedForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isPandaSUZygiskModuleEnabled(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider;->isPandaSUZygiskModuleEnabled(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isolateStorageForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->isolateStorageForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$recordAuthorizationFailure(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider;->recordAuthorizationFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$rollbackOperations(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "executedOperations"    # Ljava/util/List;
    .param p3, "operationResults"    # Ljava/util/Map;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/RootHider;->rollbackOperations(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$safeMountBind(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/RootHider;->safeMountBind(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider;->cachedRootType:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$verifyIsolation(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider;->verifyIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final applyCustomProps(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "props"    # Ljava/util/Map;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 958
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyCustomProps$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$applyCustomProps$2;-><init>(Ljava/util/Map;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 963
    return-object v0
.end method

.method private final checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "toolName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 763
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 790
    return-object v0
.end method

.method private final configureMagiskHide(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 795
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 860
    return-object v0
.end method

.method private final detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method private final disableRootForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 965
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$disableRootForPackage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$disableRootForPackage$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 989
    return-object v0
.end method

.method private final emergencyRollback(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "executedOperations"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1675
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1701
    return-object v0
.end method

.method private final fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1192
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1214
    return-object v0
.end method

.method private final findDirectoriesContaining(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method private final hideBusyboxForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 906
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideBusyboxForPackage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideBusyboxForPackage$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 918
    return-object v0
.end method

.method private final hideMagiskFilesForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 884
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideMagiskFilesForPackage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideMagiskFilesForPackage$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 904
    return-object v0
.end method

.method private final hideSuForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 862
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideSuForPackage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideSuForPackage$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 882
    return-object v0
.end method

.method private final hideXposedForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 924
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 956
    return-object v0
.end method

.method private final isPandaSUZygiskModuleEnabled(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1178
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1190
    return-object v0
.end method

.method private final isolateStorageForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 995
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1079
    return-object v0
.end method

.method private final recordAuthorizationFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1319
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$recordAuthorizationFailure$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$recordAuthorizationFailure$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1374
    return-object v0
.end method

.method private final rollbackOperations(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "executedOperations"    # Ljava/util/List;
    .param p3, "operationResults"    # Ljava/util/Map;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1618
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1670
    return-object v0
.end method

.method private final runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1376
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$runSuCommand$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$runSuCommand$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1391
    return-object v0
.end method

.method private final runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1393
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$runSuCommandOutput$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$runSuCommandOutput$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1409
    return-object v0
.end method

.method private final safeMountBind(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1416
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1564
    return-object v0
.end method

.method private final verifyIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1569
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1609
    return-object v0
.end method


# virtual methods
.method public final applyFullPropSpoof(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public final applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 653
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 758
    return-object v0
.end method

.method public final checkHideStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/HideStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1151
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkHideStatus$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkHideStatus$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1160
    return-object v0
.end method

.method public final checkSelfRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1221
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1314
    return-object v0
.end method

.method public final detectModules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 251
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method public final forceDenyList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method public final getIsolatedApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1162
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1167
    return-object v0
.end method

.method public final removeIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1081
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1149
    return-object v0
.end method

.method public final runEnvironmentCheck(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 300
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheck$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheck$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 502
    return-object v0
.end method

.method public final runEnvironmentCheckDetail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 504
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 649
    return-object v0
.end method
