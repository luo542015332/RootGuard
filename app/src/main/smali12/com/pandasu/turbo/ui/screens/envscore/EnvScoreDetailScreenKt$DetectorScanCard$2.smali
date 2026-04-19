.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EnvScoreDetailScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->DetectorScanCard(Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $isLoading:Z

.field final synthetic $isScanning:Z

.field final synthetic $onAutoIsolate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onRescan:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$results:Ljava/util/List;

    iput-boolean p2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$isScanning:Z

    iput-boolean p3, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$isLoading:Z

    iput-object p4, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$onRescan:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$onAutoIsolate:Lkotlin/jvm/functions/Function0;

    iput p6, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$$changed:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$results:Ljava/util/List;

    iget-boolean v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$isScanning:Z

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$isLoading:Z

    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$onRescan:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$onAutoIsolate:Lkotlin/jvm/functions/Function0;

    iget v5, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$2;->$$changed:I

    or-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->DetectorScanCard(Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
