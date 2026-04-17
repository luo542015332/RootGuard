.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->installModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$installModule$2"
    f = "MagiskProvider.kt"
    i = {}
    l = {
        0x12a,
        0x12e,
        0x12f,
        0x132
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $zipPath:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_138

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto/16 :goto_e5

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1a
    move-object v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto/16 :goto_c5

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_21
    move-object v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_28

    move-object v1, p1

    goto/16 :goto_9e

    .line 312
    :catch_28
    move-exception v1

    goto/16 :goto_110

    .line 293
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2b
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_32

    move-object v4, v1

    move-object v1, p1

    goto :goto_69

    .line 312
    :catch_32
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_110

    .line 293
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 294
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 295
    :try_start_3d
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installing module from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 298
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$detectRootType(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_62} :catch_32

    if-ne v4, v0, :cond_65

    .line 293
    return-object v0

    .line 298
    :cond_65
    move-object v8, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v8

    .line 293
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :goto_69
    :try_start_69
    check-cast p1, Ljava/lang/String;

    .line 299
    .local p1, "rootType":Ljava/lang/String;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected root type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 301
    nop

    .line 302
    .end local p1    # "rootType":Ljava/lang/String;
    const-string v5, "kernelsu"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    iget-object v5, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->installKernelSUModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v5, v6}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$installKernelSUModule(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_9a} :catch_10b

    if-ne p1, v0, :cond_9d

    .line 293
    return-object v0

    .line 302
    :cond_9d
    move-object v0, v4

    .end local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :goto_9e
    :try_start_9e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a4} :catch_a5

    goto :goto_eb

    .line 312
    :catch_a5
    move-exception p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto/16 :goto_110

    .line 303
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :cond_ab
    :try_start_ab
    const-string v5, "magisk"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cc

    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    iget-object v5, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x3

    iput v7, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->installMagiskModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v5, v6}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$installMagiskModule(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c1} :catch_10b

    if-ne p1, v0, :cond_c4

    .line 293
    return-object v0

    .line 303
    :cond_c4
    move-object v0, v4

    .end local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :goto_c5
    :try_start_c5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cb} :catch_a5

    goto :goto_eb

    .line 305
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :cond_cc
    :try_start_cc
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "Unknown root type, trying Magisk installation"

    invoke-virtual {p1, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 306
    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    iget-object v5, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x4

    iput v7, v4, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->installMagiskModule(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v5, v6}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$installMagiskModule(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e1} :catch_10b

    if-ne p1, v0, :cond_e4

    .line 293
    return-object v0

    .line 306
    :cond_e4
    move-object v0, v4

    .end local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :goto_e5
    :try_start_e5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 301
    :goto_eb
    nop

    .line 310
    .local p1, "success":Z
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz p1, :cond_f2

    move v5, v2

    goto :goto_f3

    :cond_f2
    move v5, v3

    :goto_f3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Module installation result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_109} :catch_a5

    .line 311
    nop

    .end local p1    # "success":Z
    goto :goto_12f

    .line 312
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    :catch_10b
    move-exception p1

    move-object v0, v4

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    .line 313
    .end local v4    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;
    .local v1, "e":Ljava/lang/Exception;
    .local p1, "$result":Ljava/lang/Object;
    :goto_110
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$installModule$2;->$zipPath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    move-object v1, p1

    move p1, v3

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_12f
    if-eqz p1, :cond_132

    goto :goto_133

    :cond_132
    move v2, v3

    :goto_133
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 294
    return-object p1

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2b
        :pswitch_21
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method
