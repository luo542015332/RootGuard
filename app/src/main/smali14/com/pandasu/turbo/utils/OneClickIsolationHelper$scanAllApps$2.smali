.class final Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OneClickIsolationHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->scanAllApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "+",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneClickIsolationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n766#2:649\n857#2,2:650\n1549#2:652\n1620#2,3:653\n766#2:656\n857#2,2:657\n1603#2,9:659\n1855#2:668\n1856#2:670\n1612#2:671\n1549#2:672\n1620#2,3:673\n1#3:669\n*S KotlinDebug\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2\n*L\n293#1:649\n293#1:650,2\n294#1:652\n294#1:653,3\n295#1:656\n295#1:657,2\n299#1:659,9\n299#1:668\n299#1:670\n299#1:671\n337#1:672\n337#1:673,3\n299#1:669\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
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
    c = "com.pandasu.turbo.utils.OneClickIsolationHelper$scanAllApps$2"
    f = "OneClickIsolationHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

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

    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;

    iget-object v1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    const-string v1, "\u547d\u4ee4 \'"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 266
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;
    move-object/from16 v4, p1

    .line 267
    .local v4, "$result":Ljava/lang/Object;
    iget-object v0, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-static {v0}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$getContext$p(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 269
    .local v5, "pm":Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "\u5f00\u59cb\u626b\u63cf\u6240\u6709\u5e94\u7528"

    invoke-virtual {v0, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 273
    nop

    .line 274
    nop

    .line 273
    nop

    .line 275
    nop

    .line 273
    nop

    .line 276
    const-string v0, "pm list packages"

    const-string v6, "pm list packages -a"

    const-string v7, "pm list packages -3"

    const-string v8, "pm list packages -i"

    filled-new-array {v6, v7, v8, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 273
    nop

    .line 272
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "pmCommands":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v0    # "pmCommands":Ljava/util/List;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x3

    const/16 v9, 0x2000

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 280
    .local v14, "command":Ljava/lang/String;
    nop

    .line 281
    :try_start_0
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c1d\u8bd5\u547d\u4ee4: su -c \'"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "\'"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v7, v8, [Ljava/lang/String;

    const-string v8, "su"

    aput-object v8, v7, v13

    const-string v8, "-c"

    aput-object v8, v7, v12

    aput-object v14, v7, v10

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 283
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "getInputStream(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v15, Ljava/io/Reader;

    instance-of v7, v15, Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v7, :cond_0

    :try_start_1
    check-cast v15, Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 317
    .end local v0    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    goto/16 :goto_b

    .line 283
    .restart local v0    # "process":Ljava/lang/Process;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v15, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v15, v7

    :goto_1
    check-cast v15, Ljava/io/Reader;

    invoke-static {v15}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v15, "getErrorStream(...)"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v8, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v12, Ljava/io/Reader;

    instance-of v8, v12, Ljava/io/BufferedReader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v8, :cond_1

    :try_start_3
    check-cast v12, Ljava/io/BufferedReader;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_1
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v12, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v12, v8

    :goto_2
    check-cast v12, Ljava/io/Reader;

    invoke-static {v12}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, "error":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v9, :cond_2

    .line 288
    .end local v0    # "process":Ljava/lang/Process;
    .end local v7    # "output":Ljava/lang/String;
    :try_start_5
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u547d\u4ee4\u6267\u884c\u5931\u8d25: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", \u9519\u8bef: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v11, v10, v11}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 289
    .end local v8    # "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 292
    .restart local v7    # "output":Ljava/lang/String;
    :cond_2
    :try_start_6
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 293
    .end local v7    # "output":Ljava/lang/String;
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 649
    .local v7, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 650
    .local v9, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const-string v15, "package:"

    if-eqz v0, :cond_4

    :try_start_7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .local v18, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 293
    .local v17, "$i$a$-filter-OneClickIsolationHelper$scanAllApps$2$packageNames$1":I
    move-object/from16 v2, v18

    .end local v18    # "it":Ljava/lang/String;
    .local v2, "it":Ljava/lang/String;
    invoke-static {v2, v15, v13, v10, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15

    .line 650
    .end local v2    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-filter-OneClickIsolationHelper$scanAllApps$2$packageNames$1":I
    if-eqz v15, :cond_3

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    move-object/from16 v2, p0

    goto :goto_3

    .line 651
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$i$f$filterTo":I
    :try_start_8
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 649
    nop

    .end local v7    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 294
    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 652
    .local v2, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v0, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 653
    .local v8, "$i$f$mapTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v0    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v0, :cond_5

    :try_start_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 294
    .local v12, "$i$a$-map-OneClickIsolationHelper$scanAllApps$2$packageNames$2":I
    move-object v11, v15

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 654
    .end local v10    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-map-OneClickIsolationHelper$scanAllApps$2$packageNames$2":I
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v11, 0x0

    goto :goto_4

    .line 655
    .end local v0    # "item$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$mapTo":I
    :try_start_a
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 652
    nop

    .end local v2    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 295
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 656
    .local v2, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 657
    .local v8, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v0, :cond_8

    :try_start_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 295
    .local v11, "$i$a$-filter-OneClickIsolationHelper$scanAllApps$2$packageNames$3":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    move v10, v13

    .line 657
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-filter-OneClickIsolationHelper$scanAllApps$2$packageNames$3":I
    :goto_6
    if-eqz v10, :cond_6

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_5

    .line 658
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_8
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$filterTo":I
    :try_start_c
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 656
    nop

    .line 295
    .end local v2    # "$i$f$filter":I
    nop

    .line 292
    nop

    .line 297
    .local v0, "packageNames":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v7, 0x1

    xor-int/2addr v2, v7

    if-eqz v2, :cond_c

    .line 298
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' \u83b7\u53d6\u5230 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u4e2a\u5305\u540d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 299
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    iget-object v7, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .end local v0    # "packageNames":Ljava/util/List;
    move-object v0, v2

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 659
    .local v2, "$i$f$mapNotNull":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 667
    .local v9, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 668
    .local v10, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 667
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v0

    check-cast v15, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-object v0, v15

    .local v0, "pkgName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 300
    .local v15, "$i$a$-mapNotNull-OneClickIsolationHelper$scanAllApps$2$apps$1":I
    nop

    .line 301
    move/from16 p1, v2

    .end local v2    # "$i$f$mapNotNull":I
    .local p1, "$i$f$mapNotNull":I
    :try_start_d
    invoke-virtual {v5, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v13, "getApplicationInfo(...)"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v13, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .line 303
    nop

    .line 304
    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v20, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .local v20, "$result":Ljava/lang/Object;
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-object/from16 v21, v6

    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v0, v6}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 306
    .end local v0    # "pkgName":Ljava/lang/String;
    move/from16 v19, v9

    .end local v9    # "$i$f$mapNotNullTo":I
    .local v19, "$i$f$mapNotNullTo":I
    :try_start_10
    invoke-static {v7, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    .line 302
    invoke-direct {v13, v0, v4, v6, v9}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/AppCategory;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_a

    .line 308
    :catch_1
    move-exception v0

    goto :goto_9

    .end local v19    # "$i$f$mapNotNullTo":I
    .restart local v9    # "$i$f$mapNotNullTo":I
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v21, v6

    :goto_8
    move/from16 v19, v9

    .end local v9    # "$i$f$mapNotNullTo":I
    .restart local v19    # "$i$f$mapNotNullTo":I
    goto :goto_9

    .end local v19    # "$i$f$mapNotNullTo":I
    .end local v20    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$mapNotNullTo":I
    :catch_4
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move/from16 v19, v9

    .line 309
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$mapNotNullTo":I
    .restart local v19    # "$i$f$mapNotNullTo":I
    .restart local v20    # "$result":Ljava/lang/Object;
    :goto_9
    const/4 v13, 0x0

    .line 300
    :goto_a
    nop

    .line 667
    .end local v15    # "$i$a$-mapNotNull-OneClickIsolationHelper$scanAllApps$2$apps$1":I
    if-eqz v13, :cond_9

    move-object v0, v13

    .line 669
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 667
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :try_start_11
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_9
    move/from16 v2, p1

    move/from16 v9, v19

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    const/4 v13, 0x0

    goto :goto_7

    .line 670
    .end local v19    # "$i$f$mapNotNullTo":I
    .end local v20    # "$result":Ljava/lang/Object;
    .end local p1    # "$i$f$mapNotNull":I
    .local v2, "$i$f$mapNotNull":I
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$mapNotNullTo":I
    :cond_a
    move/from16 p1, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move/from16 v19, v9

    .line 671
    .end local v2    # "$i$f$mapNotNull":I
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$mapNotNullTo":I
    .end local v10    # "$i$f$forEach":I
    .restart local v19    # "$i$f$mapNotNullTo":I
    .restart local v20    # "$result":Ljava/lang/Object;
    .restart local p1    # "$i$f$mapNotNull":I
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v19    # "$i$f$mapNotNullTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 659
    nop

    .line 299
    .end local p1    # "$i$f$mapNotNull":I
    nop

    .line 312
    .local v0, "apps":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_b

    .line 313
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6210\u529f\u83b7\u53d6\u5230 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u4e2a\u5e94\u7528\u4fe1\u606f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 314
    return-object v0

    .line 312
    :cond_b
    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    goto/16 :goto_0

    .line 317
    .end local v0    # "apps":Ljava/util/List;
    :catch_5
    move-exception v0

    goto :goto_b

    .line 297
    .end local v20    # "$result":Ljava/lang/Object;
    .local v0, "packageNames":Ljava/util/List;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_c
    move-object/from16 v20, v4

    move-object/from16 v21, v6

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v20    # "$result":Ljava/lang/Object;
    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 317
    .end local v0    # "packageNames":Ljava/util/List;
    .end local v20    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_6
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    .line 318
    .end local v4    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "$result":Ljava/lang/Object;
    :goto_b
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' \u6267\u884c\u5f02\u5e38"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "command":Ljava/lang/String;
    goto/16 :goto_0

    .line 322
    .end local v20    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_d
    move-object/from16 v20, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v20    # "$result":Ljava/lang/Object;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u6240\u6709 su \u547d\u4ee4\u65b9\u6cd5\u5931\u8d25\uff0c\u5c1d\u8bd5\u4f7f\u7528 PackageManager API"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x80

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 327
    const/high16 v1, 0x20000

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 326
    nop

    .line 328
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    .line 326
    nop

    .line 329
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    .line 326
    nop

    .line 325
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "flagsList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v0    # "flagsList":Ljava/util/List;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 333
    .local v2, "flags":I
    nop

    .line 334
    :try_start_12
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c1d\u8bd5 PackageManager API flags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const-string v4, "getInstalledApplications(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .local v0, "packages":Ljava/util/List;
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-eqz v4, :cond_f

    .line 337
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    iget-object v7, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .end local v0    # "packages":Ljava/util/List;
    move-object v0, v4

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 672
    .local v4, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v0, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v8    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 673
    .local v11, "$i$f$mapTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v0    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 674
    .local v0, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v0

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    .line 338
    .local v14, "$i$a$-map-OneClickIsolationHelper$scanAllApps$2$apps$2":I
    iget-object v15, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 339
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual {v13, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p1, v16

    .line 340
    .local p1, "appName":Ljava/lang/String;
    new-instance v6, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .line 341
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 342
    nop

    .line 343
    move-object/from16 v9, p1

    .end local p1    # "appName":Ljava/lang/String;
    .local v9, "appName":Ljava/lang/String;
    invoke-static {v7, v15, v9}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v10

    .line 344
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v19, v0

    .end local v0    # "item$iv$iv":Ljava/lang/Object;
    .local v19, "item$iv$iv":Ljava/lang/Object;
    invoke-static {v7, v13}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 340
    invoke-direct {v6, v15, v9, v10, v0}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/AppCategory;Z)V

    .line 674
    .end local v9    # "appName":Ljava/lang/String;
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "$i$a$-map-OneClickIsolationHelper$scanAllApps$2$apps$2":I
    .end local v15    # "packageName":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    const/16 v9, 0xa

    const/4 v10, 0x2

    goto :goto_d

    .line 675
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    :cond_e
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$mapTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 672
    nop

    .line 337
    .end local v4    # "$i$f$map":I
    nop

    .line 347
    .local v0, "apps":Ljava/util/List;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PackageManager API \u83b7\u53d6\u5230 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u4e2a\u5e94\u7528"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 348
    return-object v0

    .line 336
    .local v0, "packages":Ljava/util/List;
    :cond_f
    const/4 v10, 0x2

    goto/16 :goto_c

    .line 350
    .end local v0    # "packages":Ljava/util/List;
    :catch_7
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PackageManager API flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u5931\u8d25"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v4, v6, v7}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "flags":I
    goto/16 :goto_c

    .line 355
    :cond_10
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u6240\u6709\u5e94\u7528\u5217\u8868\u83b7\u53d6\u65b9\u6cd5\u90fd\u5931\u8d25"

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 356
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
