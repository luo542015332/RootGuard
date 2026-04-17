.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnvScoreDetailViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->autoIsolateDetectors()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnvScoreDetailViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnvScoreDetailViewModel.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,271:1\n766#2:272\n857#2,2:273\n1477#2:275\n1502#2,3:276\n1505#2,3:286\n1238#2,4:291\n766#2:295\n857#2,2:296\n1855#2,2:298\n1549#2:300\n1620#2,3:301\n1774#2,4:304\n372#3,7:279\n453#3:289\n403#3:290\n*S KotlinDebug\n*F\n+ 1 EnvScoreDetailViewModel.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1\n*L\n159#1:272\n159#1:273,2\n164#1:275\n164#1:276,3\n164#1:286,3\n164#1:291,4\n235#1:295\n235#1:296,2\n235#1:298,2\n240#1:300\n240#1:301,3\n245#1:304,4\n164#1:279,7\n164#1:289\n164#1:290\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1"
    f = "EnvScoreDetailViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x4,
        0x4
    }
    l = {
        0xc9,
        0xcc,
        0xe5,
        0xe7,
        0xeb,
        0xfd,
        0xff,
        0x100
    }
    m = "invokeSuspend"
    n = {
        "suspiciousApps",
        "detected",
        "config",
        "isolatedCount",
        "failedCount",
        "suspiciousApps",
        "detected",
        "isolatedCount",
        "failedCount",
        "remainingResults",
        "isolatedPackages"
    }
    s = {
        "L$0",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "L$0",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 43

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 155
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    const-string v5, " \u4e2a\u53ef\u7591\u5e94\u7528"

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_6b4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    :try_start_1e
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_24

    move-object v2, v3

    goto/16 :goto_662

    .line 258
    :catch_24
    move-exception v0

    goto/16 :goto_690

    .line 155
    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_27
    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    :try_start_2f
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_641

    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_37
    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_43

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_61a

    .line 258
    :catch_43
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_690

    .line 155
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_48
    move-object/from16 v5, p0

    .local v5, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    iget-object v0, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/Set;

    .local v9, "isolatedPackages":Ljava/util/Set;
    iget-object v0, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .local v10, "remainingResults":Ljava/util/List;
    :try_start_56
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5c

    move-object v2, v8

    goto/16 :goto_4c7

    .line 238
    :catch_5c
    move-exception v0

    goto/16 :goto_517

    .line 155
    .end local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "isolatedPackages":Ljava/util/Set;
    .end local v10    # "remainingResults":Ljava/util/List;
    :pswitch_5f
    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    :try_start_63
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v8

    goto/16 :goto_4a0

    .end local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v8    # "$result":Ljava/lang/Object;
    :pswitch_69
    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_70} :catch_72

    goto/16 :goto_484

    .line 246
    :catch_72
    move-exception v0

    goto/16 :goto_5ed

    .line 155
    .end local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v8    # "$result":Ljava/lang/Object;
    :pswitch_75
    move-object/from16 v9, p0

    .local v9, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v10, p1

    .local v10, "$result":Ljava/lang/Object;
    iget v11, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$2:I

    iget v12, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$1:I

    .local v12, "failedCount":I
    iget v13, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$0:I

    .local v13, "isolatedCount":I
    iget-object v0, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .local v14, "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    iget-object v0, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/util/Iterator;

    iget-object v0, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/List;

    .local v16, "suspiciousApps":Ljava/util/List;
    :try_start_8f
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_98

    move-object v3, v9

    move-object v6, v10

    move-object/from16 v4, v16

    goto/16 :goto_375

    .line 212
    :catch_98
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    move-object v6, v10

    move v0, v11

    move-object/from16 v4, v16

    goto/16 :goto_3db

    .line 155
    .end local v9    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v12    # "failedCount":I
    .end local v13    # "isolatedCount":I
    .end local v14    # "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    .end local v16    # "suspiciousApps":Ljava/util/List;
    :pswitch_a1
    move-object/from16 v9, p0

    .restart local v9    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    iget v11, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$2:I

    iget v12, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$1:I

    .restart local v12    # "failedCount":I
    iget v13, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$0:I

    .restart local v13    # "isolatedCount":I
    iget-object v0, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v0, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget-object v14, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .restart local v14    # "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    iget-object v15, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    iget-object v6, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "suspiciousApps":Ljava/util/List;
    :try_start_bb
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c1

    move-object v4, v6

    goto/16 :goto_350

    .line 212
    .end local v0    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_c1
    move-exception v0

    move-object v2, v0

    move-object v4, v6

    move-object v3, v9

    move-object v6, v10

    move v0, v11

    goto/16 :goto_3db

    .line 155
    .end local v6    # "suspiciousApps":Ljava/util/List;
    .end local v9    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v12    # "failedCount":I
    .end local v13    # "isolatedCount":I
    .end local v14    # "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    :pswitch_c9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    move-object/from16 v6, p1

    .line 156
    .local v6, "$result":Ljava/lang/Object;
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v10, "EnvScoreDetailViewModel: autoIsolateDetectors \u5f00\u59cb\u6267\u884c"

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 159
    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_detectorResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v9}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_detectorResults$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 272
    .local v10, "$i$f$filter":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v11, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 273
    .local v12, "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_f0
    :goto_f0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_115

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .local v14, "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    const/4 v15, 0x0

    .line 160
    .local v15, "$i$a$-filter-EnvScoreDetailViewModel$autoIsolateDetectors$1$suspiciousApps$1":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->isSuspicious()Z

    move-result v17

    if-eqz v17, :cond_10e

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getRiskLevel()Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v3

    sget-object v4, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->SAFE:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    if-eq v3, v4, :cond_10e

    move v3, v8

    goto :goto_10f

    .end local v14    # "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    :cond_10e
    const/4 v3, 0x0

    .line 273
    .end local v15    # "$i$a$-filter-EnvScoreDetailViewModel$autoIsolateDetectors$1$suspiciousApps$1":I
    :goto_10f
    if-eqz v3, :cond_f0

    invoke-interface {v11, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 274
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_115
    nop

    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$filterTo":I
    move-object v3, v11

    check-cast v3, Ljava/util/List;

    .line 272
    nop

    .line 159
    .end local v10    # "$i$f$filter":I
    nop

    .line 163
    .local v3, "suspiciousApps":Ljava/util/List;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EnvScoreDetailViewModel: \u53ef\u7591\u5e94\u7528\u6570\u91cf = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 164
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object v9, v3

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 275
    .local v10, "$i$f$groupBy":I
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v11, Ljava/util/Map;

    .local v9, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .local v11, "destination$iv$iv":Ljava/util/Map;
    const/4 v12, 0x0

    .line 276
    .local v12, "$i$f$groupByTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v9    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    :goto_149
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_182

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 277
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .restart local v14    # "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    const/4 v15, 0x0

    .line 164
    .local v15, "$i$a$-groupBy-EnvScoreDetailViewModel$autoIsolateDetectors$1$1":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getRiskLevel()Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v14

    .line 277
    .end local v14    # "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    .end local v15    # "$i$a$-groupBy-EnvScoreDetailViewModel$autoIsolateDetectors$1$1":I
    nop

    .line 278
    .local v14, "key$iv$iv":Ljava/lang/Object;
    move-object v15, v11

    .local v15, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/16 v18, 0x0

    .line 279
    .local v18, "$i$f$getOrPut":I
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 280
    .local v19, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v19, :cond_178

    .line 281
    .end local v19    # "value$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 278
    .local v19, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    check-cast v20, Ljava/util/List;

    .line 281
    .end local v19    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object/from16 p1, v20

    .line 282
    .local p1, "answer$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v7, p1

    .end local p1    # "answer$iv$iv$iv":Ljava/lang/Object;
    .local v7, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v14    # "key$iv$iv":Ljava/lang/Object;
    .end local v15    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    move-object/from16 v19, v7

    .end local v7    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_179

    .line 285
    .local v19, "value$iv$iv$iv":Ljava/lang/Object;
    :cond_178
    nop

    .line 280
    .end local v19    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_179
    nop

    .line 278
    .end local v18    # "$i$f$getOrPut":I
    move-object/from16 v7, v19

    check-cast v7, Ljava/util/List;

    .line 286
    .local v7, "list$iv$iv":Ljava/util/List;
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 288
    .end local v7    # "list$iv$iv":Ljava/util/List;
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_182
    nop

    .line 275
    .end local v11    # "destination$iv$iv":Ljava/util/Map;
    .end local v12    # "$i$f$groupByTo":I
    nop

    .end local v10    # "$i$f$groupBy":I
    move-object v7, v11

    .line 164
    .local v7, "$this$mapValues$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 289
    .local v9, "$i$f$mapValues":I
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v11

    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v10, Ljava/util/Map;

    .local v7, "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    .local v10, "destination$iv$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 290
    .local v11, "$i$f$mapValuesTo":I
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    move-object v7, v12

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 291
    .local v12, "$i$f$associateByTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v7    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    :goto_1a2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1cb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 292
    .local v7, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v7

    check-cast v14, Ljava/util/Map$Entry;

    .local v14, "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v15, 0x0

    .line 290
    .local v15, "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 292
    .end local v14    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v15    # "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    move-object v15, v7

    check-cast v15, Ljava/util/Map$Entry;

    .local v15, "it":Ljava/util/Map$Entry;
    const/16 v18, 0x0

    .line 164
    .local v18, "$i$a$-mapValues-EnvScoreDetailViewModel$autoIsolateDetectors$1$2":I
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v15

    .end local v15    # "it":Ljava/util/Map$Entry;
    .end local v18    # "$i$a$-mapValues-EnvScoreDetailViewModel$autoIsolateDetectors$1$2":I
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v15

    .line 292
    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a2

    .line 294
    .end local v7    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_1cb
    nop

    .line 290
    .end local v12    # "$i$f$associateByTo":I
    nop

    .line 289
    .end local v10    # "destination$iv$iv":Ljava/util/Map;
    .end local v11    # "$i$f$mapValuesTo":I
    nop

    .end local v9    # "$i$f$mapValues":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EnvScoreDetailViewModel: \u98ce\u9669\u7ea7\u522b\u5206\u5e03: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v4, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 166
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1ff

    .line 167
    .end local v3    # "suspiciousApps":Ljava/util/List;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_message$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const-string v3, "\u6ca1\u6709\u53ef\u7591\u5e94\u7528\u9700\u8981\u9694\u79bb"

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 168
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "EnvScoreDetailViewModel: \u6ca1\u6709\u53ef\u7591\u5e94\u7528\u9700\u8981\u9694\u79bb"

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 172
    .restart local v3    # "suspiciousApps":Ljava/util/List;
    :cond_1ff
    iget-object v4, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, "isolatedCount":I
    const/4 v7, 0x0

    .line 177
    .local v7, "failedCount":I
    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v9}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_message$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u5f00\u59cb\u9694\u79bb "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u4e2a\u53ef\u7591\u5e94\u7528..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 178
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EnvScoreDetailViewModel: \u5f00\u59cb\u9694\u79bb "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v4

    move v12, v7

    move-object v15, v9

    move-object v4, v3

    move-object v3, v0

    const/4 v0, 0x0

    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v7    # "failedCount":I
    .local v3, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .local v4, "suspiciousApps":Ljava/util/List;
    .local v12, "failedCount":I
    .restart local v13    # "isolatedCount":I
    :goto_25e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_401

    move v7, v0

    .local v7, "index":I
    add-int/lit8 v11, v0, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .line 181
    .local v14, "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    nop

    .line 182
    add-int/lit8 v0, v7, 0x1

    :try_start_271
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u9694\u79bb\u8fdb\u5ea6: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .end local v7    # "index":I
    .local v0, "progress":Ljava/lang/String;
    iget-object v7, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v7}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_message$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getAppName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - \u6b63\u5728\u9694\u79bb "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 184
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getRiskLevel()Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_2c9} :catch_3d6

    move-object/from16 p1, v6

    .end local v6    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_2cb
    const-string v6, "EnvScoreDetailViewModel: \u6b63\u5728\u9694\u79bb "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", \u98ce\u9669\u7ea7\u522b: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 186
    .end local v0    # "progress":Ljava/lang/String;
    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .line 187
    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 188
    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getAppName()Ljava/lang/String;

    move-result-object v23

    .line 189
    const/16 v24, 0x1

    .line 190
    const/16 v25, 0x1

    .line 191
    const/16 v26, 0x1

    .line 192
    const/16 v27, 0x1

    .line 193
    const/16 v28, 0x1

    .line 194
    const/16 v29, 0x1

    .line 195
    const/16 v30, 0x0

    .line 196
    const/16 v31, 0x1

    .line 197
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v32

    .line 186
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const v38, 0xf800

    const/16 v39, 0x0

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v39}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .local v0, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget-object v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v2

    move-object v6, v3

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    iput-object v15, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$3:Ljava/lang/Object;

    iput v13, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$0:I

    iput v12, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$1:I

    iput v11, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$2:I

    const/4 v7, 0x1

    iput v7, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    invoke-virtual {v2, v0, v6}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_34a} :catch_3d0

    if-ne v2, v1, :cond_34d

    .line 155
    return-object v1

    .line 201
    :cond_34d
    move-object/from16 v10, p1

    move-object v9, v3

    .line 204
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v9, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .local v10, "$result":Ljava/lang/Object;
    :goto_350
    :try_start_350
    iget-object v2, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v2

    move-object v3, v9

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v4, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    iput-object v15, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    iput-object v14, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$3:Ljava/lang/Object;

    iput v13, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$0:I

    iput v12, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$1:I

    iput v11, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->I$2:I

    const/4 v6, 0x2

    iput v6, v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    invoke-virtual {v2, v0, v3}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_36f
    .catch Ljava/lang/Exception; {:try_start_350 .. :try_end_36f} :catch_3ca

    .end local v0    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    if-ne v2, v1, :cond_372

    .line 155
    return-object v1

    .line 204
    :cond_372
    move-object v3, v9

    move-object v6, v10

    move-object v10, v2

    .end local v9    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v10    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .restart local v6    # "$result":Ljava/lang/Object;
    :goto_375
    :try_start_375
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 205
    .local v0, "success":Z
    nop

    .end local v0    # "success":Z
    if-eqz v0, :cond_3a2

    .line 206
    add-int/lit8 v13, v13, 0x1

    .line 207
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnvScoreDetailViewModel: \u6210\u529f\u9694\u79bb "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move v0, v11

    const/4 v8, 0x1

    goto/16 :goto_25e

    .line 209
    :cond_3a2
    add-int/lit8 v12, v12, 0x1

    .line 210
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnvScoreDetailViewModel: \u5e94\u7528\u9694\u79bb\u5931\u8d25: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_3c0} :catch_3c6

    move-object/from16 v2, p0

    move v0, v11

    const/4 v8, 0x1

    .end local v14    # "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    goto/16 :goto_25e

    .line 212
    .restart local v14    # "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    :catch_3c6
    move-exception v0

    move-object v2, v0

    move v0, v11

    goto :goto_3db

    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v9    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .restart local v10    # "$result":Ljava/lang/Object;
    :catch_3ca
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    move-object v6, v10

    move v0, v11

    goto :goto_3db

    .end local v9    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v10    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_3d0
    move-exception v0

    move-object/from16 v6, p1

    move-object v2, v0

    move v0, v11

    goto :goto_3db

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v6    # "$result":Ljava/lang/Object;
    :catch_3d6
    move-exception v0

    move-object/from16 p1, v6

    move-object v2, v0

    move v0, v11

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    :goto_3db
    const/4 v7, 0x1

    add-int/2addr v12, v7

    .line 214
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v14}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EnvScoreDetailViewModel: \u9694\u79bb\u5931\u8d25: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Ljava/lang/Throwable;

    invoke-virtual {v8, v9, v10}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, p0

    move v8, v7

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v14    # "detected":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    goto/16 :goto_25e

    .line 180
    :cond_401
    move-object/from16 p1, v6

    .line 218
    .end local v4    # "suspiciousApps":Ljava/util/List;
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 219
    const-string v0, "\u5df2\u9694\u79bb "

    if-lez v12, :cond_42a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a\u53ef\u7591\u5e94\u7528\uff0c\u5931\u8d25 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43f

    .line 220
    .end local v12    # "failedCount":I
    :cond_42a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .end local v13    # "isolatedCount":I
    :goto_43f
    nop

    .line 223
    .local v0, "message":Ljava/lang/String;
    iget-object v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_message$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 224
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnvScoreDetailViewModel: \u9694\u79bb\u5b8c\u6210 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 227
    .end local v0    # "message":Ljava/lang/String;
    nop

    .line 228
    :try_start_462
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "EnvScoreDetailViewModel: \u7b49\u5f85 DataStore \u5199\u5165\u5b8c\u6210..."

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 229
    move-object v0, v3

    check-cast v0, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v3, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_47e
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_47e} :catch_5e9

    if-ne v0, v1, :cond_481

    .line 155
    return-object v1

    .line 229
    :cond_481
    move-object/from16 v8, p1

    move-object v5, v3

    .line 230
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .restart local v8    # "$result":Ljava/lang/Object;
    :goto_484
    :try_start_484
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "EnvScoreDetailViewModel: \u5f00\u59cb\u91cd\u65b0\u626b\u63cf\u68c0\u6d4b\u5668"

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 231
    iget-object v0, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->detectorScanner:Lcom/pandasu/turbo/util/DetectorScanner;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getDetectorScanner$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/util/DetectorScanner;

    move-result-object v0

    move-object v2, v5

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x4

    iput v3, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/util/DetectorScanner;->scanDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_49b
    .catch Ljava/lang/Exception; {:try_start_484 .. :try_end_49b} :catch_72

    if-ne v0, v1, :cond_49e

    .line 155
    return-object v1

    .line 231
    :cond_49e
    move-object v2, v8

    move-object v8, v0

    .line 155
    .end local v8    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_4a0
    :try_start_4a0
    check-cast v8, Ljava/util/List;

    move-object v10, v8

    .line 233
    .local v10, "remainingResults":Ljava/util/List;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;
    :try_end_4aa
    .catch Ljava/lang/Exception; {:try_start_4a0 .. :try_end_4aa} :catch_5e6

    move-object v9, v0

    .line 234
    .local v9, "isolatedPackages":Ljava/util/Set;
    nop

    .line 235
    :try_start_4ac
    iget-object v0, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getIsolationConfigs()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v3, v5

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v10, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    iput-object v9, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    invoke-static {v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4c7

    .line 155
    return-object v1

    :cond_4c7
    :goto_4c7
    check-cast v8, Ljava/lang/Iterable;

    move-object v0, v8

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 295
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 296
    .local v6, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_4d7
    :goto_4d7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4ef

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    check-cast v8, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v8, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v11, 0x0

    .line 235
    .local v11, "$i$a$-filter-EnvScoreDetailViewModel$autoIsolateDetectors$1$3":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v12

    .line 296
    .end local v8    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v11    # "$i$a$-filter-EnvScoreDetailViewModel$autoIsolateDetectors$1$3":I
    if-eqz v12, :cond_4d7

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4d7

    .line 297
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_4ef
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$filterTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 295
    nop

    .end local v3    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 235
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 298
    .local v3, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_4fb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_512

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v6, v0

    check-cast v6, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v6, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v7, 0x0

    .line 236
    .local v7, "$i$a$-forEach-EnvScoreDetailViewModel$autoIsolateDetectors$1$4":I
    invoke-virtual {v6}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_510
    .catch Ljava/lang/Exception; {:try_start_4ac .. :try_end_510} :catch_515

    .line 237
    nop

    .line 298
    .end local v0    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v7    # "$i$a$-forEach-EnvScoreDetailViewModel$autoIsolateDetectors$1$4":I
    goto :goto_4fb

    .line 299
    :cond_512
    nop

    .end local v3    # "$i$f$forEach":I
    move-object v8, v2

    goto :goto_517

    .line 238
    :catch_515
    move-exception v0

    move-object v8, v2

    .line 239
    .end local v2    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    :goto_517
    :try_start_517
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnvScoreDetailViewModel: \u5df2\u9694\u79bb\u5305\u540d: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 240
    iget-object v0, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_detectorResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_detectorResults$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    move-object v2, v10

    check-cast v2, Ljava/lang/Iterable;

    .end local v10    # "remainingResults":Ljava/util/List;
    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 300
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v2, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 301
    .local v6, "$i$f$mapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_54b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 302
    .local v2, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v2

    check-cast v21, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .end local v2    # "item$iv$iv":Ljava/lang/Object;
    .local v21, "app":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    const/4 v2, 0x0

    .line 241
    .local v2, "$i$a$-map-EnvScoreDetailViewModel$autoIsolateDetectors$1$5":I
    invoke-virtual/range {v21 .. v21}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_577

    .line 242
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget-object v25, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->SAFE:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    const/16 v26, 0x0

    const/16 v27, 0x13

    const/16 v28, 0x0

    invoke-static/range {v21 .. v28}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->copy$default(Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;Ljava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/util/DetectorScanner$RiskLevel;Ljava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    move-result-object v10

    goto :goto_579

    .line 243
    :cond_577
    move-object/from16 v10, v21

    .line 241
    .end local v21    # "app":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    :goto_579
    nop

    .line 302
    .end local v2    # "$i$a$-map-EnvScoreDetailViewModel$autoIsolateDetectors$1$5":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_54b

    .line 303
    .end local v9    # "isolatedPackages":Ljava/util/Set;
    :cond_57e
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 300
    nop

    .line 240
    .end local v3    # "$i$f$map":I
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v5, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_detectorResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_detectorResults$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$f$count":I
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_5a4

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5a4

    const/4 v4, 0x0

    goto :goto_5c6

    .line 305
    :cond_5a4
    const/4 v4, 0x0

    .line 306
    .local v4, "count$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v2    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_5a9
    :goto_5a9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v7, v2

    check-cast v7, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .local v7, "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    const/4 v9, 0x0

    .line 245
    .local v9, "$i$a$-count-EnvScoreDetailViewModel$autoIsolateDetectors$1$6":I
    invoke-virtual {v7}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->isSuspicious()Z

    move-result v10

    .line 306
    .end local v7    # "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    .end local v9    # "$i$a$-count-EnvScoreDetailViewModel$autoIsolateDetectors$1$6":I
    if-eqz v10, :cond_5a9

    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_5a9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_5a9

    .line 307
    .end local v2    # "element$iv":Ljava/lang/Object;
    :cond_5c5
    nop

    .end local v3    # "$i$f$count":I
    .end local v4    # "count$iv":I
    :goto_5c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnvScoreDetailViewModel: \u91cd\u65b0\u626b\u63cf\u5b8c\u6210\uff0c\u5269\u4f59 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u672a\u9694\u79bb\u68c0\u6d4b\u5668"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_5e2
    .catch Ljava/lang/Exception; {:try_start_517 .. :try_end_5e2} :catch_72

    move-object v0, v1

    move-object v1, v5

    move-object v3, v8

    goto :goto_5fa

    .line 246
    .end local v8    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :catch_5e6
    move-exception v0

    move-object v8, v2

    goto :goto_5ed

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .local v3, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_5e9
    move-exception v0

    move-object/from16 v8, p1

    move-object v5, v3

    .line 247
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .restart local v8    # "$result":Ljava/lang/Object;
    :goto_5ed
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "EnvScoreDetailViewModel: \u91cd\u65b0\u626b\u63cf\u68c0\u6d4b\u5668\u5931\u8d25"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v1, v5

    move-object v3, v8

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .end local v8    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;
    .local v3, "$result":Ljava/lang/Object;
    :goto_5fa
    nop

    .line 252
    :try_start_5fb
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "EnvScoreDetailViewModel: \u7b49\u5f85\u9694\u79bb\u914d\u7f6e\u5199\u5165\u5b8c\u6210\u540e\u66f4\u65b0\u73af\u5883\u68c0\u6d4b..."

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 253
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_61a

    .line 155
    return-object v0

    .line 254
    :cond_61a
    :goto_61a
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "EnvScoreDetailViewModel: \u5f00\u59cb\u66f4\u65b0\u73af\u5883\u68c0\u6d4b"

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 255
    iget-object v2, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_envChecks$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x7

    iput v6, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->runEnvironmentCheckDetail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_63c

    .line 155
    return-object v0

    .line 255
    :cond_63c
    move-object/from16 v40, v2

    move-object v2, v0

    move-object/from16 v0, v40

    :goto_641
    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 256
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_moduleStatuses:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_moduleStatuses$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->L$0:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->label:I

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->detectModules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_65d
    .catch Ljava/lang/Exception; {:try_start_5fb .. :try_end_65d} :catch_24

    if-ne v4, v2, :cond_660

    .line 155
    return-object v2

    .line 256
    :cond_660
    move-object v2, v3

    move-object v3, v4

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_662
    :try_start_662
    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v3, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_envChecks$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnvScoreDetailViewModel: \u73af\u5883\u68c0\u6d4b\u5df2\u66f4\u65b0\uff0c\u68c0\u6d4b\u9879: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_68d
    .catch Ljava/lang/Exception; {:try_start_662 .. :try_end_68d} :catch_68e

    goto :goto_69b

    .line 258
    :catch_68e
    move-exception v0

    move-object v3, v2

    .line 259
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_690
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "EnvScoreDetailViewModel: \u66f4\u65b0\u73af\u5883\u68c0\u6d4b\u5931\u8d25"

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_69b
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;->this$0:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "EnvScoreDetailViewModel: autoIsolateDetectors \u6267\u884c\u5b8c\u6210"

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_6b4
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_a1
        :pswitch_75
        :pswitch_69
        :pswitch_5f
        :pswitch_48
        :pswitch_37
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method
