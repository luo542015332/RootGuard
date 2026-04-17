.class final Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->isPandaSUZygiskModuleEnabled(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.magisk.RootHider$isPandaSUZygiskModuleEnabled$2"
    f = "RootHider.kt"
    i = {
        0x0
    }
    l = {
        0x49f
    }
    m = "invokeSuspend"
    n = {
        "moduleSoPath"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1178
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_bc

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "moduleSoPath":Ljava/lang/String;
    :try_start_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1f

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_71

    .line 1187
    .end local v1    # "moduleSoPath":Ljava/lang/String;
    :catch_1f
    move-exception v1

    goto/16 :goto_b0

    .line 1178
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 1179
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 1181
    :try_start_27
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    # getter for: Lcom/pandasu/turbo/data/magisk/RootHider;->PANDASU_ZYGISK_MODULE_ID:Ljava/lang/String;
    invoke-static {v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getPANDASU_ZYGISK_MODULE_ID$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/adb/modules/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/zygisk/arm64-v8a.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1183
    .local v4, "moduleSoPath":Ljava/lang/String;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ -f \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" ] && echo \"EXISTS\" || echo \"NOT_EXISTS\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->L$0:Ljava/lang/Object;

    iput v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v5, v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6c} :catch_ae

    if-ne v5, v0, :cond_6f

    .line 1178
    return-object v0

    .line 1183
    :cond_6f
    move-object v0, p1

    move-object p1, v5

    .line 1178
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_71
    :try_start_71
    check-cast p1, Ljava/lang/String;

    .line 1184
    .local p1, "result":Ljava/lang/String;
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "EXISTS"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    move p1, v5

    .line 1185
    .local p1, "exists":Z
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz p1, :cond_87

    move v6, v2

    goto :goto_88

    .end local v4    # "moduleSoPath":Ljava/lang/String;
    :cond_87
    move v6, v3

    :goto_88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PandaSU Zygisk \u6a21\u5757\u68c0\u6d4b: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a8} :catch_aa

    .line 1186
    nop

    .end local p1    # "exists":Z
    goto :goto_b3

    .line 1187
    :catch_aa
    move-exception p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_b0

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catch_ae
    move-exception v0

    move-object v0, v1

    .line 1188
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
    :goto_b0
    move-object v1, v0

    move-object v0, p1

    move p1, v3

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isPandaSUZygiskModuleEnabled$2;
    :goto_b3
    if-eqz p1, :cond_b6

    goto :goto_b7

    :cond_b6
    move v2, v3

    :goto_b7
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1179
    return-object p1

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_22
        :pswitch_13
    .end packed-switch
.end method
