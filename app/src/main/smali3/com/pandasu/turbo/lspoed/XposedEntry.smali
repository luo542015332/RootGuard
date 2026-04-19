.class public final Lcom/pandasu/turbo/lspoed/XposedEntry;
.super Ljava/lang/Object;
.source "XposedEntry.kt"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/XposedEntry;",
        "Lde/robv/android/xposed/IXposedHookZygoteInit;",
        "Lde/robv/android/xposed/IXposedHookLoadPackage;",
        "()V",
        "hmaStarted",
        "",
        "handleLoadPackage",
        "",
        "lpparam",
        "Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;",
        "hookAddService",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "hookPackageManagerService",
        "initZygote",
        "startupParam",
        "Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;",
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


# instance fields
.field private hmaStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static final synthetic access$getHmaStarted$p(Lcom/pandasu/turbo/lspoed/XposedEntry;)Z
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/lspoed/XposedEntry;

    .line 22
    iget-boolean v0, p0, Lcom/pandasu/turbo/lspoed/XposedEntry;->hmaStarted:Z

    return v0
.end method

.method private final hookAddService(Ljava/lang/ClassLoader;)V
    .locals 10
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 152
    const-string v0, "addService"

    const-string v1, "android.os.ServiceManager"

    new-instance v2, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;-><init>(Lcom/pandasu/turbo/lspoed/XposedEntry;Ljava/lang/ClassLoader;)V

    .line 175
    .local v2, "hookCallback":Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;
    nop

    .line 178
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 179
    nop

    .line 180
    nop

    .line 181
    const/4 v8, 0x5

    :try_start_0
    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    .line 185
    aput-object v2, v8, v3

    .line 181
    nop

    .line 177
    invoke-static {v1, p1, v0, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 187
    const-string v8, "ServiceManager hook (4 args) installed"

    invoke-static {v8}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v8

    .line 189
    .local v8, "e1":Ljava/lang/Throwable;
    const-string v9, "4-arg hook failed, trying 3-arg"

    invoke-static {v9}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logD(Ljava/lang/String;)V

    .line 190
    nop

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v7

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v3, v6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v5

    .line 199
    aput-object v2, v3, v4

    .line 196
    nop

    .line 192
    invoke-static {v1, p1, v0, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 201
    const-string v3, "ServiceManager hook (3 args) installed"

    invoke-static {v3}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 202
    :catchall_1
    move-exception v3

    .line 203
    .local v3, "e2":Ljava/lang/Throwable;
    const-string v9, "3-arg hook failed, trying 2-arg"

    invoke-static {v9}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logD(Ljava/lang/String;)V

    .line 204
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v4, v7

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v4, v6

    .line 212
    aput-object v2, v4, v5

    .line 210
    nop

    .line 206
    invoke-static {v1, p1, v0, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 214
    const-string v0, "ServiceManager hook (2 args) installed"

    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 215
    :catchall_2
    move-exception v0

    .line 216
    .local v0, "e3":Ljava/lang/Throwable;
    const-string v1, "All addService hooks failed"

    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v0    # "e3":Ljava/lang/Throwable;
    .end local v3    # "e2":Ljava/lang/Throwable;
    .end local v8    # "e1":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private final hookPackageManagerService(Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 84
    nop

    .line 87
    :try_start_0
    const-string v0, "com.android.server.pm.PackageManagerService"

    .line 88
    nop

    .line 86
    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    .local v0, "pmsClass":Ljava/lang/Class;
    nop

    .line 93
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "systemReady"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    .local v2, "systemReadyMethod":Ljava/lang/reflect/Method;
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Member;

    new-instance v4, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1;

    invoke-direct {v4, p1}, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1;-><init>(Ljava/lang/ClassLoader;)V

    check-cast v4, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 115
    const-string v3, "Hooked PMS.systemReady"

    invoke-static {v3}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    return-void

    .line 117
    .end local v2    # "systemReadyMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "systemReady not found or hook failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    .end local v2    # "e":Ljava/lang/Throwable;
    nop

    .line 123
    :try_start_3
    const-string v2, "initFirstStep"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    .local v1, "initMethod":Ljava/lang/reflect/Method;
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Member;

    new-instance v3, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$2;

    invoke-direct {v3, p1}, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$2;-><init>(Ljava/lang/ClassLoader;)V

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 140
    const-string v2, "Hooked PMS.initFirstStep"

    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    return-void

    .line 142
    .end local v1    # "initMethod":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFirstStep not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logD(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "pmsClass":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 146
    :catchall_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Failed to hook PackageManagerService"

    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 10
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    const-string v0, "classLoader"

    const-string v1, "lpparam"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry;->hmaStarted:Z

    if-nez v1, :cond_1

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry;->hmaStarted:Z

    .line 45
    const-string v1, "========================================"

    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 46
    const-string v2, "PandaSU - Hooking system_server!"

    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 50
    nop

    .line 51
    :try_start_0
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;

    invoke-virtual {v1, p1}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->initHandleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 52
    const-string v1, "EzXHelper initHandleLoadPackage success"

    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "EzXHelper initHandleLoadPackage failed"

    invoke-static {v2, v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 59
    :try_start_1
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 60
    .local v1, "pms":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got PMS directly: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;

    invoke-direct {v0, v1, p1}, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;-><init>(Landroid/os/IBinder;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 66
    return-void

    .line 70
    :cond_0
    const-string v2, "PMS not ready yet, hooking PMS constructor..."

    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 71
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/pandasu/turbo/lspoed/XposedEntry;->hookPackageManagerService(Ljava/lang/ClassLoader;)V

    .line 74
    const-string v2, "Installing addService hook..."

    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 75
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/pandasu/turbo/lspoed/XposedEntry;->hookAddService(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "pms":Landroid/os/IBinder;
    goto :goto_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Failed to initialize HMAService"

    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 2
    .param p1, "startupParam"    # Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    const-string v0, "startupParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v0, "========================================"

    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 29
    const-string v1, "PandaSU v3.0.35 - initZygote CALLED!"

    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    :try_start_0
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V

    .line 35
    const-string v0, "EzXHelper initialized successfully"

    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Failed to initialize EzXHelper"

    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
