.class public final Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/XposedEntry;->hookAddService(Ljava/lang/ClassLoader;)V
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
        "com/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "beforeHookedMethod",
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

.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/XposedEntry;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/XposedEntry;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "$receiver"    # Lcom/pandasu/turbo/lspoed/XposedEntry;
    .param p2, "$classLoader"    # Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;->this$0:Lcom/pandasu/turbo/lspoed/XposedEntry;

    iput-object p2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;->$classLoader:Ljava/lang/ClassLoader;

    .line 152
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 13
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v1, "args"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    check-cast v0, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object v0, v3

    :goto_1a
    if-nez v0, :cond_1d

    return-void

    .line 155
    .local v0, "name":Ljava/lang/String;
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addService called: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/pandasu/turbo/lspoed/XposedEntryKt;->logD(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logD(Ljava/lang/String;)V

    .line 157
    const-string v2, "package"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "package_native"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 158
    :cond_43
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_54

    move-object v3, v1

    check-cast v3, Landroid/os/IBinder;

    :cond_54
    move-object v1, v3

    .line 159
    .local v1, "service":Landroid/os/IBinder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/pandasu/turbo/lspoed/XposedEntryKt;->logI(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;->this$0:Lcom/pandasu/turbo/lspoed/XposedEntry;

    # getter for: Lcom/pandasu/turbo/lspoed/XposedEntry;->hmaStarted:Z
    invoke-static {v2}, Lcom/pandasu/turbo/lspoed/XposedEntry;->access$getHmaStarted$p(Lcom/pandasu/turbo/lspoed/XposedEntry;)Z

    move-result v2

    if-eqz v2, :cond_85

    sget-object v2, Lcom/pandasu/turbo/lspoed/HMAService;->Companion:Lcom/pandasu/turbo/lspoed/HMAService$Companion;

    invoke-virtual {v2}, Lcom/pandasu/turbo/lspoed/HMAService$Companion;->getInstance()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v2

    if-nez v2, :cond_9a

    .line 162
    :cond_85
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v2, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;

    iget-object v8, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;->$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v1, v8, v0}, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;-><init>(Landroid/os/IBinder;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 172
    .end local v1    # "service":Landroid/os/IBinder;
    :cond_9a
    return-void
.end method
