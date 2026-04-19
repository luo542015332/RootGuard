.class public final Lcom/pandasu/turbo/ui/navigation/NavHostKt;
.super Ljava/lang/Object;
.source "NavHost.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a+\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "RootGuardNavHost",
        "",
        "navController",
        "Landroidx/navigation/NavHostController;",
        "startDestination",
        "",
        "hasRootPermission",
        "",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V",
        "app_debug"
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
.method public static final RootGuardNavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "hasRootPermission"    # Z
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 28
    move/from16 v6, p4

    const v0, 0x11f56c50

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(RootGuardNavHost)P(1,2)24@972L23,28@1093L1796:NavHost.kt#ygmzyh"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    and-int/lit8 v3, v6, 0x70

    if-nez v3, :cond_3

    and-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_1

    move-object/from16 v3, p1

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    :cond_2
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_3
    move-object/from16 v3, p1

    :goto_1
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_4

    or-int/lit16 v1, v1, 0x180

    move/from16 v7, p2

    goto :goto_3

    :cond_4
    and-int/lit16 v7, v6, 0x380

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x100

    goto :goto_2

    :cond_5
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v1, v8

    goto :goto_3

    :cond_6
    move/from16 v7, p2

    :goto_3
    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    and-int/lit16 v8, v1, 0x2db

    const/16 v9, 0x92

    if-ne v8, v9, :cond_8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    .line 76
    :cond_7
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v10, v1

    move-object v8, v3

    move v9, v7

    move-object/from16 v7, p0

    goto/16 :goto_8

    .line 28
    :cond_8
    :goto_4
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v8, v6, 0x1

    const/16 v9, 0x8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v2, :cond_a

    and-int/lit8 v1, v1, -0xf

    :cond_a
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_b

    and-int/lit8 v1, v1, -0x71

    :cond_b
    move-object/from16 v2, p0

    move v4, v7

    goto :goto_7

    .line 28
    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    .line 25
    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/navigation/Navigator;

    invoke-static {v2, v5, v9}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v2

    .end local p0    # "navController":Landroidx/navigation/NavHostController;
    .local v2, "navController":Landroidx/navigation/NavHostController;
    and-int/lit8 v1, v1, -0xf

    goto :goto_6

    .line 28
    .end local v2    # "navController":Landroidx/navigation/NavHostController;
    .restart local p0    # "navController":Landroidx/navigation/NavHostController;
    :cond_d
    move-object/from16 v2, p0

    .line 25
    .end local p0    # "navController":Landroidx/navigation/NavHostController;
    .restart local v2    # "navController":Landroidx/navigation/NavHostController;
    :goto_6
    and-int/lit8 v8, p5, 0x2

    if-eqz v8, :cond_e

    .line 26
    sget-object v8, Lcom/pandasu/turbo/ui/navigation/Screen$Home;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$Home;

    invoke-virtual {v8}, Lcom/pandasu/turbo/ui/navigation/Screen$Home;->getRoute()Ljava/lang/String;

    move-result-object v3

    .end local p1    # "startDestination":Ljava/lang/String;
    .local v3, "startDestination":Ljava/lang/String;
    and-int/lit8 v1, v1, -0x71

    :cond_e
    if-eqz v4, :cond_f

    .line 27
    const/4 v4, 0x1

    .end local p2    # "hasRootPermission":Z
    .local v4, "hasRootPermission":Z
    goto :goto_7

    .line 26
    .end local v4    # "hasRootPermission":Z
    .restart local p2    # "hasRootPermission":Z
    :cond_f
    move v4, v7

    .line 27
    .end local p2    # "hasRootPermission":Z
    .restart local v4    # "hasRootPermission":Z
    :goto_7
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 28
    const/4 v7, -0x1

    const-string v8, "com.pandasu.turbo.ui.navigation.RootGuardNavHost (NavHost.kt:27)"

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 30
    :cond_10
    nop

    .line 31
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 29
    new-instance v7, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;

    invoke-direct {v7, v4, v2}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;-><init>(ZLandroidx/navigation/NavHostController;)V

    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v7, v1, 0x70

    or-int/lit8 v18, v7, 0x8

    const/16 v19, 0x1fc

    move-object v7, v2

    move-object v8, v3

    move-object v9, v0

    move-object/from16 v17, v5

    invoke-static/range {v7 .. v19}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 76
    :cond_11
    move v10, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    .end local v1    # "$dirty":I
    .end local v2    # "navController":Landroidx/navigation/NavHostController;
    .end local v3    # "startDestination":Ljava/lang/String;
    .end local v4    # "hasRootPermission":Z
    .local v7, "navController":Landroidx/navigation/NavHostController;
    .local v8, "startDestination":Ljava/lang/String;
    .local v9, "hasRootPermission":Z
    .local v10, "$dirty":I
    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_12

    new-instance v12, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$2;

    move-object v0, v12

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move/from16 v4, p4

    move-object v13, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$2;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;ZII)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_9

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_12
    move-object v13, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_9
    return-void
.end method
