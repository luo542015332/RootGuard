.class final Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OneClickIsolationHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->scanRootApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nOneClickIsolationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,648:1\n766#2:649\n857#2:650\n1747#2,3:651\n858#2:654\n*S KotlinDebug\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2\n*L\n371#1:649\n371#1:650\n372#1:651,3\n371#1:654\n*E\n"
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
    c = "com.pandasu.turbo.utils.OneClickIsolationHelper$scanRootApps$2"
    f = "OneClickIsolationHelper.kt"
    i = {}
    l = {
        0x16b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

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

    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;

    iget-object v1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 362
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_da

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    move-object/from16 v0, p0

    .local v0, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v2

    goto :goto_34

    .end local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    move-object/from16 v4, p1

    .line 363
    .local v4, "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->this$0:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, v2, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;->label:I

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->scanInstalledApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_32

    .line 362
    return-object v0

    .line 363
    :cond_32
    move-object v0, v2

    move-object v2, v5

    .line 362
    .end local v2    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    :goto_34
    check-cast v2, Ljava/util/List;

    .line 367
    .local v2, "allApps":Ljava/util/List;
    const-string v5, "magisk"

    const-string v6, "superuser"

    const-string v7, "su"

    const-string v8, "root"

    const-string v9, "adbd"

    .line 368
    const-string v10, "busybox"

    .line 367
    nop

    .line 368
    const-string v11, "xposed"

    .line 367
    nop

    .line 368
    const-string v12, "edxposed"

    .line 367
    nop

    .line 368
    const-string v13, "lsposed"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v5

    .line 367
    nop

    .line 366
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 371
    .local v5, "rootKeywords":Ljava/util/List;
    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 649
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v2, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 650
    .local v8, "$i$f$filterTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v2    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :goto_63
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v2

    check-cast v10, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v10, "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v11, 0x0

    .line 372
    .local v11, "$i$a$-filter-OneClickIsolationHelper$scanRootApps$2$1":I
    move-object v12, v5

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 651
    .local v13, "$i$f$any":I
    instance-of v14, v12, Ljava/util/Collection;

    if-eqz v14, :cond_86

    move-object v14, v12

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_86

    move-object/from16 v17, v0

    const/4 v15, 0x0

    goto :goto_c9

    .line 652
    :cond_86
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v12    # "$this$any$iv":Ljava/lang/Iterable;
    :goto_8a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    check-cast v12, Ljava/lang/String;

    .local v12, "keyword":Ljava/lang/String;
    const/16 v16, 0x0

    .line 373
    .local v16, "$i$a$-any-OneClickIsolationHelper$scanRootApps$2$1$1":I
    invoke-virtual {v10}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .end local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .local v17, "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v15, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 374
    invoke-virtual {v10}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v0, v15, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v0, 0x0

    .end local v12    # "keyword":Ljava/lang/String;
    goto :goto_be

    :cond_bd
    :goto_bd
    move v0, v3

    .line 373
    :goto_be
    nop

    .line 652
    .end local v16    # "$i$a$-any-OneClickIsolationHelper$scanRootApps$2$1$1":I
    if-eqz v0, :cond_c3

    move v15, v3

    goto :goto_c9

    :cond_c3
    move-object/from16 v0, v17

    goto :goto_8a

    .end local v17    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    :cond_c6
    move-object/from16 v17, v0

    .line 653
    .end local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .end local v10    # "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .restart local v17    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    const/4 v15, 0x0

    .line 372
    .end local v13    # "$i$f$any":I
    :goto_c9
    nop

    .line 650
    .end local v11    # "$i$a$-filter-OneClickIsolationHelper$scanRootApps$2$1":I
    if-eqz v15, :cond_cf

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_cf
    move-object/from16 v0, v17

    goto :goto_63

    .line 654
    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    :cond_d2
    move-object/from16 v17, v0

    .end local v0    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$filterTo":I
    .restart local v17    # "this":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 649
    nop

    .line 371
    .end local v6    # "$i$f$filter":I
    return-object v0

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method
