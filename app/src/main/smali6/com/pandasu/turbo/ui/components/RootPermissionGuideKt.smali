.class public final Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;
.super Ljava/lang/Object;
.source "RootPermissionGuide.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootPermissionGuide.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootPermissionGuide.kt\ncom/pandasu/turbo/ui/components/RootPermissionGuideKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,267:1\n76#2:268\n486#3,4:269\n490#3,2:277\n494#3:283\n25#4:273\n25#4:284\n25#4:291\n1097#5,3:274\n1100#5,3:280\n1097#5,6:285\n1097#5,6:292\n486#6:279\n81#7:298\n107#7,2:299\n81#7:301\n107#7,2:302\n*S KotlinDebug\n*F\n+ 1 RootPermissionGuide.kt\ncom/pandasu/turbo/ui/components/RootPermissionGuideKt\n*L\n33#1:268\n34#1:269,4\n34#1:277,2\n34#1:283\n34#1:273\n38#1:284\n39#1:291\n34#1:274,3\n34#1:280,3\n38#1:285,6\n39#1:292,6\n34#1:279\n38#1:298\n38#1:299,2\n39#1:301\n39#1:302,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u001a%\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\n\u001a\u00020\u000bX\u008a\u008e\u0002"
    }
    d2 = {
        "RootPermissionGuide",
        "",
        "onAuthorized",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "app_debug",
        "status",
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
        "isChecking",
        ""
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final RootPermissionGuide(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "onAuthorized"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    const-string v0, "onAuthorized"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const v0, -0x519e78a0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(RootPermissionGuide)P(1)32@1164L7,33@1188L24,34@1235L21,37@1292L55,38@1370L33,41@1429L419,58@1858L10711:RootPermissionGuide.kt#3qqqnp"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v7, 0xe

    if-nez v2, :cond_2

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v7, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit8 v1, v14, 0x5b

    const/16 v5, 0x12

    if-ne v1, v5, :cond_7

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 266
    :cond_6
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v2, v14

    move-object v0, v15

    goto/16 :goto_9

    .line 32
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 31
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v23, v1

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_5

    .line 32
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_8
    move-object/from16 v23, v4

    .line 31
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v23, "modifier":Landroidx/compose/ui/Modifier;
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32
    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.components.RootPermissionGuide (RootPermissionGuide.kt:31)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 33
    :cond_9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 268
    .local v2, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 33
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object/from16 v24, v4

    check-cast v24, Landroid/content/Context;

    .line 34
    .local v24, "context":Landroid/content/Context;
    const/4 v0, 0x0

    move v1, v0

    .restart local v1    # "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v4, 0x2e20b340

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(rememberCoroutineScope)488@20446L144:Effects.kt#9igjgp"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 269
    nop

    .line 271
    move-object v4, v15

    .line 272
    .local v4, "composer$iv":Landroidx/compose/runtime/Composer;
    move v5, v0

    .local v5, "$changed$iv$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$remember":I
    const v10, -0x1d58f75c

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 273
    const/4 v12, 0x0

    .local v12, "invalid$iv$iv$iv":Z
    move-object v13, v15

    .local v13, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 274
    .local v16, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 275
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v3, v10, :cond_a

    .line 276
    const/4 v10, 0x0

    .line 277
    .local v10, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 278
    const/16 v18, 0x0

    .line 279
    .local v18, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v18, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 278
    .end local v18    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v0, v18

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v4}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 277
    move/from16 v18, v1

    .end local v1    # "$changed$iv":I
    .local v18, "$changed$iv":I
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 276
    .end local v10    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v1

    .line 280
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 281
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 282
    .end local v18    # "$changed$iv":I
    .restart local v1    # "$changed$iv":I
    :cond_a
    move/from16 v18, v1

    .end local v1    # "$changed$iv":I
    .restart local v18    # "$changed$iv":I
    move-object v0, v3

    .line 275
    :goto_6
    nop

    .line 274
    .end local v3    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 273
    .end local v12    # "invalid$iv$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 272
    .end local v5    # "$changed$iv$iv":I
    .end local v9    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 283
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v21

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 34
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v2    # "$i$f$rememberCoroutineScope":I
    .end local v4    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$changed$iv":I
    nop

    .line 35
    .local v21, "scope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v9, 0x1

    const/4 v0, 0x0

    invoke-static {v0, v15, v0, v9}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v25

    .line 38
    .local v25, "scrollState":Landroidx/compose/foundation/ScrollState;
    move v1, v0

    .restart local v1    # "$changed$iv":I
    const/4 v0, 0x0

    const v2, -0x1d58f75c

    .local v0, "$i$f$remember":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v3, v15

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 285
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 286
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    if-ne v5, v12, :cond_b

    .line 287
    const/4 v12, 0x0

    .line 38
    .local v12, "$i$a$-remember-RootPermissionGuideKt$RootPermissionGuide$status$2":I
    const/4 v9, 0x2

    invoke-static {v13, v13, v9, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    .line 287
    .end local v12    # "$i$a$-remember-RootPermissionGuideKt$RootPermissionGuide$status$2":I
    move-object v9, v12

    .line 288
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 289
    nop

    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_7

    .line 290
    :cond_b
    move-object v9, v5

    .line 286
    :goto_7
    nop

    .line 285
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 284
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 38
    .end local v0    # "$i$f$remember":I
    .end local v1    # "$changed$iv":I
    move-object/from16 v26, v9

    check-cast v26, Landroidx/compose/runtime/MutableState;

    .line 39
    .local v26, "status$delegate":Landroidx/compose/runtime/MutableState;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    const v2, -0x1d58f75c

    .local v1, "$i$f$remember":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x0

    .restart local v2    # "invalid$iv$iv":Z
    move-object v3, v15

    .restart local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 292
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 293
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v5, v10, :cond_c

    .line 294
    const/4 v10, 0x0

    .line 39
    .local v10, "$i$a$-remember-RootPermissionGuideKt$RootPermissionGuide$isChecking$2":I
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v11, 0x2

    invoke-static {v12, v13, v11, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    .line 294
    .end local v10    # "$i$a$-remember-RootPermissionGuideKt$RootPermissionGuide$isChecking$2":I
    nop

    .line 295
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 296
    nop

    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 297
    :cond_c
    move-object v10, v5

    .line 293
    :goto_8
    nop

    .line 292
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 291
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 39
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object/from16 v27, v10

    check-cast v27, Landroidx/compose/runtime/MutableState;

    .line 42
    .local v27, "isChecking$delegate":Landroidx/compose/runtime/MutableState;
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v10, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;

    const/4 v5, 0x0

    move-object v0, v10

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x46

    invoke-static {v9, v10, v15, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 59
    new-instance v0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2;

    move-object/from16 v16, v0

    move-object/from16 v17, v23

    move-object/from16 v18, v26

    move-object/from16 v19, v25

    move-object/from16 v20, v24

    move-object/from16 v22, v27

    invoke-direct/range {v16 .. v22}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V

    const v1, 0x3a577b16

    const/4 v2, 0x1

    invoke-static {v15, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0xc00

    const/4 v1, 0x7

    move-object v13, v15

    move v2, v14

    .end local v14    # "$dirty":I
    .local v2, "$dirty":I
    move v14, v0

    move-object v0, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    move v15, v1

    invoke-static/range {v9 .. v15}, Lcom/pandasu/turbo/ui/theme/ThemeKt;->RootGuardTheme(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 266
    .end local v21    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local v24    # "context":Landroid/content/Context;
    .end local v25    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .end local v26    # "status$delegate":Landroidx/compose/runtime/MutableState;
    .end local v27    # "isChecking$delegate":Landroidx/compose/runtime/MutableState;
    :cond_d
    move-object/from16 v4, v23

    .end local v23    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v3, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$3;

    invoke-direct {v3, v6, v4, v7, v8}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method private static final RootPermissionGuide$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .locals 4
    .param p0, "$status$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;)",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;"
        }
    .end annotation

    .line 38
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 298
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 38
    return-object v0
.end method

.method private static final RootPermissionGuide$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V
    .locals 4
    .param p0, "$status$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ")V"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 299
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 300
    nop

    .line 38
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final RootPermissionGuide$lambda$4(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$isChecking$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 39
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 301
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 39
    return v0
.end method

.method private static final RootPermissionGuide$lambda$5(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$isChecking$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 302
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 303
    nop

    .line 39
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public static final synthetic access$RootPermissionGuide$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .locals 1
    .param p0, "$status$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->RootPermissionGuide$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$RootPermissionGuide$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V
    .locals 0
    .param p0, "$status$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 1
    invoke-static {p0, p1}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->RootPermissionGuide$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V

    return-void
.end method

.method public static final synthetic access$RootPermissionGuide$lambda$4(Landroidx/compose/runtime/MutableState;)Z
    .locals 1
    .param p0, "$isChecking$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->RootPermissionGuide$lambda$4(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$RootPermissionGuide$lambda$5(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$isChecking$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z

    .line 1
    invoke-static {p0, p1}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->RootPermissionGuide$lambda$5(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
