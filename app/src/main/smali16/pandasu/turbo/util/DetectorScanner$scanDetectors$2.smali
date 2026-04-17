.class final Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DetectorScanner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/util/DetectorScanner;->scanDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetectorScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner$scanDetectors$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1054#2:263\n*S KotlinDebug\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner$scanDetectors$2\n*L\n120#1:263\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
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
    c = "com.pandasu.turbo.util.DetectorScanner$scanDetectors$2"
    f = "DetectorScanner.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/util/DetectorScanner;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/util/DetectorScanner;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

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

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;

    iget-object v1, p0, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;-><init>(Lcom/pandasu/turbo/util/DetectorScanner;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    const-string v1, "packageName"

    const-string v2, "toLowerCase(...)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 69
    move-object/from16 v3, p0

    iget v0, v3, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->label:I

    packed-switch v0, :pswitch_data_1c8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;
    move-object/from16 v5, p1

    .line 70
    .local v5, "$result":Ljava/lang/Object;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "DetectorScanner: \u5f00\u59cb\u626b\u63cf\u68c0\u6d4b\u5de5\u5177..."

    invoke-virtual {v0, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 72
    .local v6, "detectedApps":Ljava/util/List;
    iget-object v0, v4, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    # getter for: Lcom/pandasu/turbo/util/DetectorScanner;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/pandasu/turbo/util/DetectorScanner;->access$getContext$p(Lcom/pandasu/turbo/util/DetectorScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 74
    .local v7, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 75
    const/16 v0, 0x80

    :try_start_39
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v8, "getInstalledPackages(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .local v0, "packages":Ljava/util/List;
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DetectorScanner: \u83b7\u53d6\u5230 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u4e2a\u5df2\u5b89\u88c5\u5e94\u7528"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v0    # "packages":Ljava/util/List;
    :goto_68
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_74} :catch_188

    .line 79
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 80
    :try_start_75
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_7a

    goto :goto_68

    .line 81
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7a
    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .local v10, "appName":Ljava/lang/String;
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .local v11, "pkgName":Ljava/lang/String;
    iget-object v12, v4, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    # invokes: Lcom/pandasu/turbo/util/DetectorScanner;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v12, v9}, Lcom/pandasu/turbo/util/DetectorScanner;->access$isSystemApp(Lcom/pandasu/turbo/util/DetectorScanner;Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-nez v12, :cond_168

    .line 87
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/List;

    .line 88
    .local v12, "matchedKeywords":Ljava/util/List;
    const/4 v13, 0x0

    .line 91
    .local v13, "isSuspicious":Z
    # getter for: Lcom/pandasu/turbo/util/DetectorScanner;->DETECTOR_KEYWORDS:Ljava/util/List;
    invoke-static {}, Lcom/pandasu/turbo/util/DetectorScanner;->access$getDETECTOR_KEYWORDS$cp()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ff

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_bd} :catch_174

    .line 92
    .local v15, "keyword":Ljava/lang/String;
    move-object/from16 v19, v2

    :try_start_bf
    move-object v2, v10

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, v15

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c5} :catch_fc

    move-object/from16 p1, v5

    .end local v5    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x2

    move-object/from16 v16, v10

    .end local v10    # "appName":Ljava/lang/String;
    .local v16, "appName":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_ce
    invoke-static {v2, v3, v10, v8, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ec

    move-object v2, v11

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, v15

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v10, v8, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    goto :goto_ec

    :cond_e1
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v10, v16

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    goto :goto_b1

    .line 93
    .end local v13    # "isSuspicious":Z
    :cond_ec
    :goto_ec
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    nop

    .end local v15    # "keyword":Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v10, v16

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    .restart local v13    # "isSuspicious":Z
    goto :goto_b1

    .line 111
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "matchedKeywords":Ljava/util/List;
    .end local v13    # "isSuspicious":Z
    .end local v16    # "appName":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catch_fc
    move-exception v0

    goto/16 :goto_177

    .line 91
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "appName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    .restart local v12    # "matchedKeywords":Ljava/util/List;
    .restart local v13    # "isSuspicious":Z
    :cond_ff
    move-object/from16 v19, v2

    move-object/from16 p1, v5

    move-object/from16 v20, v8

    move-object/from16 v16, v10

    .line 98
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "appName":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    if-eqz v13, :cond_15e

    .line 99
    .end local v13    # "isSuspicious":Z
    iget-object v2, v4, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    # invokes: Lcom/pandasu/turbo/util/DetectorScanner;->calculateRiskLevel(Ljava/util/List;Ljava/lang/String;)Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    invoke-static {v2, v12, v11}, Lcom/pandasu/turbo/util/DetectorScanner;->access$calculateRiskLevel(Lcom/pandasu/turbo/util/DetectorScanner;Ljava/util/List;Ljava/lang/String;)Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v2

    .line 100
    .end local v11    # "pkgName":Ljava/lang/String;
    .local v2, "riskLevel":Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    nop

    .line 101
    new-instance v3, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .line 102
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 104
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v16, 0x1

    .line 105
    nop

    .line 106
    nop

    .line 101
    .end local v12    # "matchedKeywords":Ljava/util/List;
    move-object v13, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/util/DetectorScanner$RiskLevel;Ljava/util/List;)V

    .line 100
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DetectorScanner: \u53d1\u73b0\u53ef\u7591\u5e94\u7528 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", \u98ce\u9669\u7b49\u7ea7: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_152} :catch_15c

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "riskLevel":Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    goto/16 :goto_68

    .line 111
    :catch_15c
    move-exception v0

    goto :goto_17b

    .line 98
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "pkgName":Ljava/lang/String;
    .restart local v12    # "matchedKeywords":Ljava/util/List;
    .restart local v13    # "isSuspicious":Z
    :cond_15e
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    goto/16 :goto_68

    .line 85
    .end local v12    # "matchedKeywords":Ljava/util/List;
    .end local v13    # "isSuspicious":Z
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v10    # "appName":Ljava/lang/String;
    :cond_168
    move-object/from16 v19, v2

    move-object/from16 p1, v5

    move-object/from16 v20, v8

    move-object/from16 v16, v10

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "appName":Ljava/lang/String;
    .restart local v16    # "appName":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object/from16 v3, p0

    goto/16 :goto_68

    .line 111
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v16    # "appName":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catch_174
    move-exception v0

    move-object/from16 v19, v2

    :goto_177
    move-object/from16 p1, v5

    move-object/from16 v20, v8

    .end local v5    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_17b
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    goto/16 :goto_68

    .line 78
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :cond_185
    move-object/from16 p1, v5

    .end local v5    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto :goto_195

    .line 115
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catch_188
    move-exception v0

    move-object/from16 p1, v5

    .line 116
    .end local v5    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "DetectorScanner: \u626b\u63cf\u5931\u8d25"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_195
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 263
    .local v1, "$i$f$sortedByDescending":I
    new-instance v2, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 120
    .end local v0    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedByDescending":I
    nop

    .line 121
    .local v0, "sorted":Ljava/util/List;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetectorScanner: \u626b\u63cf\u5b8c\u6210\uff0c\u53d1\u73b0 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u53ef\u7591\u5e94\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 122
    return-object v0

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method
