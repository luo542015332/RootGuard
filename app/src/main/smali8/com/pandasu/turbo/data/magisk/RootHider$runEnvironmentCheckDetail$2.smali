.class final Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->runEnvironmentCheckDetail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n1747#2,3:1706\n1747#2,3:1709\n1747#2,3:1712\n766#2:1715\n857#2,2:1716\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2\n*L\n526#1:1706,3\n540#1:1709,3\n554#1:1712,3\n578#1:1715\n578#1:1716,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
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
    c = "com.pandasu.turbo.data.magisk.RootHider$runEnvironmentCheckDetail$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8,
        0x8,
        0x9,
        0xa,
        0xb,
        0xc,
        0xd,
        0xd,
        0xd,
        0xe,
        0xe,
        0xf,
        0x10
    }
    l = {
        0x1fe,
        0x206,
        0x207,
        0x208,
        0x209,
        0x20e,
        0x21c,
        0x22a,
        0x23a,
        0x24c,
        0x251,
        0x256,
        0x25b,
        0x26b,
        0x273,
        0x27e,
        0x283
    }
    m = "invokeSuspend"
    n = {
        "results",
        "results",
        "results",
        "hasHideSuConfig",
        "results",
        "hasHideSuConfig",
        "hasHideMagiskConfig",
        "results",
        "hasHideSuConfig",
        "hasHideMagiskConfig",
        "hasHideBusyboxConfig",
        "results",
        "hasHideSuConfig",
        "hasHideMagiskConfig",
        "hasHideBusyboxConfig",
        "hasHideMagiskAppConfig",
        "results",
        "hasHideMagiskConfig",
        "hasHideBusyboxConfig",
        "hasHideMagiskAppConfig",
        "results",
        "hasHideBusyboxConfig",
        "hasHideMagiskAppConfig",
        "results",
        "pm",
        "hasHideMagiskAppConfig",
        "results",
        "results",
        "results",
        "results",
        "results",
        "path",
        "hasTs",
        "results",
        "hasTs",
        "results",
        "results"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "I$1",
        "L$0",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "L$0",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$2",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 504
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v4, "\uff08\u5df2\u914d\u7f6e\u9690\u85cf\uff0c\u4e0d\u6263\u5206\uff09"

    const-string v5, "\uff08\u4e0d\u6263\u5206\uff09"

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    iget-object v3, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "results":Ljava/util/List;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_35

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "results":Ljava/util/List;
    :pswitch_1
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .local v4, "results":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v3

    move v7, v10

    goto/16 :goto_33

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "results":Ljava/util/List;
    :pswitch_2
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget v4, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v4, "hasTs":Z
    iget-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "results":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v3

    goto/16 :goto_30

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "hasTs":Z
    .end local v8    # "results":Ljava/util/List;
    :pswitch_3
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v8, "hasTs":Z
    iget-object v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "path":Ljava/lang/String;
    iget-object v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .local v14, "results":Ljava/util/List;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v4

    goto/16 :goto_2e

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v8    # "hasTs":Z
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "results":Ljava/util/List;
    :pswitch_4
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "results":Ljava/util/List;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v4

    goto/16 :goto_2b

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v8    # "results":Ljava/util/List;
    :pswitch_5
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .restart local v8    # "results":Ljava/util/List;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v4

    goto/16 :goto_2a

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v8    # "results":Ljava/util/List;
    :pswitch_6
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .local v12, "results":Ljava/util/List;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v4

    goto/16 :goto_29

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v12    # "results":Ljava/util/List;
    :pswitch_7
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .restart local v12    # "results":Ljava/util/List;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v4

    goto/16 :goto_28

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v12    # "results":Ljava/util/List;
    :pswitch_8
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v12, "hasHideMagiskAppConfig":Z
    iget-object v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    check-cast v13, Landroid/content/pm/PackageManager;

    .local v13, "pm":Landroid/content/pm/PackageManager;
    iget-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .restart local v14    # "results":Ljava/util/List;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v3, v4

    move-object v1, v0

    goto/16 :goto_23

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v12    # "hasHideMagiskAppConfig":Z
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "results":Ljava/util/List;
    :pswitch_9
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v12, p1

    .local v12, "$result":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "$i$f$any":I
    const/4 v14, 0x0

    .local v14, "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$bbFound$1":I
    iget v15, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    .local v15, "hasHideMagiskAppConfig":Z
    iget v9, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v9, "hasHideBusyboxConfig":Z
    iget-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v3, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v11, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "results":Ljava/util/List;
    invoke-static {v12}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v12

    goto/16 :goto_1e

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v9    # "hasHideBusyboxConfig":Z
    .end local v11    # "results":Ljava/util/List;
    .end local v12    # "$result":Ljava/lang/Object;
    .end local v13    # "$i$f$any":I
    .end local v14    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$bbFound$1":I
    .end local v15    # "hasHideMagiskAppConfig":Z
    :pswitch_a
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$f$any":I
    const/4 v9, 0x0

    .local v9, "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$magiskFound$1":I
    iget v11, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$2:I

    .local v11, "hasHideMagiskAppConfig":Z
    iget v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    .local v12, "hasHideBusyboxConfig":Z
    iget v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v13, "hasHideMagiskConfig":Z
    iget-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v7, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .local v7, "results":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v3

    goto/16 :goto_18

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "results":Ljava/util/List;
    .end local v8    # "$i$f$any":I
    .end local v9    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$magiskFound$1":I
    .end local v11    # "hasHideMagiskAppConfig":Z
    .end local v12    # "hasHideBusyboxConfig":Z
    .end local v13    # "hasHideMagiskConfig":Z
    :pswitch_b
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "$i$f$any":I
    const/4 v8, 0x0

    .local v8, "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$suFound$1":I
    iget v9, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$3:I

    .local v9, "hasHideMagiskAppConfig":Z
    iget v11, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$2:I

    .local v11, "hasHideBusyboxConfig":Z
    iget v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    .local v12, "hasHideMagiskConfig":Z
    iget v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v13, "hasHideSuConfig":Z
    iget-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "results":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v3

    goto/16 :goto_12

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v6    # "results":Ljava/util/List;
    .end local v7    # "$i$f$any":I
    .end local v8    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$suFound$1":I
    .end local v9    # "hasHideMagiskAppConfig":Z
    .end local v11    # "hasHideBusyboxConfig":Z
    .end local v12    # "hasHideMagiskConfig":Z
    .end local v13    # "hasHideSuConfig":Z
    :pswitch_c
    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget v7, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$2:I

    .local v7, "hasHideBusyboxConfig":Z
    iget v8, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    .local v8, "hasHideMagiskConfig":Z
    iget v9, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v9, "hasHideSuConfig":Z
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .local v11, "results":Ljava/util/List;
    :try_start_0
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v11

    move v11, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    goto/16 :goto_a

    .line 521
    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 504
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "hasHideBusyboxConfig":Z
    .end local v8    # "hasHideMagiskConfig":Z
    .end local v9    # "hasHideSuConfig":Z
    .end local v11    # "results":Ljava/util/List;
    :pswitch_d
    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget v7, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    .local v7, "hasHideMagiskConfig":Z
    iget v8, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v8, "hasHideSuConfig":Z
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    .local v9, "results":Ljava/util/List;
    :try_start_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    goto/16 :goto_7

    .line 520
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 504
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "hasHideMagiskConfig":Z
    .end local v8    # "hasHideSuConfig":Z
    .end local v9    # "results":Ljava/util/List;
    :pswitch_e
    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget v7, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    .local v7, "hasHideSuConfig":Z
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .local v8, "results":Ljava/util/List;
    :try_start_2
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v8

    move v8, v7

    move-object v7, v6

    goto/16 :goto_4

    .line 519
    :catch_2
    move-exception v0

    goto/16 :goto_5

    .line 504
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "hasHideSuConfig":Z
    .end local v8    # "results":Ljava/util/List;
    :pswitch_f
    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .local v7, "results":Ljava/util/List;
    :try_start_3
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v7

    move-object v7, v6

    goto/16 :goto_1

    .line 518
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 504
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "results":Ljava/util/List;
    :pswitch_10
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "results":Ljava/util/List;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v3

    move-object v8, v6

    move-object v6, v0

    goto :goto_0

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v6    # "results":Ljava/util/List;
    :pswitch_11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    move-object/from16 v3, p1

    .line 505
    .restart local v3    # "$result":Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 507
    .restart local v6    # "results":Ljava/util/List;
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "\u5f00\u59cb\u8be6\u7ec6\u73af\u5883\u68c0\u6d4b..."

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 510
    iget-object v7, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->checkSelfRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_0

    .line 504
    return-object v1

    .line 510
    :cond_0
    move-object v8, v6

    move-object v6, v0

    move-object/from16 v17, v7

    move-object v7, v3

    move-object/from16 v3, v17

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .local v6, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v7, "$result":Ljava/lang/Object;
    .restart local v8    # "results":Ljava/util/List;
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 511
    .local v0, "hasRootPermission":Z
    nop

    .end local v0    # "hasRootPermission":Z
    if-nez v0, :cond_1

    .line 512
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u6ca1\u6709 Root \u6743\u9650\uff0c\u65e0\u6cd5\u6267\u884c\u8be6\u7ec6\u73af\u5883\u68c0\u6d4b"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 513
    return-object v8

    .line 515
    :cond_1
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Root \u6743\u9650\u68c0\u67e5\u901a\u8fc7\uff0c\u7ee7\u7eed\u8be6\u7ec6\u68c0\u6d4b"

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 518
    :try_start_4
    iget-object v0, v6, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getHasAnyHideSuConfig()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v8, v6, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v6, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-ne v0, v1, :cond_2

    .line 504
    return-object v1

    .line 518
    :cond_2
    move-object v3, v6

    move-object v6, v0

    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v3, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    :goto_1
    :try_start_5
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v6, v7

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v6, v7

    move-object v7, v8

    goto :goto_2

    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    :catch_5
    move-exception v0

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    .end local v8    # "results":Ljava/util/List;
    .restart local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "results":Ljava/util/List;
    :goto_2
    move-object v8, v7

    const/4 v0, 0x0

    .end local v7    # "results":Ljava/util/List;
    .restart local v8    # "results":Ljava/util/List;
    :goto_3
    move v7, v0

    .line 519
    .local v7, "hasHideSuConfig":Z
    :try_start_6
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getHasAnyHideMagiskConfig()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v9, v3

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v8, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput v7, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    const/4 v11, 0x3

    iput v11, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v0, v9}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-ne v0, v1, :cond_3

    .line 504
    return-object v1

    .line 519
    :cond_3
    move-object v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v0

    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "hasHideSuConfig":Z
    .restart local v9    # "results":Ljava/util/List;
    :goto_4
    :try_start_7
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v6, v7

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    .end local v9    # "results":Ljava/util/List;
    .restart local v6    # "$result":Ljava/lang/Object;
    .local v7, "hasHideSuConfig":Z
    .local v8, "results":Ljava/util/List;
    :goto_5
    move-object v9, v8

    const/4 v0, 0x0

    move v8, v7

    .end local v7    # "hasHideSuConfig":Z
    .local v8, "hasHideSuConfig":Z
    .restart local v9    # "results":Ljava/util/List;
    :goto_6
    move v7, v0

    .line 520
    .local v7, "hasHideMagiskConfig":Z
    :try_start_8
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getHasAnyHideBusyboxConfig()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v11, v3

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput v8, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    iput v7, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    const/4 v12, 0x4

    iput v12, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v0, v11}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-ne v0, v1, :cond_4

    .line 504
    return-object v1

    .line 520
    :cond_4
    move-object v11, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v0

    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "hasHideMagiskConfig":Z
    .local v9, "hasHideSuConfig":Z
    .restart local v11    # "results":Ljava/util/List;
    :goto_7
    :try_start_9
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-object v6, v7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v11

    .end local v11    # "results":Ljava/util/List;
    .restart local v6    # "$result":Ljava/lang/Object;
    .local v7, "hasHideMagiskConfig":Z
    .local v8, "hasHideSuConfig":Z
    .local v9, "results":Ljava/util/List;
    :goto_8
    move-object v11, v9

    const/4 v0, 0x0

    move v9, v8

    move v8, v7

    .end local v7    # "hasHideMagiskConfig":Z
    .local v8, "hasHideMagiskConfig":Z
    .local v9, "hasHideSuConfig":Z
    .restart local v11    # "results":Ljava/util/List;
    :goto_9
    move v7, v0

    .line 521
    .local v7, "hasHideBusyboxConfig":Z
    :try_start_a
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getHasAnyHideMagiskAppConfig()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v12, v3

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v11, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput v9, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    iput v8, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    iput v7, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$2:I

    const/4 v13, 0x5

    iput v13, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v0, v12}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-ne v0, v1, :cond_5

    .line 504
    return-object v1

    .line 521
    :cond_5
    move-object v12, v11

    move v11, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v0

    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "hasHideBusyboxConfig":Z
    .local v9, "hasHideMagiskConfig":Z
    .local v11, "hasHideSuConfig":Z
    .local v12, "results":Ljava/util/List;
    :goto_a
    :try_start_b
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move-object v11, v12

    .end local v12    # "results":Ljava/util/List;
    .restart local v6    # "$result":Ljava/lang/Object;
    .local v7, "hasHideBusyboxConfig":Z
    .local v8, "hasHideMagiskConfig":Z
    .local v9, "hasHideSuConfig":Z
    .local v11, "results":Ljava/util/List;
    :goto_b
    move-object v12, v11

    const/4 v0, 0x0

    move v11, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    .line 523
    .end local v6    # "$result":Ljava/lang/Object;
    .local v0, "hasHideMagiskAppConfig":Z
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "hasHideBusyboxConfig":Z
    .local v9, "hasHideMagiskConfig":Z
    .local v11, "hasHideSuConfig":Z
    .restart local v12    # "results":Ljava/util/List;
    :goto_c
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v11, :cond_6

    move v13, v10

    goto :goto_d

    :cond_6
    const/4 v13, 0x0

    :goto_d
    if-eqz v9, :cond_7

    move v14, v10

    goto :goto_e

    :cond_7
    const/4 v14, 0x0

    :goto_e
    if-eqz v8, :cond_8

    move v15, v10

    goto :goto_f

    :cond_8
    const/4 v15, 0x0

    :goto_f
    if-eqz v0, :cond_9

    goto :goto_10

    :cond_9
    const/4 v10, 0x0

    :goto_10
    move/from16 p1, v0

    .end local v0    # "hasHideMagiskAppConfig":Z
    .local p1, "hasHideMagiskAppConfig":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "\u9694\u79bb\u914d\u7f6e\u72b6\u6001: hideSu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideMagisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideBusybox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideMagiskApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u68c0\u6d4b su \u4e8c\u8fdb\u5236\u6587\u4ef6..."

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getROOT_PATHS$cp()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    iget-object v1, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v6, 0x0

    .line 1706
    .local v6, "$i$f$any":I
    instance-of v10, v0, Ljava/util/Collection;

    if-eqz v10, :cond_a

    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    move/from16 v0, p1

    move-object/from16 v1, v16

    const/4 v2, 0x0

    goto/16 :goto_13

    .line 1707
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v15, v1

    move-object v0, v3

    move-object v3, v7

    move-object v14, v10

    move v13, v11

    move-object/from16 v1, v16

    move v7, v6

    move v11, v8

    move-object v6, v12

    move v12, v9

    move/from16 v9, p1

    .end local v8    # "hasHideBusyboxConfig":Z
    .end local p1    # "hasHideMagiskAppConfig":Z
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v3, "$result":Ljava/lang/Object;
    .local v6, "results":Ljava/util/List;
    .local v7, "$i$f$any":I
    .local v9, "hasHideMagiskAppConfig":Z
    .local v11, "hasHideBusyboxConfig":Z
    .local v12, "hasHideMagiskConfig":Z
    .restart local v13    # "hasHideSuConfig":Z
    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 526
    .local v10, "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$suFound$1":I
    iput-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    iput-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    iput v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    iput v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    iput v11, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$2:I

    iput v9, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$3:I

    const/4 v2, 0x6

    iput v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v15, v8, v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v8    # "it":Ljava/lang/String;
    if-ne v2, v1, :cond_b

    .line 504
    return-object v1

    .line 526
    :cond_b
    move v8, v10

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$suFound$1":I
    .local v2, "$result":Ljava/lang/Object;
    .local v8, "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$suFound$1":I
    :goto_12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1707
    .end local v8    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$suFound$1":I
    if-eqz v3, :cond_c

    move-object v3, v0

    move-object v7, v2

    move v0, v9

    move v8, v11

    move v9, v12

    move v11, v13

    const/4 v2, 0x1

    move-object v12, v6

    goto :goto_13

    :cond_c
    move-object v3, v2

    move-object/from16 v2, p0

    goto :goto_11

    .line 1708
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_d
    move-object v7, v3

    move v8, v11

    move v11, v13

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v9

    move v9, v12

    move-object v12, v6

    .line 526
    .end local v6    # "results":Ljava/util/List;
    .end local v13    # "hasHideSuConfig":Z
    .local v0, "hasHideMagiskAppConfig":Z
    .local v3, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "hasHideBusyboxConfig":Z
    .local v9, "hasHideMagiskConfig":Z
    .local v11, "hasHideSuConfig":Z
    .local v12, "results":Ljava/util/List;
    :goto_13
    nop

    .line 527
    .local v2, "suFound":Z
    if-eqz v2, :cond_11

    .line 528
    const-string v6, "su \u4e8c\u8fdb\u5236\u68c0\u6d4b\u7ed3\u679c: "

    .end local v11    # "hasHideSuConfig":Z
    if-eqz v11, :cond_f

    .line 529
    new-instance v10, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v11, Lcom/pandasu/turbo/data/model/DetectionItem;->SU_BINARY:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v13, "su \u4e8c\u8fdb\u5236\u6587\u4ef6 (\u5df2\u9690\u85cf)"

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v14, v14}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_14

    :cond_e
    const/4 v2, 0x0

    .end local v2    # "suFound":Z
    :goto_14
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_16

    .line 532
    .restart local v2    # "suFound":Z
    :cond_f
    new-instance v10, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v11, Lcom/pandasu/turbo/data/model/DetectionItem;->SU_BINARY:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v13, "su \u4e8c\u8fdb\u5236\u6587\u4ef6"

    const/16 v14, 0xf

    const/4 v15, 0x1

    invoke-direct {v10, v11, v13, v15, v14}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_15

    :cond_10
    const/4 v2, 0x0

    .end local v2    # "suFound":Z
    :goto_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_16

    .line 536
    :cond_11
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "su \u4e8c\u8fdb\u5236\u68c0\u6d4b\u7ed3\u679c: \u672a\u627e\u5230"

    invoke-virtual {v2, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 539
    :goto_16
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "\u68c0\u6d4b Magisk \u6587\u4ef6..."

    invoke-virtual {v2, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getMAGISK_PATHS$cp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    iget-object v6, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v10, 0x0

    .line 1709
    .local v10, "$i$f$any":I
    instance-of v11, v2, Ljava/util/Collection;

    if-eqz v11, :cond_12

    move-object v11, v2

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_19

    .line 1710
    :cond_12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v15, v6

    move v13, v9

    move-object v14, v11

    move v11, v0

    move-object v0, v3

    move-object v3, v7

    move-object v7, v12

    move v12, v8

    move v8, v10

    .end local v2    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v9    # "hasHideMagiskConfig":Z
    .end local v10    # "$i$f$any":I
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "results":Ljava/util/List;
    .local v8, "$i$f$any":I
    .local v11, "hasHideMagiskAppConfig":Z
    .local v12, "hasHideBusyboxConfig":Z
    .local v13, "hasHideMagiskConfig":Z
    :goto_17
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .local v2, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 540
    .local v9, "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$magiskFound$1":I
    iput-object v7, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    iput-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    iput v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    iput v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    iput v11, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$2:I

    const/4 v6, 0x7

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v15, v2, v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    if-ne v2, v1, :cond_13

    .line 504
    return-object v1

    .line 540
    :cond_13
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .end local v3    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_18
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1710
    .end local v9    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$magiskFound$1":I
    if-eqz v3, :cond_14

    move-object v3, v0

    move v0, v11

    move v8, v12

    move v9, v13

    move-object v12, v7

    move-object v7, v2

    const/4 v2, 0x1

    goto :goto_19

    :cond_14
    move-object v3, v2

    goto :goto_17

    .line 1711
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_15
    move v8, v12

    move v9, v13

    const/4 v2, 0x0

    move-object v12, v7

    move-object v7, v3

    move-object v3, v0

    move v0, v11

    .line 540
    .end local v11    # "hasHideMagiskAppConfig":Z
    .end local v13    # "hasHideMagiskConfig":Z
    .local v0, "hasHideMagiskAppConfig":Z
    .local v3, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "hasHideBusyboxConfig":Z
    .local v9, "hasHideMagiskConfig":Z
    .local v12, "results":Ljava/util/List;
    :goto_19
    nop

    .line 541
    .local v2, "magiskFound":Z
    if-eqz v2, :cond_19

    .line 542
    const-string v6, "Magisk \u6587\u4ef6\u68c0\u6d4b\u7ed3\u679c: "

    .end local v9    # "hasHideMagiskConfig":Z
    if-eqz v9, :cond_17

    .line 543
    new-instance v9, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v10, Lcom/pandasu/turbo/data/model/DetectionItem;->MAGISK_FILES:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v11, "Magisk \u6587\u4ef6 (\u5df2\u9690\u85cf)"

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v13, v13}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_1a

    :cond_16
    const/4 v2, 0x0

    .end local v2    # "magiskFound":Z
    :goto_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_1c

    .line 546
    .restart local v2    # "magiskFound":Z
    :cond_17
    new-instance v9, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v10, Lcom/pandasu/turbo/data/model/DetectionItem;->MAGISK_FILES:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v11, "Magisk \u6587\u4ef6"

    const/16 v13, 0xa

    const/4 v14, 0x1

    invoke-direct {v9, v10, v11, v14, v13}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_1b

    :cond_18
    const/4 v2, 0x0

    .end local v2    # "magiskFound":Z
    :goto_1b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_1c

    .line 550
    :cond_19
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "Magisk \u6587\u4ef6\u68c0\u6d4b\u7ed3\u679c: \u672a\u627e\u5230"

    invoke-virtual {v2, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 553
    :goto_1c
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "\u68c0\u6d4b Busybox..."

    invoke-virtual {v2, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getBUSYBOX_PATHS$cp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    iget-object v6, v3, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v9, 0x0

    .line 1712
    .local v9, "$i$f$any":I
    instance-of v10, v2, Ljava/util/Collection;

    if-eqz v10, :cond_1a

    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1a

    move-object v2, v7

    move-object v14, v12

    move v12, v0

    move-object v0, v3

    const/4 v3, 0x0

    goto :goto_1f

    .line 1713
    :cond_1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v15, v0

    move-object v0, v3

    move-object v3, v6

    move v13, v9

    move-object v11, v12

    move-object v12, v7

    move v9, v8

    move-object v8, v10

    .end local v2    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "hasHideBusyboxConfig":Z
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v9, "hasHideBusyboxConfig":Z
    .local v11, "results":Ljava/util/List;
    .local v12, "$result":Ljava/lang/Object;
    .local v13, "$i$f$any":I
    .restart local v15    # "hasHideMagiskAppConfig":Z
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .local v2, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 554
    .restart local v14    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$bbFound$1":I
    iput-object v11, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    iput v9, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    iput v15, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$1:I

    const/16 v6, 0x8

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v3, v2, v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    if-ne v2, v1, :cond_1b

    .line 504
    return-object v1

    .line 554
    :cond_1b
    move-object/from16 v17, v12

    move-object v12, v2

    move-object/from16 v2, v17

    .end local v12    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_1e
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1713
    .end local v14    # "$i$a$-any-RootHider$runEnvironmentCheckDetail$2$bbFound$1":I
    if-eqz v6, :cond_1c

    move v8, v9

    move-object v14, v11

    move v12, v15

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1c
    move-object v12, v2

    goto :goto_1d

    .line 1714
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v12    # "$result":Ljava/lang/Object;
    :cond_1d
    move v8, v9

    move-object v14, v11

    move-object v2, v12

    move v12, v15

    const/4 v3, 0x0

    .line 554
    .end local v9    # "hasHideBusyboxConfig":Z
    .end local v11    # "results":Ljava/util/List;
    .end local v13    # "$i$f$any":I
    .end local v15    # "hasHideMagiskAppConfig":Z
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v8    # "hasHideBusyboxConfig":Z
    .local v12, "hasHideMagiskAppConfig":Z
    .local v14, "results":Ljava/util/List;
    :goto_1f
    nop

    .line 555
    .local v3, "bbFound":Z
    if-eqz v3, :cond_21

    .line 556
    const-string v6, "Busybox \u68c0\u6d4b\u7ed3\u679c: "

    .end local v8    # "hasHideBusyboxConfig":Z
    if-eqz v8, :cond_1f

    .line 557
    new-instance v7, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v8, Lcom/pandasu/turbo/data/model/DetectionItem;->BUSYBOX:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v9, "Busybox (\u5df2\u9690\u85cf)"

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v10}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_20

    :cond_1e
    const/4 v3, 0x0

    .end local v3    # "bbFound":Z
    :goto_20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_22

    .line 560
    .restart local v3    # "bbFound":Z
    :cond_1f
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v7, Lcom/pandasu/turbo/data/model/DetectionItem;->BUSYBOX:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v8, "Busybox"

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-direct {v4, v7, v8, v10, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .end local v3    # "bbFound":Z
    :goto_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_22

    .line 564
    :cond_21
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Busybox \u68c0\u6d4b\u7ed3\u679c: \u672a\u627e\u5230"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 567
    :goto_22
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b Root \u5e94\u7528\u5305\u540d..."

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 568
    iget-object v3, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v3}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getContext$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 570
    .local v13, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    iput v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    const/16 v6, 0x9

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v3, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$isPandaSUZygiskModuleEnabled(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_22

    .line 504
    return-object v1

    .line 570
    :cond_22
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v2    # "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v3, "$result":Ljava/lang/Object;
    :goto_23
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "Root \u5e94\u7528 (\u5df2\u9690\u85cf)"

    if-eqz v0, :cond_23

    .line 571
    .end local v12    # "hasHideMagiskAppConfig":Z
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->ROOT_PACKAGES:Lcom/pandasu/turbo/data/model/DetectionItem;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v4, v7, v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Root \u5e94\u7528\u68c0\u6d4b\u7ed3\u679c: \u5df2\u9690\u85cf\uff08\u6a21\u5757\u542f\u7528\uff09"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 573
    .restart local v12    # "hasHideMagiskAppConfig":Z
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_23
    if-eqz v12, :cond_24

    .line 575
    .end local v12    # "hasHideMagiskAppConfig":Z
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->ROOT_PACKAGES:Lcom/pandasu/turbo/data/model/DetectionItem;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v4, v7, v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Root \u5e94\u7528\u68c0\u6d4b\u7ed3\u679c: \u5df2\u9690\u85cf\uff08\u5df2\u914d\u7f6e\u9694\u79bb\uff09"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 578
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_24
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getROOT_PACKAGES$cp()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1715
    .local v4, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 1716
    .local v7, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_25
    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    .local v0, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 578
    .local v10, "$i$a$-filter-RootHider$runEnvironmentCheckDetail$2$rootPkgs$1":I
    const/4 v11, 0x0

    :try_start_c
    invoke-virtual {v13, v0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    const/4 v0, 0x1

    .end local v0    # "it":Ljava/lang/String;
    goto :goto_25

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    .line 1716
    .end local v10    # "$i$a$-filter-RootHider$runEnvironmentCheckDetail$2$rootPkgs$1":I
    :goto_25
    if-eqz v0, :cond_25

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1717
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_26
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$filterTo":I
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .line 1715
    nop

    .line 578
    .end local v4    # "$i$f$filter":I
    nop

    .line 579
    .local v0, "rootPkgs":Ljava/util/List;
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-eqz v4, :cond_27

    .line 580
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->ROOT_PACKAGES:Lcom/pandasu/turbo/data/model/DetectionItem;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Root \u5e94\u7528 ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u4e2a)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x1

    invoke-direct {v4, v6, v7, v9, v8}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 582
    :cond_27
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->ROOT_PACKAGES:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v7, "Root \u5e94\u7528"

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v8}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :goto_26
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Root \u5e94\u7528\u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4e2a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 587
    .end local v0    # "rootPkgs":Ljava/util/List;
    :goto_27
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b ro.debuggable \u5c5e\u6027..."

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 588
    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v14, v1, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    const/16 v6, 0xa

    iput v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v6, "getprop ro.debuggable"

    invoke-static {v0, v6, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_28

    .line 504
    return-object v2

    .line 588
    :cond_28
    move-object v0, v1

    move-object v1, v2

    move-object v12, v14

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .end local v14    # "results":Ljava/util/List;
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;
    .local v12, "results":Ljava/util/List;
    :goto_28
    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "debuggable":Ljava/lang/String;
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->DEBUGGABLE:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v7, "1"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ro.debuggable"

    const/16 v9, 0xa

    invoke-direct {v4, v6, v8, v7, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.debuggable \u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 592
    .end local v2    # "debuggable":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b\u6784\u5efa\u7b7e\u540d..."

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 593
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/16 v6, 0xb

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v6, "getprop ro.build.tags"

    invoke-static {v2, v6, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_29

    .line 504
    return-object v1

    .line 593
    :cond_29
    :goto_29
    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "buildTags":Ljava/lang/String;
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->TEST_KEYS:Lcom/pandasu/turbo/data/model/DetectionItem;

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "test-keys"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v11, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    const-string v8, "\u6784\u5efa\u7b7e\u540d"

    const/16 v9, 0xa

    invoke-direct {v4, v6, v8, v7, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6784\u5efa\u7b7e\u540d\u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 597
    .end local v2    # "buildTags":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b ro.secure \u5c5e\u6027..."

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 598
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/16 v6, 0xc

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v6, "getprop ro.secure"

    invoke-static {v2, v6, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_2a

    .line 504
    return-object v1

    .line 598
    :cond_2a
    move-object v8, v12

    .end local v12    # "results":Ljava/util/List;
    .local v8, "results":Ljava/util/List;
    :goto_2a
    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "secure":Ljava/lang/String;
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->SUPERUSER_APK:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v7, "0"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "ro.secure"

    const/4 v10, 0x5

    invoke-direct {v4, v6, v9, v7, v10}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.secure \u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 602
    .end local v2    # "secure":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b Shamiko \u6a21\u5757..."

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 603
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/16 v6, 0xd

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v6, "/data/adb/modules/zygisk_shamiko"

    invoke-static {v2, v6, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_2b

    .line 504
    return-object v1

    .line 603
    :cond_2b
    :goto_2b
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 604
    .local v2, "hasShamiko":Z
    new-instance v4, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v6, Lcom/pandasu/turbo/data/model/DetectionItem;->SHAMIKO:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v7, "Shamiko"

    const/4 v9, 0x0

    invoke-direct {v4, v6, v7, v9, v9}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2c
    const/4 v2, 0x0

    .end local v2    # "hasShamiko":Z
    :goto_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shamiko \u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 607
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b Tricky Store \u6a21\u5757..."

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 609
    nop

    .line 610
    nop

    .line 609
    nop

    .line 611
    nop

    .line 609
    nop

    .line 612
    nop

    .line 609
    nop

    .line 613
    const-string v2, "/data/adb/modules/ts"

    const-string v4, "/data/adb/tricky_store"

    const-string v6, "/data/adb/modules/tricky_store"

    const-string v7, "/data/adb/modules/trickystore"

    const-string v9, "/data/adb/tricky_store_current"

    filled-new-array {v4, v6, v7, v9, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 609
    nop

    .line 608
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 616
    .local v2, "trickyStorePaths":Ljava/util/List;
    const/4 v4, 0x0

    .line 617
    .local v4, "hasTs":Z
    nop

    .line 618
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v13, v6

    move-object v14, v8

    move v8, v4

    move-object v4, v3

    .end local v2    # "trickyStorePaths":Ljava/util/List;
    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .local v8, "hasTs":Z
    .restart local v14    # "results":Ljava/util/List;
    :goto_2d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 619
    .local v12, "path":Ljava/lang/String;
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v14, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    iput v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    const/16 v6, 0xe

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    invoke-static {v2, v12, v3}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2d

    .line 504
    return-object v1

    .line 619
    :cond_2d
    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .end local v4    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_2e
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 620
    .end local v8    # "hasTs":Z
    const/4 v3, 0x1

    .line 621
    .local v3, "hasTs":Z
    nop

    .line 622
    move v4, v3

    move-object v8, v14

    move-object v3, v2

    goto :goto_2f

    .line 619
    .end local v3    # "hasTs":Z
    .restart local v8    # "hasTs":Z
    :cond_2e
    move-object v4, v2

    goto :goto_2d

    .line 618
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v12    # "path":Ljava/lang/String;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_2f
    move-object v3, v4

    move v4, v8

    move-object v8, v14

    .line 626
    .end local v14    # "results":Ljava/util/List;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "hasTs":Z
    .local v8, "results":Ljava/util/List;
    :goto_2f
    if-nez v4, :cond_32

    .line 627
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->I$0:I

    const/16 v7, 0xf

    iput v7, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v7, "/data/adb/modules"

    const-string v9, "tricky"

    invoke-static {v2, v7, v9, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$findDirectoriesContaining(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_30

    .line 504
    return-object v1

    .line 627
    :cond_30
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .line 504
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_30
    check-cast v3, Ljava/util/List;

    .line 628
    .local v3, "trickyRelatedPaths":Ljava/util/List;
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_31

    .line 629
    .end local v4    # "hasTs":Z
    const/4 v4, 0x1

    .line 630
    .restart local v4    # "hasTs":Z
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v2

    goto :goto_31

    .line 628
    :cond_31
    const/4 v6, 0x0

    move-object v3, v2

    goto :goto_31

    .line 626
    .end local v2    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :cond_32
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 634
    :goto_31
    new-instance v2, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v9, Lcom/pandasu/turbo/data/model/DetectionItem;->TRICKY_STORE:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v10, "Tricky Store"

    invoke-direct {v2, v9, v10, v6, v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v4, :cond_33

    move v4, v7

    goto :goto_32

    :cond_33
    const/4 v4, 0x0

    .end local v4    # "hasTs":Z
    :goto_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tricky Store \u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 637
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u68c0\u6d4b PlayIntegrityFix \u6a21\u5757..."

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 638
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$2:Ljava/lang/Object;

    const/16 v6, 0x10

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v6, "/data/adb/modules/playintegrityfix"

    invoke-static {v2, v6, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_34

    .line 504
    return-object v1

    .line 638
    :cond_34
    move-object v4, v8

    .end local v8    # "results":Ljava/util/List;
    .local v4, "results":Ljava/util/List;
    :goto_33
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 639
    .local v2, "hasPif":Z
    new-instance v6, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v8, Lcom/pandasu/turbo/data/model/DetectionItem;->PIF:Lcom/pandasu/turbo/data/model/DetectionItem;

    const-string v9, "PlayIntegrityFix"

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v10}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v2, :cond_35

    move v10, v7

    goto :goto_34

    :cond_35
    const/4 v10, 0x0

    .end local v2    # "hasPif":Z
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PlayIntegrityFix \u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 642
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "\u68c0\u6d4b Recovery \u6a21\u5f0f..."

    invoke-virtual {v2, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 643
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->L$0:Ljava/lang/Object;

    const/16 v6, 0x11

    iput v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$runEnvironmentCheckDetail$2;->label:I

    const-string v6, "getprop ro.bootmode"

    invoke-static {v2, v6, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_36

    .line 504
    return-object v1

    .line 643
    :cond_36
    move-object v1, v2

    :goto_35
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "bootmode":Ljava/lang/String;
    new-instance v2, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    sget-object v5, Lcom/pandasu/turbo/data/model/DetectionItem;->RECOVERY_MODE:Lcom/pandasu/turbo/data/model/DetectionItem;

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "recovery"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v10, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    const-string v7, "Recovery \u6a21\u5f0f"

    const/4 v8, 0x5

    invoke-direct {v2, v5, v7, v6, v8}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery \u6a21\u5f0f\u68c0\u6d4b\u7ed3\u679c: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 647
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8be6\u7ec6\u73af\u5883\u68c0\u6d4b\u5b8c\u6210\uff0c\u5171 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u4e2a\u68c0\u6d4b\u9879"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 648
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
