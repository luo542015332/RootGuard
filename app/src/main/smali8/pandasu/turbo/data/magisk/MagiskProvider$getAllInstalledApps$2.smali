.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getAllInstalledApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagiskProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1344:1\n766#2:1345\n857#2,2:1346\n1864#2,3:1348\n1774#2,4:1351\n1774#2,4:1355\n766#2:1359\n857#2,2:1360\n1045#2:1362\n1855#2,2:1363\n1855#2:1365\n1856#2:1367\n1045#2:1368\n1549#2:1369\n1620#2,3:1370\n766#2:1373\n857#2,2:1374\n766#2:1376\n857#2,2:1377\n1864#2,3:1379\n1774#2,4:1382\n1774#2,4:1386\n766#2:1390\n857#2,2:1391\n1045#2:1393\n1855#2,2:1394\n1855#2,2:1396\n1045#2:1398\n1#3:1366\n*S KotlinDebug\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2\n*L\n662#1:1345\n662#1:1346,2\n669#1:1348,3\n766#1:1351,4\n767#1:1355,4\n777#1:1359\n777#1:1360,2\n777#1:1362\n777#1:1363,2\n783#1:1365\n783#1:1367\n793#1:1368\n821#1:1369\n821#1:1370,3\n822#1:1373\n822#1:1374,2\n828#1:1376\n828#1:1377,2\n842#1:1379,3\n939#1:1382,4\n940#1:1386,4\n950#1:1390\n950#1:1391,2\n950#1:1393\n950#1:1394,2\n956#1:1396,2\n969#1:1398\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;",
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
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$getAllInstalledApps$2"
    f = "MagiskProvider.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x283,
        0x28c,
        0x291
    }
    m = "invokeSuspend"
    n = {
        "apps",
        "pm",
        "apps",
        "pm",
        "apps",
        "pm"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 39

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 636
    move-object/from16 v2, p0

    iget v3, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->label:I

    const-string v4, "com.miui."

    const-string v5, "com.android."

    const-string v6, "]: "

    const-string v7, ": "

    const-string v8, ""

    const-string v9, "Adding app without ApplicationInfo: "

    const-string v10, "Failed to process app["

    const-string v11, "Failed to get ApplicationInfo for "

    const-string v12, "com.tencent.tmgp.sgame"

    const-string v13, "com.tencent.mobileqq"

    const-string v14, "com.tencent.mm"

    const-string v15, "Found "

    const-string v2, " - "

    move-object/from16 v16, v8

    const-string v8, ", isSystem: "

    move-object/from16 v17, v2

    const-string v2, "getApplicationInfo(...)"

    move-object/from16 v18, v6

    const-string v6, ", using package name"

    move-object/from16 v20, v10

    packed-switch v3, :pswitch_data_ef8

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3b
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v10, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/content/pm/PackageManager;

    move-object/from16 p1, v10

    .local p1, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .local v10, "apps":Ljava/util/List;
    :try_start_49
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_5b

    move-object/from16 v24, v2

    move-object v2, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v8

    move-object/from16 v27, v9

    move-object/from16 v5, p1

    goto/16 :goto_15d

    .line 965
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    :catch_5b
    move-exception v0

    move-object v2, v0

    goto/16 :goto_edb

    .line 636
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "apps":Ljava/util/List;
    :pswitch_5f
    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    move-object/from16 v10, p1

    move-object/from16 v24, v2

    .local v10, "$result":Ljava/lang/Object;
    iget-object v2, v3, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/PackageManager;

    move-object/from16 p1, v2

    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v3, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "apps":Ljava/util/List;
    :try_start_6f
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_81

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v8

    move-object/from16 v27, v9

    move-object/from16 v5, p1

    move-object v4, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_133

    .line 965
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    :catch_81
    move-exception v0

    move-object v1, v3

    move-object v3, v10

    move-object v10, v2

    move-object v2, v0

    goto/16 :goto_edb

    .line 636
    .end local v2    # "apps":Ljava/util/List;
    .end local v3    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v10    # "$result":Ljava/lang/Object;
    :pswitch_88
    move-object/from16 v24, v2

    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/content/pm/PackageManager;

    move-object/from16 p1, v10

    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .local v10, "apps":Ljava/util/List;
    :try_start_98
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_a3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v5, p1

    move-object v4, v3

    goto :goto_e2

    .line 965
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    :catch_a3
    move-exception v0

    move-object v1, v2

    move-object v2, v0

    goto/16 :goto_edb

    .line 636
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "apps":Ljava/util/List;
    :pswitch_a8
    move-object/from16 v24, v2

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    move-object/from16 v3, p1

    .line 637
    .restart local v3    # "$result":Ljava/lang/Object;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 639
    .restart local v10    # "apps":Ljava/util/List;
    nop

    .line 640
    move-object/from16 p1, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_bb
    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-virtual {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 643
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v25, v4

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-object/from16 v26, v5

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$1:Ljava/lang/Object;

    move-object/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v27, "pm":Landroid/content/pm/PackageManager;
    iput v3, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$detectRootType(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_db} :catch_ed6

    if-ne v3, v1, :cond_de

    .line 636
    return-object v1

    .line 643
    :cond_de
    move-object/from16 v4, p1

    move-object/from16 v5, v27

    .line 636
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :goto_e2
    :try_start_e2
    check-cast v3, Ljava/lang/String;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e4} :catch_ecd

    .line 644
    .local v3, "rootType":Ljava/lang/String;
    move-object/from16 p1, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_e6
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object/from16 v27, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v8

    const-string v8, "Current root type: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 647
    const-string v4, "kernelsu"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_784

    .line 648
    .end local v3    # "rootType":Ljava/lang/String;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "========== USING ROOT SHELL =========="

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 649
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Root Shell should bypass HyperOS/MIUI restrictions"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 652
    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getKernelSUService()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;
    invoke-static {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$getKernelSUService(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->label:I

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService;->isRootAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_12c} :catch_ec6

    if-ne v3, v1, :cond_12f

    .line 636
    return-object v1

    .line 652
    :cond_12f
    move-object v4, v10

    move-object v10, v3

    move-object/from16 v3, p1

    .end local v10    # "apps":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "apps":Ljava/util/List;
    :goto_133
    :try_start_133
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_139} :catch_776

    .line 653
    .local v8, "rootAvailable":Z
    if-eqz v8, :cond_733

    .line 654
    .end local v8    # "rootAvailable":Z
    :try_start_13b
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "Root is available, getting packages via Root Shell"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 657
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getKernelSUService()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;
    invoke-static {v8}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$getKernelSUService(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->L$1:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v2, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->label:I

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService;->getAllPackages(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_156} :catch_72c

    if-ne v8, v1, :cond_159

    .line 636
    return-object v1

    .line 657
    :cond_159
    move-object v1, v2

    move-object v2, v3

    move-object v10, v4

    move-object v3, v8

    .line 636
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "apps":Ljava/util/List;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v2, "$result":Ljava/lang/Object;
    .restart local v10    # "apps":Ljava/util/List;
    :goto_15d
    :try_start_15d
    check-cast v3, Ljava/util/List;

    .line 658
    .local v3, "packageNames":Ljava/util/List;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packages via Root Shell"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 661
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v4, v8

    const/4 v8, 0x1

    aput-object v13, v4, v8

    const/4 v8, 0x2

    aput-object v12, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 662
    .local v4, "keyApps":Ljava/util/List;
    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1345
    .local v9, "$i$f$filter":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v12, "destination$iv$iv":Ljava/util/Collection;
    const/4 v13, 0x0

    .line 1346
    .local v13, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_19f
    :goto_19f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_1a3} :catch_722

    if-eqz v8, :cond_1bd

    :try_start_1a5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    .local v15, "it":Ljava/lang/String;
    const/16 v19, 0x0

    .line 662
    .local v19, "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$foundKeyApps$1":I
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    .line 1346
    .end local v15    # "it":Ljava/lang/String;
    .end local v19    # "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$foundKeyApps$1":I
    if-eqz v29, :cond_19f

    invoke-interface {v12, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b7} :catch_1b8

    goto :goto_19f

    .line 965
    .end local v3    # "packageNames":Ljava/util/List;
    .end local v4    # "keyApps":Ljava/util/List;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$filter":I
    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$i$f$filterTo":I
    :catch_1b8
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_edb

    .line 1347
    .restart local v3    # "packageNames":Ljava/util/List;
    .restart local v4    # "keyApps":Ljava/util/List;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "$i$f$filter":I
    .restart local v12    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v13    # "$i$f$filterTo":I
    :cond_1bd
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$i$f$filterTo":I
    :try_start_1be
    move-object v8, v12

    check-cast v8, Ljava/util/List;

    .line 1345
    nop

    .line 662
    .end local v9    # "$i$f$filter":I
    nop

    .line 663
    .local v8, "foundKeyApps":Ljava/util/List;
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key apps found via RootService: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 666
    .end local v8    # "foundKeyApps":Ljava/util/List;
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 667
    .local v8, "successfulAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 669
    .local v9, "failedAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v12, v3

    check-cast v12, Ljava/lang/Iterable;

    iget-object v13, v1, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .end local v3    # "packageNames":Ljava/util/List;
    move-object v3, v12

    .local v3, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 1348
    .local v12, "$i$f$forEachIndexed":I
    const/4 v14, 0x0

    .line 1349
    .local v14, "index$iv":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v3    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    :goto_1f1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1fb} :catch_722

    .local v3, "item$iv":Ljava/lang/Object;
    add-int/lit8 v19, v14, 0x1

    .end local v14    # "index$iv":I
    .local v19, "index$iv":I
    if-gez v14, :cond_202

    :try_start_1ff
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_202} :catch_1b8

    :cond_202
    :try_start_202
    move-object/from16 v29, v3

    check-cast v29, Ljava/lang/String;
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_206} :catch_722

    move v3, v14

    .local v3, "index":I
    move-object/from16 v14, v29

    .local v14, "packageName":Ljava/lang/String;
    const/16 v29, 0x0

    .line 670
    .local v29, "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$1":I
    nop

    .line 672
    nop

    .line 673
    move-object/from16 p1, v1

    const/4 v1, 0x0

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local p1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :try_start_210
    invoke-virtual {v5, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v30
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_214} :catch_21b

    move/from16 v31, v12

    move-object/from16 v1, v30

    move-object/from16 v30, v2

    goto :goto_24c

    .line 674
    :catch_21b
    move-exception v0

    move-object v1, v0

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    move-object/from16 v30, v2

    .end local v2    # "$result":Ljava/lang/Object;
    .local v30, "$result":Ljava/lang/Object;
    :try_start_21f
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_221} :catch_460

    move/from16 v31, v12

    .end local v12    # "$i$f$forEachIndexed":I
    .local v31, "$i$f$forEachIndexed":I
    :try_start_223
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v32, v1

    .end local v1    # "e":Ljava/lang/Exception;
    .local v32, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 676
    iget v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_24b} :catch_44b

    .line 677
    const/4 v1, 0x0

    .line 672
    .end local v32    # "e":Ljava/lang/Exception;
    :goto_24c
    nop

    .line 680
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_32a

    .line 681
    :try_start_24f
    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v12, 0x1

    add-int/2addr v2, v12

    iput v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 682
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v2, :cond_25c

    move-object/from16 v2, v16

    goto :goto_25f

    :cond_25c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 683
    .local v2, "sourceDir":Ljava/lang/String;
    :goto_25f
    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v13, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$isSystemApp(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Landroid/content/pm/ApplicationInfo;)Z

    move-result v12
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_263} :catch_314

    .line 686
    .local v12, "isSystemApp":Z
    nop

    .line 687
    :try_start_264
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_26c} :catch_273

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v33, v15

    move-object/from16 v1, v32

    move-object/from16 v32, v13

    goto :goto_295

    .line 688
    :catch_273
    move-exception v0

    .line 689
    :try_start_274
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_276} :catch_314

    move-object/from16 v32, v13

    :try_start_278
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27d} :catch_30e

    move-object/from16 v33, v15

    :try_start_27f
    const-string v15, "Failed to get label for "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 690
    move-object v1, v14

    .line 686
    :goto_295
    nop

    .line 694
    .local v1, "appName":Ljava/lang/String;
    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e0

    .line 695
    sget-object v13, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_29e} :catch_308

    if-eqz v12, :cond_2a2

    const/4 v15, 0x1

    goto :goto_2a3

    .end local v2    # "sourceDir":Ljava/lang/String;
    :cond_2a2
    const/4 v15, 0x0

    :goto_2a3
    move-object/from16 v34, v7

    :try_start_2a5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2aa} :catch_2de

    move-object/from16 v35, v11

    :try_start_2ac
    const-string v11, "Key app: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "), sourceDir: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2ca} :catch_2dc

    move-object/from16 v7, v28

    :try_start_2cc
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2e6

    .line 761
    .end local v1    # "appName":Ljava/lang/String;
    .end local v12    # "isSystemApp":Z
    :catch_2dc
    move-exception v0

    goto :goto_31d

    :catch_2de
    move-exception v0

    goto :goto_30b

    .line 694
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "sourceDir":Ljava/lang/String;
    .restart local v12    # "isSystemApp":Z
    :cond_2e0
    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move-object/from16 v7, v28

    .line 698
    .end local v2    # "sourceDir":Ljava/lang/String;
    :goto_2e6
    nop

    .line 699
    new-instance v2, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .line 700
    nop

    .line 701
    nop

    .line 702
    .end local v1    # "appName":Ljava/lang/String;
    if-eqz v12, :cond_2ef

    const/4 v11, 0x1

    goto :goto_2f0

    .end local v12    # "isSystemApp":Z
    :cond_2ef
    const/4 v11, 0x0

    .line 703
    :goto_2f0
    nop

    .line 699
    const/4 v12, 0x0

    invoke-direct {v2, v14, v1, v11, v12}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    .line 698
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2f8} :catch_306

    move-object/from16 v3, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v24

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    move-object/from16 v24, v5

    goto/16 :goto_49f

    .line 761
    :catch_306
    move-exception v0

    goto :goto_31f

    :catch_308
    move-exception v0

    move-object/from16 v34, v7

    :goto_30b
    move-object/from16 v35, v11

    goto :goto_31d

    :catch_30e
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v35, v11

    goto :goto_31b

    :catch_314
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move-object/from16 v32, v13

    :goto_31b
    move-object/from16 v33, v15

    :goto_31d
    move-object/from16 v7, v28

    :goto_31f
    move-object v2, v0

    move-object/from16 v13, v24

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    :goto_326
    move-object/from16 v24, v5

    goto/16 :goto_476

    .line 680
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_32a
    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move-object/from16 v32, v13

    move-object/from16 v33, v15

    move-object/from16 v7, v28

    .line 708
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_334
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_33b
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_33b} :catch_443

    move-object/from16 v11, v27

    :try_start_33d
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_34c} :catch_43d

    .line 711
    move-object/from16 v1, v26

    const/4 v2, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_351
    invoke-static {v14, v1, v2, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_355} :catch_439

    if-nez v15, :cond_381

    .line 712
    move-object/from16 v15, v25

    :try_start_359
    invoke-static {v14, v15, v2, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_377

    .line 713
    const-string v2, "com.xiaomi."
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_361} :catch_37a

    move-object/from16 v25, v15

    const/4 v15, 0x0

    :try_start_364
    invoke-static {v14, v2, v15, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_381

    .line 714
    const-string v2, "android."

    invoke-static {v14, v2, v15, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2
    :try_end_370
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_370} :catch_375

    if-eqz v2, :cond_373

    goto :goto_381

    :cond_373
    const/4 v2, 0x0

    goto :goto_382

    .line 761
    :catch_375
    move-exception v0

    goto :goto_37d

    .line 712
    :cond_377
    move-object/from16 v25, v15

    goto :goto_381

    .line 761
    :catch_37a
    move-exception v0

    move-object/from16 v25, v15

    :goto_37d
    move-object v2, v0

    move-object/from16 v13, v24

    goto :goto_326

    .line 714
    :cond_381
    :goto_381
    const/4 v2, 0x1

    .line 711
    :goto_382
    nop

    .line 717
    .local v2, "isSystemApp":Z
    nop

    .line 719
    nop

    .line 720
    const/16 v12, 0x80

    :try_start_387
    invoke-virtual {v5, v14, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_387 .. :try_end_38b} :catch_39d

    move-object/from16 v13, v24

    :try_start_38d
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    .local v12, "altAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_38d .. :try_end_398} :catch_39b

    move-object/from16 v24, v5

    .end local v12    # "altAppInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3f8

    .line 722
    :catch_39b
    move-exception v0

    goto :goto_3a0

    :catch_39d
    move-exception v0

    move-object/from16 v13, v24

    .line 724
    :goto_3a0
    nop

    .line 725
    nop

    .line 726
    nop

    .line 727
    nop

    .line 725
    const/16 v12, 0x2080

    :try_start_3a6
    invoke-virtual {v5, v14, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    .restart local v12    # "altAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3b5} :catch_3b8

    move-object/from16 v24, v5

    .end local v12    # "altAppInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3f7

    .line 730
    :catch_3b8
    move-exception v0

    .line 732
    nop

    .line 733
    const/4 v12, 0x0

    :try_start_3bb
    invoke-virtual {v5, v14, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    move-object v12, v15

    .line 734
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v15, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 735
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v15, :cond_3cd

    .line 736
    invoke-virtual {v5, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24
    :try_end_3cc
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3cc} :catch_3d6

    goto :goto_3cf

    .line 738
    :cond_3cd
    move-object/from16 v24, v14

    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3cf
    move-object/from16 v36, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v36

    goto :goto_3f6

    .line 740
    :catch_3d6
    move-exception v0

    .line 742
    :try_start_3d7
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3de
    .catch Ljava/lang/Exception; {:try_start_3d7 .. :try_end_3de} :catch_3fb

    move-object/from16 v24, v5

    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v24, "pm":Landroid/content/pm/PackageManager;
    :try_start_3e0
    const-string v5, "All methods failed to get app name for "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_3f5
    .catch Ljava/lang/Exception; {:try_start_3e0 .. :try_end_3f5} :catch_3f9

    .line 743
    move-object v5, v14

    :goto_3f6
    move-object v15, v5

    :goto_3f7
    nop

    :goto_3f8
    goto :goto_41b

    .line 747
    :catch_3f9
    move-exception v0

    goto :goto_3fe

    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_3fb
    move-exception v0

    move-object/from16 v24, v5

    .line 748
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    :goto_3fe
    :try_start_3fe
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected error getting app name for "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 749
    move-object v15, v14

    .line 717
    :goto_41b
    move-object v5, v15

    .line 752
    .local v5, "appName":Ljava/lang/String;
    nop

    .line 753
    new-instance v12, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .line 754
    nop

    .line 755
    nop

    .line 756
    .end local v5    # "appName":Ljava/lang/String;
    if-eqz v2, :cond_425

    const/4 v2, 0x1

    goto :goto_426

    .end local v2    # "isSystemApp":Z
    :cond_425
    const/4 v2, 0x0

    .line 757
    :goto_426
    nop

    .line 753
    const/4 v15, 0x0

    invoke-direct {v12, v14, v5, v2, v15}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    .line 752
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42e
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_42e} :catch_436

    .end local v3    # "index":I
    .end local v14    # "packageName":Ljava/lang/String;
    move-object/from16 v3, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v13

    goto/16 :goto_49f

    .line 761
    .restart local v3    # "index":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :catch_436
    move-exception v0

    move-object v2, v0

    goto :goto_476

    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :catch_439
    move-exception v0

    move-object/from16 v13, v24

    goto :goto_45c

    :catch_43d
    move-exception v0

    move-object/from16 v13, v24

    move-object/from16 v1, v26

    goto :goto_45c

    :catch_443
    move-exception v0

    move-object/from16 v13, v24

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    goto :goto_45c

    :catch_44b
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move-object/from16 v32, v13

    move-object/from16 v33, v15

    move-object/from16 v13, v24

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    move-object/from16 v7, v28

    :goto_45c
    move-object/from16 v24, v5

    move-object v2, v0

    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_476

    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "$i$f$forEachIndexed":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v12, "$i$f$forEachIndexed":I
    :catch_460
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v15

    move-object/from16 v13, v24

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    move-object/from16 v7, v28

    move-object/from16 v24, v5

    move-object v2, v0

    .line 762
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "$i$f$forEachIndexed":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "$i$f$forEachIndexed":I
    :goto_476
    :try_start_476
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v20

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v20, v3

    move-object/from16 v3, v18

    .end local v3    # "index":I
    .local v20, "index":I
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v13

    move-object v13, v2

    check-cast v13, Ljava/lang/Throwable;

    invoke-virtual {v5, v12, v13}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v20    # "index":I
    :goto_49f
    nop

    .line 1349
    .end local v29    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$1":I
    move-object/from16 v26, v1

    move-object/from16 v28, v7

    move-object/from16 v27, v11

    move-object/from16 v20, v15

    move/from16 v14, v19

    move-object/from16 v5, v24

    move-object/from16 v2, v30

    move/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v15, v33

    move-object/from16 v7, v34

    move-object/from16 v11, v35

    move-object/from16 v1, p1

    move-object/from16 v24, v18

    move-object/from16 v18, v3

    goto/16 :goto_1f1

    .end local v19    # "index$iv":I
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "$result":Ljava/lang/Object;
    .end local v31    # "$i$f$forEachIndexed":I
    .end local p1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v2, "$result":Ljava/lang/Object;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "$i$f$forEachIndexed":I
    .local v14, "index$iv":I
    :cond_4c0
    move-object/from16 p1, v1

    move-object/from16 v30, v2

    move-object/from16 v24, v5

    move/from16 v31, v12

    move-object/from16 v7, v28

    .line 1350
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "$i$f$forEachIndexed":I
    .restart local v30    # "$result":Ljava/lang/Object;
    .restart local v31    # "$i$f$forEachIndexed":I
    .restart local p1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    nop

    .line 766
    .end local v14    # "index$iv":I
    .end local v31    # "$i$f$forEachIndexed":I
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1351
    .local v2, "$i$f$count":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_4de

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4de

    const/4 v3, 0x0

    goto :goto_506

    .line 1352
    :cond_4de
    const/4 v3, 0x0

    .line 1353
    .local v3, "count$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_4e3
    :goto_4e3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_505

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v6, v1

    check-cast v6, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    move-object v1, v6

    .local v1, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v6, 0x0

    .line 766
    .local v6, "$i$a$-count-MagiskProvider$getAllInstalledApps$2$userApps$1":I
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v11

    if-nez v11, :cond_4fa

    const/4 v1, 0x1

    goto :goto_4fb

    :cond_4fa
    const/4 v1, 0x0

    .line 1353
    .end local v1    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v6    # "$i$a$-count-MagiskProvider$getAllInstalledApps$2$userApps$1":I
    :goto_4fb
    if-eqz v1, :cond_4e3

    add-int/lit8 v3, v3, 0x1

    if-gez v3, :cond_4e3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_4e3

    .line 1354
    :cond_505
    nop

    .line 766
    .end local v2    # "$i$f$count":I
    .end local v3    # "count$iv":I
    :goto_506
    move v1, v3

    .line 767
    .local v1, "userApps":I
    move-object v2, v10

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1355
    .local v3, "$i$f$count":I
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_51a

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_51a

    const/4 v5, 0x0

    goto :goto_53c

    .line 1356
    :cond_51a
    const/4 v5, 0x0

    .line 1357
    .local v5, "count$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v2    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_51f
    :goto_51f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .local v11, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v12, 0x0

    .line 767
    .local v12, "$i$a$-count-MagiskProvider$getAllInstalledApps$2$systemApps$1":I
    invoke-virtual {v11}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v13

    .line 1357
    .end local v11    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v12    # "$i$a$-count-MagiskProvider$getAllInstalledApps$2$systemApps$1":I
    if-eqz v13, :cond_51f

    add-int/lit8 v5, v5, 0x1

    if-gez v5, :cond_51f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_51f

    .line 1358
    .end local v2    # "element$iv":Ljava/lang/Object;
    :cond_53b
    nop

    .line 767
    .end local v3    # "$i$f$count":I
    .end local v5    # "count$iv":I
    :goto_53c
    move v2, v5

    .line 768
    .local v2, "systemApps":I
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "========== APP LIST SUMMARY (Root Shell) =========="

    const/4 v6, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v5, v11, v6, v11}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 769
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total apps: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v5, v11, v6, v11}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 770
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Successful ApplicationInfo: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v5, v11, v6, v11}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 771
    .end local v8    # "successfulAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget v5, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed ApplicationInfo: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v5, v8, v6, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 772
    .end local v9    # "failedAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User apps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v5, v8, v6, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 773
    .end local v1    # "userApps":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System apps: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v6, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 776
    .end local v2    # "systemApps":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "---------- USER APPS LIST (first 30) ----------"

    invoke-static {v1, v2, v6, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 777
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1359
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 1360
    .local v5, "$i$f$filterTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_5e7
    :goto_5e7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_604

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v1

    check-cast v8, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .local v8, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v9, 0x0

    .line 777
    .local v9, "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$2":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v11

    if-nez v11, :cond_5fd

    const/4 v8, 0x1

    goto :goto_5fe

    :cond_5fd
    const/4 v8, 0x0

    .line 1360
    .end local v8    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v9    # "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$2":I
    :goto_5fe
    if-eqz v8, :cond_5e7

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5e7

    .line 1361
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    :cond_604
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$filterTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 1359
    nop

    .end local v2    # "$i$f$filter":I
    check-cast v1, Ljava/lang/Iterable;

    .line 777
    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1362
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    check-cast v3, Ljava/lang/Iterable;

    .line 777
    const/16 v1, 0x1e

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1363
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_626
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_664

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v5, v1

    check-cast v5, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .local v5, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v6, 0x0

    .line 778
    .local v6, "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$4":I
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "User app: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v12, v17

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    const/4 v13, 0x0

    invoke-static {v8, v9, v13, v11, v13}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 779
    nop

    .line 1363
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v6    # "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$4":I
    move-object/from16 v17, v12

    goto :goto_626

    .line 1364
    :cond_664
    move-object/from16 v12, v17

    .line 780
    .end local v2    # "$i$f$forEach":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "---------- END USER APPS LIST ----------"

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 783
    move-object v1, v4

    check-cast v1, Ljava/lang/Iterable;

    .end local v4    # "keyApps":Ljava/util/List;
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1365
    .restart local v2    # "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_677
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_700

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .local v1, "pkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 784
    .local v4, "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$5":I
    move-object v5, v10

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_68d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .line 1366
    .restart local v8    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v9, 0x0

    .line 784
    .local v9, "$i$a$-find-MagiskProvider$getAllInstalledApps$2$5$app$1":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .end local v8    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v9    # "$i$a$-find-MagiskProvider$getAllInstalledApps$2$5$app$1":I
    if-eqz v11, :cond_68d

    goto :goto_6a7

    :cond_6a6
    const/4 v6, 0x0

    :goto_6a7
    check-cast v6, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    move-object v5, v6

    .line 785
    .local v5, "app":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    if-eqz v5, :cond_6e3

    .line 786
    .end local v1    # "pkg":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found target app: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v1, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_6fd

    .line 788
    .end local v5    # "app":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_6e3
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TARGET APP NOT FOUND: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 790
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_6fd
    nop

    .line 1365
    .end local v4    # "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$5":I
    goto/16 :goto_677

    .line 1367
    :cond_700
    nop

    .line 791
    .end local v2    # "$i$f$forEach":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "========== END APP LIST SUMMARY =========="

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 793
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1368
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$2;

    invoke-direct {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$2;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3
    :try_end_719
    .catch Ljava/lang/Exception; {:try_start_476 .. :try_end_719} :catch_71a

    .line 793
    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    return-object v3

    .line 965
    :catch_71a
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v3, v30

    goto/16 :goto_edb

    .end local v30    # "$result":Ljava/lang/Object;
    .end local p1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v2, "$result":Ljava/lang/Object;
    :catch_722
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 v30, v2

    move-object v2, v0

    move-object/from16 v3, v30

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v30    # "$result":Ljava/lang/Object;
    .restart local p1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    goto/16 :goto_edb

    .end local v10    # "apps":Ljava/util/List;
    .end local v30    # "$result":Ljava/lang/Object;
    .end local p1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v2, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "apps":Ljava/util/List;
    :catch_72c
    move-exception v0

    move-object v10, v3

    move-object v1, v2

    move-object v2, v0

    move-object v10, v4

    .end local v3    # "$result":Ljava/lang/Object;
    .local v10, "$result":Ljava/lang/Object;
    goto/16 :goto_edb

    .line 653
    .end local v10    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    .local v8, "rootAvailable":Z
    :cond_733
    move-object v10, v3

    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move-object/from16 v3, v18

    move-object/from16 v9, v25

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    move-object/from16 v7, v28

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v24

    .line 795
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "apps":Ljava/util/List;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "rootAvailable":Z
    .restart local v10    # "$result":Ljava/lang/Object;
    .local v17, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v18, "apps":Ljava/util/List;
    .local v20, "pm":Landroid/content/pm/PackageManager;
    :try_start_74e
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_750
    .catch Ljava/lang/Exception; {:try_start_74e .. :try_end_750} :catch_76a

    move-object/from16 p1, v10

    .end local v10    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_752
    const-string v10, "Root is not available, falling back to pm list packages"

    invoke-virtual {v8, v10}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_757
    .catch Ljava/lang/Exception; {:try_start_752 .. :try_end_757} :catch_760

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v17, p1

    move-object/from16 p1, v20

    goto :goto_7a1

    .line 965
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_760
    move-exception v0

    move-object/from16 v3, p1

    move-object v2, v0

    move-object/from16 v1, v17

    move-object/from16 v10, v18

    goto/16 :goto_edb

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v10    # "$result":Ljava/lang/Object;
    :catch_76a
    move-exception v0

    move-object/from16 p1, v10

    move-object/from16 v3, p1

    move-object v2, v0

    move-object/from16 v1, v17

    move-object/from16 v10, v18

    .end local v10    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto/16 :goto_edb

    .end local v17    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v18    # "apps":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "apps":Ljava/util/List;
    :catch_776
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 p1, v3

    move-object/from16 v18, v4

    move-object v2, v0

    move-object/from16 v1, v17

    move-object/from16 v10, v18

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "apps":Ljava/util/List;
    .restart local v17    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v18    # "apps":Ljava/util/List;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto/16 :goto_edb

    .line 647
    .end local v17    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v18    # "apps":Ljava/util/List;
    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v3, "rootType":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v10, "apps":Ljava/util/List;
    :cond_784
    move-object v8, v2

    move-object/from16 v34, v7

    move-object/from16 v35, v11

    move-object/from16 v4, v17

    move-object/from16 v2, v20

    move-object/from16 v9, v25

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    move-object/from16 v7, v28

    move-object/from16 v17, v3

    move-object/from16 v27, v5

    move-object/from16 v3, v18

    move-object/from16 v5, v24

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v3    # "rootType":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v8, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v17, "rootType":Ljava/lang/String;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v17, p1

    move-object/from16 p1, v27

    .line 800
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .local v17, "$result":Ljava/lang/Object;
    .local p1, "pm":Landroid/content/pm/PackageManager;
    :goto_7a1
    move-object/from16 v18, v4

    :try_start_7a3
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object/from16 v20, v3

    const-string v3, "========== FALLBACK TO PM LIST PACKAGES =========="

    invoke-virtual {v4, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_7ac
    .catch Ljava/lang/Exception; {:try_start_7a3 .. :try_end_7ac} :catch_ebd

    .line 802
    nop

    .line 803
    :try_start_7ad
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    move-object/from16 v24, v2

    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "pm"

    const/16 v22, 0x0

    aput-object v4, v2, v22

    const-string v4, "list"

    const/16 v21, 0x1

    aput-object v4, v2, v21

    const-string v4, "packages"

    const/16 v23, 0x2

    aput-object v4, v2, v23

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 804
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "getInputStream(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v25, v5

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    instance-of v3, v5, Ljava/io/BufferedReader;
    :try_end_7e2
    .catch Ljava/lang/Exception; {:try_start_7ad .. :try_end_7e2} :catch_ea6

    const/16 v4, 0x2000

    if-eqz v3, :cond_7ef

    :try_start_7e6
    check-cast v5, Ljava/io/BufferedReader;
    :try_end_7e8
    .catch Ljava/lang/Exception; {:try_start_7e6 .. :try_end_7e8} :catch_7e9

    goto :goto_7f5

    .line 814
    .end local v2    # "process":Ljava/lang/Process;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    :catch_7e9
    move-exception v0

    move-object v1, v0

    move-object/from16 v28, v8

    goto/16 :goto_eaa

    .line 804
    .restart local v2    # "process":Ljava/lang/Process;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    :cond_7ef
    :try_start_7ef
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v3

    :goto_7f5
    check-cast v5, Ljava/io/Reader;

    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "output":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v4, "getErrorStream(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v27, v9

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v9, Ljava/io/Reader;

    instance-of v4, v9, Ljava/io/BufferedReader;
    :try_end_811
    .catch Ljava/lang/Exception; {:try_start_7ef .. :try_end_811} :catch_ea6

    if-eqz v4, :cond_816

    :try_start_813
    check-cast v9, Ljava/io/BufferedReader;
    :try_end_815
    .catch Ljava/lang/Exception; {:try_start_813 .. :try_end_815} :catch_7e9

    goto :goto_81e

    :cond_816
    :try_start_816
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v9, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v9, v4

    :goto_81e
    check-cast v9, Ljava/io/Reader;

    invoke-static {v9}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "error":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v5

    move v2, v5

    .line 808
    .local v2, "exitCode":I
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v1

    const-string v1, "pm list packages exitCode: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 809
    .end local v2    # "exitCode":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pm list packages output size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " characters"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 810
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_86c
    .catch Ljava/lang/Exception; {:try_start_816 .. :try_end_86c} :catch_ea6

    if-lez v1, :cond_870

    const/4 v1, 0x1

    goto :goto_871

    :cond_870
    const/4 v1, 0x0

    :goto_871
    if-eqz v1, :cond_88b

    .line 811
    :try_start_873
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pm list packages error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_88b
    .catch Ljava/lang/Exception; {:try_start_873 .. :try_end_88b} :catch_7e9

    .line 813
    .end local v4    # "error":Ljava/lang/String;
    :cond_88b
    nop

    .line 802
    .end local v3    # "output":Ljava/lang/String;
    move-object v1, v3

    .line 820
    .local v1, "pmOutput":Ljava/lang/String;
    :try_start_88d
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    move-object v1, v2

    .line 821
    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1369
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

    .line 1370
    .local v4, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_8aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_8ae
    .catch Ljava/lang/Exception; {:try_start_88d .. :try_end_8ae} :catch_ebd

    if-eqz v1, :cond_8e0

    :try_start_8b0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1371
    .local v1, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/16 v28, 0x0

    .line 821
    .local v28, "$i$a$-map-MagiskProvider$getAllInstalledApps$2$packageNames$1":I
    move-object/from16 v29, v1

    .end local v1    # "item$iv$iv":Ljava/lang/Object;
    .local v29, "item$iv$iv":Ljava/lang/Object;
    const-string v1, "package:"

    move/from16 v30, v2

    move/from16 v31, v4

    const/4 v2, 0x2

    const/4 v4, 0x0

    .end local v2    # "$i$f$map":I
    .end local v4    # "$i$f$mapTo":I
    .local v30, "$i$f$map":I
    .local v31, "$i$f$mapTo":I
    invoke-static {v9, v1, v4, v2, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1371
    .end local v9    # "it":Ljava/lang/String;
    .end local v28    # "$i$a$-map-MagiskProvider$getAllInstalledApps$2$packageNames$1":I
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_8d4
    .catch Ljava/lang/Exception; {:try_start_8b0 .. :try_end_8d4} :catch_8d9

    move/from16 v2, v30

    move/from16 v4, v31

    goto :goto_8aa

    .line 965
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v29    # "item$iv$iv":Ljava/lang/Object;
    .end local v30    # "$i$f$map":I
    .end local v31    # "$i$f$mapTo":I
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    :catch_8d9
    move-exception v0

    move-object v2, v0

    move-object v1, v8

    move-object/from16 v3, v17

    goto/16 :goto_edb

    .line 1372
    .restart local v2    # "$i$f$map":I
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$mapTo":I
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    :cond_8e0
    move/from16 v30, v2

    move/from16 v31, v4

    .end local v2    # "$i$f$map":I
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$mapTo":I
    .restart local v30    # "$i$f$map":I
    :try_start_8e4
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 1369
    nop

    .end local v30    # "$i$f$map":I
    check-cast v1, Ljava/lang/Iterable;

    .line 822
    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1373
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 1374
    .local v4, "$i$f$filterTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_8f7
    :goto_8f7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_8fb
    .catch Ljava/lang/Exception; {:try_start_8e4 .. :try_end_8fb} :catch_ebd

    if-eqz v1, :cond_919

    :try_start_8fd
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/16 v28, 0x0

    .line 822
    .local v28, "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$packageNames$2":I
    move-object/from16 v29, v9

    check-cast v29, Ljava/lang/CharSequence;

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v29

    if-lez v29, :cond_912

    const/4 v9, 0x1

    goto :goto_913

    :cond_912
    const/4 v9, 0x0

    .line 1374
    .end local v9    # "it":Ljava/lang/String;
    .end local v28    # "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$packageNames$2":I
    :goto_913
    if-eqz v9, :cond_8f7

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_918
    .catch Ljava/lang/Exception; {:try_start_8fd .. :try_end_918} :catch_8d9

    goto :goto_8f7

    .line 1375
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    :cond_919
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$filterTo":I
    :try_start_91a
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 1373
    nop

    .line 822
    .end local v2    # "$i$f$filter":I
    nop

    .line 820
    nop

    .line 824
    .local v1, "packageNames":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package names"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 827
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 828
    .local v2, "keyApps":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1376
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 1377
    .local v9, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_960
    :goto_960
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_964
    .catch Ljava/lang/Exception; {:try_start_91a .. :try_end_964} :catch_ebd

    if-eqz v3, :cond_978

    :try_start_966
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .local v13, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 828
    .local v14, "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$foundKeyApps$2":I
    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 1377
    .end local v13    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$foundKeyApps$2":I
    if-eqz v15, :cond_960

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_977
    .catch Ljava/lang/Exception; {:try_start_966 .. :try_end_977} :catch_8d9

    goto :goto_960

    .line 1378
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    :cond_978
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$i$f$filterTo":I
    :try_start_979
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 1376
    nop

    .line 828
    .end local v4    # "$i$f$filter":I
    nop

    .line 829
    .local v3, "foundKeyApps":Ljava/util/List;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key apps found in pm list: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_996
    .catch Ljava/lang/Exception; {:try_start_979 .. :try_end_996} :catch_ebd

    .line 832
    .end local v3    # "foundKeyApps":Ljava/util/List;
    nop

    .line 833
    :try_start_997
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_99a
    .catch Ljava/lang/Exception; {:try_start_997 .. :try_end_99a} :catch_99b

    goto :goto_99d

    .line 834
    :catch_99b
    move-exception v0

    .line 835
    nop

    .line 832
    :goto_99d
    nop

    .line 839
    :try_start_99e
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 840
    .local v3, "successfulAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 842
    .local v4, "failedAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    iget-object v9, v8, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .end local v1    # "packageNames":Ljava/util/List;
    move-object v1, v5

    .local v1, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1379
    .local v5, "$i$f$forEachIndexed":I
    const/4 v12, 0x0

    .line 1380
    .local v12, "index$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    :goto_9b4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c59

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_9be
    .catch Ljava/lang/Exception; {:try_start_99e .. :try_end_9be} :catch_ebd

    .local v1, "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "index$iv":I
    .local v14, "index$iv":I
    if-gez v12, :cond_9c5

    :try_start_9c2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_9c5
    .catch Ljava/lang/Exception; {:try_start_9c2 .. :try_end_9c5} :catch_8d9

    :cond_9c5
    :try_start_9c5
    move-object v15, v1

    check-cast v15, Ljava/lang/String;
    :try_end_9c8
    .catch Ljava/lang/Exception; {:try_start_9c5 .. :try_end_9c8} :catch_ebd

    move v1, v12

    .local v1, "index":I
    move-object v12, v15

    .local v12, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 843
    .local v15, "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    nop

    .line 845
    nop

    .line 846
    move/from16 v19, v5

    move-object/from16 v28, v8

    const/4 v8, 0x0

    move-object/from16 v5, p1

    .end local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    .local v19, "$i$f$forEachIndexed":I
    .local v28, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :try_start_9d4
    invoke-virtual {v5, v12, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v29
    :try_end_9d8
    .catch Ljava/lang/Exception; {:try_start_9d4 .. :try_end_9d8} :catch_9e3

    move-object/from16 p1, v13

    move/from16 v31, v15

    move-object/from16 v8, v29

    move-object/from16 v15, v34

    move/from16 v29, v14

    goto :goto_a1c

    .line 847
    :catch_9e3
    move-exception v0

    move-object v8, v0

    .line 848
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 p1, v13

    :try_start_9e7
    sget-object v13, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_9e9
    .catch Ljava/lang/Exception; {:try_start_9e7 .. :try_end_9e9} :catch_c0b

    move/from16 v29, v14

    .end local v14    # "index$iv":I
    .local v29, "index$iv":I
    :try_start_9eb
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v30, v8

    .end local v8    # "e":Ljava/lang/Exception;
    .local v30, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9f6
    .catch Ljava/lang/Exception; {:try_start_9eb .. :try_end_9f6} :catch_bfe

    move/from16 v31, v15

    move-object/from16 v15, v35

    .end local v15    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .local v31, "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    :try_start_9fa
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8
    :try_end_a02
    .catch Ljava/lang/Exception; {:try_start_9fa .. :try_end_a02} :catch_bf0

    move-object/from16 v35, v15

    move-object/from16 v15, v34

    :try_start_a06
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 849
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v13, 0x1

    add-int/2addr v8, v13

    iput v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_a1b
    .catch Ljava/lang/Exception; {:try_start_a06 .. :try_end_a1b} :catch_be8

    .line 850
    const/4 v8, 0x0

    .line 845
    .end local v30    # "e":Ljava/lang/Exception;
    :goto_a1c
    nop

    .line 853
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_ae2

    .line 854
    :try_start_a1f
    iget v13, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    iput v13, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 855
    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v13, :cond_a2c

    move-object/from16 v13, v16

    goto :goto_a2f

    :cond_a2c
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 856
    .local v13, "sourceDir":Ljava/lang/String;
    :goto_a2f
    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v9, v8}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$isSystemApp(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Landroid/content/pm/ApplicationInfo;)Z

    move-result v21
    :try_end_a33
    .catch Ljava/lang/Exception; {:try_start_a1f .. :try_end_a33} :catch_ad4

    .line 859
    .local v21, "isSystemApp":Z
    nop

    .line 860
    :try_start_a34
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30
    :try_end_a3c
    .catch Ljava/lang/Exception; {:try_start_a34 .. :try_end_a3c} :catch_a41

    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v32, v9

    move-object/from16 v8, v30

    goto :goto_a61

    .line 861
    :catch_a41
    move-exception v0

    .line 862
    :try_start_a42
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a49
    .catch Ljava/lang/Exception; {:try_start_a42 .. :try_end_a49} :catch_ad4

    move-object/from16 v32, v9

    :try_start_a4b
    const-string v9, "Failed to get label for "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 863
    move-object v8, v12

    .line 859
    :goto_a61
    nop

    .line 867
    .local v8, "appName":Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aaa

    .line 868
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_a6a
    .catch Ljava/lang/Exception; {:try_start_a4b .. :try_end_a6a} :catch_ad0

    if-eqz v21, :cond_a6e

    const/4 v14, 0x1

    goto :goto_a6f

    .end local v13    # "sourceDir":Ljava/lang/String;
    :cond_a6e
    const/4 v14, 0x0

    :goto_a6f
    move-object/from16 v34, v15

    :try_start_a71
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a76
    .catch Ljava/lang/Exception; {:try_start_a71 .. :try_end_a76} :catch_aa6

    move-object/from16 v33, v2

    .end local v2    # "keyApps":Ljava/util/List;
    .local v33, "keyApps":Ljava/util/List;
    :try_start_a78
    const-string v2, "Key app: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " ("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "), sourceDir: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_aae

    .line 934
    .end local v8    # "appName":Ljava/lang/String;
    .end local v21    # "isSystemApp":Z
    .end local v33    # "keyApps":Ljava/util/List;
    .restart local v2    # "keyApps":Ljava/util/List;
    :catch_aa6
    move-exception v0

    move-object/from16 v33, v2

    goto :goto_adb

    .line 867
    .restart local v8    # "appName":Ljava/lang/String;
    .restart local v13    # "sourceDir":Ljava/lang/String;
    .restart local v21    # "isSystemApp":Z
    :cond_aaa
    move-object/from16 v33, v2

    move-object/from16 v34, v15

    .line 871
    .end local v2    # "keyApps":Ljava/util/List;
    .end local v13    # "sourceDir":Ljava/lang/String;
    .restart local v33    # "keyApps":Ljava/util/List;
    :goto_aae
    nop

    .line 872
    new-instance v2, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .line 873
    nop

    .line 874
    nop

    .line 875
    .end local v8    # "appName":Ljava/lang/String;
    if-eqz v21, :cond_ab7

    const/4 v9, 0x1

    goto :goto_ab8

    .end local v21    # "isSystemApp":Z
    :cond_ab7
    const/4 v9, 0x0

    .line 876
    :goto_ab8
    nop

    .line 872
    const/4 v13, 0x0

    invoke-direct {v2, v12, v8, v9, v13}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    .line 871
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac0
    .catch Ljava/lang/Exception; {:try_start_a78 .. :try_end_ac0} :catch_ac8

    move-object/from16 v15, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    goto/16 :goto_c42

    .line 934
    :catch_ac8
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    goto/16 :goto_c19

    .end local v33    # "keyApps":Ljava/util/List;
    .restart local v2    # "keyApps":Ljava/util/List;
    :catch_ad0
    move-exception v0

    move-object/from16 v33, v2

    goto :goto_ad9

    :catch_ad4
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v32, v9

    :goto_ad9
    move-object/from16 v34, v15

    :goto_adb
    move-object v2, v0

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    .end local v2    # "keyApps":Ljava/util/List;
    .restart local v33    # "keyApps":Ljava/util/List;
    :goto_ae0
    goto/16 :goto_c19

    .line 853
    .end local v33    # "keyApps":Ljava/util/List;
    .restart local v2    # "keyApps":Ljava/util/List;
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_ae2
    move-object/from16 v33, v2

    move-object/from16 v32, v9

    move-object/from16 v34, v15

    .line 881
    .end local v2    # "keyApps":Ljava/util/List;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "keyApps":Ljava/util/List;
    :try_start_ae8
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_afe
    .catch Ljava/lang/Exception; {:try_start_ae8 .. :try_end_afe} :catch_be1

    .line 884
    move-object/from16 v2, v26

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v13, 0x0

    :try_start_b03
    invoke-static {v12, v2, v8, v9, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14
    :try_end_b07
    .catch Ljava/lang/Exception; {:try_start_b03 .. :try_end_b07} :catch_bdd

    if-nez v14, :cond_b2b

    .line 885
    move-object/from16 v14, v27

    :try_start_b0b
    invoke-static {v12, v14, v8, v9, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b2d

    .line 886
    const-string v15, "com.xiaomi."

    invoke-static {v12, v15, v8, v9, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b2d

    .line 887
    const-string v15, "android."

    invoke-static {v12, v15, v8, v9, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15
    :try_end_b1f
    .catch Ljava/lang/Exception; {:try_start_b0b .. :try_end_b1f} :catch_b24

    if-eqz v15, :cond_b22

    goto :goto_b2d

    :cond_b22
    const/4 v8, 0x0

    goto :goto_b2e

    .line 934
    :catch_b24
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v13, v25

    goto/16 :goto_be6

    .line 884
    :cond_b2b
    move-object/from16 v14, v27

    .line 887
    :cond_b2d
    :goto_b2d
    const/4 v8, 0x1

    .line 884
    :goto_b2e
    nop

    .line 890
    .local v8, "isSystemApp":Z
    nop

    .line 892
    nop

    .line 893
    const/16 v9, 0x80

    :try_start_b33
    invoke-virtual {v5, v12, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_b37
    .catch Ljava/lang/Exception; {:try_start_b33 .. :try_end_b37} :catch_b49

    move-object/from16 v13, v25

    :try_start_b39
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    .local v9, "altAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_b44
    .catch Ljava/lang/Exception; {:try_start_b39 .. :try_end_b44} :catch_b47

    move-object/from16 v26, v2

    .end local v9    # "altAppInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_ba1

    .line 895
    :catch_b47
    move-exception v0

    goto :goto_b4c

    :catch_b49
    move-exception v0

    move-object/from16 v13, v25

    .line 897
    :goto_b4c
    nop

    .line 898
    nop

    .line 899
    nop

    .line 900
    nop

    .line 898
    const/16 v9, 0x2080

    :try_start_b52
    invoke-virtual {v5, v12, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    .restart local v9    # "altAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_b61
    .catch Ljava/lang/Exception; {:try_start_b52 .. :try_end_b61} :catch_b64

    move-object/from16 v26, v2

    .end local v9    # "altAppInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_ba0

    .line 903
    :catch_b64
    move-exception v0

    .line 905
    nop

    .line 906
    const/4 v9, 0x0

    :try_start_b67
    invoke-virtual {v5, v12, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 907
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 908
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_b78

    .line 909
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21
    :try_end_b77
    .catch Ljava/lang/Exception; {:try_start_b67 .. :try_end_b77} :catch_b7d

    goto :goto_b7a

    .line 911
    :cond_b78
    move-object/from16 v21, v12

    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_b7a
    move-object/from16 v26, v2

    goto :goto_b9e

    .line 913
    :catch_b7d
    move-exception v0

    .line 915
    :try_start_b7e
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b85
    .catch Ljava/lang/Exception; {:try_start_b7e .. :try_end_b85} :catch_ba4

    move-object/from16 v26, v2

    :try_start_b87
    const-string v2, "All methods failed to get app name for "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_b9c
    .catch Ljava/lang/Exception; {:try_start_b87 .. :try_end_b9c} :catch_ba2

    .line 916
    move-object/from16 v21, v12

    :goto_b9e
    move-object/from16 v15, v21

    :goto_ba0
    nop

    :goto_ba1
    goto :goto_bc4

    .line 920
    :catch_ba2
    move-exception v0

    goto :goto_ba7

    :catch_ba4
    move-exception v0

    move-object/from16 v26, v2

    .line 921
    :goto_ba7
    :try_start_ba7
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected error getting app name for "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 922
    move-object v15, v12

    .line 890
    :goto_bc4
    move-object v2, v15

    .line 925
    .local v2, "appName":Ljava/lang/String;
    nop

    .line 926
    new-instance v9, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .line 927
    nop

    .line 928
    nop

    .line 929
    .end local v2    # "appName":Ljava/lang/String;
    if-eqz v8, :cond_bce

    const/4 v8, 0x1

    goto :goto_bcf

    .end local v8    # "isSystemApp":Z
    :cond_bce
    const/4 v8, 0x0

    .line 930
    :goto_bcf
    nop

    .line 926
    const/4 v15, 0x0

    invoke-direct {v9, v12, v2, v8, v15}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    .line 925
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bd7
    .catch Ljava/lang/Exception; {:try_start_ba7 .. :try_end_bd7} :catch_bdb

    .end local v1    # "index":I
    .end local v12    # "packageName":Ljava/lang/String;
    move-object/from16 v15, v24

    goto/16 :goto_c42

    .line 934
    .restart local v1    # "index":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :catch_bdb
    move-exception v0

    goto :goto_be6

    :catch_bdd
    move-exception v0

    move-object/from16 v26, v2

    goto :goto_be2

    :catch_be1
    move-exception v0

    :goto_be2
    move-object/from16 v13, v25

    move-object/from16 v14, v27

    :goto_be6
    move-object v2, v0

    goto :goto_c19

    .end local v33    # "keyApps":Ljava/util/List;
    .local v2, "keyApps":Ljava/util/List;
    :catch_be8
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v32, v9

    move-object/from16 v34, v15

    goto :goto_bf7

    :catch_bf0
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v32, v9

    move-object/from16 v35, v15

    :goto_bf7
    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move-object v2, v0

    goto/16 :goto_ae0

    .end local v31    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .local v15, "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    :catch_bfe
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v32, v9

    move/from16 v31, v15

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move-object v2, v0

    .end local v2    # "keyApps":Ljava/util/List;
    .end local v15    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .restart local v31    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .restart local v33    # "keyApps":Ljava/util/List;
    goto :goto_c19

    .end local v29    # "index$iv":I
    .end local v31    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .end local v33    # "keyApps":Ljava/util/List;
    .restart local v2    # "keyApps":Ljava/util/List;
    .restart local v14    # "index$iv":I
    .restart local v15    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    :catch_c0b
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v32, v9

    move/from16 v29, v14

    move/from16 v31, v15

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move-object v2, v0

    .line 935
    .end local v14    # "index$iv":I
    .end local v15    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v29    # "index$iv":I
    .restart local v31    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    .restart local v33    # "keyApps":Ljava/util/List;
    :goto_c19
    :try_start_c19
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v24

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v21, v1

    move-object/from16 v1, v20

    .end local v1    # "index":I
    .local v21, "index":I
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v1

    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v8, v9, v1}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 937
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v21    # "index":I
    :goto_c42
    nop

    .line 1380
    .end local v31    # "$i$a$-forEachIndexed-MagiskProvider$getAllInstalledApps$2$7":I
    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-object/from16 v24, v15

    move-object/from16 v8, v28

    move/from16 v12, v29

    move-object/from16 v9, v32

    move-object/from16 v2, v33

    move-object/from16 v13, p1

    move-object/from16 p1, v5

    move/from16 v5, v19

    goto/16 :goto_9b4

    .end local v19    # "$i$f$forEachIndexed":I
    .end local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v29    # "index$iv":I
    .end local v33    # "keyApps":Ljava/util/List;
    .local v2, "keyApps":Ljava/util/List;
    .local v5, "$i$f$forEachIndexed":I
    .local v8, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v12, "index$iv":I
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    :cond_c59
    move-object/from16 v33, v2

    move/from16 v19, v5

    move-object/from16 v28, v8

    move-object/from16 v5, p1

    .line 1381
    .end local v2    # "keyApps":Ljava/util/List;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "$i$f$forEachIndexed":I
    .restart local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v33    # "keyApps":Ljava/util/List;
    nop

    .line 939
    .end local v12    # "index$iv":I
    .end local v19    # "$i$f$forEachIndexed":I
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1382
    .local v2, "$i$f$count":I
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_c75

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c75

    const/4 v8, 0x0

    goto :goto_c9e

    .line 1383
    :cond_c75
    const/4 v5, 0x0

    .line 1384
    .local v5, "count$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v5

    .end local v1    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v5    # "count$iv":I
    .local v8, "count$iv":I
    :cond_c7b
    :goto_c7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v5, v1

    check-cast v5, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    move-object v1, v5

    .local v1, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v5, 0x0

    .line 939
    .local v5, "$i$a$-count-MagiskProvider$getAllInstalledApps$2$userApps$2":I
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_c92

    const/4 v1, 0x1

    goto :goto_c93

    :cond_c92
    const/4 v1, 0x0

    .line 1384
    .end local v1    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v5    # "$i$a$-count-MagiskProvider$getAllInstalledApps$2$userApps$2":I
    :goto_c93
    if-eqz v1, :cond_c7b

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_c7b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_c7b

    .line 1385
    :cond_c9d
    nop

    .line 939
    .end local v2    # "$i$f$count":I
    .end local v8    # "count$iv":I
    :goto_c9e
    move v1, v8

    .line 940
    .local v1, "userApps":I
    move-object v2, v10

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1386
    .local v5, "$i$f$count":I
    instance-of v6, v2, Ljava/util/Collection;

    if-eqz v6, :cond_cb2

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_cb2

    const/4 v8, 0x0

    goto :goto_cd4

    .line 1387
    :cond_cb2
    const/4 v6, 0x0

    .line 1388
    .local v6, "count$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v2    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_cb7
    :goto_cb7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v9, v2

    check-cast v9, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .local v9, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v11, 0x0

    .line 940
    .local v11, "$i$a$-count-MagiskProvider$getAllInstalledApps$2$systemApps$2":I
    invoke-virtual {v9}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v12

    .line 1388
    .end local v9    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v11    # "$i$a$-count-MagiskProvider$getAllInstalledApps$2$systemApps$2":I
    if-eqz v12, :cond_cb7

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_cb7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_cb7

    .line 1389
    .end local v2    # "element$iv":Ljava/lang/Object;
    :cond_cd3
    move v8, v6

    .line 940
    .end local v5    # "$i$f$count":I
    .end local v6    # "count$iv":I
    :goto_cd4
    move v2, v8

    .line 941
    .local v2, "systemApps":I
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "========== APP LIST SUMMARY (Fallback) =========="

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 942
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total apps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 943
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successful ApplicationInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 944
    .end local v3    # "successfulAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed ApplicationInfo: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v5, v8, v6, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 945
    .end local v4    # "failedAppInfoCount":Lkotlin/jvm/internal/Ref$IntRef;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 946
    .end local v1    # "userApps":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 949
    .end local v2    # "systemApps":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "---------- USER APPS LIST (first 30) ----------"

    invoke-static {v1, v2, v5, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 950
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1390
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 1391
    .local v4, "$i$f$filterTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_d7f
    :goto_d7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv$iv":Ljava/lang/Object;
    move-object v6, v1

    check-cast v6, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .local v6, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v8, 0x0

    .line 950
    .local v8, "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$8":I
    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_d95

    const/4 v6, 0x1

    goto :goto_d96

    :cond_d95
    const/4 v6, 0x0

    .line 1391
    .end local v6    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v8    # "$i$a$-filter-MagiskProvider$getAllInstalledApps$2$8":I
    :goto_d96
    if-eqz v6, :cond_d7f

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d7f

    .line 1392
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    :cond_d9c
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$filterTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 1390
    nop

    .end local v2    # "$i$f$filter":I
    check-cast v1, Ljava/lang/Iterable;

    .line 950
    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1393
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$3;

    invoke-direct {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$3;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    check-cast v3, Ljava/lang/Iterable;

    .line 950
    const/16 v1, 0x1e

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1394
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_dbe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dfc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .local v4, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v5, 0x0

    .line 951
    .local v5, "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$10":I
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v11, v18

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v12, 0x0

    invoke-static {v6, v8, v12, v9, v12}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 952
    nop

    .line 1394
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v5    # "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$10":I
    move-object/from16 v18, v11

    goto :goto_dbe

    .line 1395
    :cond_dfc
    move-object/from16 v11, v18

    .line 953
    .end local v2    # "$i$f$forEach":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "---------- END USER APPS LIST ----------"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 956
    move-object/from16 v1, v33

    check-cast v1, Ljava/lang/Iterable;

    .end local v33    # "keyApps":Ljava/util/List;
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1396
    .restart local v2    # "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_e10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .local v1, "pkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 957
    .local v4, "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$11":I
    move-object v5, v10

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    .line 1366
    .local v8, "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    const/4 v9, 0x0

    .line 957
    .local v9, "$i$a$-find-MagiskProvider$getAllInstalledApps$2$11$app$1":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .end local v8    # "it":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .end local v9    # "$i$a$-find-MagiskProvider$getAllInstalledApps$2$11$app$1":I
    if-eqz v12, :cond_e26

    goto :goto_e40

    :cond_e3f
    const/4 v6, 0x0

    :goto_e40
    check-cast v6, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    move-object v5, v6

    .line 958
    .local v5, "app":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    if-eqz v5, :cond_e7c

    .line 959
    .end local v1    # "pkg":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp()Z

    move-result v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found target app: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v1, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_e96

    .line 961
    .end local v5    # "app":Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_e7c
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TARGET APP NOT FOUND: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v8, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 963
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_e96
    nop

    .line 1396
    .end local v4    # "$i$a$-forEach-MagiskProvider$getAllInstalledApps$2$11":I
    goto/16 :goto_e10

    .line 1397
    :cond_e99
    nop

    .line 964
    .end local v2    # "$i$f$forEach":I
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "========== END APP LIST SUMMARY =========="

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v8, v28

    goto :goto_ee8

    .line 814
    .end local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v8, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :catch_ea6
    move-exception v0

    move-object/from16 v28, v8

    move-object v1, v0

    .line 815
    .end local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :goto_eaa
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "pm list packages command failed"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    nop

    .end local v10    # "apps":Ljava/util/List;
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    throw v1
    :try_end_eb6
    .catch Ljava/lang/Exception; {:try_start_c19 .. :try_end_eb6} :catch_eb6

    .line 965
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v10    # "apps":Ljava/util/List;
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :catch_eb6
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v17

    move-object/from16 v1, v28

    goto :goto_edb

    .end local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :catch_ebd
    move-exception v0

    move-object/from16 v28, v8

    move-object v2, v0

    move-object/from16 v3, v17

    move-object/from16 v1, v28

    .end local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    goto :goto_edb

    .end local v17    # "$result":Ljava/lang/Object;
    .end local v28    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v2, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local p1, "$result":Ljava/lang/Object;
    :catch_ec6
    move-exception v0

    move-object v8, v2

    move-object/from16 v3, p1

    move-object v2, v0

    move-object v1, v8

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    goto :goto_edb

    .end local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v4, "$result":Ljava/lang/Object;
    :catch_ecd
    move-exception v0

    move-object v8, v2

    move-object/from16 p1, v4

    move-object/from16 v3, p1

    move-object v2, v0

    move-object v1, v8

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto :goto_edb

    .end local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    :catch_ed6
    move-exception v0

    move-object/from16 v3, p1

    move-object v1, v2

    move-object v2, v0

    .line 966
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .local v2, "e":Ljava/lang/Exception;
    .local v3, "$result":Ljava/lang/Object;
    :goto_edb
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "Failed to get installed apps"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v1

    move-object/from16 v17, v3

    .line 969
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2;
    .restart local v17    # "$result":Ljava/lang/Object;
    :goto_ee8
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1398
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$4;

    invoke-direct {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAllInstalledApps$2$invokeSuspend$$inlined$sortedBy$4;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 969
    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    return-object v1

    :pswitch_data_ef8
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_88
        :pswitch_5f
        :pswitch_3b
    .end packed-switch
.end method
