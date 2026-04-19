.class final Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DetectorScanner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/util/DetectorScanner;->recommendIsolationLevel(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetectorScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1747#2,3:263\n1747#2,3:266\n1747#2,3:269\n*S KotlinDebug\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2\n*L\n182#1:263,3\n183#1:266,3\n184#1:269,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;",
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
    c = "com.pandasu.turbo.util.DetectorScanner$recommendIsolationLevel$2"
    f = "DetectorScanner.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/util/DetectorScanner;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/util/DetectorScanner;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    iput-object p2, p0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->$packageName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;

    iget-object v1, p0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    iget-object v2, p0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->$packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;-><init>(Lcom/pandasu/turbo/util/DetectorScanner;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "toLowerCase(...)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 170
    iget v1, p0, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 171
    .local v1, "this":Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    invoke-static {v2}, Lcom/pandasu/turbo/util/DetectorScanner;->access$getContext$p(Lcom/pandasu/turbo/util/DetectorScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 172
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 173
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->$packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    iget-object v2, v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->$packageName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :goto_0
    move-object v2, v4

    .line 178
    .local v2, "appName":Ljava/lang/String;
    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->$packageName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    .line 181
    .local v0, "pkgName":Ljava/lang/String;
    nop

    .line 182
    invoke-static {}, Lcom/pandasu/turbo/util/DetectorScanner;->access$getFINANCE_KEYWORDS$cp()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 263
    .local v5, "$i$f$any":I
    instance-of v6, v4, Ljava/util/Collection;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_3

    .line 264
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 182
    .local v10, "$i$a$-any-DetectorScanner$recommendIsolationLevel$2$appType$1":I
    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    .end local v4    # "it":Ljava/lang/String;
    goto :goto_2

    :cond_3
    :goto_1
    move v4, v7

    .line 264
    .end local v10    # "$i$a$-any-DetectorScanner$recommendIsolationLevel$2$appType$1":I
    :goto_2
    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_3

    .line 265
    :cond_4
    move v4, v3

    .line 182
    .end local v5    # "$i$f$any":I
    :goto_3
    if-eqz v4, :cond_5

    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->FINANCE:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    goto/16 :goto_a

    .line 183
    :cond_5
    invoke-static {}, Lcom/pandasu/turbo/util/DetectorScanner;->access$getSOCIAL_KEYWORDS$cp()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 266
    .restart local v5    # "$i$f$any":I
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_6

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v3

    goto :goto_6

    .line 267
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 183
    .local v10, "$i$a$-any-DetectorScanner$recommendIsolationLevel$2$appType$2":I
    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    move v4, v3

    .end local v4    # "it":Ljava/lang/String;
    goto :goto_5

    :cond_9
    :goto_4
    move v4, v7

    .line 267
    .end local v10    # "$i$a$-any-DetectorScanner$recommendIsolationLevel$2$appType$2":I
    :goto_5
    if-eqz v4, :cond_7

    move v4, v7

    goto :goto_6

    .line 268
    :cond_a
    move v4, v3

    .line 183
    .end local v5    # "$i$f$any":I
    :goto_6
    if-eqz v4, :cond_b

    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->SOCIAL:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    goto :goto_a

    .line 184
    :cond_b
    invoke-static {}, Lcom/pandasu/turbo/util/DetectorScanner;->access$getGAME_KEYWORDS$cp()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 269
    .restart local v5    # "$i$f$any":I
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_c

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_9

    .line 270
    :cond_c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 184
    .local v10, "$i$a$-any-DetectorScanner$recommendIsolationLevel$2$appType$3":I
    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_7

    :cond_e
    move v4, v3

    .end local v4    # "it":Ljava/lang/String;
    goto :goto_8

    :cond_f
    :goto_7
    move v4, v7

    .line 270
    .end local v10    # "$i$a$-any-DetectorScanner$recommendIsolationLevel$2$appType$3":I
    :goto_8
    if-eqz v4, :cond_d

    move v3, v7

    goto :goto_9

    .line 271
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v2    # "appName":Ljava/lang/String;
    :cond_10
    nop

    .line 184
    .end local v5    # "$i$f$any":I
    :goto_9
    if-eqz v3, :cond_11

    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->GAME:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    goto :goto_a

    .line 185
    :cond_11
    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->UTILITY:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    .line 181
    :goto_a
    move-object v0, v3

    .line 189
    .local v0, "appType":Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    sget-object v2, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 202
    .end local v0    # "appType":Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .restart local v0    # "appType":Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    :pswitch_1
    new-instance v2, Lkotlin/Pair;

    .line 203
    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;->BASIC:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    .line 204
    nop

    .line 202
    const-string v4, "\u5de5\u5177\u7c7b\u5e94\u7528\u5efa\u8bae\u57fa\u7840\u9694\u79bb"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 198
    :pswitch_2
    new-instance v2, Lkotlin/Pair;

    .line 199
    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;->MODERATE:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    .line 200
    nop

    .line 198
    const-string v4, "\u793e\u4ea4\u7c7b\u5e94\u7528\u5efa\u8bae\u4e2d\u7b49\u9694\u79bb\uff0c\u4fdd\u62a4\u9690\u79c1"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 194
    :pswitch_3
    new-instance v2, Lkotlin/Pair;

    .line 195
    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;->STANDARD:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    .line 196
    nop

    .line 194
    const-string v4, "\u6e38\u620f\u7c7b\u5e94\u7528\u5efa\u8bae\u6807\u51c6\u9694\u79bb\uff0c\u9632\u6b62\u4f5c\u5f0a\u68c0\u6d4b"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 190
    :pswitch_4
    new-instance v2, Lkotlin/Pair;

    .line 191
    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;->STRICT:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    .line 192
    nop

    .line 190
    const-string v4, "\u91d1\u878d\u7c7b\u5e94\u7528\u5efa\u8bae\u6700\u9ad8\u7ea7\u522b\u9694\u79bb\uff0c\u9632\u6b62\u8d22\u4ea7\u635f\u5931"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    :goto_b
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    .local v3, "level":Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "reason":Ljava/lang/String;
    new-instance v10, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;

    .line 209
    iget-object v5, v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->$packageName:Ljava/lang/String;

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    invoke-static {v4, v0}, Lcom/pandasu/turbo/util/DetectorScanner;->access$generateSuggestedConfigs(Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/util/DetectorScanner$AppType;)Ljava/util/List;

    move-result-object v9

    .line 208
    move-object v4, v10

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)V

    return-object v10

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
