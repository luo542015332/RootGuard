.class final Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/MainActivity;->applyBankingIsolationForTaxApps()V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1855#2,2:246\n1855#2,2:248\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1\n*L\n159#1:246,2\n168#1:248,2\n*E\n"
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
    c = "com.pandasu.turbo.MainActivity$applyBankingIsolationForTaxApps$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x2,
        0x2,
        0x3
    }
    l = {
        0xa2,
        0xa3,
        0xab,
        0xac
    }
    m = "invokeSuspend"
    n = {
        "packageName",
        "preset",
        "packageName",
        "packageName",
        "preset",
        "packageName"
    }
    s = {
        "L$2",
        "L$3",
        "L$2",
        "L$2",
        "L$3",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/MainActivity;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->this$0:Lcom/pandasu/turbo/MainActivity;

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

    new-instance v0, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;

    iget-object v1, p0, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->this$0:Lcom/pandasu/turbo/MainActivity;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;-><init>(Lcom/pandasu/turbo/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 156
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->label:I

    const-string v3, ")"

    const-string v4, " ("

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "$i$f$forEach":I
    const/4 v8, 0x0

    .local v8, "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    iget-object v9, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/pandasu/turbo/MainActivity;

    :try_start_0
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .end local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    .end local v9    # "packageName":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    const/4 v7, 0x0

    .restart local v7    # "$i$f$forEach":I
    const/4 v8, 0x0

    .restart local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    iget-object v9, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v9, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/pandasu/turbo/MainActivity;

    :try_start_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .end local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    .end local v9    # "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v10    # "packageName":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    const/4 v7, 0x0

    .restart local v7    # "$i$f$forEach":I
    const/4 v8, 0x0

    .local v8, "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    iget-object v9, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/pandasu/turbo/MainActivity;

    :try_start_2
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .end local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    .end local v9    # "packageName":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    const/4 v7, 0x0

    .restart local v7    # "$i$f$forEach":I
    const/4 v8, 0x0

    .restart local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    iget-object v9, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v9, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "packageName":Ljava/lang/String;
    iget-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/pandasu/turbo/MainActivity;

    :try_start_3
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .end local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    .end local v9    # "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v10    # "packageName":Ljava/lang/String;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;
    move-object/from16 v6, p1

    .line 157
    .restart local v6    # "$result":Ljava/lang/Object;
    nop

    .line 159
    :try_start_4
    invoke-static {}, Lcom/pandasu/turbo/MainActivity;->access$getTAX_APPS$cp()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    iget-object v8, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->this$0:Lcom/pandasu/turbo/MainActivity;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 246
    .local v9, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v11, v7

    check-cast v11, Lkotlin/Pair;

    .end local v7    # "element$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 159
    .local v7, "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 160
    .local v11, "appName":Ljava/lang/String;
    sget-object v13, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Applying banking isolation for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 161
    sget-object v13, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v13, v12, v11}, Lcom/pandasu/turbo/data/model/IsolationPresets;->bankingPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v13

    move-object v11, v13

    .line 162
    .local v11, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    invoke-virtual {v8}, Lcom/pandasu/turbo/MainActivity;->getIsolationDataStore()Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v13

    iput-object v8, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$3:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->label:I

    invoke-virtual {v13, v11, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_0

    .line 156
    return-object v0

    .line 162
    :cond_0
    move-object/from16 v16, v8

    move v8, v7

    move v7, v9

    move-object v9, v11

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v12, v16

    .line 163
    .end local v11    # "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v12    # "packageName":Ljava/lang/String;
    .local v7, "$i$f$forEach":I
    .restart local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    .local v9, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v10    # "packageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Lcom/pandasu/turbo/MainActivity;->getRootHider()Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v13

    iput-object v12, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$3:Ljava/lang/Object;

    const/4 v14, 0x2

    iput v14, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->label:I

    invoke-virtual {v13, v9, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    .end local v9    # "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    if-ne v13, v0, :cond_1

    .line 156
    return-object v0

    .line 163
    :cond_1
    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    .line 164
    .end local v10    # "packageName":Ljava/lang/String;
    .local v9, "packageName":Ljava/lang/String;
    :goto_2
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Banking isolation applied for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 165
    nop

    .line 246
    .end local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$1":I
    .end local v9    # "packageName":Ljava/lang/String;
    move v9, v7

    move-object v8, v11

    goto/16 :goto_0

    .line 247
    .end local v7    # "$i$f$forEach":I
    .local v9, "$i$f$forEach":I
    :cond_2
    nop

    .line 168
    .end local v9    # "$i$f$forEach":I
    invoke-static {}, Lcom/pandasu/turbo/MainActivity;->access$getHIGH_RISK_DETECTOR_APPS$cp()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    iget-object v8, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->this$0:Lcom/pandasu/turbo/MainActivity;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 248
    .restart local v9    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v11, v7

    check-cast v11, Lkotlin/Pair;

    .end local v7    # "element$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 168
    .local v7, "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "packageName":Ljava/lang/String;
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 169
    .local v11, "appName":Ljava/lang/String;
    sget-object v13, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Applying banking isolation for high-risk detector: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 170
    sget-object v13, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v13, v12, v11}, Lcom/pandasu/turbo/data/model/IsolationPresets;->bankingPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v13

    move-object v11, v13

    .line 171
    .local v11, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    invoke-virtual {v8}, Lcom/pandasu/turbo/MainActivity;->getIsolationDataStore()Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v13

    iput-object v8, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$3:Ljava/lang/Object;

    const/4 v14, 0x3

    iput v14, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->label:I

    invoke-virtual {v13, v11, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_3

    .line 156
    return-object v0

    .line 171
    :cond_3
    move-object/from16 v16, v8

    move v8, v7

    move v7, v9

    move-object v9, v11

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v12, v16

    .line 172
    .end local v11    # "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v12    # "packageName":Ljava/lang/String;
    .local v7, "$i$f$forEach":I
    .local v8, "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    .local v9, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v10    # "packageName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v12}, Lcom/pandasu/turbo/MainActivity;->getRootHider()Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v13

    iput-object v12, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->L$3:Ljava/lang/Object;

    const/4 v14, 0x4

    iput v14, v2, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;->label:I

    invoke-virtual {v13, v9, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    .end local v9    # "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    if-ne v13, v0, :cond_4

    .line 156
    return-object v0

    .line 172
    :cond_4
    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    .line 173
    .end local v10    # "packageName":Ljava/lang/String;
    .local v9, "packageName":Ljava/lang/String;
    :goto_5
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Banking isolation applied for high-risk detector: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    nop

    .line 248
    .end local v8    # "$i$a$-forEach-MainActivity$applyBankingIsolationForTaxApps$1$2":I
    .end local v9    # "packageName":Ljava/lang/String;
    move v9, v7

    move-object v8, v11

    goto/16 :goto_3

    .line 249
    .end local v7    # "$i$f$forEach":I
    .local v9, "$i$f$forEach":I
    :cond_5
    nop

    .end local v9    # "$i$f$forEach":I
    goto :goto_6

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Failed to apply banking isolation for tax apps"

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
