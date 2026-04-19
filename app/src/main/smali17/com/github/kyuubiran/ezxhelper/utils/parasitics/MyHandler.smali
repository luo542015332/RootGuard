.class public final Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
.super Ljava/lang/Object;
.source "ActivityHelper.kt"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityHelper.kt\ncom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler\n+ 2 Log.kt\ncom/github/kyuubiran/ezxhelper/utils/Log\n+ 3 Log.kt\ncom/github/kyuubiran/ezxhelper/utils/Log$logexIfThrow$1\n+ 4 MethodUtils.kt\ncom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt\n*L\n1#1,586:1\n424#2,4:587\n428#2:592\n424#2,4:594\n428#2:599\n424#3:591\n424#3:598\n19#4:593\n*S KotlinDebug\n*F\n+ 1 ActivityHelper.kt\ncom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler\n*L\n490#1:587,4\n490#1:592\n549#1:594,4\n549#1:599\n490#1:591\n549#1:598\n532#1:593\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;",
        "Landroid/os/Handler$Callback;",
        "mDefault",
        "(Landroid/os/Handler$Callback;)V",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "EzXHelper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mDefault:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "mDefault"    # Landroid/os/Handler$Callback;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;->mDefault:Landroid/os/Handler$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "msg"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    move v6, v5

    goto/16 :goto_e

    .line 493
    :sswitch_0
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 549
    .local v6, "clientTranslation":Ljava/lang/Object;
    sget-object v7, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    .line 494
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;

    move-object v8, v0

    .local v8, "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    const/4 v9, 0x0

    .line 495
    .local v9, "$i$a$-runCatching-MyHandler$handleMessage$2":I
    if-eqz v6, :cond_c

    move-object v10, v6

    .local v10, "cTrans":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 498
    .local v11, "$i$a$-let-MyHandler$handleMessage$2$1":I
    const-string v0, "android.app.servertransaction.ClientTransaction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v0, "forName(\"android.app.ser\u2026ction.ClientTransaction\")"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    const-string v13, "getCallbacks"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->method-_8BSV04$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 497
    move-object v12, v0

    .line 500
    .local v12, "mGetCallbacks":Ljava/lang/reflect/Method;
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v12, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    .line 501
    .local v13, "cTransItems":Ljava/util/List;
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    .line 494
    .end local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .end local v10    # "cTrans":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .end local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .end local v13    # "cTransItems":Ljava/util/List;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v6

    move v6, v5

    goto/16 :goto_9

    .line 501
    .restart local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v10    # "cTrans":Ljava/lang/Object;
    .restart local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .restart local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .restart local v13    # "cTransItems":Ljava/util/List;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_b

    .line 502
    :try_start_2
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v16, v0

    .line 503
    .local v16, "item":Ljava/lang/Object;
    move-object/from16 v14, v16

    .end local v16    # "item":Ljava/lang/Object;
    .local v14, "item":Ljava/lang/Object;
    if-eqz v14, :cond_2

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_2
    move-object v0, v4

    :goto_3
    move-object/from16 v16, v0

    .line 504
    .local v16, "clz":Ljava/lang/Class;
    if-eqz v16, :cond_3

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "name"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "LaunchActivityItem"

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v24, v6

    const/4 v6, 0x2

    .end local v6    # "clientTranslation":Ljava/lang/Object;
    .local v24, "clientTranslation":Ljava/lang/Object;
    :try_start_5
    invoke-static {v0, v3, v5, v6, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    .end local v24    # "clientTranslation":Ljava/lang/Object;
    .restart local v6    # "clientTranslation":Ljava/lang/Object;
    :cond_3
    move-object/from16 v24, v6

    .end local v6    # "clientTranslation":Ljava/lang/Object;
    .restart local v24    # "clientTranslation":Ljava/lang/Object;
    :cond_4
    move v0, v5

    :goto_4
    if-eqz v0, :cond_9

    .line 505
    const-string v19, "mIntent"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v18, v16

    invoke-static/range {v18 .. v23}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v3, v0

    .line 506
    .local v3, "fmIntent":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type android.content.Intent"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v6, v0

    .line 508
    .local v6, "wrapper":Landroid/content/Intent;
    const/16 v18, 0x0

    .line 509
    .local v18, "bundle":Landroid/os/Bundle;
    :try_start_6
    const-class v25, Landroid/content/Intent;

    .line 510
    const-string v26, "mExtras"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x0

    invoke-static/range {v25 .. v30}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 511
    .local v0, "fExtras":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Bundle;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v18, v19

    .end local v0    # "fExtras":Ljava/lang/reflect/Field;
    move-object/from16 v21, v8

    move/from16 v22, v9

    goto :goto_5

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v5, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    move-object/from16 v21, v8

    move/from16 v22, v9

    const/4 v8, 0x2

    const/4 v9, 0x0

    .end local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .local v21, "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .local v22, "$i$a$-runCatching-MyHandler$handleMessage$2":I
    invoke-static {v5, v4, v9, v8, v9}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    .local v0, "b":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 517
    .local v4, "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    sget-object v5, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v5}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getHOST_CLASS_LOADER()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 518
    sget-object v5, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v5}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getACTIVITY_PROXY_INTENT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 519
    nop

    .line 520
    sget-object v5, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v5}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getACTIVITY_PROXY_INTENT()Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-virtual {v6, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 522
    .local v5, "rIntent":Landroid/content/Intent;
    invoke-virtual {v3, v14, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 523
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1f

    if-lt v8, v9, :cond_6

    .line 525
    const-string v8, "android.app.ActivityThread"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 524
    nop

    .line 527
    .local v8, "cActivityThread":Ljava/lang/Class;
    const-string v9, "cActivityThread"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v26, "currentActivityThread"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v25, v8

    invoke-static/range {v25 .. v30}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->staticMethod-CJLnSlk$default(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 528
    move-object/from16 v25, v0

    move-object/from16 v23, v3

    const/4 v3, 0x0

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "fmIntent":Ljava/lang/reflect/Field;
    .local v23, "fmIntent":Ljava/lang/reflect/Field;
    .local v25, "b":Landroid/os/Bundle;
    :try_start_8
    new-array v0, v3, [Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {v9, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 526
    nop

    .line 529
    .local v0, "activityThread":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    .line 531
    const-string v27, "getLaunchingActivity"

    .line 530
    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 532
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/16 v19, 0x0

    :try_start_a
    aput-object v3, v9, v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v3, v9

    .local v3, "argTypes$iv":[Ljava/lang/Class;
    const/4 v9, 0x0

    .line 593
    .local v9, "$i$f$argTypes":I
    :try_start_b
    invoke-static {v3}, Lcom/github/kyuubiran/ezxhelper/utils/ArgTypes;->constructor-impl([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v30

    .line 530
    .end local v3    # "argTypes$iv":[Ljava/lang/Class;
    .end local v9    # "$i$f$argTypes":I
    const/16 v31, 0x6

    const/16 v32, 0x0

    invoke-static/range {v26 .. v32}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->method-_8BSV04$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 535
    nop

    .line 536
    move/from16 v17, v4

    const/4 v9, 0x1

    .end local v4    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .local v17, "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string v27, "getActivityToken"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xe

    const/16 v32, 0x0

    invoke-static/range {v26 .. v32}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->method-_8BSV04$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v26, v6

    move-object/from16 v19, v8

    const/4 v6, 0x0

    .end local v6    # "wrapper":Landroid/content/Intent;
    .end local v8    # "cActivityThread":Ljava/lang/Class;
    .local v19, "cActivityThread":Ljava/lang/Class;
    .local v26, "wrapper":Landroid/content/Intent;
    :try_start_c
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    .line 534
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 529
    nop

    .line 538
    .local v3, "acr":Ljava/lang/Object;
    if-eqz v3, :cond_5

    const-string v4, "acr"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    .local v4, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 539
    .local v8, "$i$a$-let-MyHandler$handleMessage$2$1$1$1":I
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    const-string v28, "intent"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x6

    const/16 v32, 0x0

    invoke-static/range {v27 .. v32}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 540
    .local v9, "fAcrIntent":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    nop

    .line 538
    .end local v4    # "it":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-MyHandler$handleMessage$2$1$1$1":I
    .end local v9    # "fAcrIntent":Ljava/lang/reflect/Field;
    :cond_5
    goto :goto_6

    .line 494
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v3    # "acr":Ljava/lang/Object;
    .end local v5    # "rIntent":Landroid/content/Intent;
    .end local v10    # "cTrans":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .end local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .end local v13    # "cTransItems":Ljava/util/List;
    .end local v14    # "item":Ljava/lang/Object;
    .end local v16    # "clz":Ljava/lang/Class;
    .end local v17    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v19    # "cActivityThread":Ljava/lang/Class;
    .end local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .end local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v25    # "b":Landroid/os/Bundle;
    .end local v26    # "wrapper":Landroid/content/Intent;
    :catchall_1
    move-exception v0

    move/from16 v6, v19

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move v6, v3

    goto/16 :goto_9

    .line 523
    .local v0, "b":Landroid/os/Bundle;
    .local v3, "fmIntent":Ljava/lang/reflect/Field;
    .local v4, "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .restart local v5    # "rIntent":Landroid/content/Intent;
    .restart local v6    # "wrapper":Landroid/content/Intent;
    .restart local v10    # "cTrans":Ljava/lang/Object;
    .restart local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .restart local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .restart local v13    # "cTransItems":Ljava/util/List;
    .restart local v14    # "item":Ljava/lang/Object;
    .restart local v16    # "clz":Ljava/lang/Class;
    .restart local v18    # "bundle":Landroid/os/Bundle;
    .restart local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    :cond_6
    move-object/from16 v25, v0

    move-object/from16 v23, v3

    move/from16 v17, v4

    move-object/from16 v26, v6

    const/4 v6, 0x0

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v4    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .end local v6    # "wrapper":Landroid/content/Intent;
    .restart local v17    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .restart local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .restart local v25    # "b":Landroid/os/Bundle;
    .restart local v26    # "wrapper":Landroid/content/Intent;
    goto :goto_6

    .line 518
    .end local v5    # "rIntent":Landroid/content/Intent;
    .end local v17    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .end local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v25    # "b":Landroid/os/Bundle;
    .end local v26    # "wrapper":Landroid/content/Intent;
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "fmIntent":Ljava/lang/reflect/Field;
    .restart local v4    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .restart local v6    # "wrapper":Landroid/content/Intent;
    :cond_7
    move-object/from16 v25, v0

    move-object/from16 v23, v3

    move/from16 v17, v4

    move-object/from16 v26, v6

    const/4 v6, 0x0

    .line 544
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v4    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .end local v6    # "wrapper":Landroid/content/Intent;
    .restart local v17    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .restart local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .restart local v25    # "b":Landroid/os/Bundle;
    .restart local v26    # "wrapper":Landroid/content/Intent;
    :goto_6
    nop

    .line 516
    .end local v17    # "$i$a$-let-MyHandler$handleMessage$2$1$1":I
    .end local v25    # "b":Landroid/os/Bundle;
    move v5, v6

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v6, v24

    const/4 v4, 0x0

    goto/16 :goto_2

    .end local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v26    # "wrapper":Landroid/content/Intent;
    .restart local v3    # "fmIntent":Ljava/lang/reflect/Field;
    .restart local v6    # "wrapper":Landroid/content/Intent;
    :cond_8
    move-object/from16 v23, v3

    move-object/from16 v26, v6

    const/4 v6, 0x0

    .end local v3    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v6    # "wrapper":Landroid/content/Intent;
    .restart local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .restart local v26    # "wrapper":Landroid/content/Intent;
    move v5, v6

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v6, v24

    const/4 v4, 0x0

    .end local v14    # "item":Ljava/lang/Object;
    .end local v16    # "clz":Ljava/lang/Class;
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v23    # "fmIntent":Ljava/lang/reflect/Field;
    .end local v26    # "wrapper":Landroid/content/Intent;
    goto/16 :goto_2

    .line 494
    .end local v10    # "cTrans":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .end local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .end local v13    # "cTransItems":Ljava/util/List;
    .end local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    :catchall_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_9

    :catchall_4
    move-exception v0

    move v6, v5

    goto :goto_9

    .line 504
    .local v8, "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .local v9, "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v10    # "cTrans":Ljava/lang/Object;
    .restart local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .restart local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .restart local v13    # "cTransItems":Ljava/util/List;
    .restart local v14    # "item":Ljava/lang/Object;
    .restart local v16    # "clz":Ljava/lang/Class;
    :cond_9
    move v6, v5

    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    move-object/from16 v6, v24

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 502
    .end local v14    # "item":Ljava/lang/Object;
    .end local v16    # "clz":Ljava/lang/Class;
    .end local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .end local v24    # "clientTranslation":Ljava/lang/Object;
    .local v6, "clientTranslation":Ljava/lang/Object;
    .restart local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    :cond_a
    move-object/from16 v24, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    move v6, v5

    .end local v6    # "clientTranslation":Ljava/lang/Object;
    .end local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v24    # "clientTranslation":Ljava/lang/Object;
    goto :goto_7

    .line 501
    .end local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .end local v24    # "clientTranslation":Ljava/lang/Object;
    .restart local v6    # "clientTranslation":Ljava/lang/Object;
    .restart local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    :cond_b
    move-object/from16 v24, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    move v6, v5

    .line 548
    .end local v6    # "clientTranslation":Ljava/lang/Object;
    .end local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v24    # "clientTranslation":Ljava/lang/Object;
    :goto_7
    nop

    .line 495
    .end local v10    # "cTrans":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-MyHandler$handleMessage$2$1":I
    .end local v12    # "mGetCallbacks":Ljava/lang/reflect/Method;
    .end local v13    # "cTransItems":Ljava/util/List;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    .end local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .end local v24    # "clientTranslation":Ljava/lang/Object;
    .restart local v6    # "clientTranslation":Ljava/lang/Object;
    .restart local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    :cond_c
    move-object/from16 v24, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    move v6, v5

    .end local v6    # "clientTranslation":Ljava/lang/Object;
    .end local v8    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v9    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .restart local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    .restart local v24    # "clientTranslation":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 494
    .end local v21    # "$this$handleMessage_u24lambda_u2d5":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v22    # "$i$a$-runCatching-MyHandler$handleMessage$2":I
    :goto_8
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_9

    .end local v24    # "clientTranslation":Ljava/lang/Object;
    .restart local v6    # "clientTranslation":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object/from16 v24, v6

    move v6, v5

    .end local v6    # "clientTranslation":Ljava/lang/Object;
    .restart local v24    # "clientTranslation":Ljava/lang/Object;
    :goto_9
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    :goto_a
    const-string v3, "ActivityProxy handle message error(what=159)"

    .local v0, "$receiver$iv":Ljava/lang/Object;
    .local v3, "msg$iv":Ljava/lang/String;
    move-object v4, v7

    .line 594
    .local v4, "$this$iv":Lcom/github/kyuubiran/ezxhelper/utils/Log;
    const/4 v5, 0x0

    .line 595
    .local v5, "$i$f$logexIfThrow":I
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_d

    .local v7, "it$iv":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 596
    .local v8, "$i$a$-let-Log$logexIfThrow$2$iv":I
    sget-object v9, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v9}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v9

    invoke-virtual {v9, v7, v3}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 597
    const/4 v9, 0x0

    .local v9, "$i$a$-logexIfThrow-Log$logexIfThrow$1":I
    move-object v10, v7

    .line 598
    .local v10, "it":Ljava/lang/Throwable;
    nop

    .line 599
    .end local v9    # "$i$a$-logexIfThrow-Log$logexIfThrow$1":I
    .end local v10    # "it":Ljava/lang/Throwable;
    nop

    .line 595
    .end local v7    # "it$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-let-Log$logexIfThrow$2$iv":I
    nop

    .line 599
    :cond_d
    goto/16 :goto_e

    .line 490
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v3    # "msg$iv":Ljava/lang/String;
    .end local v4    # "$this$iv":Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .end local v5    # "$i$f$logexIfThrow":I
    .end local v24    # "clientTranslation":Ljava/lang/Object;
    :sswitch_1
    move v6, v5

    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    .line 469
    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;

    move-object v4, v0

    .local v4, "$this$handleMessage_u24lambda_u2d1":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    const/4 v5, 0x0

    .line 470
    .local v5, "$i$a$-runCatching-MyHandler$handleMessage$1":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    .line 471
    .local v7, "record":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "intent"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v8, v0

    .line 472
    .local v8, "fIntent":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/Intent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v9, v0

    .line 474
    .local v9, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 475
    .local v10, "bundle":Landroid/os/Bundle;
    :try_start_e
    const-class v11, Landroid/content/Intent;

    .line 476
    const-string v12, "mExtras"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 477
    .local v0, "fExtras":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v10, v11

    .end local v0    # "fExtras":Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    goto :goto_b

    .line 478
    :catch_1
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f
    sget-object v11, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    move-object v12, v0

    check-cast v12, Ljava/lang/Throwable;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v11, v12, v14, v13, v14}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b
    if-eqz v10, :cond_f

    move-object v0, v10

    .local v0, "it":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 483
    .local v11, "$i$a$-let-MyHandler$handleMessage$1$1":I
    sget-object v12, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v12}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 484
    sget-object v12, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v12}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getACTIVITY_PROXY_INTENT()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 486
    sget-object v12, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v12}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getACTIVITY_PROXY_INTENT()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 485
    nop

    .line 487
    .local v12, "rIntent":Landroid/content/Intent;
    invoke-virtual {v8, v7, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    .end local v12    # "rIntent":Landroid/content/Intent;
    :cond_e
    nop

    .line 482
    .end local v0    # "it":Landroid/os/Bundle;
    .end local v11    # "$i$a$-let-MyHandler$handleMessage$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v4, v0

    goto :goto_c

    :cond_f
    move-object v4, v14

    .line 469
    .end local v4    # "$this$handleMessage_u24lambda_u2d1":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;
    .end local v5    # "$i$a$-runCatching-MyHandler$handleMessage$1":I
    .end local v7    # "record":Ljava/lang/Object;
    .end local v8    # "fIntent":Ljava/lang/reflect/Field;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :goto_c
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 490
    :goto_d
    const-string v4, "ActivityProxy handle message error(what=100)"

    .line 587
    .local v0, "$receiver$iv":Ljava/lang/Object;
    .local v3, "$this$iv":Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .local v4, "msg$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 588
    .local v5, "$i$f$logexIfThrow":I
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_10

    .local v7, "it$iv":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 589
    .local v8, "$i$a$-let-Log$logexIfThrow$2$iv":I
    sget-object v9, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v9}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v9

    invoke-virtual {v9, v7, v4}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 590
    const/4 v9, 0x0

    .local v9, "$i$a$-logexIfThrow-Log$logexIfThrow$1":I
    move-object v10, v7

    .line 591
    .local v10, "it":Ljava/lang/Throwable;
    nop

    .line 592
    .end local v9    # "$i$a$-logexIfThrow-Log$logexIfThrow$1":I
    .end local v10    # "it":Ljava/lang/Throwable;
    nop

    .line 588
    .end local v7    # "it$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-let-Log$logexIfThrow$2$iv":I
    nop

    .line 592
    :cond_10
    nop

    .line 552
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v3    # "$this$iv":Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .end local v4    # "msg$iv":Ljava/lang/String;
    .end local v5    # "$i$f$logexIfThrow":I
    :goto_e
    iget-object v0, v1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;->mDefault:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_11

    invoke-interface {v0, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    goto :goto_f

    :cond_11
    move v5, v6

    :goto_f
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x9f -> :sswitch_0
    .end sparse-switch
.end method
