.class public final Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;
.super Ljava/lang/Object;
.source "AppDataIsolationHook.kt"

# interfaces
.implements Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppDataIsolationHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppDataIsolationHook.kt\ncom/pandasu/turbo/lspoed/hook/AppDataIsolationHook\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n1#2:173\n1855#3,2:174\n*S KotlinDebug\n*F\n+ 1 AppDataIsolationHook.kt\ncom/pandasu/turbo/lspoed/hook/AppDataIsolationHook\n*L\n161#1:174,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cH\u0082\u0008\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016R\u0018\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u00060\u0007R\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;",
        "Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "hooks",
        "",
        "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "binderLocalScope",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "load",
        "",
        "unload",
        "Companion",
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
.field private static final APPDATA_ISOLATION_ENABLED:Ljava/lang/String; = "mAppDataIsolationEnabled"

.field public static final Companion:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$Companion;

.field private static final FUSE_PROP:Ljava/lang/String; = "persist.sys.fuse"

.field private static final PROCESS_LIST_CLASS:Ljava/lang/String; = "com.android.server.am.ProcessList"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService"

.field private static final VOLD_APPDATA_ISOLATION_ENABLED:Ljava/lang/String; = "mVoldAppDataIsolationEnabled"


# instance fields
.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lcom/pandasu/turbo/lspoed/HMAService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->Companion:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .locals 1
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static final synthetic access$getService$p(Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;)Lcom/pandasu/turbo/lspoed/HMAService;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;

    .line 28
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    return-object v0
.end method

.method private final binderLocalScope(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    .local v0, "$i$f$binderLocalScope":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 167
    .local v1, "identity":J
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    .line 168
    .local v3, "result":Ljava/lang/Object;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    return-object v3
.end method


# virtual methods
.method public load()V
    .locals 11

    .line 43
    const-string v0, "Loading AppDataIsolationHook..."

    const-string v1, "PandaSU-AppDataIsolationHook"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "[PandaSU] Loading AppDataIsolationHook..."

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    invoke-virtual {v0}, Lcom/pandasu/turbo/lspoed/HMAService;->getConfig()Lcom/pandasu/turbo/lspoed/HMAService$Config;

    move-result-object v0

    .line 49
    .local v0, "config":Lcom/pandasu/turbo/lspoed/HMAService$Config;
    const-string v2, "persist.sys.fuse"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 50
    .local v2, "fuseEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FUSE enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PandaSU] FUSE enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    :try_start_0
    const-string v4, "com.android.server.am.ProcessList"

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v3, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$startProcessMethod$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$startProcessMethod$1;

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->findMethodOrNull$default(Ljava/lang/String;Ljava/lang/ClassLoader;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    .local v3, "startProcessMethod":Ljava/lang/reflect/Method;
    if-nez v3, :cond_0

    .line 60
    const-string v4, "startProcess method not found in ProcessList"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v4, "[PandaSU] startProcess method not found in ProcessList"

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    const-string v4, "Found startProcess method, hooking..."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v4, "[PandaSU] Found startProcess method, hooking..."

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 66
    new-instance v4, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$1;

    invoke-direct {v4, v0}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$1;-><init>(Lcom/pandasu/turbo/lspoed/HMAService$Config;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt;->hookBefore(Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    .line 89
    nop

    .line 173
    .local v4, "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    const/4 v5, 0x0

    .line 89
    .local v5, "$i$a$-let-AppDataIsolationHook$load$2":I
    iget-object v6, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .end local v5    # "$i$a$-let-AppDataIsolationHook$load$2":I
    goto :goto_0

    .line 91
    .end local v3    # "startProcessMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to hook startProcess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PandaSU] Failed to hook startProcess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 97
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 98
    :try_start_1
    const-string v5, "com.android.server.am.ProcessList"

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v3, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$needsIsolationMethod$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$needsIsolationMethod$1;

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->findMethodOrNull$default(Ljava/lang/String;Ljava/lang/ClassLoader;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 102
    .local v3, "needsIsolationMethod":Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 103
    const-string v4, "needsStorageDataIsolation method not found"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v4, "[PandaSU] needsStorageDataIsolation method not found"

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_1
    const-string v4, "Found needsStorageDataIsolation method, hooking..."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v4, "[PandaSU] Found needsStorageDataIsolation method, hooking..."

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 109
    new-instance v4, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;

    invoke-direct {v4, p0, v0}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;-><init>(Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;Lcom/pandasu/turbo/lspoed/HMAService$Config;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt;->hookAfter(Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    .line 150
    nop

    .line 173
    .restart local v4    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    const/4 v5, 0x0

    .line 150
    .local v5, "$i$a$-let-AppDataIsolationHook$load$4":I
    iget-object v6, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .end local v5    # "$i$a$-let-AppDataIsolationHook$load$4":I
    goto :goto_1

    .line 152
    .end local v3    # "needsIsolationMethod":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to hook needsStorageDataIsolation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v3, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppDataIsolationHook loaded with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hooks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PandaSU] AppDataIsolationHook loaded with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public unload()V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 174
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .local v4, "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    const/4 v5, 0x0

    .line 161
    .local v5, "$i$a$-forEach-AppDataIsolationHook$unload$1":I
    invoke-virtual {v4}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 174
    .end local v4    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .end local v5    # "$i$a$-forEach-AppDataIsolationHook$unload$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 175
    :cond_0
    nop

    .line 162
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->hooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    return-void
.end method
