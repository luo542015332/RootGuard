.class final Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KernelSUService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/kernelsu/KernelSUService;->getAllPackages(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKernelSUService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KernelSUService.kt\ncom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1855#2,2:134\n*S KotlinDebug\n*F\n+ 1 KernelSUService.kt\ncom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2\n*L\n56#1:134,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.pandasu.turbo.data.kernelsu.KernelSUService$getAllPackages$2"
    f = "KernelSUService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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

    new-instance v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;

    invoke-direct {v0, p2}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    const-string v0, "package:"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 39
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;->label:I

    packed-switch v2, :pswitch_data_146

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/kernelsu/KernelSUService$getAllPackages$2;
    move-object/from16 v3, p1

    .line 40
    .local v3, "$result":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 42
    .local v4, "packages":Ljava/util/List;
    nop

    .line 43
    :try_start_23
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "Starting to get packages via Root Shell..."

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 47
    const-string v5, "pm list packages -a"

    .line 48
    .local v5, "command":Ljava/lang/String;
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 50
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    .end local v5    # "command":Ljava/lang/String;
    invoke-static {v6}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v5

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v5

    const-string v6, "exec(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .local v5, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_100

    .line 53
    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v6

    .end local v5    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    const-string v5, "getOut(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    const-string v5, "\n"

    move-object v10, v5

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "output":Ljava/lang/String;
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command output length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 56
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    move-object v5, v6

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 134
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_a6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .local v5, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, "$i$a$-forEach-KernelSUService$getAllPackages$2$1":I
    const/4 v11, 0x0

    invoke-static {v5, v0, v11, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_da

    .line 59
    invoke-static {v5, v0, v8, v7, v8}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .end local v5    # "line":Ljava/lang/String;
    move-object v5, v12

    .line 60
    .local v5, "packageName":Ljava/lang/String;
    move-object v12, v5

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_d5

    const/4 v11, 0x1

    :cond_d5
    if-eqz v11, :cond_da

    .line 61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_da
    nop

    .line 134
    .end local v10    # "$i$a$-forEach-KernelSUService$getAllPackages$2$1":I
    goto :goto_a6

    .line 135
    :cond_dc
    nop

    .line 66
    .end local v6    # "$i$f$forEach":I
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packages via Root Shell"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_144

    .line 68
    .local v5, "result":Lcom/topjohnwu/superuser/Shell$Result;
    :cond_100
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Command failed with exit code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8, v7, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->getErr()Ljava/util/List;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error output: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8, v7, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_138} :catch_139

    .end local v5    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    goto :goto_144

    .line 71
    :catch_139
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "Failed to get packages via Root Shell"

    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_144
    return-object v4

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
