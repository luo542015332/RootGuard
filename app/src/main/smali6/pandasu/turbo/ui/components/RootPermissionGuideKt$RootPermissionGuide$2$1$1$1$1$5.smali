.class final Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "RootPermissionGuide.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isChecking$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $status$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$isChecking$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$status$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 172
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 9

    .line 174
    iget-object v0, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5$1;

    iget-object v4, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$isChecking$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5;->$status$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$5$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 179
    return-void
.end method
