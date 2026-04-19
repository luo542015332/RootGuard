.class final Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlatformCompatHook.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$2;->this$0:Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 44
    move-object v0, p1

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$2;->invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "PandaSU-PlatformCompatHook"

    const-string v1, "param"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$2;->this$0:Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .local v1, "$this$invoke_u24lambda_u240":Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-runCatching-PlatformCompatHook$load$2$1":I
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 47
    .local v3, "changeId":J
    const-wide/32 v5, 0x89450c5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    instance-of v7, v5, Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    return-void

    .line 50
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 53
    .local v7, "app":Ljava/lang/String;
    const-string v8, "com.pandasu.turbo"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->access$getService$p(Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;)Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pandasu/turbo/lspoed/HMAService;->getSystemApps()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->access$getService$p(Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;)Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/pandasu/turbo/lspoed/HMAService;->isHookEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 57
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 58
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force mount data isolation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PandaSU] Force data isolation: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 61
    :cond_4
    nop

    .end local v1    # "$this$invoke_u24lambda_u240":Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;
    .end local v2    # "$i$a$-runCatching-PlatformCompatHook$load$2$1":I
    .end local v3    # "changeId":J
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "app":Ljava/lang/String;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 53
    .restart local v1    # "$this$invoke_u24lambda_u240":Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;
    .restart local v2    # "$i$a$-runCatching-PlatformCompatHook$load$2$1":I
    .restart local v3    # "changeId":J
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "app":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 45
    .end local v1    # "$this$invoke_u24lambda_u240":Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;
    .end local v2    # "$i$a$-runCatching-PlatformCompatHook$load$2$1":I
    .end local v3    # "changeId":J
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "app":Ljava/lang/String;
    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$-onFailure-PlatformCompatHook$load$2$2":I
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in PlatformCompatHook: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    .line 61
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-PlatformCompatHook$load$2$2":I
    nop

    .line 64
    :cond_6
    return-void
.end method
