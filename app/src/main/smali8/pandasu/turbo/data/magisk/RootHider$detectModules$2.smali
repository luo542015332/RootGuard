.class final Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->detectModules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$detectModules$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1705:1\n1#2:1706\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
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
    c = "com.pandasu.turbo.data.magisk.RootHider$detectModules$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4,
        0x5,
        0x6,
        0x7
    }
    l = {
        0x100,
        0x106,
        0x106,
        0x10c,
        0x112,
        0x112,
        0x118,
        0x118
    }
    m = "invokeSuspend"
    n = {
        "modules",
        "modules",
        "modules",
        "modules",
        "modules",
        "modules",
        "modules",
        "modules"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 251
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_218

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .local v4, "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_1d3

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v4    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_23
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .local v5, "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_1b3

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_35
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .restart local v5    # "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_188

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_46
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .restart local v5    # "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_16b

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_57
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .restart local v5    # "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_141

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_69
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .restart local v5    # "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_107

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_7a
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .restart local v5    # "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v1

    move-object v1, p1

    goto :goto_ea

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_8a
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .restart local v5    # "modules":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto :goto_c0

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .end local v5    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_9b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 252
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 255
    .restart local v4    # "modules":Ljava/util/List;
    nop

    .line 256
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    iput v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v7, "/data/adb/modules/zygisk_shamiko"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v5, v7, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_bb

    .line 251
    return-object v0

    .line 256
    :cond_bb
    move-object v6, v4

    move-object v4, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v6

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .local v6, "modules":Ljava/util/List;
    :goto_c0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 257
    nop

    .line 255
    new-instance v7, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    const-string v8, "Shamiko"

    const-string v9, "Zygisk \u7ea7 Root/\u6a21\u5757\u9690\u85cf"

    invoke-direct {v7, p1, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    nop

    .line 262
    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v5, v4

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v7, "/data/adb/tricky_store"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v7, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e9

    .line 251
    return-object v0

    .line 262
    :cond_e9
    move-object v5, v6

    .end local v6    # "modules":Ljava/util/List;
    .restart local v5    # "modules":Ljava/util/List;
    :goto_ea
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_115

    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v8, "/data/adb/modules/tricky_store"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v8, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_107

    .line 251
    return-object v0

    .line 262
    :cond_107
    :goto_107
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_110

    goto :goto_115

    :cond_110
    move-object p1, v1

    move-object v1, v4

    move-object v4, v5

    move v5, v2

    goto :goto_119

    :cond_115
    :goto_115
    move-object p1, v1

    move-object v1, v4

    move-object v4, v5

    move v5, v3

    .line 263
    .end local v5    # "modules":Ljava/util/List;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .local v4, "modules":Ljava/util/List;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_119
    nop

    .line 261
    new-instance v7, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    const-string v8, "Tricky Store"

    const-string v9, "\u8bbe\u5907\u6307\u7eb9\u4f2a\u9020\u7ed5\u8fc7\u68c0\u6d4b"

    invoke-direct {v7, v5, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    nop

    .line 268
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v7, "/data/adb/modules/playintegrityfix"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v5, v7, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_13c

    .line 251
    return-object v0

    .line 268
    :cond_13c
    move-object v6, v4

    move-object v4, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v6

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local v6    # "modules":Ljava/util/List;
    :goto_141
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 269
    nop

    .line 267
    new-instance v7, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    const-string v8, "PlayIntegrityFix"

    const-string v9, "Google \u8bbe\u5907\u5b8c\u6574\u6027\u4fee\u590d"

    invoke-direct {v7, p1, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    nop

    .line 274
    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v5, v4

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v7, "/data/adb/modules/zygisk"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v7, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_16a

    .line 251
    return-object v0

    .line 274
    :cond_16a
    move-object v5, v6

    .end local v6    # "modules":Ljava/util/List;
    .restart local v5    # "modules":Ljava/util/List;
    :goto_16b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_18f

    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v8, "magisk --sqlite \"SELECT value FROM settings WHERE key=\'zygisk\'\""

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v8, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_188

    .line 251
    return-object v0

    .line 274
    :cond_188
    :goto_188
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1706
    const/4 p1, 0x0

    .line 274
    .local p1, "$i$a$-let-RootHider$detectModules$2$1":I
    nop

    .line 275
    .end local p1    # "$i$a$-let-RootHider$detectModules$2$1":I
    :cond_18f
    nop

    .line 273
    new-instance p1, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    const-string v7, "Zygisk"

    const-string v8, "\u6ce8\u5165\u6846\u67b6"

    invoke-direct {p1, v3, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    nop

    .line 280
    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v5, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v7, "/data/adb/modules/zygisk_lsposed"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v7, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1b2

    .line 251
    return-object v0

    .line 280
    :cond_1b2
    move-object v6, v5

    .end local v5    # "modules":Ljava/util/List;
    .restart local v6    # "modules":Ljava/util/List;
    :goto_1b3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1e0

    iget-object p1, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$0:Ljava/lang/Object;

    iput-object v5, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->L$1:Ljava/lang/Object;

    const/16 v8, 0x8

    iput v8, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->label:I

    const-string v8, "/data/adb/modules/riru_lsposed"

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v8, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1d1

    .line 251
    return-object v0

    .line 280
    :cond_1d1
    move-object v0, v4

    move-object v4, v6

    .end local v6    # "modules":Ljava/util/List;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .local v4, "modules":Ljava/util/List;
    :goto_1d3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1de

    move-object v6, v4

    move-object v4, v0

    goto :goto_1e0

    :cond_1de
    move p1, v2

    goto :goto_1e3

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .local v4, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .restart local v6    # "modules":Ljava/util/List;
    :cond_1e0
    :goto_1e0
    move p1, v3

    move-object v0, v4

    move-object v4, v6

    .line 281
    .end local v6    # "modules":Ljava/util/List;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;
    .local v4, "modules":Ljava/util/List;
    :goto_1e3
    nop

    .line 279
    new-instance v6, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    const-string v7, "LSPosed"

    const-string v8, "Xposed \u6846\u67b6"

    invoke-direct {v6, p1, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    nop

    .line 286
    :try_start_1f1
    iget-object p1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    # getter for: Lcom/pandasu/turbo/data/magisk/RootHider;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getContext$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1fb} :catch_215

    .line 287
    .local p1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 288
    :try_start_1fc
    const-string v5, "com.tsng.hidemyapplist"

    invoke-virtual {p1, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_201} :catch_203

    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    move p1, v3

    goto :goto_205

    :catch_203
    move-exception p1

    move p1, v2

    .line 289
    :goto_205
    :try_start_205
    const-string v5, "HMA (\u9690\u85cf\u6211\u7684\u5e94\u7528\u5217\u8868)"

    const-string v6, "\u9632\u6b62\u5e94\u7528\u5217\u8868\u68c0\u6d4b"

    .line 287
    new-instance v7, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    if-eqz p1, :cond_20e

    move v2, v3

    :cond_20e
    invoke-direct {v7, v2, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_214} :catch_215

    goto :goto_216

    .line 291
    :catch_215
    move-exception p1

    .line 293
    :goto_216
    return-object v4

    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_8a
        :pswitch_7a
        :pswitch_69
        :pswitch_57
        :pswitch_46
        :pswitch_35
        :pswitch_23
        :pswitch_13
    .end packed-switch
.end method
