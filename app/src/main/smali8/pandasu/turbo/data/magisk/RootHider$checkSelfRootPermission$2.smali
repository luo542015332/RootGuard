.class final Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->checkSelfRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
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
    c = "com.pandasu.turbo.data.magisk.RootHider$checkSelfRootPermission$2"
    f = "RootHider.kt"
    i = {}
    l = {
        0x4da,
        0x4f2,
        0x50b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    const-string v1, "root_test"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1221
    move-object/from16 v3, p0

    iget v0, v3, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->label:I

    const-string v4, "permission denied"

    const-string v5, ", output="

    const-string v7, ", error="

    const-string v8, "getErrorStream(...)"

    const-string v9, "getInputStream(...)"

    const-string v10, "-c"

    const-string v11, "su"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_40c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    :try_start_2b
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_30

    goto/16 :goto_368

    .line 1304
    :catch_30
    move-exception v0

    goto/16 :goto_3bf

    .line 1221
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_33
    move-object/from16 v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    :try_start_37
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3c

    goto/16 :goto_254

    .line 1269
    :catch_3c
    move-exception v0

    goto/16 :goto_259

    .line 1221
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_3f
    move-object/from16 v16, p0

    .local v16, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    move-object/from16 v17, p1

    .local v17, "$result":Ljava/lang/Object;
    :try_start_43
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_48

    goto/16 :goto_141

    .line 1245
    :catch_48
    move-exception v0

    goto/16 :goto_14b

    .line 1221
    .end local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v17    # "$result":Ljava/lang/Object;
    :pswitch_4b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, p0

    .restart local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    move-object/from16 v17, p1

    .line 1222
    .restart local v17    # "$result":Ljava/lang/Object;
    nop

    .line 1223
    :try_start_53
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v14, "\u5f00\u59cb\u589e\u5f3a\u7684 Root \u6743\u9650\u68c0\u67e5..."

    invoke-virtual {v0, v14}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_3f7

    .line 1226
    nop

    .line 1227
    :try_start_5b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v14, v12, [Ljava/lang/String;

    aput-object v11, v14, v13

    aput-object v10, v14, v15

    const-string v18, "id"

    aput-object v18, v14, v6

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1228
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v14, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v13, Ljava/io/Reader;

    instance-of v12, v13, Ljava/io/BufferedReader;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7f} :catch_148

    if-eqz v12, :cond_84

    :try_start_81
    check-cast v13, Ljava/io/BufferedReader;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_83} :catch_48

    goto :goto_8c

    :cond_84
    :try_start_84
    new-instance v12, Ljava/io/BufferedReader;

    const/16 v14, 0x2000

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v13, v12

    :goto_8c
    check-cast v13, Ljava/io/Reader;

    invoke-static {v13}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1229
    .local v12, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v6, Ljava/io/Reader;

    instance-of v13, v6, Ljava/io/BufferedReader;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_ae} :catch_148

    if-eqz v13, :cond_b3

    :try_start_b0
    check-cast v6, Ljava/io/BufferedReader;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b2} :catch_48

    goto :goto_bb

    :cond_b3
    :try_start_b3
    new-instance v13, Ljava/io/BufferedReader;

    const/16 v14, 0x2000

    invoke-direct {v13, v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v6, v13

    :goto_bb
    check-cast v6, Ljava/io/Reader;

    invoke-static {v6}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1230
    .local v6, "error":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1231
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v13
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d2} :catch_148

    move v0, v13

    .line 1233
    .local v0, "exitCode":I
    if-nez v0, :cond_f2

    .line 1234
    .end local v0    # "exitCode":I
    .end local v6    # "error":Ljava/lang/String;
    :try_start_d5
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Root \u6743\u9650\u68c0\u67e5\u901a\u8fc7: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1235
    .end local v12    # "output":Ljava/lang/String;
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_f1} :catch_48

    return-object v0

    .line 1237
    .restart local v0    # "exitCode":I
    .restart local v6    # "error":Ljava/lang/String;
    :cond_f2
    :try_start_f2
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Root \u6743\u9650\u68c0\u67e5\u5931\u8d25 (\u65b9\u6cd51): exitCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_112} :catch_148

    .line 1240
    const/16 v12, 0xd

    if-eq v0, v12, :cond_126

    :try_start_116
    move-object v12, v6

    check-cast v12, Ljava/lang/CharSequence;

    move-object v13, v4

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v12, v13, v15}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_120} :catch_48

    if-eqz v12, :cond_123

    goto :goto_126

    :cond_123
    move-object/from16 v6, v16

    goto :goto_169

    .line 1241
    .end local v0    # "exitCode":I
    .end local v6    # "error":Ljava/lang/String;
    :cond_126
    :goto_126
    :try_start_126
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "Root \u6743\u9650\u88ab\u62d2\u7edd (exitCode=13)\uff0c\u9700\u8981\u91cd\u65b0\u6388\u6743"

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v0, v6, v13, v12, v13}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12f} :catch_148

    .line 1242
    move-object/from16 v6, v16

    .end local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .local v6, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    :try_start_131
    iget-object v0, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v12, v6

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput v15, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->recordAuthorizationFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v12}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$recordAuthorizationFailure(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_13c} :catch_144

    if-ne v0, v2, :cond_13f

    .line 1221
    return-object v2

    .line 1242
    :cond_13f
    move-object/from16 v16, v6

    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    :goto_141
    move-object/from16 v6, v16

    goto :goto_169

    .line 1245
    .end local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    :catch_144
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_14b

    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    :catch_148
    move-exception v0

    move-object/from16 v6, v16

    .line 1246
    .local v0, "e":Ljava/lang/Exception;
    :goto_14b
    :try_start_14b
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Root \u6743\u9650\u68c0\u67e5\u5f02\u5e38 (\u65b9\u6cd51): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_167} :catch_3f5

    move-object/from16 v6, v16

    .line 1250
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    :goto_169
    nop

    .line 1251
    :try_start_16a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    aput-object v10, v12, v15

    const-string v13, "echo"

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x3

    aput-object v1, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1252
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v14, Ljava/io/Reader;

    instance-of v12, v14, Ljava/io/BufferedReader;

    if-eqz v12, :cond_199

    check-cast v14, Ljava/io/BufferedReader;

    goto :goto_1a1

    :cond_199
    new-instance v12, Ljava/io/BufferedReader;

    const/16 v13, 0x2000

    invoke-direct {v12, v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v14, v12

    :goto_1a1
    check-cast v14, Ljava/io/Reader;

    invoke-static {v14}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1253
    .restart local v12    # "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v15, Ljava/io/Reader;

    instance-of v13, v15, Ljava/io/BufferedReader;

    if-eqz v13, :cond_1c8

    check-cast v15, Ljava/io/BufferedReader;

    goto :goto_1d0

    :cond_1c8
    new-instance v13, Ljava/io/BufferedReader;

    const/16 v14, 0x2000

    invoke-direct {v13, v15, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v15, v13

    :goto_1d0
    check-cast v15, Ljava/io/Reader;

    invoke-static {v15}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1254
    .local v13, "error":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1255
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v14

    move v0, v14

    .line 1257
    .local v0, "exitCode":I
    if-nez v0, :cond_1fd

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fd

    .line 1258
    .end local v0    # "exitCode":I
    .end local v12    # "output":Ljava/lang/String;
    .end local v13    # "error":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "Root \u6743\u9650\u68c0\u67e5\u901a\u8fc7 (\u65b9\u6cd52)"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1259
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1261
    .restart local v0    # "exitCode":I
    .restart local v12    # "output":Ljava/lang/String;
    .restart local v13    # "error":Ljava/lang/String;
    :cond_1fd
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Root \u6743\u9650\u68c0\u67e5\u5931\u8d25 (\u65b9\u6cd52): exitCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1264
    .end local v12    # "output":Ljava/lang/String;
    const/16 v1, 0xd

    if-eq v0, v1, :cond_23a

    move-object v1, v13

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v12, 0x1

    invoke-static {v1, v4, v12}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_236

    goto :goto_23a

    :cond_236
    move-object v1, v6

    move-object/from16 v4, v17

    goto :goto_275

    .line 1265
    .end local v0    # "exitCode":I
    .end local v13    # "error":Ljava/lang/String;
    :cond_23a
    :goto_23a
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "Root \u6743\u9650\u88ab\u62d2\u7edd (\u65b9\u6cd52)"

    const/4 v4, 0x2

    const/4 v12, 0x0

    invoke-static {v0, v1, v12, v4, v12}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1266
    iget-object v0, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v1, v6

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->recordAuthorizationFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$recordAuthorizationFailure(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_24e} :catch_255

    if-ne v0, v2, :cond_251

    .line 1221
    return-object v2

    .line 1266
    :cond_251
    move-object v1, v6

    move-object/from16 v4, v17

    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v17    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    :goto_254
    goto :goto_275

    .line 1269
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v17    # "$result":Ljava/lang/Object;
    :catch_255
    move-exception v0

    move-object v1, v6

    move-object/from16 v4, v17

    .line 1270
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v17    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    :goto_259
    :try_start_259
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Root \u6743\u9650\u68c0\u67e5\u5f02\u5e38 (\u65b9\u6cd52): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_275} :catch_3ef

    .line 1274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_275
    nop

    .line 1275
    :try_start_276
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v12, v6

    const/4 v6, 0x1

    aput-object v10, v12, v6

    const-string v6, "which su && echo \'SU_BINARY_FOUND\'"

    const/4 v10, 0x2

    aput-object v6, v12, v10

    invoke-virtual {v0, v12}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1276
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v10, Ljava/io/Reader;

    instance-of v6, v10, Ljava/io/BufferedReader;

    if-eqz v6, :cond_2a3

    check-cast v10, Ljava/io/BufferedReader;

    goto :goto_2ab

    :cond_2a3
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v6, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v10, v6

    :goto_2ab
    check-cast v10, Ljava/io/Reader;

    invoke-static {v10}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1277
    .local v6, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v10, Ljava/io/Reader;

    instance-of v8, v10, Ljava/io/BufferedReader;

    if-eqz v8, :cond_2d2

    check-cast v10, Ljava/io/BufferedReader;

    goto :goto_2da

    :cond_2d2
    new-instance v8, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v8, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v10, v8

    :goto_2da
    check-cast v10, Ljava/io/Reader;

    invoke-static {v10}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1278
    .local v8, "error":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v9

    move v0, v9

    .line 1281
    .local v0, "exitCode":I
    if-nez v0, :cond_322

    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "SU_BINARY_FOUND"

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_322

    .line 1282
    .end local v0    # "exitCode":I
    .end local v8    # "error":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root \u6743\u9650\u68c0\u67e5\u901a\u8fc7 (\u65b9\u6cd53): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1283
    .end local v6    # "output":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1285
    .restart local v0    # "exitCode":I
    .restart local v6    # "output":Ljava/lang/String;
    .restart local v8    # "error":Ljava/lang/String;
    :cond_322
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Root \u6743\u9650\u68c0\u67e5\u5931\u8d25 (\u65b9\u6cd53): exitCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1288
    .end local v6    # "output":Ljava/lang/String;
    nop

    .line 1289
    const/16 v5, 0xd

    if-ne v0, v5, :cond_36e

    .line 1290
    .end local v0    # "exitCode":I
    .end local v8    # "error":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "Root \u6743\u9650\u88ab\u62d2\u7edd (exitCode=13) - Root \u7ba1\u7406\u5668\u62d2\u7edd\u4e86\u6388\u6743\u8bf7\u6c42"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v0, v5, v7, v6, v7}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1291
    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x3

    iput v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->recordAuthorizationFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$recordAuthorizationFailure(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_367

    .line 1221
    return-object v2

    .line 1291
    :cond_367
    move-object v2, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_368
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_3df

    .line 1293
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v8    # "error":Ljava/lang/String;
    :cond_36e
    move-object v0, v8

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "no su binary"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_386

    .line 1294
    .end local v8    # "error":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "\u7cfb\u7edf\u4e2d\u6ca1\u6709 su \u4e8c\u8fdb\u5236\u6587\u4ef6"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3b8

    .line 1296
    .restart local v8    # "error":Ljava/lang/String;
    :cond_386
    move-object v0, v8

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "executable"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_39e

    .line 1297
    .end local v8    # "error":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "su \u4e8c\u8fdb\u5236\u6587\u4ef6\u4e0d\u53ef\u6267\u884c"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3b8

    .line 1300
    .restart local v8    # "error":Ljava/lang/String;
    :cond_39e
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672a\u77e5\u7684 Root \u6743\u9650\u9519\u8bef: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_3b8} :catch_3bd

    .line 1308
    .end local v8    # "error":Ljava/lang/String;
    :goto_3b8
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    goto :goto_3df

    .line 1304
    :catch_3bd
    move-exception v0

    move-object v2, v4

    .line 1305
    .end local v4    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_3bf
    :try_start_3bf
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Root \u6743\u9650\u68c0\u67e5\u5f02\u5e38 (\u65b9\u6cd53): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_3db
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_3db} :catch_3e9

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 1308
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v17    # "$result":Ljava/lang/Object;
    :goto_3df
    :try_start_3df
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u6240\u6709 Root \u6743\u9650\u68c0\u67e5\u65b9\u6cd5\u90fd\u5931\u8d25"

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_3e8
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_3e8} :catch_3f5

    .line 1309
    goto :goto_405

    .line 1310
    .end local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v17    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v2    # "$result":Ljava/lang/Object;
    :catch_3e9
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_3fa

    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_3ef
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    goto :goto_3fa

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v16    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkSelfRootPermission$2;
    .restart local v17    # "$result":Ljava/lang/Object;
    :catch_3f5
    move-exception v0

    goto :goto_3fa

    :catch_3f7
    move-exception v0

    move-object/from16 v6, v16

    .line 1311
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3fa
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Root \u6743\u9650\u68c0\u67e5\u603b\u4f53\u5f02\u5e38"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1312
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_405
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1222
    return-object v0

    nop

    :pswitch_data_40c
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3f
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method
