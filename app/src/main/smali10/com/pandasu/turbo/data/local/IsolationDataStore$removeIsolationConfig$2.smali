.class final Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationDataStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/local/IsolationDataStore;->removeIsolationConfig(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,335:1\n1603#2,9:336\n1855#2:345\n1856#2:348\n1612#2:349\n1549#2:350\n1620#2,2:351\n1622#2:354\n96#3:346\n1#4:347\n113#5:353\n*S KotlinDebug\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2\n*L\n126#1:336,9\n126#1:345\n126#1:348\n126#1:349\n136#1:350\n136#1:351,2\n136#1:354\n128#1:346\n126#1:347\n137#1:353\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "preferences",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
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
    c = "com.pandasu.turbo.data.local.IsolationDataStore$removeIsolationConfig$2"
    f = "IsolationDataStore.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/MutablePreferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 123
    iget v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 124
    .local v1, "preferences":Landroidx/datastore/preferences/core/MutablePreferences;
    nop

    .line 125
    :try_start_0
    invoke-static {}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getISOLATION_CONFIGS_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 126
    .local v2, "currentConfigs":Ljava/util/Set;
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    iget-object v4, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .end local v2    # "currentConfigs":Ljava/util/Set;
    move-object v2, v3

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 336
    .local v3, "$i$f$mapNotNull":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v2, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 344
    .local v6, "$i$f$mapNotNullTo":I
    nop

    .local v2, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 345
    .local v7, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v2    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 344
    .local v9, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v10, v2

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v10

    .local v2, "jsonString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 127
    .local v10, "$i$a$-mapNotNull-IsolationDataStore$removeIsolationConfig$2$configList$1":I
    nop

    .line 128
    :try_start_1
    invoke-static {v4}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getJson$p(Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lkotlinx/serialization/json/Json;

    move-result-object v11

    .local v11, "this_$iv":Lkotlinx/serialization/json/Json;
    const/4 v12, 0x0

    .line 346
    .local v12, "$i$f$decodeFromString":I
    invoke-virtual {v11}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v13, Lcom/pandasu/turbo/data/model/IsolationConfig;->Companion:Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;

    invoke-virtual {v13}, Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v13

    check-cast v13, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v11, v13, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v11    # "this_$iv":Lkotlinx/serialization/json/Json;
    .end local v12    # "$i$f$decodeFromString":I
    check-cast v13, Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    const/4 v13, 0x0

    .line 127
    :goto_1
    nop

    .line 344
    .end local v10    # "$i$a$-mapNotNull-IsolationDataStore$removeIsolationConfig$2$configList$1":I
    if-eqz v13, :cond_1

    move-object v2, v13

    .line 347
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 344
    .local v10, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :try_start_2
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v10    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    goto :goto_0

    .line 348
    :cond_2
    nop

    .line 349
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 336
    nop

    .end local v3    # "$i$f$mapNotNull":I
    check-cast v2, Ljava/util/Collection;

    .line 132
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 126
    nop

    .line 134
    .local v2, "configList":Ljava/util/List;
    new-instance v3, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2$1;

    iget-object v4, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->$packageName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2$1;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 136
    invoke-static {}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getISOLATION_CONFIGS_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->this$0:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .end local v1    # "preferences":Landroidx/datastore/preferences/core/MutablePreferences;
    .end local v2    # "configList":Ljava/util/List;
    move-object v2, v4

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 350
    .local v4, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v2, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 351
    .local v7, "$i$f$mapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v2

    check-cast v9, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v9, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v10, 0x0

    .line 137
    .local v10, "$i$a$-map-IsolationDataStore$removeIsolationConfig$2$2":I
    invoke-static {v5}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->access$getJson$p(Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lkotlinx/serialization/json/Json;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/StringFormat;

    .local v11, "$this$encodeToString$iv":Lkotlinx/serialization/StringFormat;
    const/4 v12, 0x0

    .line 353
    .local v12, "$i$f$encodeToString":I
    invoke-interface {v11}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v13, Lcom/pandasu/turbo/data/model/IsolationConfig;->Companion:Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;

    invoke-virtual {v13}, Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v13

    check-cast v13, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v11, v13, v9}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 137
    .end local v11    # "$this$encodeToString$iv":Lkotlinx/serialization/StringFormat;
    .end local v12    # "$i$f$encodeToString":I
    nop

    .line 352
    .end local v9    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v10    # "$i$a$-map-IsolationDataStore$removeIsolationConfig$2$2":I
    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 354
    .end local v2    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$mapTo":I
    move-object v2, v6

    check-cast v2, Ljava/util/List;

    .line 350
    nop

    .end local v4    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 138
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v3, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 140
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;->$packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed isolation config for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to remove isolation config"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
