.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;
.super Ljava/lang/Object;
.source "EasingFunctions.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/EasingFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "fraction"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .registers 9
    .param p1, "fraction"    # F

    .line 177
    const-wide v0, 0x4000c152382d7365L    # 2.0943951023931953

    .line 179
    .local v0, "c4":D
    nop

    .line 180
    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_f

    move v3, v4

    goto :goto_10

    :cond_f
    move v3, v5

    :goto_10
    if-eqz v3, :cond_13

    goto :goto_3a

    .line 181
    :cond_13
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v4, v5

    :goto_1b
    if-eqz v4, :cond_1e

    goto :goto_3a

    .line 183
    :cond_1e
    const/high16 v2, 0x40000000    # 2.0f

    float-to-double v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v5, p1, v4

    sub-float/2addr v5, v4

    float-to-double v5, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    float-to-double v2, v2

    .line 184
    mul-float/2addr v4, p1

    const/high16 v5, 0x412c0000    # 10.75f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 183
    mul-double/2addr v2, v4

    .line 184
    double-to-float v2, v2

    .line 179
    :goto_3a
    return v2
.end method
