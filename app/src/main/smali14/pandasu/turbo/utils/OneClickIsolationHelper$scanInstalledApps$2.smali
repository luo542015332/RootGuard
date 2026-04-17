.class final Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OneClickIsolationHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->scanInstalledApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nOneClickIsolationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n766#2:649\n857#2,2:650\n1549#2:652\n1620#2,3:653\n766#2:656\n857#2,2:657\n1603#2,9:659\n1855#2:668\n1856#2:670\n1612#2:671\n766#2:672\n857#2,2:673\n766#2:675\n857#2,2:676\n1549#2:678\n1620#2,3:679\n766#2:682\n857#2,2:683\n1603#2,9:685\n1855#2:694\n1856#2:696\n1612#2:697\n766#2:698\n857#2,2:699\n1549#2:701\n1620#2,3:702\n766#2:705\n857#2,2:706\n1#3:669\n1#3:695\n*S KotlinDebug\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2\n*L\n122#1:649\n122#1:650,2\n123#1:652\n123#1:653,3\n124#1:656\n124#1:657,2\n130#1:659,9\n130#1:668\n130#1:670\n130#1:671\n152#1:672\n152#1:673,2\n171#1:675\n171#1:676,2\n172#1:678\n172#1:679,3\n173#1:682\n173#1:683,2\n177#1:685,9\n177#1:694\n177#1:696\n177#1:697\n189#1:698\n189#1:699,2\n203#1:701\n203#1:702,3\n215#1:705\n215#1:706,2\n130#1:669\n177#1:695\n*E\n"
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
    c = "com.pandasu.turbo.utils.OneClickIsolationHelper$scanInstalledApps$2"
    f = "OneClickIsolationHelper.kt"
    i = {
        0x0
    }
    l = {
        0x62,
        0x67
    }
    m = "invokeSuspend"
    n = {
        "pm"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

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

    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;

    iget-object v1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28

    const-string v1, "getApplicationInfo(...)"

    const-string v2, "package:"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 94
    move-object/from16 v3, p0

    iget v4, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->label:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_650

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    move-object/from16 v0, p0

    .local v0, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    goto/16 :goto_8f

    .end local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_22
    move-object/from16 v4, p0

    .local v4, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget-object v7, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->L$0:Ljava/lang/Object;

    check-cast v7, Landroid/content/pm/PackageManager;

    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    goto :goto_50

    .end local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :pswitch_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    move-object/from16 v6, p1

    .line 95
    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    # getter for: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$getContext$p(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 98
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    iget-object v8, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    move-object v9, v4

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v7, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->L$0:Ljava/lang/Object;

    iput v5, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->label:I

    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->checkRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$checkRootPermission(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_50

    .line 94
    return-object v0

    .line 98
    :cond_50
    :goto_50
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 99
    .local v8, "hasRoot":Z
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OneClick: \u8bbe\u5907Root\u6743\u9650\u72b6\u6001: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 101
    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v8, :cond_90

    .line 102
    .end local v8    # "hasRoot":Z
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "OneClick: \u8bbe\u5907\u6ca1\u6709Root\u6743\u9650\uff0c\u4e00\u952e\u9694\u79bb\u529f\u80fd\u53d7\u9650"

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 103
    iget-object v1, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v4

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v10, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->L$0:Ljava/lang/Object;

    iput v9, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->label:I

    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->tryLimitedMethods(Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v7, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$tryLimitedMethods(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    if-ne v1, v0, :cond_8c

    .line 94
    return-object v0

    .line 103
    :cond_8c
    move-object v2, v1

    move-object v0, v4

    move-object v1, v6

    .line 107
    .end local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_8f
    return-object v2

    .line 108
    .end local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_90
    const/16 v8, 0xa

    const/4 v11, 0x0

    :try_start_93
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v12, "OneClick: \u5c1d\u8bd5\u65b9\u6cd51 - Shell.cmd pm list packages -a"

    invoke-virtual {v0, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v12, "pm list packages -a"

    aput-object v12, v0, v11

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    const-string v12, "exec(...)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .local v0, "result":Lcom/topjohnwu/superuser/Shell$Result;
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OneClick: Shell\u547d\u4ee4\u9000\u51fa\u7801: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v12
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_cd} :catch_3b3

    if-nez v12, :cond_f1

    .line 115
    :try_start_cf
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getErr()Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OneClick: Shell\u547d\u4ee4\u5931\u8d25\uff0c\u9519\u8bef: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10, v9, v10}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_eb} :catch_ec

    goto :goto_f1

    .line 162
    .end local v0    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    :catch_ec
    move-exception v0

    move-object/from16 v25, v6

    goto/16 :goto_3b6

    .line 118
    .restart local v0    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    :cond_f1
    :goto_f1
    :try_start_f1
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v12

    const-string v13, "getOut(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v12

    check-cast v14, Ljava/lang/Iterable;

    const-string v12, "\n"

    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "output":Ljava/lang/String;
    sget-object v13, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OneClick: Shell\u547d\u4ee4\u8f93\u51fa\u884c\u6570: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 121
    .end local v0    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 122
    .end local v12    # "output":Ljava/lang/String;
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 649
    .local v5, "$i$f$filter":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v12, "destination$iv$iv":Ljava/util/Collection;
    const/4 v13, 0x0

    .line 650
    .local v13, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_14a
    :goto_14a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_14e} :catch_3b3

    if-eqz v0, :cond_163

    :try_start_150
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .local v15, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 122
    .local v17, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$1":I
    invoke-static {v15, v2, v11, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v18

    .line 650
    .end local v15    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$1":I
    if-eqz v18, :cond_14a

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_162} :catch_ec

    goto :goto_14a

    .line 651
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_163
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$i$f$filterTo":I
    :try_start_164
    move-object v0, v12

    check-cast v0, Ljava/util/List;

    .line 649
    nop

    .end local v5    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 123
    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 652
    .local v5, "$i$f$map":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .local v0, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v12    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v13, 0x0

    .line 653
    .local v13, "$i$f$mapTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v0    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_17b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_17f} :catch_3b3

    if-eqz v0, :cond_1a1

    :try_start_181
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .restart local v15    # "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 123
    .local v17, "$i$a$-map-OneClickIsolationHelper$scanInstalledApps$2$packageNames$2":I
    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v15, v8}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 654
    .end local v15    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-map-OneClickIsolationHelper$scanInstalledApps$2$packageNames$2":I
    invoke-interface {v12, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_19e} :catch_ec

    const/16 v8, 0xa

    goto :goto_17b

    .line 655
    .end local v0    # "item$iv$iv":Ljava/lang/Object;
    :cond_1a1
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$i$f$mapTo":I
    :try_start_1a2
    move-object v0, v12

    check-cast v0, Ljava/util/List;

    .line 652
    nop

    .end local v5    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 124
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 656
    .local v5, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 657
    .local v12, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_1b5
    :goto_1b5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1b9} :catch_3b3

    if-eqz v0, :cond_1d6

    :try_start_1bb
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 124
    .local v15, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$3":I
    move-object/from16 v17, v14

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1cf

    const/4 v14, 0x1

    goto :goto_1d0

    :cond_1cf
    move v14, v11

    .line 657
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$3":I
    :goto_1d0
    if-eqz v14, :cond_1b5

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1d5} :catch_ec

    goto :goto_1b5

    .line 658
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_1d6
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$filterTo":I
    :try_start_1d7
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 656
    nop

    .line 124
    .end local v5    # "$i$f$filter":I
    nop

    .line 121
    nop

    .line 126
    .local v0, "packageNames":Ljava/util/List;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneClick: \u65b9\u6cd51 \u83b7\u53d6\u5230 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " \u4e2a\u5305\u540d"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 128
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    if-eqz v5, :cond_3b0

    .line 129
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "OneClick: \u65b9\u6cd51 \u5f00\u59cb\u89e3\u6790\u5e94\u7528\u4fe1\u606f"

    invoke-virtual {v5, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 130
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    iget-object v8, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .end local v0    # "packageNames":Ljava/util/List;
    move-object v0, v5

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 659
    .local v5, "$i$f$mapNotNull":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v12, "destination$iv$iv":Ljava/util/Collection;
    const/4 v13, 0x0

    .line 667
    .local v13, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 668
    .local v14, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_226
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2fc

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 667
    .local v17, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_236} :catch_3b3

    move-object/from16 v19, v18

    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    .local v19, "pkgName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 131
    .local v18, "$i$a$-mapNotNull-OneClickIsolationHelper$scanInstalledApps$2$apps$1":I
    nop

    .line 132
    move-object/from16 v9, v19

    .end local v19    # "pkgName":Ljava/lang/String;
    .local v9, "pkgName":Ljava/lang/String;
    :try_start_23d
    invoke-virtual {v7, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v19

    .line 134
    .local v21, "appName":Ljava/lang/String;
    move-object/from16 v10, v21

    .end local v21    # "appName":Ljava/lang/String;
    .local v10, "appName":Ljava/lang/String;
    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->categorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    invoke-static {v8, v9, v10}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v21

    move-object/from16 v22, v21

    .line 135
    .local v22, "category":Lcom/pandasu/turbo/data/model/AppCategory;
    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v8, v0}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v21

    .line 136
    .local v21, "isSystem":Z
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_25c} :catch_2c5

    if-eqz v21, :cond_260

    const/4 v3, 0x1

    goto :goto_261

    :cond_260
    const/4 v3, 0x0

    :goto_261
    move/from16 v23, v5

    .end local v5    # "$i$f$mapNotNull":I
    .local v23, "$i$f$mapNotNull":I
    :try_start_263
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v24, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v24, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_26c} :catch_2bf

    move-object/from16 v25, v6

    .end local v6    # "$result":Ljava/lang/Object;
    .local v25, "$result":Ljava/lang/Object;
    :try_start_26e
    const-string v6, "OneClick: \u89e3\u6790\u5e94\u7528: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "), \u7c7b\u522b: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v22

    .end local v22    # "category":Lcom/pandasu/turbo/data/model/AppCategory;
    .local v6, "category":Lcom/pandasu/turbo/data/model/AppCategory;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_28e} :catch_2bb

    move-object/from16 v22, v8

    :try_start_290
    const-string v8, ", \u7cfb\u7edf\u5e94\u7528: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u8def\u5f84: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 138
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .line 139
    nop

    .line 140
    nop

    .line 141
    .end local v10    # "appName":Ljava/lang/String;
    nop

    .line 142
    .end local v6    # "category":Lcom/pandasu/turbo/data/model/AppCategory;
    if-eqz v21, :cond_2b4

    const/4 v3, 0x1

    goto :goto_2b5

    .end local v21    # "isSystem":Z
    :cond_2b4
    const/4 v3, 0x0

    .line 138
    :goto_2b5
    invoke-direct {v0, v9, v10, v6, v3}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/AppCategory;Z)V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_2b8} :catch_2b9

    goto :goto_2e8

    .line 144
    :catch_2b9
    move-exception v0

    goto :goto_2cc

    :catch_2bb
    move-exception v0

    move-object/from16 v22, v8

    goto :goto_2cc

    .end local v25    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    :catch_2bf
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v22, v8

    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v25    # "$result":Ljava/lang/Object;
    goto :goto_2cc

    .end local v23    # "$i$f$mapNotNull":I
    .end local v25    # "$result":Ljava/lang/Object;
    .restart local v5    # "$i$f$mapNotNull":I
    .restart local v6    # "$result":Ljava/lang/Object;
    :catch_2c5
    move-exception v0

    move/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v22, v8

    .line 145
    .end local v5    # "$i$f$mapNotNull":I
    .end local v6    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v25    # "$result":Ljava/lang/Object;
    :goto_2cc
    :try_start_2cc
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OneClick: \u65e0\u6cd5\u83b7\u53d6\u5e94\u7528\u4fe1\u606f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v9    # "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e8
    nop

    .line 667
    .end local v18    # "$i$a$-mapNotNull-OneClickIsolationHelper$scanInstalledApps$2$apps$1":I
    if-eqz v0, :cond_2ef

    .line 669
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 667
    .local v3, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_2ef
    move-object/from16 v3, p0

    move-object/from16 v8, v22

    move/from16 v5, v23

    move-object/from16 v6, v25

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_226

    .line 670
    .end local v23    # "$i$f$mapNotNull":I
    .end local v25    # "$result":Ljava/lang/Object;
    .restart local v5    # "$i$f$mapNotNull":I
    .restart local v6    # "$result":Ljava/lang/Object;
    :cond_2fc
    move/from16 v23, v5

    move-object/from16 v25, v6

    .line 671
    .end local v5    # "$i$f$mapNotNull":I
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v14    # "$i$f$forEach":I
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v25    # "$result":Ljava/lang/Object;
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$i$f$mapNotNullTo":I
    move-object v0, v12

    check-cast v0, Ljava/util/List;

    .line 659
    nop

    .line 130
    .end local v23    # "$i$f$mapNotNull":I
    nop

    .line 150
    .local v0, "apps":Ljava/util/List;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneClick: \u65b9\u6cd51 \u89e3\u6790\u5b8c\u6210\uff0c\u5f97\u5230 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u4e2a\u5e94\u7528\u4fe1\u606f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 152
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    move-object v0, v3

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 672
    .local v3, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 673
    .local v6, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_339
    :goto_339
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_356

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v0

    check-cast v9, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v9, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v10, 0x0

    .line 152
    .local v10, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$userApps$1":I
    invoke-virtual {v9}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v11

    if-nez v11, :cond_34f

    const/4 v9, 0x1

    goto :goto_350

    :cond_34f
    const/4 v9, 0x0

    .line 673
    .end local v9    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v10    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$userApps$1":I
    :goto_350
    if-eqz v9, :cond_339

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_339

    .line 674
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_356
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$filterTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 672
    nop

    .line 152
    .end local v3    # "$i$f$filter":I
    nop

    .line 153
    .local v0, "userApps":Ljava/util/List;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneClick: \u65b9\u6cd51 \u7528\u6237\u5e94\u7528\u6570\u91cf: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 155
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_3a6

    .line 156
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneClick: \u4f7f\u7528\u65b9\u6cd51 \u8fd4\u56de "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u4e2a\u7528\u6237\u5e94\u7528"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 157
    return-object v0

    .line 159
    :cond_3a6
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "OneClick: \u65b9\u6cd51 \u6ca1\u6709\u627e\u5230\u7528\u6237\u5e94\u7528"

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_3ad} :catch_3ae

    .end local v0    # "userApps":Ljava/util/List;
    goto :goto_3c0

    .line 162
    :catch_3ae
    move-exception v0

    goto :goto_3b6

    .line 128
    .end local v25    # "$result":Ljava/lang/Object;
    .local v0, "packageNames":Ljava/util/List;
    .local v6, "$result":Ljava/lang/Object;
    :cond_3b0
    move-object/from16 v25, v6

    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v25    # "$result":Ljava/lang/Object;
    goto :goto_3c0

    .line 162
    .end local v0    # "packageNames":Ljava/util/List;
    .end local v25    # "$result":Ljava/lang/Object;
    .restart local v6    # "$result":Ljava/lang/Object;
    :catch_3b3
    move-exception v0

    move-object/from16 v25, v6

    .line 163
    .end local v6    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "$result":Ljava/lang/Object;
    :goto_3b6
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "Shell.cmd pm list packages failed"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3c0
    nop

    .line 168
    :try_start_3c1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "pm list packages"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 169
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .end local v0    # "process":Ljava/lang/Process;
    const-string v0, "getInputStream(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    instance-of v0, v5, Ljava/io/BufferedReader;

    if-eqz v0, :cond_3e4

    check-cast v5, Ljava/io/BufferedReader;

    goto :goto_3ec

    :cond_3e4
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v0, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    :goto_3ec
    check-cast v5, Ljava/io/Reader;

    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "output":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    move-object v0, v3

    .line 171
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 675
    .restart local v3    # "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 676
    .local v6, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_409
    :goto_409
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_424

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 171
    .local v10, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$4":I
    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v2, v13, v11, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    .line 676
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$4":I
    if-eqz v14, :cond_409

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_409

    .line 677
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_424
    const/4 v12, 0x0

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$filterTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 675
    nop

    .end local v3    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 172
    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 678
    .local v3, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v0, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 679
    .local v6, "$i$f$mapTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v0    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_43e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_461

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 680
    .local v0, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 172
    .local v10, "$i$a$-map-OneClickIsolationHelper$scanInstalledApps$2$packageNames$5":I
    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 680
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-map-OneClickIsolationHelper$scanInstalledApps$2$packageNames$5":I
    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43e

    .line 681
    .end local v0    # "item$iv$iv":Ljava/lang/Object;
    :cond_461
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 678
    nop

    .end local v3    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 173
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 682
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 683
    .local v5, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_475
    :goto_475
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_495

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 173
    .local v9, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$6":I
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_48e

    const/4 v8, 0x1

    goto :goto_48f

    :cond_48e
    const/4 v8, 0x0

    .line 683
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$packageNames$6":I
    :goto_48f
    if-eqz v8, :cond_475

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_475

    .line 684
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_495
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$filterTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 682
    nop

    .line 173
    .end local v2    # "$i$f$filter":I
    nop

    .line 170
    nop

    .line 175
    .local v0, "packageNames":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_56f

    .line 176
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OneClick: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " packages via pm command"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 177
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .end local v0    # "packageNames":Ljava/util/List;
    move-object v0, v2

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 685
    .local v2, "$i$f$mapNotNull":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 693
    .local v6, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 694
    .local v8, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_4de
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 693
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v0

    check-cast v11, Ljava/lang/String;
    :try_end_4ec
    .catch Ljava/lang/Exception; {:try_start_3c1 .. :try_end_4ec} :catch_571

    move-object v0, v11

    .local v0, "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 178
    .local v11, "$i$a$-mapNotNull-OneClickIsolationHelper$scanInstalledApps$2$apps$2":I
    nop

    .line 179
    const/4 v13, 0x0

    :try_start_4f0
    invoke-virtual {v7, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .local v14, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v15, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .line 181
    nop

    .line 182
    invoke-virtual {v14, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 183
    invoke-virtual {v14, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->categorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    invoke-static {v3, v0, v13}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v13
    :try_end_50e
    .catch Ljava/lang/Exception; {:try_start_4f0 .. :try_end_50e} :catch_51a

    .line 184
    .end local v0    # "pkgName":Ljava/lang/String;
    move-object/from16 v17, v1

    :try_start_510
    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v3, v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 180
    invoke-direct {v15, v0, v12, v13, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/AppCategory;Z)V
    :try_end_517
    .catch Ljava/lang/Exception; {:try_start_510 .. :try_end_517} :catch_518

    .end local v14    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_51e

    .line 186
    :catch_518
    move-exception v0

    goto :goto_51d

    :catch_51a
    move-exception v0

    move-object/from16 v17, v1

    .line 187
    :goto_51d
    const/4 v15, 0x0

    .line 178
    :goto_51e
    nop

    .line 693
    .end local v11    # "$i$a$-mapNotNull-OneClickIsolationHelper$scanInstalledApps$2$apps$2":I
    if-eqz v15, :cond_526

    move-object v0, v15

    .line 695
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 693
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :try_start_523
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_526
    move-object/from16 v1, v17

    const/4 v12, 0x0

    goto :goto_4de

    .line 696
    :cond_52a
    nop

    .line 697
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 685
    nop

    .end local v2    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 189
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 698
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 699
    .local v3, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_53f
    :goto_53f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v6, v0

    check-cast v6, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v6, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v8, 0x0

    .line 189
    .local v8, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$apps$3":I
    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_555

    const/4 v8, 0x1

    goto :goto_556

    :cond_555
    const/4 v8, 0x0

    .line 699
    .end local v6    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v8    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$apps$3":I
    :goto_556
    if-eqz v8, :cond_53f

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_53f

    .line 700
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_55c
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 698
    nop

    .line 189
    .end local v1    # "$i$f$filter":I
    nop

    .line 177
    nop

    .line 191
    .local v0, "apps":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_56a
    .catch Ljava/lang/Exception; {:try_start_523 .. :try_end_56a} :catch_571

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_57d

    .line 192
    return-object v0

    .line 175
    .local v0, "packageNames":Ljava/util/List;
    :cond_56f
    const/4 v8, 0x1

    goto :goto_57d

    .line 195
    .end local v0    # "packageNames":Ljava/util/List;
    :catch_571
    move-exception v0

    const/4 v8, 0x1

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "pm list packages failed"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57d
    :goto_57d
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "OneClick: falling back to PackageManager API"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 201
    const/16 v0, 0x80

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "getInstalledApplications(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .local v0, "packages":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    iget-object v2, v4, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .end local v0    # "packages":Ljava/util/List;
    const/4 v0, 0x0

    .line 701
    .local v0, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v1, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 702
    .local v5, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v1    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_5a7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_614

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 703
    .local v1, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v1

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 204
    .local v10, "$i$a$-map-OneClickIsolationHelper$scanInstalledApps$2$1":I
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, "appName":Ljava/lang/String;
    new-instance v13, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .line 208
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 209
    nop

    .line 210
    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->categorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    invoke-static {v2, v11, v12}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v14

    .line 211
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v2, v9}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v15

    .line 207
    invoke-direct {v13, v11, v12, v14, v15}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/AppCategory;Z)V

    .line 212
    move-object v14, v13

    .local v14, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v15, 0x0

    .line 213
    .local v15, "$i$a$-also-OneClickIsolationHelper$scanInstalledApps$2$1$1":I
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move/from16 p1, v0

    .end local v0    # "$i$f$map":I
    .local p1, "$i$f$map":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v1

    .end local v1    # "item$iv$iv":Ljava/lang/Object;
    .local v17, "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v1

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .local v19, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    const-string v4, "OneClick scan: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sys="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 214
    nop

    .line 212
    .end local v14    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v15    # "$i$a$-also-OneClickIsolationHelper$scanInstalledApps$2$1$1":I
    nop

    .line 703
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "$i$a$-map-OneClickIsolationHelper$scanInstalledApps$2$1":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "appName":Ljava/lang/String;
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    const/4 v8, 0x1

    goto :goto_5a7

    .line 702
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    .end local v19    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .end local p1    # "$i$f$map":I
    .restart local v0    # "$i$f$map":I
    .restart local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    :cond_614
    move/from16 p1, v0

    move-object/from16 v19, v4

    .line 704
    .end local v0    # "$i$f$map":I
    .end local v4    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;
    .restart local p1    # "$i$f$map":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 701
    nop

    .end local p1    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 215
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 705
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 706
    .local v3, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_62c
    :goto_62c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_649

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v0

    check-cast v5, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v5, "appInfo":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v6, 0x0

    .line 216
    .local v6, "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$2":I
    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_642

    const/4 v8, 0x1

    goto :goto_643

    :cond_642
    const/4 v8, 0x0

    .line 706
    .end local v5    # "appInfo":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v6    # "$i$a$-filter-OneClickIsolationHelper$scanInstalledApps$2$2":I
    :goto_643
    if-eqz v8, :cond_62c

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_62c

    .line 707
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_649
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 705
    nop

    .line 215
    .end local v1    # "$i$f$filter":I
    return-object v0

    nop

    :pswitch_data_650
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_22
        :pswitch_18
    .end packed-switch
.end method
