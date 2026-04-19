.class public final Lcom/pandasu/turbo/data/magisk/MagiskProvider;
.super Ljava/lang/Object;
.source "MagiskProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagiskProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1344:1\n766#2:1345\n857#2,2:1346\n1179#2,2:1348\n1253#2,4:1350\n288#2,2:1354\n*S KotlinDebug\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider\n*L\n232#1:1345\n232#1:1346,2\n233#1:1348,2\n233#1:1350,4\n392#1:1354,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u0001;B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\u000fJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0015H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0019\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0015H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u001c\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0015H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\"J\u0016\u0010#\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\"J\u0016\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\"J\u0006\u0010%\u001a\u00020\u000eJ\u0010\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020(H\u0002J\u0018\u0010)\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010*\u001a\u00020+H\u0002J \u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u000eH\u0002J\u0018\u00100\u001a\u0004\u0018\u00010\u001f2\u0006\u0010.\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\"J\u0018\u00101\u001a\u00020\u000e2\u0008\u0008\u0002\u00102\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\"J\u001e\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u00112\u0006\u00105\u001a\u00020+H\u0086@\u00a2\u0006\u0002\u00106J\u001e\u00107\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u00109J\u0016\u0010:\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006<"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "kernelSUService",
        "Lcom/pandasu/turbo/data/kernelsu/KernelSUService;",
        "getKernelSUService",
        "()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;",
        "kernelSUService$delegate",
        "Lkotlin/Lazy;",
        "clearLogs",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectRootType",
        "",
        "extractTimestamp",
        "line",
        "getAllInstalledApps",
        "",
        "Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;",
        "getAppPolicies",
        "Lcom/pandasu/turbo/data/magisk/AppPolicy;",
        "getCurrentRootType",
        "getLogs",
        "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
        "getMagiskVersion",
        "Lcom/pandasu/turbo/data/magisk/MagiskVersion;",
        "getModules",
        "Lcom/pandasu/turbo/data/magisk/MagiskModule;",
        "installKernelSUModule",
        "zipPath",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "installMagiskModule",
        "installModule",
        "isMagiskInstalled",
        "isSystemApp",
        "appInfo",
        "Landroid/content/pm/ApplicationInfo;",
        "parseLogLine",
        "id",
        "",
        "parseModuleProp",
        "content",
        "moduleId",
        "isEnabled",
        "readModuleInfo",
        "reboot",
        "target",
        "setAppPolicy",
        "packageName",
        "policy",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toggleModule",
        "enable",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uninstallModule",
        "Companion",
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

.field public static final Companion:Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;

.field private static final KERNELSU_DB_TIANN:Ljava/lang/String; = "/data/data/com.tiann.kernelsu/databases/kernelsu.db"

.field private static final KERNELSU_DB_WEISHU:Ljava/lang/String; = "/data/data/me.weishu.kernelsu/databases/app.db"

.field private static final KERNELSU_PACKAGE_TIANN:Ljava/lang/String; = "com.tiann.kernelsu"

.field private static final KERNELSU_PACKAGE_WEISHU:Ljava/lang/String; = "me.weishu.kernelsu"

.field private static final KERNELSU_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGISK_AUTHORITY:Ljava/lang/String; = "com.topjohnwu.magisk.provider"

.field public static final MAGISK_DB:Ljava/lang/String; = "/data/adb/magisk.db"

.field private static final MAGISK_FILE_URI:Landroid/net/Uri;

.field private static final MAGISK_PACKAGE:Ljava/lang/String; = "com.topjohnwu.magisk"

.field private static final MAGISK_URI:Landroid/net/Uri;

.field public static final MODULES_PATH:Ljava/lang/String; = "/data/adb/modules"

.field public static final ROOT_TYPE_KERNELSU:Ljava/lang/String; = "kernelsu"

.field public static final ROOT_TYPE_MAGISK:Ljava/lang/String; = "magisk"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final context:Landroid/content/Context;

