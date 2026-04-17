.class final Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->removeIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2$WhenMappings;
    }
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n1855#2,2:1706\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2\n*L\n1128#1:1706,2\n*E\n"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$removeIsolation$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0x441,
        0x442,
        0x443,
        0x444,
        0x445,
        0x44d,
        0x44f,
        0x458,
        0x45a,
        0x46a,
        0x472
    }
    m = "invokeSuspend"
    n = {
        "rootType",
        "isolationDir",
        "rootType",
        "isolationDir",
        "rootType",
        "rootType",
        "rootType"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1081
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    const/4 v3, 0x4

    const-string v4, "umount -l "

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, " 2>/dev/null"

    packed-switch v0, :pswitch_data_41e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_20
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_26

    const/4 v8, 0x0

    goto/16 :goto_3e6

    .line 1139
    :catch_26
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_3eb

    .line 1081
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_2a
    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$forEach":I
    const/4 v7, 0x0

    .local v7, "$i$a$-forEach-RootHider$removeIsolation$2$1":I
    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/util/Iterator;

    iget-object v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    :try_start_3a
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_40

    const/4 v8, 0x0

    goto/16 :goto_394

    .line 1131
    :catch_40
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_3aa

    .line 1081
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "$i$a$-forEach-RootHider$removeIsolation$2$1":I
    :pswitch_44
    move-object/from16 v12, p0

    .local v12, "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .local v13, "$result":Ljava/lang/Object;
    :try_start_48
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4d

    goto/16 :goto_25a

    .line 1116
    :catch_4d
    move-exception v0

    goto/16 :goto_278

    .line 1081
    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    :pswitch_50
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    :try_start_54
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_70

    move-object v7, v13

    goto/16 :goto_227

    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    :pswitch_5a
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    :try_start_5e
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_63

    goto/16 :goto_2e2

    .line 1105
    :catch_63
    move-exception v0

    goto/16 :goto_2ff

    .line 1081
    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    :pswitch_66
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    :try_start_6a
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_70

    move-object v7, v13

    goto/16 :goto_2b0

    .line 1145
    :catch_70
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_40d

    .line 1081
    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    :pswitch_74
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v14, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_7d
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_c0

    goto/16 :goto_1e2

    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .end local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_82
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_8b
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_c0

    goto/16 :goto_1b8

    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .end local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_90
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_99
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_c0

    goto/16 :goto_18f

    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .end local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_9e
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "isolationDir":Ljava/lang/String;
    iget-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_aa
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_c0

    goto/16 :goto_166

    .end local v0    # "isolationDir":Ljava/lang/String;
    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .end local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_af
    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .restart local v13    # "$result":Ljava/lang/Object;
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "isolationDir":Ljava/lang/String;
    iget-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_bb
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c0

    goto/16 :goto_13b

    .line 1094
    .end local v0    # "isolationDir":Ljava/lang/String;
    :catch_c0
    move-exception v0

    goto/16 :goto_1e3

    .line 1081
    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .end local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_c3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    move-object/from16 v13, p1

    .line 1082
    .restart local v13    # "$result":Ljava/lang/Object;
    nop

    .line 1083
    :try_start_cb
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    invoke-virtual {v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v0

    move-object v14, v0

    .line 1084
    .restart local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v15, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeIsolation: Removing isolation for "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (root: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1087
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/local/tmp/isolate_storage_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_111} :catch_70

    .line 1088
    .restart local v0    # "isolationDir":Ljava/lang/String;
    nop

    .line 1089
    :try_start_112
    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "/sdcard 2>/dev/null"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v15, v12

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    iput v9, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v7, v8, v15}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_13b

    .line 1081
    return-object v1

    .line 1090
    :cond_13b
    :goto_13b
    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v8, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "umount -l /data/data/"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v12

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    iput v6, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v7, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_166

    .line 1081
    return-object v1

    .line 1091
    :cond_166
    :goto_166
    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rm -rf "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v12

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    iput v5, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v7, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v0    # "isolationDir":Ljava/lang/String;
    if-ne v7, v1, :cond_18f

    .line 1081
    return-object v1

    .line 1092
    :cond_18f
    :goto_18f
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetprop --delete ro.storage.isolated."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v12

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput v3, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1b8

    .line 1081
    return-object v1

    .line 1093
    :cond_1b8
    :goto_1b8
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetprop --delete ro.vold.secured."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v12

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v14, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_1df} :catch_c0

    if-ne v0, v1, :cond_1e2

    .line 1081
    return-object v1

    .line 1093
    :cond_1e2
    :goto_1e2
    goto :goto_1ff

    .line 1095
    .local v0, "e":Ljava/lang/Exception;
    :goto_1e3
    :try_start_1e3
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Storage isolation removal may have failed, continuing: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1099
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1ff
    nop

    .end local v14    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    sget-object v0, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_43a

    .line 1123
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    goto/16 :goto_323

    .line 1112
    :pswitch_20f
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v7, "ksu"

    move-object v8, v12

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v10, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    const/16 v9, 0x8

    iput v9, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_222} :catch_70

    if-ne v0, v1, :cond_225

    .line 1081
    return-object v1

    .line 1112
    :cond_225
    move-object v7, v13

    move-object v13, v0

    .end local v13    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    :goto_227
    :try_start_227
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22d} :catch_31e

    if-eqz v0, :cond_296

    .line 1113
    nop

    .line 1114
    :try_start_230
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v8, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ksu denylist rm "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v12

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/16 v13, 0x9

    iput v13, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_256} :catch_276

    if-ne v0, v1, :cond_259

    .line 1081
    return-object v1

    .line 1114
    :cond_259
    move-object v13, v7

    .line 1115
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_25a
    :try_start_25a
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KernelSU denylist removed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_274} :catch_4d

    goto/16 :goto_328

    .line 1116
    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catch_276
    move-exception v0

    move-object v13, v7

    .line 1117
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_278
    :try_start_278
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KernelSU denylist removal failed: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_328

    .line 1112
    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :cond_296
    move-object v13, v7

    goto/16 :goto_328

    .line 1101
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v13    # "$result":Ljava/lang/Object;
    :pswitch_299
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v7, "magisk"

    move-object v8, v12

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v10, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    const/4 v9, 0x6

    iput v9, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_2ab} :catch_70

    if-ne v0, v1, :cond_2ae

    .line 1081
    return-object v1

    .line 1101
    :cond_2ae
    move-object v7, v13

    move-object v13, v0

    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :goto_2b0
    :try_start_2b0
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b6} :catch_31e

    if-eqz v0, :cond_31c

    .line 1102
    nop

    .line 1103
    :try_start_2b9
    iget-object v0, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v8, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "magisk --denylist rm "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v12

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v13, 0x7

    iput v13, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_2de} :catch_2fd

    if-ne v0, v1, :cond_2e1

    .line 1081
    return-object v1

    .line 1103
    :cond_2e1
    move-object v13, v7

    .line 1104
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_2e2
    :try_start_2e2
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v7, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Magisk denylist removed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2fc} :catch_63

    goto :goto_328

    .line 1105
    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catch_2fd
    move-exception v0

    move-object v13, v7

    .line 1106
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_2ff
    :try_start_2ff
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Magisk denylist removal failed: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_328

    .line 1101
    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :cond_31c
    move-object v13, v7

    goto :goto_328

    .line 1145
    :catch_31e
    move-exception v0

    move-object v13, v7

    const/4 v8, 0x0

    goto/16 :goto_40d

    .line 1123
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_323
    const-string v7, "Unknown root type, skipping denylist removal"

    invoke-virtual {v0, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1128
    :goto_328
    const/4 v7, 0x5

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "/system/bin/su"
    :try_end_32d
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_32d} :catch_70

    const/4 v8, 0x0

    :try_start_32e
    aput-object v7, v0, v8

    const-string v7, "/system/xbin/su"

    const/4 v9, 0x1

    aput-object v7, v0, v9

    const-string v7, "/sbin/su"

    aput-object v7, v0, v6

    const-string v6, "/data/adb/magisk"

    aput-object v6, v0, v5

    const-string v5, "/data/adb/modules"

    aput-object v5, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v3, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1706
    .local v5, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_32e .. :try_end_34e} :catch_409

    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v12

    move-object v12, v6

    move v6, v5

    move-object/from16 v5, v16

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v6    # "$i$f$forEach":I
    :goto_356
    :try_start_356
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/String;
    :try_end_363
    .catch Ljava/lang/Exception; {:try_start_356 .. :try_end_363} :catch_40b

    move-object v0, v7

    .local v0, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1129
    .local v7, "$i$a$-forEach-RootHider$removeIsolation$2$1":I
    nop

    .line 1130
    :try_start_366
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    const/16 v15, 0xa

    iput v15, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v5, v14, v1}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_387
    .catch Ljava/lang/Exception; {:try_start_366 .. :try_end_387} :catch_39f

    .end local v0    # "it":Ljava/lang/String;
    if-ne v14, v3, :cond_38a

    .line 1081
    return-object v3

    .line 1130
    :cond_38a
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v5, v17

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .local v5, "$result":Ljava/lang/Object;
    :goto_394
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v5, v17

    goto :goto_3b4

    .line 1131
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v13    # "$result":Ljava/lang/Object;
    :catch_39f
    move-exception v0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v5, v17

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_3aa
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v5, v17

    .line 1134
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_3b4
    nop

    .line 1706
    .end local v7    # "$i$a$-forEach-RootHider$removeIsolation$2$1":I
    goto :goto_356

    .line 1707
    :cond_3b6
    nop

    .line 1137
    .end local v6    # "$i$f$forEach":I
    nop

    .line 1138
    :try_start_3b8
    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf /data/local/tmp/hide_*_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->L$1:Ljava/lang/Object;

    const/16 v6, 0xb

    iput v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3e2
    .catch Ljava/lang/Exception; {:try_start_3b8 .. :try_end_3e2} :catch_3e9

    if-ne v0, v3, :cond_3e5

    .line 1081
    return-object v3

    .line 1138
    :cond_3e5
    move-object v3, v13

    .end local v13    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :goto_3e6
    move-object v12, v1

    move-object v13, v3

    goto :goto_3ed

    .line 1139
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v13    # "$result":Ljava/lang/Object;
    :catch_3e9
    move-exception v0

    move-object v3, v13

    .end local v13    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_3eb
    move-object v12, v1

    move-object v13, v3

    .line 1143
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v13    # "$result":Ljava/lang/Object;
    :goto_3ed
    :try_start_3ed
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v1, v12, Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeIsolation: Isolation removal completed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_407
    .catch Ljava/lang/Exception; {:try_start_3ed .. :try_end_407} :catch_409

    .line 1144
    move v8, v9

    goto :goto_418

    .line 1145
    :catch_409
    move-exception v0

    goto :goto_40d

    .end local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    :catch_40b
    move-exception v0

    move-object v12, v1

    .line 1146
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$removeIsolation$2;
    :goto_40d
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "removeIsolation failed"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1147
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_418
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1082
    return-object v0

    nop

    :pswitch_data_41e
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_af
        :pswitch_9e
        :pswitch_90
        :pswitch_82
        :pswitch_74
        :pswitch_66
        :pswitch_5a
        :pswitch_50
        :pswitch_44
        :pswitch_2a
        :pswitch_1c
    .end packed-switch

    :pswitch_data_43a
    .packed-switch 0x1
        :pswitch_299
        :pswitch_20f
    .end packed-switch
.end method
