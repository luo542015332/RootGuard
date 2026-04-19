.class final Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LogsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;->loadLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1$WhenMappings;
    }
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
    value = "SMAP\nLogsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogsViewModel.kt\ncom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n230#2,5:88\n230#2,5:97\n230#2,5:102\n1549#3:93\n1620#3,3:94\n*S KotlinDebug\n*F\n+ 1 LogsViewModel.kt\ncom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1\n*L\n34#1:88,5\n52#1:97,5\n67#1:102,5\n38#1:93\n38#1:94,3\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.logs.LogsViewModel$loadLogs$1"
    f = "LogsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->this$0:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->this$0:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;-><init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 33
    iget v0, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 34
    .local v0, "this":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->this$0:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$f$update":I
    :cond_0
    nop

    .line 89
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 90
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    .local v4, "it":Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    const/4 v5, 0x0

    .line 34
    .local v5, "$i$a$-update-LogsViewModel$loadLogs$1$1":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7, v7, v6}, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;Ljava/util/List;ZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    move-result-object v4

    .line 90
    .end local v4    # "it":Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    .end local v5    # "$i$a$-update-LogsViewModel$loadLogs$1$1":I
    nop

    .line 91
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    nop

    .line 36
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 37
    const/4 v5, 0x0

    :try_start_0
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/Logger;->getLocalLogs()Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, "magiskLogs":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    move-object v1, v2

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v1, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 94
    .local v4, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v1    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v1

    check-cast v7, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    .end local v1    # "item$iv$iv":Ljava/lang/Object;
    move-object v1, v7

    .local v1, "magiskLog":Lcom/pandasu/turbo/data/magisk/MagiskLog;
    const/4 v7, 0x0

    .line 39
    .local v7, "$i$a$-map-LogsViewModel$loadLogs$1$logs$1":I
    new-instance v8, Lcom/pandasu/turbo/ui/screens/logs/LogEntry;

    .line 40
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskLog;->getId()Ljava/lang/String;

    move-result-object v9

    .line 41
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskLog;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskLog;->getLevel()Lcom/pandasu/turbo/data/magisk/LogLevel;

    move-result-object v11

    sget-object v12, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Lcom/pandasu/turbo/data/magisk/LogLevel;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_1

    .line 46
    .end local v1    # "magiskLog":Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_2

    .restart local v1    # "magiskLog":Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    :pswitch_1
    sget-object v11, Lcom/pandasu/turbo/ui/screens/logs/LogLevel;->DEBUG:Lcom/pandasu/turbo/ui/screens/logs/LogLevel;

    goto :goto_1

    .line 45
    :pswitch_2
    sget-object v11, Lcom/pandasu/turbo/ui/screens/logs/LogLevel;->ERROR:Lcom/pandasu/turbo/ui/screens/logs/LogLevel;

    goto :goto_1

    .line 44
    :pswitch_3
    sget-object v11, Lcom/pandasu/turbo/ui/screens/logs/LogLevel;->WARNING:Lcom/pandasu/turbo/ui/screens/logs/LogLevel;

    goto :goto_1

    .line 43
    :pswitch_4
    sget-object v11, Lcom/pandasu/turbo/ui/screens/logs/LogLevel;->INFO:Lcom/pandasu/turbo/ui/screens/logs/LogLevel;

    .line 48
    :goto_1
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskLog;->getTimestamp()Ljava/lang/String;

    move-result-object v12

    .line 39
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/pandasu/turbo/ui/screens/logs/LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/ui/screens/logs/LogLevel;Ljava/lang/String;)V

    .line 95
    .end local v1    # "magiskLog":Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .end local v7    # "$i$a$-map-LogsViewModel$loadLogs$1$logs$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$i$a$-map-LogsViewModel$loadLogs$1$logs$1":I
    :goto_2
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v1

    .line 96
    .end local v7    # "$i$a$-map-LogsViewModel$loadLogs$1$logs$1":I
    .restart local v0    # "this":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$mapTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 93
    nop

    .line 38
    .end local v2    # "$i$f$map":I
    nop

    .line 52
    .local v1, "logs":Ljava/util/List;
    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->this$0:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v3, 0x0

    .line 97
    .local v3, "$i$f$update":I
    :cond_2
    nop

    .line 98
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 99
    .local v4, "prevValue$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    .local v6, "it":Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    const/4 v7, 0x0

    .line 53
    .local v7, "$i$a$-update-LogsViewModel$loadLogs$1$2":I
    nop

    .line 54
    nop

    .line 55
    nop

    .line 53
    invoke-virtual {v6, v1, v5}, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;->copy(Ljava/util/List;Z)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    move-result-object v8

    .line 99
    .end local v6    # "it":Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    .end local v7    # "$i$a$-update-LogsViewModel$loadLogs$1$2":I
    move-object v6, v8

    .line 100
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 101
    nop

    .end local v1    # "logs":Ljava/util/List;
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v4    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    goto/16 :goto_3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to load logs"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    new-instance v2, Lcom/pandasu/turbo/ui/screens/logs/LogEntry;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u65e0\u6cd5\u52a0\u8f7d\u65e5\u5fd7: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/pandasu/turbo/ui/screens/logs/LogLevel;->ERROR:Lcom/pandasu/turbo/ui/screens/logs/LogLevel;

    .line 65
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "format(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {v2, v3, v1, v4, v6}, Lcom/pandasu/turbo/ui/screens/logs/LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/ui/screens/logs/LogLevel;Ljava/lang/String;)V

    move-object v6, v2

    .line 67
    .local v6, "errorLog":Lcom/pandasu/turbo/ui/screens/logs/LogEntry;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel$loadLogs$1;->this$0:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    .local v7, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v8, 0x0

    .line 102
    .local v8, "$i$f$update":I
    :cond_3
    nop

    .line 103
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "prevValue$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    .local v2, "it":Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    const/4 v3, 0x0

    .line 68
    .local v3, "$i$a$-update-LogsViewModel$loadLogs$1$3":I
    nop

    .line 69
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 70
    nop

    .line 68
    invoke-virtual {v2, v4, v5}, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;->copy(Ljava/util/List;Z)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    move-result-object v2

    .line 104
    .end local v2    # "it":Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    .end local v3    # "$i$a$-update-LogsViewModel$loadLogs$1$3":I
    nop

    .line 105
    .local v2, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v7, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    nop

    .line 74
    .end local v1    # "prevValue$iv":Ljava/lang/Object;
    .end local v2    # "nextValue$iv":Ljava/lang/Object;
    .end local v6    # "errorLog":Lcom/pandasu/turbo/ui/screens/logs/LogEntry;
    .end local v7    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v8    # "$i$f$update":I
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
