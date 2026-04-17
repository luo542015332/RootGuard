.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagiskProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1344:1\n1864#2,3:1345\n*S KotlinDebug\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2\n*L\n1122#1:1345,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
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
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$getLogs$2"
    f = "MagiskProvider.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1097
    move-object/from16 v1, p0

    iget v0, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->label:I

    packed-switch v0, :pswitch_data_162

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;
    move-object/from16 v3, p1

    .line 1098
    .local v3, "$result":Ljava/lang/Object;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 1101
    .local v4, "logs":Ljava/util/List;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/Logger;->getLocalLogs()Ljava/util/List;

    move-result-object v0

    .line 1102
    .local v0, "localLogs":Ljava/util/List;
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_3a

    .line 1103
    .end local v4    # "logs":Ljava/util/List;
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1107
    .end local v0    # "localLogs":Ljava/util/List;
    .restart local v4    # "logs":Ljava/util/List;
    :cond_3a
    nop

    .line 1109
    :try_start_3b
    iget-object v0, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->isMagiskInstalled()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1114
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 1115
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "su"

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const-string v7, "-c"

    aput-object v7, v5, v6

    const-string v7, "logcat"

    const/4 v9, 0x2

    aput-object v7, v5, v9

    const-string v7, "-d"

    const/4 v10, 0x3

    aput-object v7, v5, v10

    const-string v7, "-v"

    const/4 v10, 0x4

    aput-object v7, v5, v10

    const-string v7, "time"

    const/4 v10, 0x5

    aput-object v7, v5, v10

    const-string v7, "*:I"

    const/4 v10, 0x6

    aput-object v7, v5, v10

    .line 1114
    invoke-virtual {v0, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1117
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v7, "getInputStream(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v10, Ljava/io/Reader;

    instance-of v5, v10, Ljava/io/BufferedReader;

    if-eqz v5, :cond_89

    check-cast v10, Ljava/io/BufferedReader;

    goto :goto_91

    :cond_89
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v5, v10, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v10, v5

    :goto_91
    check-cast v10, Ljava/io/Reader;

    invoke-static {v10}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    .line 1118
    .local v5, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1121
    nop

    .end local v0    # "process":Ljava/lang/Process;
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    const/16 v7, 0x64

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 1122
    .end local v5    # "output":Ljava/lang/String;
    .local v0, "lines":Ljava/util/List;
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .end local v0    # "lines":Ljava/util/List;
    move-object v0, v5

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1345
    .local v5, "$i$f$forEachIndexed":I
    const/4 v10, 0x0

    .line 1346
    .local v10, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    :goto_b4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "index$iv":I
    .local v12, "index$iv":I
    if-gez v10, :cond_c5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_c5
    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    move v0, v10

    .local v0, "index":I
    move-object v10, v13

    .local v10, "line":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1123
    .local v13, "$i$a$-forEachIndexed-MagiskProvider$getLogs$2$1":I
    move-object v14, v10

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v6

    if-eqz v14, :cond_ea

    move-object v14, v10

    check-cast v14, Ljava/lang/CharSequence;

    const-string v15, "Magisk"

    check-cast v15, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v14, v15, v8, v9, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ea

    .line 1124
    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->parseLogLine(Ljava/lang/String;I)Lcom/pandasu/turbo/data/magisk/MagiskLog;
    invoke-static {v7, v10, v0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$parseLogLine(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;I)Lcom/pandasu/turbo/data/magisk/MagiskLog;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v0    # "index":I
    .end local v10    # "line":Ljava/lang/String;
    :cond_ea
    nop

    .line 1346
    .end local v13    # "$i$a$-forEachIndexed-MagiskProvider$getLogs$2$1":I
    move v10, v12

    const/4 v6, 0x1

    goto :goto_b4

    .line 1347
    .end local v12    # "index$iv":I
    .local v10, "index$iv":I
    :cond_ee
    nop

    .end local v5    # "$i$f$forEachIndexed":I
    .end local v10    # "index$iv":I
    goto :goto_159

    .line 1110
    :cond_f0
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "Magisk \u672a\u5b89\u88c5"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "logs":Ljava/util/List;
    throw v0
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_f8} :catch_f8

    .line 1127
    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getLogs$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "logs":Ljava/util/List;
    :catch_f8
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "Failed to get logs"

    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1130
    new-instance v5, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    .line 1131
    nop

    .line 1132
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u65e0\u6cd5\u83b7\u53d6\u65e5\u5fd7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1133
    sget-object v7, Lcom/pandasu/turbo/data/magisk/LogLevel;->WARNING:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1134
    # getter for: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$getDateFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "format(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    const-string v10, "0"

    invoke-direct {v5, v10, v6, v7, v8}, Lcom/pandasu/turbo/data/magisk/MagiskLog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v5, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    .line 1137
    nop

    .line 1138
    nop

    .line 1139
    sget-object v6, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1140
    # getter for: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$getDateFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    const-string v8, "1"

    const-string v9, "\u65e5\u5fd7\u7cfb\u7edf\u5df2\u521d\u59cb\u5316"

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/pandasu/turbo/data/magisk/MagiskLog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_159
    move-object v0, v4

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
