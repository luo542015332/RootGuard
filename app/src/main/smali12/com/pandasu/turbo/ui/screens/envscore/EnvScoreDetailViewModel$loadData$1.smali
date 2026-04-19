.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnvScoreDetailViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailViewModel$loadData$1"
    f = "EnvScoreDetailViewModel.kt"
    i = {}
    l = {
        0x3a,
        0x3d,
        0x3f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->label:I

    const-string v2, "EnvScoreDetailViewModel: \u8bbe\u7f6e isLoading = false"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_2

    .line 69
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 65
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 54
    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/MutableStateFlow;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_1

    .line 69
    :catchall_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_5

    .line 65
    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_3

    .line 54
    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 55
    .restart local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 56
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "EnvScoreDetailViewModel: \u8bbe\u7f6e isLoading = true"

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 58
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v5, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->label:I

    const-wide/16 v5, 0x190

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 54
    return-object v0

    .line 59
    :cond_0
    :goto_0
    nop

    .line 60
    :try_start_2
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "EnvScoreDetailViewModel: \u5f00\u59cb\u6267\u884c\u73af\u5883\u68c0\u6d4b"

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 61
    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_envChecks$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iget-object v5, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->label:I

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->runEnvironmentCheckDetail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v0, :cond_1

    .line 54
    return-object v0

    .line 61
    :cond_1
    move-object v8, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v8

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    :goto_1
    :try_start_3
    invoke-interface {v5, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 62
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v4, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_envChecks$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnvScoreDetailViewModel: \u68c0\u6d4b\u5b8c\u6210\uff0cenvChecks = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 63
    iget-object p1, v4, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {p1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_moduleStatuses$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object v5, v4, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, v4, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v4, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->label:I

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->detectModules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v5, v0, :cond_2

    .line 54
    return-object v0

    .line 63
    :cond_2
    move-object v0, v4

    move-object v4, p1

    move-object p1, v5

    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .restart local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    :goto_2
    :try_start_4
    invoke-interface {v4, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 64
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_moduleStatuses$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnvScoreDetailViewModel: \u6a21\u5757\u68c0\u6d4b\u5b8c\u6210\uff0cmoduleStatuses = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 69
    iget-object p1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {p1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 70
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {p1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 71
    goto :goto_4

    .line 69
    :catchall_2
    move-exception p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_5

    .line 65
    :catch_2
    move-exception p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_3

    .line 69
    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .restart local v4    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    :catchall_3
    move-exception p1

    move-object v0, v4

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_5

    .line 65
    :catch_3
    move-exception p1

    move-object v0, v4

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    .line 66
    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .restart local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_3
    :try_start_5
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "EnvScoreDetailViewModel: \u68c0\u6d4b\u5f02\u5e38"

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 71
    move-object v1, p1

    .line 72
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 69
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_5
    iget-object v4, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 70
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v3, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
