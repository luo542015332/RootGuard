.class final Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OneClickIsolationHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->tryLimitedMethods(Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nOneClickIsolationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n1603#2,9:649\n1855#2:658\n1856#2:660\n1612#2:661\n766#2:662\n857#2,2:663\n1#3:659\n*S KotlinDebug\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2\n*L\n60#1:649,9\n60#1:658\n60#1:660\n60#1:661\n80#1:662\n80#1:663,2\n60#1:659\n*E\n"
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
    c = "com.pandasu.turbo.utils.OneClickIsolationHelper$tryLimitedMethods$2"
    f = "OneClickIsolationHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $pm:Landroid/content/pm/PackageManager;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->$pm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;

    iget-object v1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->$pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;-><init>(Landroid/content/pm/PackageManager;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    const-string v1, "packageName"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 52
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->label:I

    packed-switch v0, :pswitch_data_144

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    move-object/from16 v4, p1

    .line 53
    .local v4, "$result":Ljava/lang/Object;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "OneClick: \u5c1d\u8bd5\u6709\u9650\u65b9\u6cd5\u83b7\u53d6\u5e94\u7528\u5217\u8868"

    invoke-virtual {v0, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 55
    nop

    .line 57
    :try_start_23
    iget-object v0, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->$pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v5, "getInstalledPackages(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .local v0, "packages":Ljava/util/List;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneClick: \u6709\u9650\u65b9\u6cd51 - \u83b7\u53d6\u5230 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u4e2a\u5305"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 60
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    iget-object v6, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->$pm:Landroid/content/pm/PackageManager;

    iget-object v7, v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .end local v0    # "packages":Ljava/util/List;
    move-object v0, v5

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 649
    .local v5, "$i$f$mapNotNull":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v0, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 657
    .local v9, "$i$f$mapNotNullTo":I
    nop

    .local v0, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 658
    .local v10, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v0    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_69
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 657
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v0

    check-cast v15, Landroid/content/pm/PackageInfo;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_77} :catch_130

    move-object v0, v15

    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v15, 0x0

    .line 61
    .local v15, "$i$a$-mapNotNull-OneClickIsolationHelper$tryLimitedMethods$2$apps$1":I
    nop

    .line 62
    const/16 v16, 0x0

    :try_start_7c
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_b9

    .line 64
    invoke-virtual {v12, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 65
    .local v18, "appName":Ljava/lang/String;
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v18

    .end local v18    # "appName":Ljava/lang/String;
    .local v2, "appName":Ljava/lang/String;
    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->categorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    invoke-static {v7, v13, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v13

    .line 66
    .local v13, "category":Lcom/pandasu/turbo/data/model/AppCategory;
    # invokes: Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v7, v12}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v18
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_99} :catch_bf

    move/from16 v12, v18

    .line 68
    .local v12, "isSystem":Z
    move-object/from16 v18, v3

    .end local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .local v18, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    :try_start_9d
    new-instance v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9f} :catch_b5

    .line 69
    move-object/from16 v19, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .local v19, "$result":Ljava/lang/Object;
    :try_start_a1
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 71
    .end local v2    # "appName":Ljava/lang/String;
    nop

    .line 72
    .end local v13    # "category":Lcom/pandasu/turbo/data/model/AppCategory;
    if-eqz v12, :cond_ac

    const/4 v12, 0x1

    goto :goto_ad

    .end local v12    # "isSystem":Z
    :cond_ac
    const/4 v12, 0x0

    .line 68
    :goto_ad
    invoke-direct {v3, v4, v2, v13, v12}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/AppCategory;Z)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b0} :catch_b3

    move-object/from16 v16, v3

    goto :goto_be

    .line 77
    :catch_b3
    move-exception v0

    goto :goto_c4

    .end local v19    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_b5
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v19    # "$result":Ljava/lang/Object;
    goto :goto_c4

    .line 63
    .end local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v19    # "$result":Ljava/lang/Object;
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_b9
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 75
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v19    # "$result":Ljava/lang/Object;
    nop

    :goto_be
    goto :goto_c5

    .line 77
    .end local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v19    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_bf
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 78
    .end local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v19    # "$result":Ljava/lang/Object;
    :goto_c4
    nop

    .line 61
    :goto_c5
    nop

    .line 657
    .end local v15    # "$i$a$-mapNotNull-OneClickIsolationHelper$tryLimitedMethods$2$apps$1":I
    if-eqz v16, :cond_ce

    move-object/from16 v0, v16

    .line 659
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 657
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :try_start_cb
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_ce
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_69

    .line 660
    .end local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v19    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_d5
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 661
    .end local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v10    # "$i$f$forEach":I
    .restart local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v19    # "$result":Ljava/lang/Object;
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$i$f$mapNotNullTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 649
    nop

    .end local v5    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 80
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 662
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 663
    .local v3, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_ed
    :goto_ed
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v0

    check-cast v5, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v5, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v6, 0x0

    .line 80
    .local v6, "$i$a$-filter-OneClickIsolationHelper$tryLimitedMethods$2$apps$2":I
    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_103

    const/4 v5, 0x1

    goto :goto_104

    :cond_103
    const/4 v5, 0x0

    .line 663
    .end local v5    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v6    # "$i$a$-filter-OneClickIsolationHelper$tryLimitedMethods$2$apps$2":I
    :goto_104
    if-eqz v5, :cond_ed

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_ed

    .line 664
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_10a
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 662
    nop

    .line 80
    .end local v1    # "$i$f$filter":I
    nop

    .line 60
    nop

    .line 82
    .local v0, "apps":Ljava/util/List;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneClick: \u6709\u9650\u65b9\u6cd5\u8fc7\u6ee4\u540e\u7528\u6237\u5e94\u7528\u6570\u91cf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_12d} :catch_12e

    .line 83
    return-object v0

    .line 84
    .end local v0    # "apps":Ljava/util/List;
    :catch_12e
    move-exception v0

    goto :goto_135

    .end local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v19    # "$result":Ljava/lang/Object;
    .local v3, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_130
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 85
    .end local v3    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;
    .restart local v19    # "$result":Ljava/lang/Object;
    :goto_135
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "OneClick: \u6709\u9650\u65b9\u6cd5\u5931\u8d25"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