.field private final kernelSUService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->Companion:Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->$stable:I

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 45
    const-string v0, "content://com.topjohnwu.magisk.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->MAGISK_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.topjohnwu.magisk.provider/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->MAGISK_FILE_URI:Landroid/net/Uri;

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 60
    nop

    .line 62
    nop

    .line 60
    nop

    .line 63
    const-string v0, "/sys/kernel/ksu"

    const-string v1, "/data/adb/ksu"

    const-string v2, "/data/adb/modules"

    const-string v3, "/dev/ksu"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 60
    nop

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->KERNELSU_PATHS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->context:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$kernelSUService$2;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$kernelSUService$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->kernelSUService$delegate:Lkotlin/Lazy;

    .line 31
    return-void
.end method

.method public static final synthetic access$detectRootType(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 30
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDateFormat$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 30
    sget-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getKERNELSU_PATHS$cp()Ljava/util/List;
    .locals 1

    .line 30
    sget-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->KERNELSU_PATHS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getKernelSUService(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/kernelsu/KernelSUService;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .line 30
    invoke-direct {p0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getKernelSUService()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMAGISK_FILE_URI$cp()Landroid/net/Uri;
    .locals 1

    .line 30
    sget-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->MAGISK_FILE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getMAGISK_URI$cp()Landroid/net/Uri;
    .locals 1

    .line 30
    sget-object v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->MAGISK_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$installKernelSUModule(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "zipPath"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->installKernelSUModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$installMagiskModule(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "zipPath"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->installMagiskModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isSystemApp(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 30
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$parseLogLine(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;I)Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->parseLogLine(Ljava/lang/String;I)Lcom/pandasu/turbo/data/magisk/MagiskLog;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$parseModuleProp(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Ljava/lang/String;Z)Lcom/pandasu/turbo/data/magisk/MagiskModule;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "moduleId"    # Ljava/lang/String;
    .param p3, "isEnabled"    # Z

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->parseModuleProp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/pandasu/turbo/data/magisk/MagiskModule;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readModuleInfo(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .param p1, "moduleId"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->readModuleInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

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

    .line 89
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$detectRootType$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$detectRootType$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method private final extractTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    new-instance v0, Lkotlin/text/Regex;

    .line 1191
    const-string v1, "\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v0, "regex":Lkotlin/text/Regex;
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_0
    return-object v4
.end method

.method private final getKernelSUService()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->kernelSUService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    return-object v0
.end method

.method private final installKernelSUModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .param p1, "zipPath"    # Ljava/lang/String;
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

    .line 344
    move-object/from16 v1, p1

    const-string v0, "/module.prop"

    const-string v2, "-f"

    const-string v3, "-p"

    const-string v4, "mkdir"

    const-string v5, "-c"

    const-string v6, "su"

    .line 345
    const/4 v7, 0x0

    :try_start_0
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting KernelSU module installation from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/local/tmp/module_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "tempDir":Ljava/lang/String;
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating temp directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/String;

    aput-object v6, v11, v7

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v13, 0x2

    aput-object v4, v11, v13

    const/4 v14, 0x3

    aput-object v3, v11, v14

    const/4 v15, 0x4

    aput-object v8, v11, v15

    invoke-virtual {v9, v11}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 351
    .local v9, "mkdirProcess":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 353
    invoke-virtual {v9}, Ljava/lang/Process;->exitValue()I

    move-result v11

    const/4 v10, 0x0

    if-eqz v11, :cond_0

    .line 354
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create temp directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10, v13, v10}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 355
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v10, "Extracting zip file to temp directory"

    invoke-virtual {v11, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    aput-object v6, v11, v7

    aput-object v5, v11, v12

    const-string v17, "unzip"

    aput-object v17, v11, v13

    const-string v17, "-o"

    aput-object v17, v11, v14

    aput-object v1, v11, v15

    const-string v17, "-d"

    const/16 v16, 0x5

    aput-object v17, v11, v16

    const/4 v15, 0x6

    aput-object v8, v11, v15

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 361
    .local v10, "extractProcess":Ljava/lang/Process;
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 363
    invoke-virtual {v10}, Ljava/lang/Process;->exitValue()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v15, 0x2000

    const-string v18, "-rf"

    const-string v19, "rm"

    if-eqz v11, :cond_2

    .line 364
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "getErrorStream(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v0, v3, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v0

    :goto_0
    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "error":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v10}, Ljava/lang/Process;->exitValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to extract module zip, exit code: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v13, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 366
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v6, v3, v7

    aput-object v5, v3, v12

    aput-object v19, v3, v13

    aput-object v18, v3, v14

    const/4 v4, 0x4

    aput-object v8, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 367
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 371
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v15, "Checking for module.prop"

    invoke-virtual {v11, v15}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const/4 v15, 0x5

    new-array v14, v15, [Ljava/lang/String;

    aput-object v6, v14, v7

    aput-object v5, v14, v12

    const-string v15, "test"

    aput-object v15, v14, v13

    const/4 v15, 0x3

    aput-object v2, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    aput-object v15, v14, v17

    invoke-virtual {v11, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 373
    .local v11, "moduleProp":Ljava/lang/Process;
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    .line 375
    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v15, "getInputStream(...)"

    if-eqz v14, :cond_4

    .line 376
    :try_start_2
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No module.prop found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not a valid module"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v13, v3}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 378
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    aput-object v6, v3, v7

    aput-object v5, v3, v12

    const-string v2, "ls"

    aput-object v2, v3, v13

    const-string v2, "-la"

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v2, 0x4

    aput-object v8, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 379
    .local v0, "lsProcess":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    instance-of v2, v4, Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v2

    :goto_1
    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "lsOutput":Ljava/lang/String;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Temp directory contents: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    aput-object v5, v4, v12

    aput-object v19, v4, v13

    const/4 v5, 0x3

    aput-object v18, v4, v5

    const/4 v5, 0x4

    aput-object v8, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 382
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 386
    .end local v0    # "lsProcess":Ljava/lang/Process;
    .end local v2    # "lsOutput":Ljava/lang/String;
    :cond_4
    sget-object v14, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v13, "Reading module.prop to get module ID"

    invoke-virtual {v14, v13}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    const/4 v14, 0x4

    new-array v12, v14, [Ljava/lang/String;

    aput-object v6, v12, v7

    const/4 v14, 0x1

    aput-object v5, v12, v14

    const-string v14, "cat"

    const/16 v21, 0x2

    aput-object v14, v12, v21

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x3

    aput-object v0, v12, v14

    invoke-virtual {v13, v12}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 388
    .local v0, "propProcess":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v14, Ljava/io/Reader;

    instance-of v12, v14, Ljava/io/BufferedReader;

    if-eqz v12, :cond_5

    check-cast v14, Ljava/io/BufferedReader;

    goto :goto_2

    :cond_5
    new-instance v12, Ljava/io/BufferedReader;

    const/16 v13, 0x2000

    invoke-direct {v12, v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v14, v12

    :goto_2
    check-cast v14, Ljava/io/Reader;

    invoke-static {v14}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v12

    .line 389
    .local v12, "propContent":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 391
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/lang/Iterable;

    .line 392
    nop

    .local v13, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 1354
    .local v14, "$i$f$firstOrNull":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v20, :cond_7

    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .local v20, "element$iv":Ljava/lang/Object;
    move-object/from16 v22, v20

    check-cast v22, Ljava/lang/String;

    move-object/from16 v23, v22

    .local v23, "it":Ljava/lang/String;
    const/16 v22, 0x0

    .line 392
    .local v22, "$i$a$-firstOrNull-MagiskProvider$installKernelSUModule$moduleId$1":I
    const-string v7, "id="

    move-object/from16 v24, v0

    move-object/from16 v25, v10

    move-object/from16 v0, v23

    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object/from16 v23, v9

    const/4 v9, 0x2

    .end local v9    # "mkdirProcess":Ljava/lang/Process;
    .end local v10    # "extractProcess":Ljava/lang/Process;
    .local v0, "it":Ljava/lang/String;
    .local v23, "mkdirProcess":Ljava/lang/Process;
    .local v24, "propProcess":Ljava/lang/Process;
    .local v25, "extractProcess":Ljava/lang/Process;
    invoke-static {v0, v7, v10, v9, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    .line 1354
    .end local v0    # "it":Ljava/lang/String;
    .end local v22    # "$i$a$-firstOrNull-MagiskProvider$installKernelSUModule$moduleId$1":I
    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v9, v23

    move-object/from16 v0, v24

    move-object/from16 v10, v25

    const/4 v7, 0x0

    goto :goto_3

    .line 427
    .end local v8    # "tempDir":Ljava/lang/String;
    .end local v11    # "moduleProp":Ljava/lang/Process;
    .end local v12    # "propContent":Ljava/lang/String;
    .end local v13    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$firstOrNull":I
    .end local v20    # "element$iv":Ljava/lang/Object;
    .end local v23    # "mkdirProcess":Ljava/lang/Process;
    .end local v24    # "propProcess":Ljava/lang/Process;
    .end local v25    # "extractProcess":Ljava/lang/Process;
    :catch_0
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1355
    .local v0, "propProcess":Ljava/lang/Process;
    .restart local v8    # "tempDir":Ljava/lang/String;
    .restart local v9    # "mkdirProcess":Ljava/lang/Process;
    .restart local v10    # "extractProcess":Ljava/lang/Process;
    .restart local v11    # "moduleProp":Ljava/lang/Process;
    .restart local v12    # "propContent":Ljava/lang/String;
    .restart local v13    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .restart local v14    # "$i$f$firstOrNull":I
    :cond_7
    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    .end local v0    # "propProcess":Ljava/lang/Process;
    .end local v9    # "mkdirProcess":Ljava/lang/Process;
    .end local v10    # "extractProcess":Ljava/lang/Process;
    .restart local v23    # "mkdirProcess":Ljava/lang/Process;
    .restart local v24    # "propProcess":Ljava/lang/Process;
    .restart local v25    # "extractProcess":Ljava/lang/Process;
    const/16 v20, 0x0

    .line 392
    .end local v13    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$firstOrNull":I
    :goto_4
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    .line 393
    if-eqz v0, :cond_8

    .line 392
    nop

    .line 393
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    if-eqz v0, :cond_8

    .line 393
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    nop

    .line 391
    if-eqz v0, :cond_8

    goto :goto_5

    .line 394
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "module_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_5
    nop

    .line 396
    .local v0, "moduleId":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Module ID: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/adb/modules/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "modulePath":Ljava/lang/String;
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating module directory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const/4 v9, 0x5

    new-array v10, v9, [Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, 0x0

    :try_start_4
    aput-object v6, v10, v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v9, 0x1

    :try_start_5
    aput-object v5, v10, v9

    const/4 v9, 0x2

    aput-object v4, v10, v9

    const/4 v4, 0x3

    aput-object v3, v10, v4

    const/4 v3, 0x4

    aput-object v1, v10, v3

    invoke-virtual {v7, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 404
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Copying files from temp directory to module directory"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v4, 0x0

    :try_start_6
    aput-object v6, v7, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v4, 0x1

    :try_start_7
    aput-object v5, v7, v4

    const-string v4, "cp"

    const/4 v9, 0x2

    aput-object v4, v7, v9

    const-string v4, "-r"

    const/4 v9, 0x3

    aput-object v4, v7, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v7, v9

    const/4 v4, 0x5

    aput-object v1, v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 406
    .local v3, "copyProcess":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 408
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-eqz v4, :cond_9

    .line 409
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to copy files to module directory, exit code: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-static {v2, v4, v7, v9, v7}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 410
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v19, v4, v5

    const/4 v5, 0x3

    aput-object v18, v4, v5

    const/4 v5, 0x4

    aput-object v8, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 411
    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 415
    :cond_9
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "Setting permissions on module directory"

    invoke-virtual {v4, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v9, 0x0

    :try_start_8
    aput-object v6, v7, v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v9, 0x1

    :try_start_9
    aput-object v5, v7, v9

    const-string v9, "chmod"

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const-string v9, "-R"

    const/4 v10, 0x3

    aput-object v9, v7, v10

    const-string v9, "755"

    const/4 v10, 0x4

    aput-object v9, v7, v10

    const/4 v9, 0x5

    aput-object v1, v7, v9

    invoke-virtual {v4, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 419
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "Cleaning up temp directory"

    invoke-virtual {v4, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v7, 0x5

    new-array v9, v7, [Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v7, 0x0

    :try_start_a
    aput-object v6, v9, v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v7, 0x1

    :try_start_b
    aput-object v5, v9, v7

    const/4 v7, 0x2

    aput-object v19, v9, v7

    const/4 v7, 0x3

    aput-object v18, v9, v7

    const/4 v7, 0x4

    aput-object v8, v9, v7

    invoke-virtual {v4, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v9, 0x0

    :try_start_c
    aput-object v6, v7, v9

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const/4 v5, 0x2

    aput-object v19, v7, v5

    const/4 v5, 0x3

    aput-object v2, v7, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/disable"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 425
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KernelSU module installed successfully at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 426
    move v7, v6

    .end local v0    # "moduleId":Ljava/lang/String;
    .end local v1    # "modulePath":Ljava/lang/String;
    .end local v3    # "copyProcess":Ljava/lang/Process;
    .end local v8    # "tempDir":Ljava/lang/String;
    .end local v11    # "moduleProp":Ljava/lang/Process;
    .end local v12    # "propContent":Ljava/lang/String;
    .end local v23    # "mkdirProcess":Ljava/lang/Process;
    .end local v24    # "propProcess":Ljava/lang/Process;
    .end local v25    # "extractProcess":Ljava/lang/Process;
    goto :goto_7

    .line 427
    :catch_1
    move-exception v0

    move v9, v4

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move v9, v7

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Failed to install via KernelSU"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    move v7, v9

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 344
    return-object v0
.end method

.method private final installMagiskModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "zipPath"    # Ljava/lang/String;
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

    .line 322
    nop

    .line 323
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "su"

    aput-object v3, v2, v0

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "magisk"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "--install-module"

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v3, 0x4

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 324
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 325
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    .line 327
    .local v2, "exitCode":I
    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v6, "getErrorStream(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v7, Ljava/io/Reader;

    instance-of v3, v7, Ljava/io/BufferedReader;

    if-eqz v3, :cond_0

    check-cast v7, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v3, v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v7, v3

    :goto_0
    check-cast v7, Ljava/io/Reader;

    invoke-static {v7}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "error":Ljava/lang/String;
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Magisk install failed with exit code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v5, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v3    # "error":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    move v0, v4

    goto :goto_1

    .line 333
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "exitCode":I
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to install via Magisk command"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method private final isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1246
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1247
    .local v0, "sourceDir":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1250
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "com.miui."

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 1251
    const-string v2, "com.xiaomi."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1252
    const-string v2, "com.android."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1253
    const-string v2, "android."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1254
    const-string v2, "com.google.android."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1255
    const-string v2, "com.qualcomm."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1256
    const-string v2, "com.mediatek."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1257
    const-string v2, "com.sprd."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    .line 1250
    :goto_1
    nop

    .line 1260
    .local v2, "isMiuiSystemApp":Z
    if-eqz v2, :cond_3

    .line 1261
    return v6

    .line 1266
    :cond_3
    const-string v7, "/data/app/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1267
    return v3

    .line 1271
    :cond_4
    const-string v7, "/system/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1272
    const-string v7, "/vendor/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1273
    const-string v7, "/product/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1274
    const-string v7, "/apex/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1275
    const-string v7, "/oem/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1276
    const-string v7, "/system_ext/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1277
    const-string v7, "/system_root/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1278
    const-string v7, "/data/app-private/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1279
    const-string v7, "/data/app-asec/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v3, v6

    .line 1271
    :cond_6
    nop

    .line 1281
    .local v3, "isSystemPath":Z
    return v3
.end method

.method private final parseLogLine(Ljava/lang/String;I)Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1152
    nop

    .line 1153
    nop

    .line 1154
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, " E "

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->ERROR:Lcom/pandasu/turbo/data/magisk/LogLevel;

    goto :goto_0

    .line 1155
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, " W "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->WARNING:Lcom/pandasu/turbo/data/magisk/LogLevel;

    goto :goto_0

    .line 1156
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, " I "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

    goto :goto_0

    .line 1157
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, " D "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->DEBUG:Lcom/pandasu/turbo/data/magisk/LogLevel;

    goto :goto_0

    .line 1158
    :cond_3
    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1153
    :goto_0
    nop

    .line 1162
    .local v0, "level":Lcom/pandasu/turbo/data/magisk/LogLevel;
    nop

    .line 1163
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "): "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 1164
    .local v1, "messageStart":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1165
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1167
    :cond_4
    move-object v2, p1

    .end local v1    # "messageStart":I
    :goto_1
    goto :goto_2

    .line 1169
    :catch_0
    move-exception v1

    .line 1170
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, p1

    .line 1162
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v1, v2

    .line 1173
    .local v1, "message":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    .line 1174
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1175
    nop

    .line 1176
    nop

    .line 1177
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->extractTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1173
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/pandasu/turbo/data/magisk/MagiskLog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "level":Lcom/pandasu/turbo/data/magisk/LogLevel;
    .end local v1    # "message":Ljava/lang/String;
    goto :goto_3

    .line 1179
    :catch_1
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    .line 1182
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1183
    const/16 v3, 0x1f4

    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1184
    sget-object v4, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1185
    sget-object v5, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/pandasu/turbo/data/magisk/MagiskLog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V

    .line 1152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v2
.end method

.method private final parseModuleProp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/pandasu/turbo/data/magisk/MagiskModule;
    .locals 19
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "moduleId"    # Ljava/lang/String;
    .param p3, "isEnabled"    # Z

    .line 231
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 232
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1345
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1346
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "="

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 232
    .local v10, "$i$a$-filter-MagiskProvider$parseModuleProp$props$1":I
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v11, v7, v8, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    .line 1346
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-filter-MagiskProvider$parseModuleProp$props$1":I
    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1347
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 1345
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 233
    move-object v0, v2

    .local v0, "$this$associate$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1348
    .local v1, "$i$f$associate":I
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1349
    .local v2, "capacity$iv":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1350
    .local v5, "$i$f$associateTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1351
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 234
    .local v12, "$i$a$-associate-MagiskProvider$parseModuleProp$props$2":I
    move-object v13, v11

    check-cast v13, Ljava/lang/CharSequence;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 235
    .local v13, "parts":Ljava/util/List;
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_3

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    move-object v10, v15

    :cond_3
    :goto_2
    invoke-static {v14, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 1351
    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-associate-MagiskProvider$parseModuleProp$props$2":I
    .end local v13    # "parts":Ljava/util/List;
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1353
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .line 1349
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateTo":I
    nop

    .line 233
    .end local v0    # "$this$associate$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$associate":I
    .end local v2    # "capacity$iv":I
    nop

    .line 231
    move-object v0, v3

    .line 238
    .local v0, "props":Ljava/util/Map;
    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskModule;

    .line 239
    nop

    .line 240
    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v13, p2

    goto :goto_3

    :cond_5
    move-object v13, v2

    .line 241
    :goto_3
    const-string v2, "version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Unknown"

    if-nez v2, :cond_6

    move-object v14, v3

    goto :goto_4

    :cond_6
    move-object v14, v2

    .line 242
    :goto_4
    const-string v2, "versionCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_7
    move v15, v8

    .line 243
    const-string v2, "author"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    move-object/from16 v16, v3

    goto :goto_5

    :cond_8
    move-object/from16 v16, v2

    .line 244
    :goto_5
    const-string v2, "description"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    move-object/from16 v17, v10

    goto :goto_6

    :cond_9
    move-object/from16 v17, v2

    .line 245
    :goto_6
    nop

    .line 238
    move-object v11, v1

    move-object/from16 v12, p2

    move/from16 v18, p3

    invoke-direct/range {v11 .. v18}, Lcom/pandasu/turbo/data/magisk/MagiskModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method private final readModuleInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "moduleId"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskModule;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 201
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$readModuleInfo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$readModuleInfo$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    return-object v0
.end method

.method public static synthetic reboot$default(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1216
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->reboot(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 1198
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$clearLogs$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$clearLogs$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1211
    return-object v0
.end method

.method public final getAllInstalledApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 636
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 970
    return-object v0
.end method

.method public final getAppPolicies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/AppPolicy;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 437
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 630
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 83
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1097
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1145
    return-object v0
.end method

.method public final getMagiskVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskVersion;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 147
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getMagiskVersion$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getMagiskVersion$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public final getModules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/MagiskModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method public final installModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "zipPath"    # Ljava/lang/String;
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

    .line 293
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public final isMagiskInstalled()Z
    .locals 3

    .line 71
    nop

    .line 72
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.topjohnwu.magisk"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public final reboot(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
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

    .line 1216
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$reboot$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$reboot$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1230
    return-object v0
.end method

.method public final setAppPolicy(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 978
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 1092
    return-object v0
.end method

.method public final toggleModule(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "moduleId"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 252
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;-><init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method public final uninstallModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "moduleId"    # Ljava/lang/String;
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

    .line 275
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$uninstallModule$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$uninstallModule$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    return-object v0
.end method
