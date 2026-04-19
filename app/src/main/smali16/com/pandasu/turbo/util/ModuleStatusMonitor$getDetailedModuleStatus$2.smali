.class final Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModuleStatusMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/util/ModuleStatusMonitor;->getDetailedModuleStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleStatusMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleStatusMonitor.kt\ncom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1855#2,2:326\n*S KotlinDebug\n*F\n+ 1 ModuleStatusMonitor.kt\ncom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2\n*L\n223#1:326,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;",
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
    c = "com.pandasu.turbo.util.ModuleStatusMonitor$getDetailedModuleStatus$2"
    f = "ModuleStatusMonitor.kt"
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;

    invoke-direct {v0, p2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    const-string v0, "total"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 216
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;
    move-object/from16 v3, p1

    .line 217
    .local v3, "$result":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 220
    .local v4, "modules":Ljava/util/List;
    nop

    .line 221
    const/4 v5, 0x1

    :try_start_0
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "ls -la /data/adb/modules/ 2>/dev/null"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v6

    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v6

    const-string v7, "exec(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .local v6, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 223
    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v7

    .end local v6    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    const-string v6, "getOut(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    move-object v6, v7

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 326
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .local v6, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 224
    .local v10, "$i$a$-forEach-ModuleStatusMonitor$getDetailedModuleStatus$2$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    const-string v12, "drwx"

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v11, v12, v8, v14, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    const-string v12, "."

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v8, v14, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v8, v14, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 225
    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v6    # "line":Ljava/lang/String;
    check-cast v11, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/Regex;

    const-string v12, "\\s+"

    invoke-direct {v6, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v8}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    goto :goto_1

    .line 226
    .local v6, "moduleName":Ljava/lang/String;
    :cond_0
    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_1

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 227
    nop

    .line 228
    new-instance v15, Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;

    .line 229
    nop

    .line 230
    const/4 v13, 0x1

    .line 231
    const/4 v14, 0x1

    .line 232
    const/16 v16, 0x0

    .line 233
    const/16 v17, 0x0

    .line 234
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 228
    move-object v11, v15

    move-object v12, v6

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v11 .. v17}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Long;Ljava/util/List;)V

    .line 227
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v6    # "moduleName":Ljava/lang/String;
    :cond_1
    nop

    .line 326
    .end local v10    # "$i$a$-forEach-ModuleStatusMonitor$getDetailedModuleStatus$2$1":I
    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 327
    :cond_2
    nop

    .end local v7    # "$i$f$forEach":I
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "ModuleStatusMonitor: \u83b7\u53d6\u6a21\u5757\u5217\u8868\u5931\u8d25"

    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
