.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;
.super Lkotlin/jvm/internal/Lambda;
.source "IsolationScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $hasRootPermission:Z

.field final synthetic $onNavigateBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onNavigateToLogs:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$onNavigateBack:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$onNavigateToLogs:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$hasRootPermission:Z

    iput-object p7, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput p8, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$$changed:I

    iput p9, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$$default:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .registers 13

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$appName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$onNavigateBack:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$onNavigateToLogs:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$hasRootPermission:Z

    iget-object v6, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget v7, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$$changed:I

    or-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    iget v9, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;->$$default:I

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
