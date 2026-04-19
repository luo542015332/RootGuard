.class public final Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/XposedEntry;->hookPackageManagerService(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "afterHookedMethod",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
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
.field final synthetic $classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "$classLoader"    # Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1;->$classLoader:Ljava/lang/ClassLoader;

    .line 94
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 11
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-string v0, "PackageManagerService.systemReady called"

    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 97
    nop

    .line 99
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 100
    .local v0, "pmsInstance":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got PMS instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 103
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 104
    .local v1, "pmsBinder":Landroid/os/IBinder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got PMS binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v2, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1$afterHookedMethod$1;

    iget-object v8, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1;->$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v0, v1, v8}, Lcom/pandasu/turbo/lspoed/XposedEntry$hookPackageManagerService$1$afterHookedMethod$1;-><init>(Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/ClassLoader;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 110
    .end local v0    # "pmsInstance":Ljava/lang/Object;
    .end local v1    # "pmsBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Failed to get PMS after systemReady"

    invoke-static {v1, v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
