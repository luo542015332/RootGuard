.class final Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KernelSUService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/kernelsu/KernelSUService;->isPackageInstalled(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.pandasu.turbo.data.kernelsu.KernelSUService$isPackageInstalled$2"
    f = "KernelSUService.kt"
    i = {}
    l = {
        0x6e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/kernelsu/KernelSUService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/kernelsu/KernelSUService;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/kernelsu/KernelSUService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->this$0:Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->this$0:Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/kernelsu/KernelSUService;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_98

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1a

    move-object v1, v0

    move-object v0, p1

    goto :goto_47

    .line 112
    :catch_1a
    move-exception v1

    goto/16 :goto_74

    .line 107
    .end local v0    # "this":Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 108
    .local v1, "this":Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 109
    :try_start_22
    iget-object v4, v1, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pm path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "command":Ljava/lang/String;
    iget-object v5, v1, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->this$0:Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->label:I

    invoke-virtual {v5, v4, v6}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService;->executeCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_42} :catch_70

    .end local v4    # "command":Ljava/lang/String;
    if-ne v5, v0, :cond_45

    .line 107
    return-object v0

    .line 110
    :cond_45
    move-object v0, p1

    move-object p1, v5

    .line 107
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_47
    :try_start_47
    check-cast p1, Ljava/lang/String;

    .line 111
    .local p1, "output":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_54

    move v4, v2

    goto :goto_55

    :cond_54
    move v4, v3

    :goto_55
    if-eqz v4, :cond_67

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "Error:"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_64} :catch_6a

    if-nez v4, :cond_67

    goto :goto_68

    .end local p1    # "output":Ljava/lang/String;
    :cond_67
    move v2, v3

    :goto_68
    move v3, v2

    goto :goto_93

    .line 112
    :catch_6a
    move-exception p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v8

    goto :goto_74

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catch_70
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 113
    .local v0, "this":Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;
    .local v1, "e":Ljava/lang/Exception;
    :goto_74
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    move-object v1, v0

    move-object v0, p1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/pandasu/turbo/data/kernelsu/KernelSUService$isPackageInstalled$2;
    :goto_93
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 108
    return-object p1

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_13
    .end packed-switch
.end method
