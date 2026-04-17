.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->startOneClickIsolation()V
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,5:444\n230#2,5:452\n230#2,5:457\n230#2,5:466\n230#2,5:475\n230#2,5:480\n1747#3,3:441\n819#3:449\n847#3,2:450\n1559#3:462\n1590#3,3:463\n1593#3:471\n1864#3,3:472\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1\n*L\n306#1:436,5\n330#1:444,5\n354#1:452,5\n358#1:457,5\n363#1:466,5\n407#1:475,5\n411#1:480,5\n311#1:441,3\n342#1:449\n342#1:450,2\n361#1:462\n361#1:463,3\n361#1:471\n378#1:472,3\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel$startOneClickIsolation$1"
    f = "IsolationViewModel.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x152,
        0x16c,
        0x173,
        0x17d
    }
    m = "invokeSuspend"
    n = {
        "allApps",
        "apps",
        "destination$iv$iv",
        "app",
        "index$iv$iv",
        "allApps",
        "apps",
        "configs",
        "allApps",
        "apps",
        "configs",
        "successfulCount",
        "failedCount",
        "config",
        "index$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$4",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$7",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $preset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->$preset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->$preset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 53

    const-string v1, "\n"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 305
    move-object/from16 v3, p0

    iget v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->label:I

    const-string v4, " ("

    const-string v5, ": "

    const-string v6, "/"

    packed-switch v0, :pswitch_data_a1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    move-object/from16 v4, p0

    .local v4, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .local v11, "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    iget v12, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->I$0:I

    .local v12, "index$iv":I
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$7:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v13, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$6:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/Iterator;

    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$5:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/internal/Ref$IntRef;

    .local v16, "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/internal/Ref$IntRef;

    .local v17, "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/List;

    .local v18, "configs":Ljava/util/List;
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$1:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .local v19, "apps":Ljava/util/List;
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$0:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    .local v20, "allApps":Ljava/util/List;
    :try_start_50
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_5e

    move-object/from16 v27, v1

    move-object v1, v7

    move-object/from16 v3, v17

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    goto/16 :goto_72c

    .line 384
    :catch_5e
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v3, v16

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    goto/16 :goto_804

    .line 305
    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v11    # "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    .end local v12    # "index$iv":I
    .end local v13    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v16    # "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v17    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v18    # "configs":Ljava/util/List;
    .end local v19    # "apps":Ljava/util/List;
    .end local v20    # "allApps":Ljava/util/List;
    :pswitch_69
    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "configs":Ljava/util/List;
    iget-object v8, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "apps":Ljava/util/List;
    iget-object v11, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "allApps":Ljava/util/List;
    :try_start_79
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_80

    move-object/from16 v27, v1

    goto/16 :goto_67e

    .line 408
    .end local v0    # "configs":Ljava/util/List;
    .end local v8    # "apps":Ljava/util/List;
    .end local v11    # "allApps":Ljava/util/List;
    :catch_80
    move-exception v0

    move-object v1, v4

    move-object v8, v7

    goto/16 :goto_993

    .line 305
    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_85
    move-object/from16 v11, p0

    .local v11, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    move-object/from16 v12, p1

    .local v12, "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$f$mapIndexed":I
    const/4 v13, 0x0

    .local v13, "$i$f$mapIndexedTo":I
    const/4 v14, 0x0

    .local v14, "$i$a$-mapIndexed-IsolationViewModel$startOneClickIsolation$1$configs$1":I
    iget v15, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->I$0:I

    .local v15, "index$iv$iv":I
    iget-object v7, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v8, "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    iget-object v9, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    move/from16 p1, v0

    .end local v0    # "$i$f$mapIndexed":I
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$i$f$mapIndexed":I
    iget-object v0, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-object/from16 v20, v0

    iget-object v0, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    move-object/from16 v21, v0

    iget-object v0, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v22, v0

    .local v22, "apps":Ljava/util/List;
    iget-object v0, v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "allApps":Ljava/util/List;
    :try_start_b6
    invoke-static {v12}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_cd

    move-object/from16 v27, v1

    move-object v1, v12

    move/from16 v18, v14

    move-object/from16 v3, v21

    move-object v12, v0

    move-object v14, v9

    move-object/from16 v9, v22

    move/from16 v0, p1

    move/from16 v22, v13

    move-object v13, v10

    move-object/from16 v10, v20

    goto/16 :goto_589

    .line 408
    .end local v0    # "allApps":Ljava/util/List;
    .end local v8    # "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$i$f$mapIndexedTo":I
    .end local v14    # "$i$a$-mapIndexed-IsolationViewModel$startOneClickIsolation$1$configs$1":I
    .end local v15    # "index$iv$iv":I
    .end local v22    # "apps":Ljava/util/List;
    .end local p1    # "$i$f$mapIndexed":I
    :catch_cd
    move-exception v0

    move-object v1, v11

    move-object v8, v12

    goto/16 :goto_993

    .line 305
    .end local v11    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v12    # "$result":Ljava/lang/Object;
    :pswitch_d2
    move-object/from16 v7, p0

    .local v7, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    :try_start_d6
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_dd

    move-object v0, v8

    const/4 v3, 0x0

    goto/16 :goto_26c

    .line 408
    :catch_dd
    move-exception v0

    move-object v1, v7

    goto/16 :goto_993

    .line 305
    .end local v7    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v8    # "$result":Ljava/lang/Object;
    :pswitch_e1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    move-object/from16 v8, p1

    .line 306
    .restart local v8    # "$result":Ljava/lang/Object;
    iget-object v0, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v9, 0x0

    .line 436
    .local v9, "$i$f$update":I
    :goto_ef
    nop

    .line 437
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 438
    .local v10, "prevValue$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v11, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v20, v11

    const/4 v12, 0x0

    .line 306
    .local v12, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$1":I
    new-instance v21, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-object/from16 v29, v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xe

    const/16 v27, 0x0

    invoke-direct/range {v21 .. v27}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0x3fecf

    const/16 v40, 0x0

    invoke-static/range {v20 .. v40}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v11

    .line 438
    .end local v11    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v12    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$1":I
    nop

    .line 439
    .local v11, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v10, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a08

    .line 440
    nop

    .line 309
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v9    # "$i$f$update":I
    .end local v10    # "prevValue$iv":Ljava/lang/Object;
    .end local v11    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 310
    const/4 v9, 0x1

    :try_start_13e
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "id"
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_142} :catch_1c6

    const/4 v10, 0x0

    :try_start_143
    aput-object v9, v0, v10
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_145} :catch_1c1

    :try_start_145
    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    .local v0, "it":Lcom/topjohnwu/superuser/Shell$Result;
    const/4 v9, 0x0

    .line 311
    .local v9, "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_1b8

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v10

    const-string v11, "getOut(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Iterable;

    move-object v0, v10

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 441
    .local v10, "$i$f$any":I
    instance-of v11, v0, Ljava/util/Collection;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_163} :catch_1c6

    if-eqz v11, :cond_17a

    :try_start_165
    move-object v11, v0

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_16c} :catch_175

    if-eqz v11, :cond_17a

    move-object/from16 p1, v8

    move/from16 v18, v9

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_1b4

    .line 313
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .end local v10    # "$i$f$any":I
    :catch_175
    move-exception v0

    move-object/from16 p1, v8

    const/4 v3, 0x0

    goto :goto_1ca

    .line 442
    .restart local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .restart local v10    # "$i$f$any":I
    :cond_17a
    :try_start_17a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    :goto_17e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .local v12, "line":Ljava/lang/String;
    const/4 v13, 0x0

    .line 311
    .local v13, "$i$a$-any-IsolationViewModel$startOneClickIsolation$1$hasRoot$1$1":I
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    const-string v15, "uid=0"

    check-cast v15, Ljava/lang/CharSequence;
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_196} :catch_1c6

    move-object/from16 p1, v8

    move/from16 v18, v9

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .local v18, "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .local p1, "$result":Ljava/lang/Object;
    :try_start_19d
    invoke-static {v14, v15, v3, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v14
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a1} :catch_1ac

    .line 442
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "$i$a$-any-IsolationViewModel$startOneClickIsolation$1$hasRoot$1$1":I
    if-eqz v14, :cond_1a5

    const/4 v0, 0x1

    goto :goto_1b4

    :cond_1a5
    move-object/from16 v3, p0

    move-object/from16 v8, p1

    move/from16 v9, v18

    goto :goto_17e

    .line 313
    .end local v0    # "element$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$any":I
    .end local v18    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    :catch_1ac
    move-exception v0

    goto :goto_1ca

    .line 443
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .restart local v10    # "$i$f$any":I
    :cond_1ae
    move-object/from16 p1, v8

    move/from16 v18, v9

    const/4 v3, 0x0

    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .restart local v18    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    move v0, v3

    .end local v10    # "$i$f$any":I
    :goto_1b4
    if-eqz v0, :cond_1bd

    const/4 v0, 0x1

    goto :goto_1be

    .line 311
    .end local v18    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "it":Lcom/topjohnwu/superuser/Shell$Result;
    .restart local v8    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    :cond_1b8
    move-object/from16 p1, v8

    move/from16 v18, v9

    const/4 v3, 0x0

    .line 443
    .end local v0    # "it":Lcom/topjohnwu/superuser/Shell$Result;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .restart local v18    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_1bd
    move v0, v3

    .line 311
    :goto_1be
    nop

    .line 310
    .end local v18    # "$i$a$-let-IsolationViewModel$startOneClickIsolation$1$hasRoot$1":I
    move v10, v0

    goto :goto_1d5

    .line 313
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    :catch_1c1
    move-exception v0

    move-object/from16 p1, v8

    move v3, v10

    goto :goto_1ca

    :catch_1c6
    move-exception v0

    move-object/from16 p1, v8

    const/4 v3, 0x0

    .line 314
    .end local v8    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_1ca
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "Root\u6743\u9650\u68c0\u67e5\u5f02\u5e38"

    move-object v10, v0

    check-cast v10, Ljava/lang/Throwable;

    invoke-virtual {v8, v9, v10}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    move v10, v3

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d5
    move v0, v10

    .line 318
    .local v0, "hasRoot":Z
    if-nez v0, :cond_235

    .line 329
    .end local v0    # "hasRoot":Z
    nop

    .line 319
    const-string v25, "PandaSU \u6ca1\u6709 Root \u6743\u9650\uff01\n\n\u8bf7\u6309\u7167\u4ee5\u4e0b\u6b65\u9aa4\u64cd\u4f5c\uff1a\n1. \u6253\u5f00 KernelSU \u7ba1\u7406\u5668\n2. \u627e\u5230 PandaSU (com.pandasu.turbo)\n3. \u70b9\u51fb PandaSU\uff0c\u6388\u4e88 Root \u6743\u9650\n4. \u8fd4\u56de PandaSU \u91cd\u8bd5\n\n\u5982\u679c\u5df2\u7ecf\u6388\u6743\uff0c\u8bf7\u91cd\u542f PandaSU \u5e94\u7528"

    .line 330
    .local v25, "errorMsg":Ljava/lang/String;
    iget-object v0, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    .local v8, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v9, 0x0

    .line 444
    .local v9, "$i$f$update":I
    :cond_1e2
    nop

    .line 445
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 446
    .local v0, "prevValue$iv":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v1, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v20, v1

    const/4 v2, 0x0

    .line 330
    .local v2, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$2":I
    new-instance v10, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-object/from16 v29, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0x3feef

    const/16 v40, 0x0

    invoke-static/range {v20 .. v40}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    .line 446
    .end local v1    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v2    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$2":I
    nop

    .line 447
    .local v1, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v8, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 448
    nop

    .line 331
    .end local v0    # "prevValue$iv":Ljava/lang/Object;
    .end local v1    # "nextValue$iv":Ljava/lang/Object;
    .end local v8    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v9    # "$i$f$update":I
    iget-object v0, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 334
    .end local v25    # "errorMsg":Ljava/lang/String;
    :cond_235
    nop

    .line 335
    :try_start_236
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v8, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->$preset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4e00\u952e\u9694\u79bb\u5f00\u59cb\uff0c\u9884\u8bbe: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0cRoot\u6743\u9650: \u5df2\u6388\u4e88"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 338
    iget-object v0, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getOneClickIsolationHelper$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    move-result-object v0

    move-object v8, v7

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x1

    iput v9, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->label:I

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->scanInstalledApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_266
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_266} :catch_98f

    if-ne v8, v2, :cond_269

    .line 305
    return-object v2

    .line 338
    :cond_269
    move-object v0, v8

    move-object/from16 v8, p1

    .line 305
    .end local p1    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    :goto_26c
    :try_start_26c
    check-cast v0, Ljava/util/List;

    .line 339
    .local v0, "allApps":Ljava/util/List;
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u626b\u63cf\u5230 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u4e2a\u5e94\u7528"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 342
    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 449
    .local v10, "$i$f$filterNot":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v9, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .local v11, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 450
    .local v12, "$i$f$filterNotTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v9    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    :goto_2a0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_33e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v14, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v15, 0x0

    .line 343
    .local v15, "$i$a$-filterNot-IsolationViewModel$startOneClickIsolation$1$apps$1":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v18

    .line 344
    .local v18, "isSystem":Z
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v2

    const-string v2, "com.pandasu.turbo"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 345
    .local v2, "isSelf":Z
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_2c0} :catch_98a

    move-object/from16 p1, v8

    .end local v8    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_2c2
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    move/from16 v22, v10

    .end local v10    # "$i$f$filterNot":I
    .local v22, "$i$f$filterNot":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move/from16 v23, v12

    if-eqz v18, :cond_2d2

    const/4 v12, 0x1

    goto :goto_2d3

    :cond_2d2
    const/4 v12, 0x0

    .end local v12    # "$i$f$filterNotTo":I
    .local v23, "$i$f$filterNotTo":I
    :goto_2d3
    if-eqz v2, :cond_2d9

    move-object/from16 v24, v13

    const/4 v13, 0x1

    goto :goto_2dc

    :cond_2d9
    move-object/from16 v24, v13

    const/4 v13, 0x0

    :goto_2dc
    move/from16 v25, v15

    .end local v15    # "$i$a$-filterNot-IsolationViewModel$startOneClickIsolation$1$apps$1":I
    .local v25, "$i$a$-filterNot-IsolationViewModel$startOneClickIsolation$1$apps$1":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v15

    move-object/from16 v26, v14

    .end local v14    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .local v26, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v1

    const-string v1, "\u5e94\u7528: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "), \u7cfb\u7edf\u5e94\u7528: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", \u81ea\u8eab: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", \u7c7b\u522b: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 346
    .end local v26    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    if-nez v18, :cond_329

    if-eqz v2, :cond_327

    goto :goto_329

    :cond_327
    const/4 v1, 0x0

    .end local v2    # "isSelf":Z
    .end local v18    # "isSystem":Z
    goto :goto_32a

    :cond_329
    :goto_329
    const/4 v1, 0x1

    .line 450
    .end local v25    # "$i$a$-filterNot-IsolationViewModel$startOneClickIsolation$1$apps$1":I
    :goto_32a
    if-nez v1, :cond_32f

    invoke-interface {v11, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_32f
    move-object/from16 v8, p1

    move-object/from16 v2, v21

    move/from16 v10, v22

    move/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v1, v27

    const/4 v3, 0x0

    goto/16 :goto_2a0

    .line 451
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$filterNot":I
    .end local v23    # "$i$f$filterNotTo":I
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    .restart local v10    # "$i$f$filterNot":I
    .restart local v12    # "$i$f$filterNotTo":I
    :cond_33e
    move-object/from16 v27, v1

    move-object/from16 v21, v2

    move-object/from16 p1, v8

    move/from16 v22, v10

    move/from16 v23, v12

    .end local v8    # "$result":Ljava/lang/Object;
    .end local v10    # "$i$f$filterNot":I
    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$filterNotTo":I
    .restart local v22    # "$i$f$filterNot":I
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v1, v11

    check-cast v1, Ljava/util/List;

    .line 449
    nop

    .line 342
    .end local v22    # "$i$f$filterNot":I
    nop

    .line 349
    .local v1, "apps":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8fc7\u6ee4\u540e\u5e94\u7528\u6570\u91cf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3ee

    .line 352
    .end local v1    # "apps":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u627e\u5230\u7528\u6237\u5e94\u7528\uff08\u603b\u5e94\u7528\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 353
    .local v0, "errorMsg":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 354
    iget-object v1, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 452
    .local v2, "$i$f$update":I
    :cond_39b
    nop

    .line 453
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 454
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v18, v3

    check-cast v18, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v18, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/4 v4, 0x0

    .line 354
    .local v4, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$3":I
    new-instance v27, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xf

    const/4 v14, 0x0

    move-object/from16 v8, v27

    invoke-direct/range {v8 .. v14}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0x3feef

    const/16 v38, 0x0

    move-object/from16 v23, v0

    invoke-static/range {v18 .. v38}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v5

    .line 454
    .end local v4    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$3":I
    .end local v18    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v4, v5

    .line 455
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39b

    .line 456
    nop

    .line 355
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    iget-object v1, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 358
    .local v0, "allApps":Ljava/util/List;
    .local v1, "apps":Ljava/util/List;
    :cond_3ee
    iget-object v2, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v3, 0x0

    .line 457
    .local v3, "$i$f$update":I
    :goto_3f5
    nop

    .line 458
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 459
    .local v8, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v28, v8

    check-cast v28, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v28, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/4 v9, 0x0

    .line 358
    .local v9, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$4":I
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getOneClickProgress()Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v40

    const/16 v41, 0x0

    const/16 v42, 0xb

    const/16 v43, 0x0

    invoke-static/range {v37 .. v43}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;ZIILjava/lang/String;ILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const v47, 0x3feff

    const/16 v48, 0x0

    invoke-static/range {v28 .. v48}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v10

    .line 459
    .end local v9    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$4":I
    .end local v28    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v9, v10

    .line 460
    .local v9, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97a

    .line 461
    nop

    .line 360
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v8    # "prevValue$iv":Ljava/lang/Object;
    .end local v9    # "nextValue$iv":Ljava/lang/Object;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f00\u59cb\u751f\u6210 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " \u4e2a\u5e94\u7528\u7684\u9694\u79bb\u914d\u7f6e"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 361
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v8, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->$preset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    .local v2, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 462
    .local v9, "$i$f$mapIndexed":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v2, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 463
    .local v11, "$i$f$mapIndexedTo":I
    const/4 v12, 0x0

    .line 464
    .local v12, "index$iv$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13
    :try_end_485
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_485} :catch_98f

    move v14, v11

    move-object/from16 v2, v21

    move-object v11, v0

    move v0, v9

    move-object v9, v1

    move-object/from16 v1, p1

    .end local v2    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$i$f$mapIndexed":I
    .local v1, "$result":Ljava/lang/Object;
    .local v9, "apps":Ljava/util/List;
    .local v11, "allApps":Ljava/util/List;
    .local v14, "$i$f$mapIndexedTo":I
    :goto_48d
    :try_start_48d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_625

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15
    :try_end_497
    .catch Ljava/lang/Exception; {:try_start_48d .. :try_end_497} :catch_973

    .line 465
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move/from16 p1, v0

    .end local v0    # "$i$f$mapIndexed":I
    .local p1, "$i$f$mapIndexed":I
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    if-gez v12, :cond_4a6

    :try_start_49d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_4a0
    .catch Ljava/lang/Exception; {:try_start_49d .. :try_end_4a0} :catch_4a1

    goto :goto_4a6

    .line 408
    .end local v0    # "index$iv$iv":I
    .end local v9    # "apps":Ljava/util/List;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "allApps":Ljava/util/List;
    .end local v14    # "$i$f$mapIndexedTo":I
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    .end local p1    # "$i$f$mapIndexed":I
    :catch_4a1
    move-exception v0

    move-object v8, v1

    move-object v1, v7

    goto/16 :goto_993

    .line 465
    .restart local v0    # "index$iv$iv":I
    .restart local v9    # "apps":Ljava/util/List;
    .restart local v10    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v11    # "allApps":Ljava/util/List;
    .restart local v14    # "$i$f$mapIndexedTo":I
    .restart local v15    # "item$iv$iv":Ljava/lang/Object;
    .restart local p1    # "$i$f$mapIndexed":I
    :cond_4a6
    :goto_4a6
    :try_start_4a6
    move-object/from16 v18, v15

    check-cast v18, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    :try_end_4aa
    .catch Ljava/lang/Exception; {:try_start_4a6 .. :try_end_4aa} :catch_973

    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v15, v18

    .local v12, "i":I
    .local v15, "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/16 v18, 0x0

    .line 362
    .local v18, "$i$a$-mapIndexed-IsolationViewModel$startOneClickIsolation$1$configs$1":I
    move-object/from16 v21, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local v21, "$result":Ljava/lang/Object;
    :try_start_4b0
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move/from16 v22, v14

    .end local v14    # "$i$f$mapIndexedTo":I
    .local v22, "$i$f$mapIndexedTo":I
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v23, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v24, v0

    .end local v0    # "index$iv$iv":I
    .local v24, "index$iv$iv":I
    invoke-virtual {v15}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v13

    invoke-virtual {v15}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v26, v10

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .local v26, "destination$iv$iv":Ljava/util/Collection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v8

    const-string v8, "\u5904\u7406\u5e94\u7528 "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 363
    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 466
    .local v1, "$i$f$update":I
    :goto_505
    nop

    .line 467
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 468
    .local v2, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v29, v2

    check-cast v29, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v29, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/4 v8, 0x0

    .line 363
    .local v8, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$configs$1$1":I
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getOneClickProgress()Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-result-object v38

    const/16 v39, 0x0

    add-int/lit8 v40, v12, 0x1

    const/16 v41, 0x0

    invoke-virtual {v15}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x5

    const/16 v44, 0x0

    invoke-static/range {v38 .. v44}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;ZIILjava/lang/String;ILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const v48, 0x3feff

    const/16 v49, 0x0

    invoke-static/range {v29 .. v49}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v10

    .line 468
    .end local v8    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$configs$1$1":I
    .end local v29    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v8, v10

    .line 469
    .local v8, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v2, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60b

    .line 470
    .end local v12    # "i":I
    nop

    .line 364
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v8    # "nextValue$iv":Ljava/lang/Object;
    iput-object v11, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$0:Ljava/lang/Object;

    iput-object v9, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$1:Ljava/lang/Object;

    iput-object v3, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$2:Ljava/lang/Object;

    move-object/from16 v10, v28

    iput-object v10, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$3:Ljava/lang/Object;

    move-object/from16 v13, v26

    .end local v26    # "destination$iv$iv":Ljava/util/Collection;
    .local v13, "destination$iv$iv":Ljava/util/Collection;
    iput-object v13, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$4:Ljava/lang/Object;

    move-object/from16 v14, v25

    iput-object v14, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$5:Ljava/lang/Object;

    iput-object v15, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$6:Ljava/lang/Object;

    iput-object v13, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$7:Ljava/lang/Object;

    move/from16 v0, v24

    .end local v24    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    iput v0, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->I$0:I

    const/4 v1, 0x2

    iput v1, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->label:I

    const-wide/16 v1, 0xa

    invoke-static {v1, v2, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_57b
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_57b} :catch_96e

    move-object/from16 v2, v23

    if-ne v1, v2, :cond_580

    .line 305
    return-object v2

    .line 364
    :cond_580
    move-object v12, v11

    move-object v8, v15

    move-object/from16 v1, v21

    move v15, v0

    move-object v11, v7

    move-object v7, v13

    move/from16 v0, p1

    .line 365
    .end local v7    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v21    # "$result":Ljava/lang/Object;
    .end local p1    # "$i$f$mapIndexed":I
    .local v0, "$i$f$mapIndexed":I
    .local v1, "$result":Ljava/lang/Object;
    .local v8, "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .local v11, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v12, "allApps":Ljava/util/List;
    .local v15, "index$iv$iv":I
    :goto_589
    move/from16 p1, v0

    .end local v0    # "$i$f$mapIndexed":I
    .restart local p1    # "$i$f$mapIndexed":I
    :try_start_58b
    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getOneClickIsolationHelper$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generateIsolationConfig(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v0

    .line 366
    .end local v8    # "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .local v0, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_595
    .catch Ljava/lang/Exception; {:try_start_58b .. :try_end_595} :catch_603

    move-object/from16 v21, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v21    # "$result":Ljava/lang/Object;
    :try_start_597
    invoke-virtual {v0}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v2

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getHideMagisk()Z

    move-result v2

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getSandboxRule()Lcom/pandasu/turbo/data/model/SandboxRule;

    move-result-object v24

    if-eqz v24, :cond_5b2

    invoke-virtual/range {v24 .. v24}, Lcom/pandasu/turbo/data/model/SandboxRule;->getLevel()Lcom/pandasu/turbo/data/model/SandboxLevel;

    move-result-object v24

    move-object/from16 v50, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v50

    goto :goto_5b5

    :cond_5b2
    move-object/from16 v24, v3

    const/4 v3, 0x0

    :goto_5b5
    move-object/from16 v25, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v9

    .end local v9    # "apps":Ljava/util/List;
    .local v26, "apps":Ljava/util/List;
    const-string v9, "\u751f\u6210\u914d\u7f6e: \u5305\u540d="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", \u9690\u85cfMagisk="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u9694\u79bb\u7ea7\u522b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 367
    nop

    .line 465
    .end local v0    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v18    # "$i$a$-mapIndexed-IsolationViewModel$startOneClickIsolation$1$configs$1":I
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5e7
    .catch Ljava/lang/Exception; {:try_start_597 .. :try_end_5e7} :catch_5fd

    move/from16 v0, p1

    move-object v8, v10

    move-object v7, v11

    move-object v11, v12

    move-object v10, v13

    move-object v13, v14

    move v12, v15

    move-object/from16 v1, v21

    move/from16 v14, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v26

    goto/16 :goto_48d

    .line 408
    .end local v12    # "allApps":Ljava/util/List;
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v15    # "index$iv$iv":I
    .end local v22    # "$i$f$mapIndexedTo":I
    .end local v26    # "apps":Ljava/util/List;
    .end local p1    # "$i$f$mapIndexed":I
    :catch_5fd
    move-exception v0

    move-object v1, v11

    move-object/from16 v8, v21

    goto/16 :goto_993

    .end local v21    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :catch_603
    move-exception v0

    move-object/from16 v21, v1

    move-object v1, v11

    move-object/from16 v8, v21

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v21    # "$result":Ljava/lang/Object;
    goto/16 :goto_993

    .line 469
    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v1, "$i$f$update":I
    .restart local v2    # "prevValue$iv":Ljava/lang/Object;
    .restart local v7    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v8, "nextValue$iv":Ljava/lang/Object;
    .restart local v9    # "apps":Ljava/util/List;
    .local v11, "allApps":Ljava/util/List;
    .local v12, "i":I
    .local v15, "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .restart local v18    # "$i$a$-mapIndexed-IsolationViewModel$startOneClickIsolation$1$configs$1":I
    .restart local v22    # "$i$f$mapIndexedTo":I
    .restart local v24    # "index$iv$iv":I
    .local v26, "destination$iv$iv":Ljava/util/Collection;
    .restart local p1    # "$i$f$mapIndexed":I
    :cond_60b
    move-object/from16 v16, v0

    move-object/from16 v0, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v28

    const/16 v23, 0x2

    move-object/from16 v25, v4

    move/from16 v4, v24

    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v24    # "index$iv$iv":I
    .end local v26    # "destination$iv$iv":Ljava/util/Collection;
    .local v4, "index$iv$iv":I
    .restart local v13    # "destination$iv$iv":Ljava/util/Collection;
    .local v16, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v4, v25

    move-object/from16 v25, v14

    goto/16 :goto_505

    .line 471
    .end local v2    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "index$iv$iv":I
    .end local v8    # "nextValue$iv":Ljava/lang/Object;
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v15    # "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v16    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v18    # "$i$a$-mapIndexed-IsolationViewModel$startOneClickIsolation$1$configs$1":I
    .end local v21    # "$result":Ljava/lang/Object;
    .end local v22    # "$i$f$mapIndexedTo":I
    .end local p1    # "$i$f$mapIndexed":I
    .local v0, "$i$f$mapIndexed":I
    .local v1, "$result":Ljava/lang/Object;
    .restart local v10    # "destination$iv$iv":Ljava/util/Collection;
    .local v12, "index$iv$iv":I
    .restart local v14    # "$i$f$mapIndexedTo":I
    :cond_625
    move/from16 p1, v0

    move-object/from16 v21, v1

    move-object v0, v2

    move-object v13, v10

    move/from16 v22, v14

    .end local v0    # "$i$f$mapIndexed":I
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "index$iv$iv":I
    .end local v14    # "$i$f$mapIndexedTo":I
    .restart local v21    # "$result":Ljava/lang/Object;
    .restart local p1    # "$i$f$mapIndexed":I
    :try_start_62d
    move-object v1, v13

    check-cast v1, Ljava/util/List;

    .line 462
    nop

    .line 361
    .end local p1    # "$i$f$mapIndexed":I
    nop

    .line 370
    .local v1, "configs":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4fdd\u5b58 "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a\u9694\u79bb\u914d\u7f6e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 371
    iget-object v2, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v11, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$0:Ljava/lang/Object;

    iput-object v9, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$3:Ljava/lang/Object;

    iput-object v4, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$4:Ljava/lang/Object;

    iput-object v4, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$5:Ljava/lang/Object;

    iput-object v4, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$6:Ljava/lang/Object;

    iput-object v4, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$7:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->label:I

    invoke-virtual {v2, v1, v3}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfigs(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_675
    .catch Ljava/lang/Exception; {:try_start_62d .. :try_end_675} :catch_96e

    if-ne v2, v0, :cond_678

    .line 305
    return-object v0

    .line 371
    :cond_678
    move-object v2, v0

    move-object v0, v1

    move-object v4, v7

    move-object v8, v9

    move-object/from16 v7, v21

    .line 374
    .end local v1    # "configs":Ljava/util/List;
    .end local v9    # "apps":Ljava/util/List;
    .end local v21    # "$result":Ljava/lang/Object;
    .local v0, "configs":Ljava/util/List;
    .local v4, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "apps":Ljava/util/List;
    :goto_67e
    :try_start_67e
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "\u5f00\u59cb\u5b9e\u9645\u5e94\u7528\u9694\u79bb\u64cd\u4f5c..."

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 375
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 376
    .local v1, "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 378
    .local v3, "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    iget-object v10, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .local v9, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 472
    .local v12, "$i$f$forEachIndexed":I
    const/4 v13, 0x0

    .line 473
    .local v13, "index$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14
    :try_end_69a
    .catch Ljava/lang/Exception; {:try_start_67e .. :try_end_69a} :catch_80

    move-object v9, v0

    move-object v15, v10

    move-object v10, v8

    move v8, v12

    .end local v0    # "configs":Ljava/util/List;
    .end local v12    # "$i$f$forEachIndexed":I
    .local v8, "$i$f$forEachIndexed":I
    .local v9, "configs":Ljava/util/List;
    .local v10, "apps":Ljava/util/List;
    :goto_69e
    :try_start_69e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_6a8
    .catch Ljava/lang/Exception; {:try_start_69e .. :try_end_6a8} :catch_967

    .local v0, "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index$iv":I
    .local v12, "index$iv":I
    if-gez v13, :cond_6af

    :try_start_6ac
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_6af
    .catch Ljava/lang/Exception; {:try_start_6ac .. :try_end_6af} :catch_80

    :cond_6af
    :try_start_6af
    move-object/from16 v16, v0

    check-cast v16, Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_end_6b3
    .catch Ljava/lang/Exception; {:try_start_6af .. :try_end_6b3} :catch_967

    move v0, v13

    .local v0, "i":I
    move-object/from16 v13, v16

    .local v13, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/16 v16, 0x0

    .line 379
    .local v16, "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    nop

    .line 380
    move-object/from16 p1, v7

    .end local v7    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_6bb
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_6bd
    .catch Ljava/lang/Exception; {:try_start_6bb .. :try_end_6bd} :catch_7f1

    move/from16 v17, v8

    .end local v8    # "$i$f$forEachIndexed":I
    .local v17, "$i$f$forEachIndexed":I
    add-int/lit8 v8, v0, 0x1

    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    :try_start_6c3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6c7
    .catch Ljava/lang/Exception; {:try_start_6c3 .. :try_end_6c7} :catch_7df

    move-object/from16 v21, v2

    :try_start_6c9
    invoke-virtual {v13}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_6cd
    .catch Ljava/lang/Exception; {:try_start_6c9 .. :try_end_6cd} :catch_7da

    move/from16 v22, v12

    .end local v12    # "index$iv":I
    .local v22, "index$iv":I
    :try_start_6cf
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6d4
    .catch Ljava/lang/Exception; {:try_start_6cf .. :try_end_6d4} :catch_7c5

    move-object/from16 v23, v13

    .end local v13    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v23, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_start_6d6
    const-string v13, "\u5e94\u7528\u9694\u79bb "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 381
    .end local v18    # "i":I
    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v15}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v0

    iput-object v11, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$0:Ljava/lang/Object;

    iput-object v10, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$1:Ljava/lang/Object;

    iput-object v9, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$2:Ljava/lang/Object;

    iput-object v1, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$4:Ljava/lang/Object;

    iput-object v15, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$5:Ljava/lang/Object;

    iput-object v14, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$6:Ljava/lang/Object;
    :try_end_709
    .catch Ljava/lang/Exception; {:try_start_6d6 .. :try_end_709} :catch_7af

    move-object/from16 v2, v23

    .end local v23    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v2, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_start_70b
    iput-object v2, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->L$7:Ljava/lang/Object;
    :try_end_70d
    .catch Ljava/lang/Exception; {:try_start_70b .. :try_end_70d} :catch_79a

    move/from16 v13, v22

    .end local v22    # "index$iv":I
    .local v13, "index$iv":I
    :try_start_70f
    iput v13, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->I$0:I

    const/4 v7, 0x4

    iput v7, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->label:I

    invoke-virtual {v0, v2, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_718
    .catch Ljava/lang/Exception; {:try_start_70f .. :try_end_718} :catch_787

    move-object/from16 v8, v21

    if-ne v7, v8, :cond_71d

    .line 305
    return-object v8

    .line 381
    :cond_71d
    move-object/from16 v18, v9

    move-object v9, v11

    move v12, v13

    move/from16 v11, v16

    move-object v13, v2

    move-object/from16 v16, v3

    move-object v2, v8

    move/from16 v8, v17

    move-object v3, v1

    move-object/from16 v1, p1

    .end local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v17    # "$i$f$forEachIndexed":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v8    # "$i$f$forEachIndexed":I
    .local v9, "allApps":Ljava/util/List;
    .local v11, "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    .restart local v12    # "index$iv":I
    .local v13, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v16, "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    .local v18, "configs":Ljava/util/List;
    :goto_72c
    :try_start_72c
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 382
    .local v0, "result":Z
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_734
    .catch Ljava/lang/Exception; {:try_start_72c .. :try_end_734} :catch_77a

    if-eqz v0, :cond_738

    const/4 v0, 0x1

    goto :goto_739

    .end local v0    # "result":Z
    :cond_738
    const/4 v0, 0x0

    :goto_739
    move-object/from16 p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_73b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_740
    .catch Ljava/lang/Exception; {:try_start_73b .. :try_end_740} :catch_76f

    move-object/from16 v17, v2

    :try_start_742
    const-string v2, "\u9694\u79bb\u7ed3\u679c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 383
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_759
    .catch Ljava/lang/Exception; {:try_start_742 .. :try_end_759} :catch_769

    move-object/from16 v7, p1

    move-object v1, v3

    move-object/from16 v22, v5

    move-object v0, v9

    move v13, v12

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    const/4 v5, 0x1

    .end local v13    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    goto/16 :goto_839

    .line 384
    .restart local v13    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_769
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v2, v17

    goto :goto_774

    :catch_76f
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v7, p1

    :goto_774
    move-object/from16 v17, v3

    move-object/from16 v3, v16

    goto/16 :goto_804

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :catch_77a
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 v17, v2

    move-object/from16 v7, p1

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto/16 :goto_804

    .end local v8    # "$i$f$forEachIndexed":I
    .end local v12    # "index$iv":I
    .end local v18    # "configs":Ljava/util/List;
    .local v1, "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v3, "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    .local v9, "configs":Ljava/util/List;
    .local v11, "allApps":Ljava/util/List;
    .local v13, "index$iv":I
    .local v16, "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    .restart local v17    # "$i$f$forEachIndexed":I
    :catch_787
    move-exception v0

    move-object/from16 v8, v21

    move-object/from16 v7, p1

    move-object/from16 v18, v9

    move-object v9, v11

    move v12, v13

    move/from16 v11, v16

    move-object v13, v2

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v17, v1

    goto/16 :goto_804

    .end local v13    # "index$iv":I
    .restart local v22    # "index$iv":I
    :catch_79a
    move-exception v0

    move-object/from16 v8, v21

    move/from16 v13, v22

    move-object/from16 v7, p1

    move-object/from16 v18, v9

    move-object v9, v11

    move v12, v13

    move/from16 v11, v16

    move-object v13, v2

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v17, v1

    .end local v22    # "index$iv":I
    .restart local v13    # "index$iv":I
    goto/16 :goto_804

    .end local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v13    # "index$iv":I
    .restart local v22    # "index$iv":I
    .restart local v23    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_7af
    move-exception v0

    move-object/from16 v8, v21

    move/from16 v13, v22

    move-object/from16 v2, v23

    move-object/from16 v7, p1

    move-object/from16 v18, v9

    move-object v9, v11

    move v12, v13

    move/from16 v11, v16

    move-object v13, v2

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v17, v1

    .end local v22    # "index$iv":I
    .end local v23    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v13    # "index$iv":I
    goto :goto_804

    .end local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v13, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v22    # "index$iv":I
    :catch_7c5
    move-exception v0

    move-object v2, v13

    move-object/from16 v8, v21

    move/from16 v13, v22

    move-object/from16 v7, p1

    move-object/from16 v18, v9

    move-object v9, v11

    move v12, v13

    move/from16 v11, v16

    move-object v13, v2

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v17, v1

    .end local v22    # "index$iv":I
    .restart local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v13, "index$iv":I
    goto :goto_804

    .end local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v12    # "index$iv":I
    .local v13, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_7da
    move-exception v0

    move-object v2, v13

    move-object/from16 v8, v21

    goto :goto_7e2

    :catch_7df
    move-exception v0

    move-object v8, v2

    move-object v2, v13

    :goto_7e2
    move v13, v12

    move-object/from16 v7, p1

    move-object/from16 v18, v9

    move-object v9, v11

    move/from16 v11, v16

    move-object v13, v2

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v17, v1

    .end local v12    # "index$iv":I
    .restart local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v13, "index$iv":I
    goto :goto_804

    .end local v2    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v17    # "$i$f$forEachIndexed":I
    .restart local v8    # "$i$f$forEachIndexed":I
    .restart local v12    # "index$iv":I
    .local v13, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_7f1
    move-exception v0

    move/from16 v17, v8

    move-object v8, v2

    move-object v2, v13

    move v13, v12

    move-object/from16 v7, p1

    move-object/from16 v18, v9

    move-object v9, v11

    move/from16 v11, v16

    move-object v13, v2

    move-object v2, v8

    move/from16 v8, v17

    move-object/from16 v17, v1

    .line 385
    .end local v1    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v16    # "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "$result":Ljava/lang/Object;
    .local v9, "allApps":Ljava/util/List;
    .local v11, "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    .local v17, "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v18    # "configs":Ljava/util/List;
    :goto_804
    :try_start_804
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object/from16 p1, v2

    invoke-virtual {v13}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_80c
    .catch Ljava/lang/Exception; {:try_start_804 .. :try_end_80c} :catch_845

    move-object/from16 v16, v4

    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v16, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    :try_start_80e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    const-string v5, "\u9694\u79bb\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .end local v13    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_82f
    .catch Ljava/lang/Exception; {:try_start_80e .. :try_end_82f} :catch_83f

    move-object/from16 v2, p1

    move-object v0, v9

    move v13, v12

    move-object/from16 v4, v16

    move-object/from16 v1, v17

    move-object/from16 v9, v18

    .line 388
    .end local v12    # "index$iv":I
    .end local v16    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v17    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v18    # "configs":Ljava/util/List;
    .local v0, "allApps":Ljava/util/List;
    .restart local v1    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v9, "configs":Ljava/util/List;
    .local v13, "index$iv":I
    :goto_839
    nop

    .line 473
    .end local v11    # "$i$a$-forEachIndexed-IsolationViewModel$startOneClickIsolation$1$5":I
    move-object v11, v0

    move-object/from16 v5, v22

    goto/16 :goto_69e

    .line 408
    .end local v0    # "allApps":Ljava/util/List;
    .end local v1    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v3    # "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v9    # "configs":Ljava/util/List;
    .end local v10    # "apps":Ljava/util/List;
    .end local v13    # "index$iv":I
    .restart local v16    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    :catch_83f
    move-exception v0

    move-object v8, v7

    move-object/from16 v1, v16

    goto/16 :goto_993

    .end local v16    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    :catch_845
    move-exception v0

    move-object/from16 v16, v4

    move-object v8, v7

    move-object/from16 v1, v16

    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v16    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    goto/16 :goto_993

    .line 474
    .end local v16    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v1    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v3    # "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v8    # "$i$f$forEachIndexed":I
    .restart local v9    # "configs":Ljava/util/List;
    .restart local v10    # "apps":Ljava/util/List;
    .local v11, "allApps":Ljava/util/List;
    .restart local v13    # "index$iv":I
    :cond_84d
    move-object/from16 p1, v7

    move/from16 v17, v8

    .line 390
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v13    # "index$iv":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .local v2, "$this$invokeSuspend_u24lambda_u2410":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 391
    .local v5, "$i$a$-buildString-IsolationViewModel$startOneClickIsolation$1$successMsg$1":I
    const-string v6, "\u2705 \u4e00\u952e\u9694\u79bb\u5b8c\u6210\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v6, "\ud83d\udcca \u7edf\u8ba1\u4fe1\u606f:\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2022 \u603b\u5e94\u7528\u6570: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v12, v27

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    nop

    .end local v11    # "allApps":Ljava/util/List;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2022 \u7528\u6237\u5e94\u7528: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    nop

    .end local v10    # "apps":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2022 \u914d\u7f6e\u751f\u6210: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    nop

    .end local v9    # "configs":Ljava/util/List;
    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2022 \u6210\u529f\u9694\u79bb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    nop

    .end local v1    # "successfulCount":Lkotlin/jvm/internal/Ref$IntRef;
    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2022 \u9694\u79bb\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v1, :cond_903

    .line 400
    .end local v3    # "failedCount":Lkotlin/jvm/internal/Ref$IntRef;
    const-string v1, "\n\u26a0\ufe0f \u90e8\u5206\u5e94\u7528\u9694\u79bb\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5Root\u6743\u9650\u548c\u7cfb\u7edf\u72b6\u6001\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_903
    const-string v1, "\n\ud83d\udca1 \u5efa\u8bae: \u5728\"\u5e94\u7528\u5217\u8868\"\u4e2d\u67e5\u770b\u9694\u79bb\u72b6\u6001"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    nop

    .line 390
    .end local v2    # "$this$invokeSuspend_u24lambda_u2410":Ljava/lang/StringBuilder;
    .end local v5    # "$i$a$-buildString-IsolationViewModel$startOneClickIsolation$1$successMsg$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .local v0, "successMsg":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 407
    iget-object v1, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 475
    .local v2, "$i$f$update":I
    :cond_91e
    nop

    .line 476
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 477
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v5, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v26, 0x0

    .line 407
    .local v26, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$6":I
    new-instance v14, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v12}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x3fedf

    const/16 v25, 0x0

    move-object v11, v0

    invoke-static/range {v5 .. v25}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v6

    .line 477
    .end local v5    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v26    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$6":I
    move-object v5, v6

    .line 478
    .local v5, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_95c
    .catch Ljava/lang/Exception; {:try_start_851 .. :try_end_95c} :catch_962

    if-eqz v6, :cond_91e

    .line 479
    move-object/from16 v7, p1

    .end local v0    # "successMsg":Ljava/lang/String;
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v5    # "nextValue$iv":Ljava/lang/Object;
    goto/16 :goto_a00

    .line 408
    :catch_962
    move-exception v0

    move-object/from16 v8, p1

    move-object v1, v4

    goto :goto_993

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catch_967
    move-exception v0

    move-object/from16 p1, v7

    move-object/from16 v8, p1

    move-object v1, v4

    .end local v7    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto :goto_993

    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v7, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v21    # "$result":Ljava/lang/Object;
    :catch_96e
    move-exception v0

    move-object v1, v7

    move-object/from16 v8, v21

    goto :goto_993

    .end local v21    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :catch_973
    move-exception v0

    move-object/from16 v21, v1

    move-object v1, v7

    move-object/from16 v8, v21

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v21    # "$result":Ljava/lang/Object;
    goto :goto_993

    .line 460
    .end local v21    # "$result":Ljava/lang/Object;
    .local v0, "allApps":Ljava/util/List;
    .local v1, "apps":Ljava/util/List;
    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v3, "$i$f$update":I
    .local v8, "prevValue$iv":Ljava/lang/Object;
    .local v9, "nextValue$iv":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_97a
    move-object/from16 v25, v4

    move-object/from16 v22, v5

    move-object/from16 v12, v27

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v23, 0x2

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    goto/16 :goto_3f5

    .line 408
    .end local v0    # "allApps":Ljava/util/List;
    .end local v1    # "apps":Ljava/util/List;
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v9    # "nextValue$iv":Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    :catch_98a
    move-exception v0

    move-object/from16 p1, v8

    move-object v1, v7

    .end local v8    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto :goto_993

    :catch_98f
    move-exception v0

    move-object/from16 v8, p1

    move-object v1, v7

    .line 409
    .end local v7    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v8    # "$result":Ljava/lang/Object;
    :goto_993
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e00\u952e\u9694\u79bb\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "errorMsg":Ljava/lang/String;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .local v3, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/16 v30, 0x0

    .line 480
    .local v30, "$i$f$update":I
    :cond_9ba
    nop

    .line 481
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 482
    .local v0, "prevValue$iv":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v4, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v9, v4

    const/4 v5, 0x0

    .line 411
    .local v5, "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$7":I
    new-instance v10, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-object/from16 v18, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x3feef

    const/16 v29, 0x0

    move-object v14, v2

    invoke-static/range {v9 .. v29}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v4

    .line 482
    .end local v4    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v5    # "$i$a$-update-IsolationViewModel$startOneClickIsolation$1$7":I
    nop

    .line 483
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v3, v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9ba

    .line 484
    move-object v4, v1

    move-object v7, v8

    .line 413
    .end local v0    # "prevValue$iv":Ljava/lang/Object;
    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v30    # "$i$f$update":I
    .local v4, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v7, "$result":Ljava/lang/Object;
    :goto_a00
    iget-object v0, v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    .line 414
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 439
    .end local v4    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v7, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;
    .restart local v8    # "$result":Ljava/lang/Object;
    .local v9, "$i$f$update":I
    .local v10, "prevValue$iv":Ljava/lang/Object;
    .local v11, "nextValue$iv":Ljava/lang/Object;
    :cond_a08
    move-object v12, v1

    move-object/from16 v21, v2

    move-object/from16 v25, v4

    move-object/from16 v22, v5

    move-object/from16 p1, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v23, 0x2

    .end local v8    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object/from16 v3, p0

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    goto/16 :goto_ef

    nop

    :pswitch_data_a1e
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_d2
        :pswitch_85
        :pswitch_69
        :pswitch_1b
    .end packed-switch
.end method
