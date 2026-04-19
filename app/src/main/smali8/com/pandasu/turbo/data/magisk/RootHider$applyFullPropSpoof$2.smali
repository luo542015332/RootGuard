.class final Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->applyFullPropSpoof(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2$WhenMappings;
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
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1705:1\n215#2,2:1706\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2\n*L\n224#1:1706,2\n*E\n"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$applyFullPropSpoof$2"
    f = "RootHider.kt"
    i = {
        0x1,
        0x2,
        0x3,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5
    }
    l = {
        0x9c,
        0xd4,
        0xd7,
        0xd8,
        0xd9,
        0xe1
    }
    m = "invokeSuspend"
    n = {
        "allProps",
        "allProps",
        "allProps",
        "allProps",
        "allProps",
        "ok",
        "fail",
        "k",
        "v"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$5",
        "L$6"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$f$forEach":I
    const/4 v9, 0x0

    .local v9, "$i$a$-forEach-RootHider$applyFullPropSpoof$2$1":I
    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$6:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "v":Ljava/lang/String;
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$5:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "k":Ljava/lang/String;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$2:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    .local v14, "fail":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .local v15, "ok":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .local v5, "allProps":Ljava/util/Map;
    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    goto/16 :goto_9

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "$i$a$-forEach-RootHider$applyFullPropSpoof$2$1":I
    .end local v10    # "v":Ljava/lang/String;
    .end local v11    # "k":Ljava/lang/String;
    .end local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .restart local v5    # "allProps":Ljava/util/Map;
    :try_start_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .restart local v5    # "allProps":Ljava/util/Map;
    :try_start_2
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .restart local v5    # "allProps":Ljava/util/Map;
    :try_start_3
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .restart local v5    # "allProps":Ljava/util/Map;
    :try_start_4
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    goto/16 :goto_3

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_5
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v7

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 151
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;
    move-object/from16 v7, p1

    .line 152
    .restart local v7    # "$result":Ljava/lang/Object;
    nop

    .line 153
    :try_start_5
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "\u5f00\u59cb\u5e94\u7528\u5168\u9762\u5c5e\u6027\u4f2a\u88c5..."

    invoke-virtual {v5, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 156
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    invoke-virtual {v5, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->checkSelfRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v5, v0, :cond_0

    .line 151
    return-object v0

    .line 156
    :cond_0
    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, v16

    .end local v7    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_6
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 157
    .local v7, "hasRoot":Z
    if-nez v7, :cond_1

    .line 158
    .end local v7    # "hasRoot":Z
    :try_start_7
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "\u6ca1\u6709 Root \u6743\u9650\uff0c\u65e0\u6cd5\u5e94\u7528\u5c5e\u6027\u4f2a\u88c5"

    invoke-static {v0, v4, v6, v3, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 159
    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-object v0

    .line 241
    :catch_1
    move-exception v0

    move-object v7, v5

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 162
    :cond_1
    :try_start_8
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "Root \u6743\u9650\u68c0\u67e5\u901a\u8fc7\uff0c\u7ee7\u7eed\u6267\u884c\u5c5e\u6027\u4f2a\u88c5"

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 164
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 165
    .local v7, "allProps":Ljava/util/Map;
    sget-object v8, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getFULL_PROP_SPOOF()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 168
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u8bbe\u5907\u5382\u5546\u548c\u7cfb\u7edf\u4fe1\u606f..."

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 171
    sget-object v8, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v8}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getDeviceManufacturer()Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    move-result-object v8

    .line 172
    .local v8, "deviceManufacturer":Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    sget-object v9, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v9}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v9

    .line 173
    .local v9, "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v10, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v10}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getVersionDescription()Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "androidVersion":Ljava/lang/String;
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8bbe\u5907\u5382\u5546: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", \u5b9a\u5236\u7cfb\u7edf: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Android \u7248\u672c: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 178
    .end local v10    # "androidVersion":Ljava/lang/String;
    nop

    .end local v8    # "deviceManufacturer":Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    sget-object v10, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v8

    aget v8, v10, v8

    packed-switch v8, :pswitch_data_1

    .line 206
    .end local v9    # "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1

    .line 202
    :pswitch_7
    :try_start_9
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u5230\u4e09\u661f\u8bbe\u5907\uff0c\u53ef\u80fd\u9700\u8981 OneUI \u7279\u5b9a\u5c5e\u6027"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :pswitch_8
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u5230 vivo \u8bbe\u5907\uff0c\u53ef\u80fd\u9700\u8981 OriginOS \u7279\u5b9a\u5c5e\u6027"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    :pswitch_9
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u5230\u534e\u4e3a\u8bbe\u5907\uff0c\u53ef\u80fd\u9700\u8981 HarmonyOS \u7279\u5b9a\u5c5e\u6027"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 190
    :pswitch_a
    sget-object v8, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getREALME_PROPS()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 191
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u5230 OPPO/realme \u8bbe\u5907\uff0c\u5e94\u7528\u7279\u5b9a\u5c5e\u6027"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 180
    .restart local v9    # "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    :pswitch_b
    sget-object v8, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getMIUI_PROPS()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 181
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v10, "\u68c0\u6d4b\u5230\u5c0f\u7c73\u8bbe\u5907\uff0c\u5e94\u7528 MIUI \u7279\u5b9a\u5c5e\u6027"

    invoke-virtual {v8, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 184
    sget-object v8, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    if-ne v9, v8, :cond_2

    .line 185
    .end local v9    # "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u5230 HyperOS \u7cfb\u7edf\uff0c\u53ef\u80fd\u9700\u8981\u7279\u6b8a\u5904\u7406"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 206
    :goto_1
    :try_start_a
    const-string v9, "\u68c0\u6d4b\u5230\u5176\u4ed6\u5382\u5546\u8bbe\u5907\uff0c\u4f7f\u7528\u901a\u7528\u5c5e\u6027"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 211
    :cond_2
    :goto_2
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u67e5\u542f\u52a8\u6a21\u5f0f..."

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 212
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v9, "getprop ro.bootmode"

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    iput v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    invoke-static {v8, v9, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    if-ne v8, v0, :cond_3

    .line 151
    return-object v0

    .line 212
    :cond_3
    move-object/from16 v16, v8

    move-object v8, v5

    move-object v5, v7

    move-object/from16 v7, v16

    .end local v7    # "allProps":Ljava/util/Map;
    .local v5, "allProps":Ljava/util/Map;
    .local v8, "$result":Ljava/lang/Object;
    :goto_3
    :try_start_b
    check-cast v7, Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "bootmode":Ljava/lang/String;
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "recovery"

    check-cast v10, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const/4 v11, 0x0

    :try_start_c
    invoke-static {v9, v10, v11, v3, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    if-eqz v9, :cond_7

    .line 214
    .end local v7    # "bootmode":Ljava/lang/String;
    :try_start_d
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u68c0\u6d4b\u5230 Recovery \u6a21\u5f0f\uff0c\u6267\u884c\u9690\u85cf"

    invoke-virtual {v7, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 215
    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v9, "resetprop -n ro.bootmode unknown"

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    const/4 v11, 0x3

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    invoke-static {v7, v9, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    if-ne v7, v0, :cond_4

    .line 151
    return-object v0

    .line 215
    :cond_4
    move-object v7, v8

    .line 216
    .end local v8    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    :goto_4
    :try_start_e
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v9, "resetprop -n ro.boot.bootmode unknown"

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    invoke-static {v8, v9, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_5

    .line 151
    return-object v0

    .line 217
    :cond_5
    :goto_5
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v9, "resetprop -n vendor.boot.bootmode unknown"

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    const/4 v11, 0x5

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    invoke-static {v8, v9, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_6

    .line 151
    return-object v0

    .line 218
    :cond_6
    :goto_6
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "Recovery \u6a21\u5f0f\u9690\u85cf\u5b8c\u6210"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 241
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v7, v8

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 213
    .restart local v5    # "allProps":Ljava/util/Map;
    .local v7, "bootmode":Ljava/lang/String;
    :cond_7
    move-object v7, v8

    .line 221
    .end local v8    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    :goto_7
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5f00\u59cb\u8bbe\u7f6e "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u4e2a\u7cfb\u7edf\u5c5e\u6027..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 222
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 223
    .local v8, "ok":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 224
    .local v9, "fail":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v11, v5

    .local v11, "$this$forEach$iv":Ljava/util/Map;
    const/4 v12, 0x0

    .line 1706
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v15, v8

    move-object v14, v9

    move v8, v12

    move-object v12, v13

    move-object v13, v10

    .end local v9    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "$this$forEach$iv":Ljava/util/Map;
    .end local v12    # "$i$f$forEach":I
    .local v8, "$i$f$forEach":I
    .restart local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    const/4 v10, 0x0

    .line 224
    .local v10, "$i$a$-forEach-RootHider$applyFullPropSpoof$2$1":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "k":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 225
    .local v9, "v":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetprop -n "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$1:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$4:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->L$6:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$applyFullPropSpoof$2;->label:I

    invoke-static {v13, v3, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    if-ne v3, v0, :cond_8

    .line 151
    return-object v0

    .line 225
    :cond_8
    move-object/from16 v16, v7

    move-object v7, v3

    move-object/from16 v3, v16

    move/from16 v17, v10

    move-object v10, v9

    move/from16 v9, v17

    .end local v7    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .local v9, "$i$a$-forEach-RootHider$applyFullPropSpoof$2$1":I
    .local v10, "v":Ljava/lang/String;
    :goto_9
    :try_start_f
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 226
    .end local v10    # "v":Ljava/lang/String;
    .end local v11    # "k":Ljava/lang/String;
    iget v6, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, v4

    iput v6, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_a

    .line 228
    .restart local v10    # "v":Ljava/lang/String;
    .restart local v11    # "k":Ljava/lang/String;
    :cond_9
    iget v6, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, v4

    iput v6, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 229
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5c5e\u6027\u8bbe\u7f6e\u5931\u8d25: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 231
    .end local v10    # "v":Ljava/lang/String;
    .end local v11    # "k":Ljava/lang/String;
    :goto_a
    nop

    .line 1706
    .end local v9    # "$i$a$-forEach-RootHider$applyFullPropSpoof$2$1":I
    move-object v7, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 241
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v8    # "$i$f$forEach":I
    .end local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    :catch_3
    move-exception v0

    move-object v7, v3

    const/4 v3, 0x0

    goto :goto_c

    .line 1707
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "allProps":Ljava/util/Map;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$f$forEach":I
    .restart local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_a
    nop

    .line 233
    .end local v8    # "$i$f$forEach":I
    :try_start_10
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    iget v6, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5c5e\u6027\u4f2a\u88c5\u5b8c\u6210: \u6210\u529f "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u5931\u8d25 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 235
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v0, :cond_b

    .line 236
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "\u6240\u6709\u5c5e\u6027\u8bbe\u7f6e\u90fd\u5931\u8d25"

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v4, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 237
    const/4 v3, 0x0

    :try_start_11
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    return-object v0

    .line 241
    .end local v5    # "allProps":Ljava/util/Map;
    .end local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    :catch_4
    move-exception v0

    goto :goto_c

    .line 240
    .restart local v5    # "allProps":Ljava/util/Map;
    .restart local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_b
    const/4 v4, 0x1

    .end local v5    # "allProps":Ljava/util/Map;
    .end local v14    # "fail":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v15    # "ok":Lkotlin/jvm/internal/Ref$IntRef;
    goto :goto_d

    .line 241
    .end local v7    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    :catch_5
    move-exception v0

    move v3, v11

    goto :goto_b

    :catch_6
    move-exception v0

    const/4 v3, 0x0

    :goto_b
    move-object v7, v8

    goto :goto_c

    .end local v8    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :catch_7
    move-exception v0

    const/4 v3, 0x0

    move-object v7, v5

    .line 242
    .end local v5    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "$result":Ljava/lang/Object;
    :goto_c
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "applyFullPropSpoof \u6267\u884c\u5f02\u5e38"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    move v4, v3

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 152
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
