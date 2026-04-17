.class final Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavHost.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/navigation/NavHostKt;->RootGuardNavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavGraphBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/navigation/NavGraphBuilder;",
        "invoke"
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

    iput-boolean p1, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$hasRootPermission:Z

    iput-object p2, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$navController:Landroidx/navigation/NavHostController;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->invoke(Landroidx/navigation/NavGraphBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/navigation/NavGraphBuilder;)V
    .registers 15
    .param p1, "$this$NavHost"    # Landroidx/navigation/NavGraphBuilder;

    const-string v0, "$this$NavHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/pandasu/turbo/ui/navigation/Screen$Home;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$Home;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/navigation/Screen$Home;->getRoute()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;

    iget-boolean v1, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$hasRootPermission:Z

    iget-object v9, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v0, v1, v9}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$1;-><init>(ZLandroidx/navigation/NavHostController;)V

    const v1, -0x1d0985ce

    const/4 v12, 0x1

    invoke-static {v1, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function4;

    const/16 v10, 0x7e

    const/4 v11, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 47
    nop

    .line 48
    sget-object v0, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;->getRoute()Ljava/lang/String;

    move-result-object v2

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/navigation/NamedNavArgument;

    sget-object v1, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$2;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v3, "packageName"

    invoke-static {v3, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 51
    sget-object v1, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$3;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$3;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v3, "appName"

    invoke-static {v3, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    aput-object v1, v0, v12

    .line 50
    nop

    .line 49
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 47
    nop

    .line 53
    new-instance v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$4;

    iget-boolean v1, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$hasRootPermission:Z

    iget-object v9, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v0, v1, v9}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$4;-><init>(ZLandroidx/navigation/NavHostController;)V

    const v1, -0x3dc03b17

    invoke-static {v1, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function4;

    .line 47
    const/16 v10, 0x7c

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/pandasu/turbo/ui/navigation/Screen$Logs;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$Logs;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/navigation/Screen$Logs;->getRoute()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$5;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$5;-><init>(Landroidx/navigation/NavHostController;)V

    const v1, 0x44eedfea

    invoke-static {v1, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function4;

    const/16 v10, 0x7e

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/pandasu/turbo/ui/navigation/Screen$EnvScoreDetail;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$EnvScoreDetail;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/navigation/Screen$EnvScoreDetail;->getRoute()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$6;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/ui/navigation/NavHostKt$RootGuardNavHost$1$6;-><init>(Landroidx/navigation/NavHostController;)V

    const v1, -0x38620515

    invoke-static {v1, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function4;

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 75
    return-void
.end method
