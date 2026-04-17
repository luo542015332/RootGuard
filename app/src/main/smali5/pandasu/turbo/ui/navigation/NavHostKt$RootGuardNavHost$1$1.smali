.class final Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavHost.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->invoke(Landroidx/navigation/NavGraphBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "it",
        "Landroidx/navigation/NavBackStackEntry;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $hasRootPermission:Z

.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method constructor <init>(ZLandroidx/navigation/NavHostController;)V
    .registers 4

    iput-boolean p1, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;->$hasRootPermission:Z

    iput-object p2, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;->$navController:Landroidx/navigation/NavHostController;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 34
    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object v1, p2

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;->invoke(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V
    .registers 21
    .param p1, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p2, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    const-string v1, "$this$composable"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C34@1267L458:NavHost.kt#ygmzyh"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 35
    const v1, -0x1d0985ce

    const/4 v4, -0x1

    const-string v5, "com.pandasu.turbo.ui.navigation.RootGuardNavHost.<anonymous>.<anonymous> (NavHost.kt:34)"

    move/from16 v15, p4

    invoke-static {v1, v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2b

    .line 0
    :cond_29
    move/from16 v15, p4

    .line 36
    :goto_2b
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 35
    sget-object v1, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1$1;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1$1;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1$2;

    iget-object v7, v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v1, v7}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1$2;-><init>(Landroidx/navigation/NavHostController;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1$3;

    iget-object v8, v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v1, v8}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1$3;-><init>(Landroidx/navigation/NavHostController;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 43
    iget-boolean v9, v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;->$hasRootPermission:Z

    const/4 v10, 0x0

    const/16 v12, 0x1b6

    const/16 v13, 0x40

    .line 35
    move-object/from16 v11, p3

    invoke-static/range {v4 .. v13}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 45
    :cond_5b
    return-void
.end method
