.class public final Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Json.kt\nkotlinx/serialization/json/Json\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n54#2:223\n66#3,3:224\n69#3,2:237\n71#3,2:240\n74#3:245\n75#3,2:247\n1603#4,9:227\n1855#4:236\n1856#4:243\n1612#4:244\n96#5:239\n1#6:242\n1#6:246\n*S KotlinDebug\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n*L\n68#1:227,9\n68#1:236\n68#1:243\n68#1:244\n70#1:239\n68#1:242\n*E\n"
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
.field final synthetic $packageName$inlined:Ljava/lang/String;

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/pandasu/turbo/data/local/IsolationDataStore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    iput-object p3, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;->$packageName$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;

    iget v2, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;-><init>(Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 0
    iget v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;
    move-object/from16 v0, p1

    .line 53
    .local v0, "value":Ljava/lang/Object;
    iget-object v6, v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

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
    .local v8, "$i$a$-map-IsolationDataStore$getConfigForApp$1":I
    nop

    .line 225
    :try_start_0
    invoke-static {}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getISOLATION_CONFIGS_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-nez v10, :cond_1

    .end local v0    # "preferences":Landroidx/datastore/preferences/core/Preferences;
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v10

    :cond_1
    move-object v0, v10

    .line 226
    .local v0, "configStrings":Ljava/util/Set;
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    move-object v0, v10

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 227
    .local v10, "$i$f$mapNotNull":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v11, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 235
    .local v12, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 236
    .local v13, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 235
    .local v15, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v0, v16

    .local v0, "jsonString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 237
    .local v16, "$i$a$-mapNotNull-IsolationDataStore$getConfigForApp$1$1":I
    nop

    .line 238
    :try_start_1
    iget-object v9, v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-static {v9}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getJson$p(Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lkotlinx/serialization/json/Json;

    move-result-object v9

    .local v9, "this_$iv":Lkotlinx/serialization/json/Json;
    const/16 v17, 0x0

    .line 239
    .local v17, "$i$f$decodeFromString":I
    invoke-virtual {v9}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v18, Lcom/pandasu/turbo/data/model/IsolationConfig;->Companion:Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;

    invoke-virtual/range {v18 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v9, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v9    # "this_$iv":Lkotlinx/serialization/json/Json;
    .end local v17    # "$i$f$decodeFromString":I
    check-cast v2, Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const/4 v2, 0x0

    .line 237
    :goto_2
    nop

    .line 235
    .end local v16    # "$i$a$-mapNotNull-IsolationDataStore$getConfigForApp$1$1":I
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 242
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 235
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :try_start_2
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v15    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_2
    move-object/from16 v2, p0

    goto :goto_1

    .line 243
    :cond_3
    nop

    .line 244
    .end local v13    # "$i$f$forEach":I
    nop

    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$mapNotNullTo":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 227
    nop

    .end local v10    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 245
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .line 246
    .local v9, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v10, 0x0

    .line 245
    .local v10, "$i$a$-find-IsolationDataStore$getConfigForApp$1$2":I
    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;->$packageName$inlined:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .end local v9    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v10    # "$i$a$-find-IsolationDataStore$getConfigForApp$1$2":I
    if-eqz v11, :cond_4

    goto :goto_3

    .end local v5    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2;
    :cond_5
    const/4 v2, 0x0

    :goto_3
    check-cast v2, Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v2

    goto :goto_4

    .line 247
    :catch_1
    move-exception v0

    .line 248
    const/4 v9, 0x0

    .line 224
    :goto_4
    nop

    .line 223
    .end local v8    # "$i$a$-map-IsolationDataStore$getConfigForApp$1":I
    const/4 v0, 0x1

    iput v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1$2$1;->label:I

    invoke-interface {v6, v9, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_6

    .line 0
    return-object v4

    .line 223
    :cond_6
    move v0, v7

    .line 53
    .end local v7    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    .local v0, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v0    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
