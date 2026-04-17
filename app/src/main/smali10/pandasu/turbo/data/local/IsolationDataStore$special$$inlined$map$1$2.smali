.class public final Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Json.kt\nkotlinx/serialization/json/Json\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n54#2:223\n46#3,3:224\n49#3,2:237\n51#3,3:240\n56#3,3:246\n1603#4,9:227\n1855#4:236\n1856#4:244\n1612#4:245\n96#5:239\n1#6:243\n*S KotlinDebug\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n*L\n48#1:227,9\n48#1:236\n48#1:244\n48#1:245\n50#1:239\n48#1:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .registers 3

    iput-object p1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;

    iget v2, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    iget v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_21

    :cond_19
    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;-><init>(Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_21
    iget-object v3, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 0
    iget v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;->label:I

    packed-switch v0, :pswitch_data_f8

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_34
    const/4 v0, 0x0

    .local v0, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 p2, v3

    goto/16 :goto_f4

    .end local v0    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :pswitch_3c
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    move-object/from16 v0, p1

    .line 53
    .local v0, "value":Ljava/lang/Object;
    iget-object v6, v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .local v6, "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v7, 0x0

    .line 223
    .local v7, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    check-cast v0, Landroidx/datastore/preferences/core/Preferences;

    .end local v6    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .local v0, "preferences":Landroidx/datastore/preferences/core/Preferences;
    const/4 v8, 0x0

    .line 224
    .local v8, "$i$a$-map-IsolationDataStore$isolationConfigs$1":I
    nop

    .line 225
    :try_start_4d
    # getter for: Lcom/pandasu/turbo/data/local/IsolationDataStore;->ISOLATION_CONFIGS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getISOLATION_CONFIGS_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_d6

    if-nez v9, :cond_63

    .end local v0    # "preferences":Landroidx/datastore/preferences/core/Preferences;
    :try_start_59
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v9
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_5e

    goto :goto_63

    .line 246
    .end local v5    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    :catch_5e
    move-exception v0

    move-object/from16 p2, v3

    goto/16 :goto_d9

    .line 225
    .restart local v5    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    :cond_63
    :goto_63
    move-object v0, v9

    .line 226
    .local v0, "configStrings":Ljava/util/Set;
    :try_start_64
    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    move-object v0, v9

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 227
    .local v9, "$i$f$mapNotNull":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 235
    .local v11, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 236
    .local v12, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_77
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 235
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v0

    check-cast v15, Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_85} :catch_d6

    move-object v0, v15

    .local v0, "jsonString":Ljava/lang/String;
    const/4 v15, 0x0

    .line 237
    .local v15, "$i$a$-mapNotNull-IsolationDataStore$isolationConfigs$1$1":I
    nop

    .line 238
    :try_start_88
    iget-object v2, v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    # getter for: Lcom/pandasu/turbo/data/local/IsolationDataStore;->json:Lkotlinx/serialization/json/Json;
    invoke-static {v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getJson$p(Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lkotlinx/serialization/json/Json;

    move-result-object v2

    .local v2, "this_$iv":Lkotlinx/serialization/json/Json;
    const/16 v16, 0x0

    .line 239
    .local v16, "$i$f$decodeFromString":I
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v17, Lcom/pandasu/turbo/data/model/IsolationConfig;->Companion:Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;

    invoke-virtual/range {v17 .. v17}, Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v17
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_99} :catch_aa

    move-object/from16 p2, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local p2, "$result":Ljava/lang/Object;
    :try_start_9b
    move-object/from16 v3, v17

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v3, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/Json;
    .end local v16    # "$i$f$decodeFromString":I
    check-cast v3, Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a5} :catch_a8

    move-object/from16 v16, v5

    goto :goto_ba

    .line 240
    :catch_a8
    move-exception v0

    goto :goto_ad

    .end local p2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catch_aa
    move-exception v0

    move-object/from16 p2, v3

    .line 241
    .end local v3    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local p2    # "$result":Ljava/lang/Object;
    :goto_ad
    :try_start_ad
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to parse isolation config"

    move-object/from16 v16, v5

    .end local v5    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    .local v16, "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    const/4 v3, 0x0

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ba
    nop

    .line 235
    .end local v15    # "$i$a$-mapNotNull-IsolationDataStore$isolationConfigs$1$1":I
    if-eqz v3, :cond_c2

    move-object v0, v3

    .line 243
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 235
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_c2
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, v16

    goto :goto_77

    .end local v16    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    .end local p2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    :cond_c9
    move-object/from16 p2, v3

    move-object/from16 v16, v5

    .line 244
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2;
    .restart local p2    # "$result":Ljava/lang/Object;
    nop

    .line 245
    .end local v12    # "$i$f$forEach":I
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v0, v10

    check-cast v0, Ljava/util/List;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_d2} :catch_d4

    .line 227
    nop

    .end local v9    # "$i$f$mapNotNull":I
    goto :goto_e8

    .line 246
    :catch_d4
    move-exception v0

    goto :goto_d9

    .end local p2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catch_d6
    move-exception v0

    move-object/from16 p2, v3

    .line 247
    .end local v3    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local p2    # "$result":Ljava/lang/Object;
    :goto_d9
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to load isolation configs"

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e8
    nop

    .line 223
    .end local v8    # "$i$a$-map-IsolationDataStore$isolationConfigs$1":I
    const/4 v2, 0x1

    iput v2, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1$2$1;->label:I

    invoke-interface {v6, v0, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f3

    .line 0
    return-object v4

    .line 223
    :cond_f3
    move v0, v7

    .line 53
    .end local v7    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    .local v0, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :goto_f4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v0    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    return-object v0

    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_34
    .end packed-switch
.end method
