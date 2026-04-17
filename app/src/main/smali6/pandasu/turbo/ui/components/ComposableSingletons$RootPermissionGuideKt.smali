.class public final Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;
.super Ljava/lang/Object;
.source "RootPermissionGuide.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public static lambda-2:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;

    invoke-direct {v0}, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;->INSTANCE:Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;

    .line 201
    sget-object v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt$lambda-1$1;->INSTANCE:Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt$lambda-1$1;

    const v1, 0x4c249e24    # 4.3153552E7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    .line 220
    const v0, -0x6302dd4d

    sget-object v1, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt$lambda-2$1;->INSTANCE:Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt$lambda-2$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getLambda-2$app_debug()Lkotlin/jvm/functions/Function3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/ui/components/ComposableSingletons$RootPermissionGuideKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
