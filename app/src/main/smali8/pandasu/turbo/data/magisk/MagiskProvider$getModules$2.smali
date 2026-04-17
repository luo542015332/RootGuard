.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getModules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/pandasu/turbo/data/magisk/MagiskModule;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagiskProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1344:1\n1855#2,2:1345\n*S KotlinDebug\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2\n*L\n181#1:1345,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/data/magisk/MagiskModule;",
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
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$getModules$2"
    f = "MagiskProvider.kt"
    i = {
        0x0
    }
    l = {
        0xb8
    }
    m = "invokeSuspend"
    n = {
        "modules"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/MagiskModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const-string v0, "1"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 172
    iget v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_12c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_15
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$forEach":I
    const/4 v5, 0x0

    .local v5, "$i$a$-forEach-MagiskProvider$getModules$2$1":I
    iget-object v6, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    iget-object v8, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "modules":Ljava/util/List;
    :try_start_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_2e

    move v9, v5

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_e7

    .line 191
    .end local v2    # "$i$f$forEach":I
    .end local v5    # "$i$a$-forEach-MagiskProvider$getModules$2$1":I
    :catch_2e
    move-exception v1

    goto/16 :goto_121

    .line 172
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .end local v8    # "modules":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 173
    .local v2, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    check-cast v8, Ljava/util/List;

    .line 175
    .restart local v8    # "modules":Ljava/util/List;
    nop

    .line 177
    :try_start_3e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "su"

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const-string v7, "-c"

    aput-object v7, v6, v4

    const-string v7, "find"

    aput-object v7, v6, v3

    const-string v7, "/data/adb/modules"

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const-string v7, "-mindepth"

    const/4 v9, 0x4

    aput-object v7, v6, v9

    const/4 v7, 0x5

    aput-object v0, v6, v7

    const-string v7, "-maxdepth"

    const/4 v9, 0x6

    aput-object v7, v6, v9

    const/4 v7, 0x7

    aput-object v0, v6, v7

    const-string v0, "-type"

    const/16 v7, 0x8

    aput-object v0, v6, v7

    const-string v0, "d"

    const/16 v7, 0x9

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 178
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "getInputStream(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v7, Ljava/io/Reader;

    instance-of v5, v7, Ljava/io/BufferedReader;

    if-eqz v5, :cond_91

    check-cast v7, Ljava/io/BufferedReader;

    goto :goto_99

    :cond_91
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v5, v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v7, v5

    :goto_99
    check-cast v7, Ljava/io/Reader;

    invoke-static {v7}, Lkotlin/io/TextStreamsKt;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v5

    .line 179
    .local v5, "moduleDirs":Ljava/util/List;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 181
    nop

    .end local v0    # "process":Ljava/lang/Process;
    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .end local v5    # "moduleDirs":Ljava/util/List;
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1345
    .local v5, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ad} :catch_11f

    move-object v0, v2

    move v2, v5

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    .end local v5    # "$i$f$forEach":I
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .local v2, "$i$f$forEach":I
    :goto_b2
    :try_start_b2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .local v5, "dirPath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 182
    .local v9, "$i$a$-forEach-MagiskProvider$getModules$2$1":I
    const-string v10, "/"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11, v3, v11}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 183
    .local v5, "moduleId":Ljava/lang/String;
    move-object v10, v5

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v4

    if-eqz v10, :cond_f9

    .line 184
    iput-object v8, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->readModuleInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v7, v5, v0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$readModuleInfo(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_df} :catch_2e

    .end local v5    # "moduleId":Ljava/lang/String;
    if-ne v10, v1, :cond_e2

    .line 172
    return-object v1

    .line 184
    :cond_e2
    move v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v10

    .line 172
    .end local v2    # "$i$f$forEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .local v5, "$i$f$forEach":I
    :goto_e7
    :try_start_e7
    check-cast p1, Lcom/pandasu/turbo/data/magisk/MagiskModule;

    .line 185
    .local p1, "module":Lcom/pandasu/turbo/data/magisk/MagiskModule;
    if-eqz p1, :cond_ee

    .line 186
    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ee} :catch_f3

    .line 189
    .end local p1    # "module":Lcom/pandasu/turbo/data/magisk/MagiskModule;
    :cond_ee
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v5

    goto :goto_f9

    .line 191
    .end local v5    # "$i$f$forEach":I
    .end local v9    # "$i$a$-forEach-MagiskProvider$getModules$2$1":I
    :catch_f3
    move-exception p1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v12

    goto :goto_121

    .line 189
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .restart local v2    # "$i$f$forEach":I
    .restart local v9    # "$i$a$-forEach-MagiskProvider$getModules$2$1":I
    .local p1, "$result":Ljava/lang/Object;
    :cond_f9
    :goto_f9
    nop

    .line 1345
    .end local v9    # "$i$a$-forEach-MagiskProvider$getModules$2$1":I
    goto :goto_b2

    .line 1346
    :cond_fb
    nop

    .line 190
    .end local v2    # "$i$f$forEach":I
    :try_start_fc
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " modules"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_11e} :catch_2e

    goto :goto_12b

    .line 191
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .local v2, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    :catch_11f
    move-exception v1

    move-object v0, v2

    .line 192
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getModules$2;
    .local v1, "e":Ljava/lang/Exception;
    :goto_121
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to get modules"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_12b
    return-object v8

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_15
    .end packed-switch
.end method
