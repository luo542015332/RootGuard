.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnvScoreDetailViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->scanDetectors()V
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
    c = "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailViewModel$scanDetectors$1"
    f = "EnvScoreDetailViewModel.kt"
    i = {}
    l = {
        0x8d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 137
    iget v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 144
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 137
    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 138
    .local v1, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isScanning$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 139
    nop

    .line 140
    :try_start_1
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "\u5f00\u59cb\u626b\u63cf\u68c0\u6d4b\u5668..."

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 141
    iget-object v3, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getDetectorScanner$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/util/DetectorScanner;

    move-result-object v3

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->label:I

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/util/DetectorScanner;->scanDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v3, v0, :cond_0

    .line 137
    return-object v0

    .line 141
    :cond_0
    move-object v0, p1

    move-object p1, v3

    .line 137
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Ljava/util/List;

    .line 142
    .local p1, "results":Ljava/util/List;
    iget-object v3, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_detectorResults$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 143
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u68c0\u6d4b\u5668\u626b\u63cf\u5b8c\u6210\uff0c\u53d1\u73b0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e2a\u53ef\u7591\u5e94\u7528"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    .end local p1    # "results":Ljava/util/List;
    iget-object p1, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {p1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isScanning$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 149
    goto :goto_2

    .line 148
    :catchall_1
    move-exception p1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_3

    .line 144
    :catch_1
    move-exception p1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_1

    .line 148
    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 144
    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 145
    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b\u5668\u626b\u63cf\u5931\u8d25"

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_message$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u626b\u63cf\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isScanning$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 149
    move-object v1, v0

    move-object v0, p1

    .line 150
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 148
    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_3
    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isScanning$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
