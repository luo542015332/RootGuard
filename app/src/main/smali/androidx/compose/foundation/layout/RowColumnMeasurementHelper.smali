.class public final Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
.super Ljava/lang/Object;
.source "RowColumnMeasurementHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnMeasurementHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnMeasurementHelper.kt\nandroidx/compose/foundation/layout/RowColumnMeasurementHelper\n+ 2 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,331:1\n321#2:332\n321#2:333\n321#2:334\n320#2:335\n323#2:337\n321#2:338\n320#2:339\n323#2:340\n323#2:341\n322#2:342\n1#3:336\n*S KotlinDebug\n*F\n+ 1 RowColumnMeasurementHelper.kt\nandroidx/compose/foundation/layout/RowColumnMeasurementHelper\n*L\n111#1:332\n143#1:333\n144#1:334\n146#1:335\n181#1:337\n191#1:338\n230#1:339\n232#1:340\n235#1:341\n240#1:342\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001Br\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012*\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J2\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00162\u0008\u0010-\u001a\u0004\u0018\u00010)2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u0006H\u0002J(\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00104\u001a\u000205H\u0002J3\u00106\u001a\u0002072\u0006\u00104\u001a\u0002052\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u0006\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=J&\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u0002072\u0006\u0010B\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0008J\n\u0010\r\u001a\u00020\u0006*\u00020\u0016J\n\u0010C\u001a\u00020\u0006*\u00020\u0016R5\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001b\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R\u0018\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010*\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006D"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;",
        "",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "arrangement",
        "Lkotlin/Function5;",
        "",
        "",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Landroidx/compose/ui/unit/Density;",
        "",
        "arrangementSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "crossAxisSize",
        "Landroidx/compose/foundation/layout/SizeMode;",
        "crossAxisAlignment",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getArrangement",
        "()Lkotlin/jvm/functions/Function5;",
        "getArrangementSpacing-D9Ej5fM",
        "()F",
        "F",
        "getCrossAxisAlignment",
        "()Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "getCrossAxisSize",
        "()Landroidx/compose/foundation/layout/SizeMode;",
        "getMeasurables",
        "()Ljava/util/List;",
        "getOrientation",
        "()Landroidx/compose/foundation/layout/LayoutOrientation;",
        "getPlaceables",
        "()[Landroidx/compose/ui/layout/Placeable;",
        "[Landroidx/compose/ui/layout/Placeable;",
        "rowColumnParentData",
        "Landroidx/compose/foundation/layout/RowColumnParentData;",
        "[Landroidx/compose/foundation/layout/RowColumnParentData;",
        "getCrossAxisPosition",
        "placeable",
        "parentData",
        "crossAxisLayoutSize",
        "layoutDirection",
        "beforeCrossAxisAlignmentLine",
        "mainAxisPositions",
        "mainAxisLayoutSize",
        "childrenMainAxisSize",
        "measureScope",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measureWithoutPlacing",
        "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "startIndex",
        "endIndex",
        "measureWithoutPlacing-_EkL_-Y",
        "(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "placeHelper",
        "placeableScope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "measureResult",
        "crossAxisOffset",
        "mainAxisSize",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final arrangement:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final arrangementSpacing:F

.field private final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private final crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field private final measurables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;

.field private final rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;)V
    .locals 4
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p2, "arrangement"    # Lkotlin/jvm/functions/Function5;
    .param p3, "arrangementSpacing"    # F
    .param p4, "crossAxisSize"    # Landroidx/compose/foundation/layout/SizeMode;
    .param p5, "crossAxisAlignment"    # Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .param p6, "measurables"    # Ljava/util/List;
    .param p7, "placeables"    # [Landroidx/compose/ui/layout/Placeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lkotlin/Unit;",
            ">;F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;[",
            "Landroidx/compose/ui/layout/Placeable;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "arrangement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "crossAxisSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "crossAxisAlignment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "measurables"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "placeables"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 51
    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangement:Lkotlin/jvm/functions/Function5;

    .line 52
    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    .line 53
    iput-object p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 54
    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 55
    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    .line 56
    iput-object p7, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 59
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    iget-object v3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 49
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;)V

    return-void
.end method

.method private final getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I
    .locals 4
    .param p1, "placeable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "parentData"    # Landroidx/compose/foundation/layout/RowColumnParentData;
    .param p3, "crossAxisLayoutSize"    # I
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p5, "beforeCrossAxisAlignmentLine"    # I

    .line 287
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnParentData;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 288
    .local v0, "childCrossAlignment":Landroidx/compose/foundation/layout/CrossAxisAlignment;
    :cond_1
    nop

    .line 289
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    sub-int v1, p3, v1

    .line 290
    iget-object v2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v3, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v2, v3, :cond_2

    .line 291
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    .line 293
    :cond_2
    move-object v2, p4

    .line 295
    :goto_0
    nop

    .line 296
    nop

    .line 288
    invoke-virtual {v0, v1, v2, p1, p5}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    move-result v1

    return v1
.end method

.method private final mainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)[I
    .locals 6
    .param p1, "mainAxisLayoutSize"    # I
    .param p2, "childrenMainAxisSize"    # [I
    .param p3, "mainAxisPositions"    # [I
    .param p4, "measureScope"    # Landroidx/compose/ui/layout/MeasureScope;

    .line 270
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangement:Lkotlin/jvm/functions/Function5;

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 272
    nop

    .line 273
    invoke-interface {p4}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    .line 274
    nop

    .line 275
    nop

    .line 270
    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-object p3
.end method


# virtual methods
.method public final crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2
    .param p1, "$this$crossAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getArrangement()Lkotlin/jvm/functions/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangement:Lkotlin/jvm/functions/Function5;

    return-object v0
.end method

.method public final getArrangementSpacing-D9Ej5fM()F
    .locals 1

    .line 52
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    return v0
.end method

.method public final getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public final getCrossAxisSize()Landroidx/compose/foundation/layout/SizeMode;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    return-object v0
.end method

.method public final getMeasurables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    return-object v0
.end method

.method public final getOrientation()Landroidx/compose/foundation/layout/LayoutOrientation;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    return-object v0
.end method

.method public final getPlaceables()[Landroidx/compose/ui/layout/Placeable;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    return-object v0
.end method

.method public final mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2
    .param p1, "$this$mainAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final measureWithoutPlacing-_EkL_-Y(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    .locals 45
    .param p1, "measureScope"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "constraints"    # J
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p5

    const-string/jumbo v2, "measureScope"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    move-wide/from16 v10, p2

    invoke-static {v10, v11, v2}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v20

    .line 88
    .local v20, "constraints":J
    move-object/from16 v2, p1

    .local v2, "$this$measureWithoutPlacing__EkL__Y_u24lambda_u240":Landroidx/compose/ui/layout/MeasureScope;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-with-RowColumnMeasurementHelper$measureWithoutPlacing$arrangementSpacingPx$1":I
    iget v4, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    invoke-interface {v2, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    int-to-long v2, v4

    .line 88
    .end local v2    # "$this$measureWithoutPlacing__EkL__Y_u24lambda_u240":Landroidx/compose/ui/layout/MeasureScope;
    .end local v3    # "$i$a$-with-RowColumnMeasurementHelper$measureWithoutPlacing$arrangementSpacingPx$1":I
    move-wide v7, v2

    .line 92
    .local v7, "arrangementSpacingPx":J
    const/4 v2, 0x0

    .line 93
    .local v2, "totalWeight":F
    const-wide/16 v3, 0x0

    .line 94
    .local v3, "fixedSpace":J
    const/4 v5, 0x0

    .line 95
    .local v5, "crossAxisSpace":I
    const/4 v6, 0x0

    .line 97
    .local v6, "weightChildrenCount":I
    const/4 v12, 0x0

    .line 98
    .local v12, "anyAlignBy":Z
    sub-int v15, v9, p4

    .line 101
    .local v15, "subSize":I
    const/4 v13, 0x0

    .line 102
    .local v13, "spaceAfterLastNoWeight":I
    move/from16 v14, p4

    move/from16 v22, v2

    move/from16 v23, v6

    move v2, v12

    move v6, v13

    .end local v12    # "anyAlignBy":Z
    .end local v13    # "spaceAfterLastNoWeight":I
    .local v2, "anyAlignBy":Z
    .local v6, "spaceAfterLastNoWeight":I
    .local v14, "i":I
    .local v22, "totalWeight":F
    .local v23, "weightChildrenCount":I
    :goto_0
    const/16 v24, 0x1

    if-ge v14, v9, :cond_5

    .line 103
    iget-object v12, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 104
    .local v12, "child":Landroidx/compose/ui/layout/Measurable;
    iget-object v13, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v26, v13, v14

    .line 105
    .local v26, "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    invoke-static/range {v26 .. v26}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v27

    .line 107
    .local v27, "weight":F
    const/4 v13, 0x0

    cmpl-float v13, v27, v13

    if-lez v13, :cond_0

    .line 108
    add-float v22, v22, v27

    add-int/lit8 v23, v23, 0x1

    .line 109
    move/from16 v29, v14

    move/from16 v33, v15

    goto/16 :goto_4

    .line 111
    :cond_0
    const/4 v13, 0x0

    .line 332
    .local v13, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v13

    .line 111
    .end local v13    # "$i$f$getMainAxisMax-impl":I
    nop

    .line 112
    .local v13, "mainAxisMax":I
    iget-object v10, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v10, v10, v14

    if-nez v10, :cond_2

    .line 114
    nop

    .line 115
    nop

    .line 116
    const v11, 0x7fffffff

    if-ne v13, v11, :cond_1

    .line 117
    move-object/from16 v28, v12

    move/from16 v29, v13

    const v10, 0x7fffffff

    const-wide/16 v12, 0x0

    goto :goto_1

    .line 119
    :cond_1
    int-to-long v10, v13

    sub-long/2addr v10, v3

    move-object/from16 v28, v12

    move/from16 v29, v13

    const-wide/16 v12, 0x0

    .end local v12    # "child":Landroidx/compose/ui/layout/Measurable;
    .end local v13    # "mainAxisMax":I
    .local v28, "child":Landroidx/compose/ui/layout/Measurable;
    .local v29, "mainAxisMax":I
    invoke-static {v10, v11, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    .line 121
    :goto_1
    const/16 v16, 0x0

    .line 114
    const/16 v17, 0x0

    const/16 v18, 0x8

    const/4 v11, 0x0

    move-object/from16 v31, v28

    move/from16 v32, v29

    move/from16 v28, v2

    move-wide v1, v12

    .end local v2    # "anyAlignBy":Z
    .end local v29    # "mainAxisMax":I
    .local v28, "anyAlignBy":Z
    .local v31, "child":Landroidx/compose/ui/layout/Measurable;
    .local v32, "mainAxisMax":I
    move-wide/from16 v12, v20

    move/from16 v29, v14

    const/4 v14, 0x0

    .end local v14    # "i":I
    .local v29, "i":I
    move/from16 v33, v15

    .end local v15    # "subSize":I
    .local v33, "subSize":I
    move v15, v10

    move-object/from16 v19, v11

    invoke-static/range {v12 .. v19}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 122
    iget-object v12, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v10, v11, v12}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v10

    .line 112
    move-object/from16 v12, v31

    .end local v31    # "child":Landroidx/compose/ui/layout/Measurable;
    .restart local v12    # "child":Landroidx/compose/ui/layout/Measurable;
    invoke-interface {v12, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    goto :goto_2

    .end local v28    # "anyAlignBy":Z
    .end local v29    # "i":I
    .end local v32    # "mainAxisMax":I
    .end local v33    # "subSize":I
    .restart local v2    # "anyAlignBy":Z
    .restart local v13    # "mainAxisMax":I
    .restart local v14    # "i":I
    .restart local v15    # "subSize":I
    :cond_2
    move/from16 v28, v2

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v33, v15

    const-wide/16 v1, 0x0

    .line 124
    .end local v2    # "anyAlignBy":Z
    .end local v13    # "mainAxisMax":I
    .end local v14    # "i":I
    .end local v15    # "subSize":I
    .local v10, "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v28    # "anyAlignBy":Z
    .restart local v29    # "i":I
    .restart local v32    # "mainAxisMax":I
    .restart local v33    # "subSize":I
    :goto_2
    nop

    .line 125
    long-to-int v11, v7

    .line 126
    move/from16 v13, v32

    .end local v32    # "mainAxisMax":I
    .restart local v13    # "mainAxisMax":I
    int-to-long v14, v13

    sub-long/2addr v14, v3

    invoke-virtual {v0, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v14, v1

    .line 127
    const-wide/16 v1, 0x0

    invoke-static {v14, v15, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 124
    nop

    .line 129
    .end local v6    # "spaceAfterLastNoWeight":I
    .local v1, "spaceAfterLastNoWeight":I
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v2, v1

    int-to-long v14, v2

    add-long/2addr v3, v14

    .line 130
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    .end local v5    # "crossAxisSpace":I
    .local v2, "crossAxisSpace":I
    if-nez v28, :cond_4

    invoke-static/range {v26 .. v26}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/16 v24, 0x0

    :cond_4
    :goto_3
    move/from16 v5, v24

    .line 132
    .end local v28    # "anyAlignBy":Z
    .local v5, "anyAlignBy":Z
    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aput-object v10, v6, v29

    move v6, v1

    move/from16 v44, v5

    move v5, v2

    move/from16 v2, v44

    .line 102
    .end local v1    # "spaceAfterLastNoWeight":I
    .end local v10    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "child":Landroidx/compose/ui/layout/Measurable;
    .end local v13    # "mainAxisMax":I
    .end local v26    # "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    .end local v27    # "weight":F
    .local v2, "anyAlignBy":Z
    .local v5, "crossAxisSpace":I
    .restart local v6    # "spaceAfterLastNoWeight":I
    :goto_4
    add-int/lit8 v14, v29, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v10, p2

    move/from16 v15, v33

    .end local v29    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_0

    .end local v33    # "subSize":I
    .restart local v15    # "subSize":I
    :cond_5
    move/from16 v28, v2

    move/from16 v29, v14

    move/from16 v33, v15

    .line 136
    .end local v2    # "anyAlignBy":Z
    .end local v14    # "i":I
    .end local v15    # "subSize":I
    .restart local v28    # "anyAlignBy":Z
    .restart local v33    # "subSize":I
    const/4 v1, 0x0

    .line 137
    .local v1, "weightedSpace":I
    if-nez v23, :cond_6

    .line 139
    int-to-long v10, v6

    sub-long/2addr v3, v10

    move-wide/from16 v36, v3

    move v10, v5

    move/from16 v19, v6

    move-wide/from16 v31, v7

    const/4 v4, 0x0

    goto/16 :goto_e

    .line 143
    :cond_6
    const/4 v2, 0x0

    cmpl-float v10, v22, v2

    if-lez v10, :cond_7

    const/4 v2, 0x0

    .line 333
    .local v2, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 143
    .end local v2    # "$i$f$getMainAxisMax-impl":I
    const v10, 0x7fffffff

    if-eq v2, v10, :cond_7

    .line 144
    const/4 v2, 0x0

    .line 334
    .restart local v2    # "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .end local v2    # "$i$f$getMainAxisMax-impl":I
    goto :goto_5

    .line 146
    :cond_7
    const/4 v2, 0x0

    .line 335
    .local v2, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v10

    move v2, v10

    .line 143
    .end local v2    # "$i$f$getMainAxisMin-impl":I
    :goto_5
    nop

    .line 142
    nop

    .line 148
    .local v2, "targetSpace":I
    add-int/lit8 v10, v23, -0x1

    int-to-long v10, v10

    mul-long/2addr v10, v7

    .line 150
    .local v10, "arrangementSpacingTotal":J
    int-to-long v12, v2

    sub-long/2addr v12, v3

    sub-long/2addr v12, v10

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v12

    .line 149
    nop

    .line 152
    .local v12, "remainingToTarget":J
    const/4 v14, 0x0

    cmpl-float v15, v22, v14

    if-lez v15, :cond_8

    long-to-float v14, v12

    div-float v14, v14, v22

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    .line 153
    .local v14, "weightUnitSpace":F
    :goto_6
    invoke-static/range {p4 .. p5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "weightedSpace":I
    .local v19, "weightedSpace":I
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v26, v15

    check-cast v26, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v26

    .local v26, "it":I
    const/16 v27, 0x0

    .line 154
    .local v27, "$i$a$-sumOfInt-RowColumnMeasurementHelper$measureWithoutPlacing$remainder$1":I
    move/from16 v29, v2

    .end local v2    # "targetSpace":I
    .local v29, "targetSpace":I
    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v2, v2, v26

    invoke-static {v2}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v2

    mul-float/2addr v2, v14

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 153
    .end local v26    # "it":I
    .end local v27    # "$i$a$-sumOfInt-RowColumnMeasurementHelper$measureWithoutPlacing$remainder$1":I
    add-int/2addr v1, v2

    move/from16 v2, v29

    goto :goto_7

    .end local v29    # "targetSpace":I
    .restart local v2    # "targetSpace":I
    :cond_9
    move/from16 v29, v2

    .end local v2    # "targetSpace":I
    .restart local v29    # "targetSpace":I
    int-to-long v1, v1

    sub-long v1, v12, v1

    .line 157
    .local v1, "remainder":J
    move/from16 v15, p4

    move-wide/from16 v26, v1

    move/from16 v1, v19

    move/from16 v2, v28

    .end local v19    # "weightedSpace":I
    .end local v28    # "anyAlignBy":Z
    .local v1, "weightedSpace":I
    .local v2, "anyAlignBy":Z
    .local v15, "i":I
    .local v26, "remainder":J
    :goto_8
    if-ge v15, v9, :cond_10

    .line 158
    move/from16 v19, v6

    .end local v6    # "spaceAfterLastNoWeight":I
    .local v19, "spaceAfterLastNoWeight":I
    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v6, v6, v15

    if-nez v6, :cond_f

    .line 159
    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 160
    .local v6, "child":Landroidx/compose/ui/layout/Measurable;
    move-wide/from16 v31, v7

    .end local v7    # "arrangementSpacingPx":J
    .local v31, "arrangementSpacingPx":J
    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v7, v7, v15

    .line 161
    .local v7, "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v8

    .line 162
    .local v8, "weight":F
    const/16 v25, 0x0

    cmpl-float v28, v8, v25

    if-lez v28, :cond_a

    move/from16 v28, v24

    goto :goto_9

    :cond_a
    const/16 v28, 0x0

    :goto_9
    if-eqz v28, :cond_e

    .line 166
    move-wide/from16 v34, v12

    .end local v12    # "remainingToTarget":J
    .local v34, "remainingToTarget":J
    invoke-static/range {v26 .. v27}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v12

    .line 167
    .local v12, "remainderUnit":I
    move-wide/from16 v36, v3

    .end local v3    # "fixedSpace":J
    .local v36, "fixedSpace":J
    int-to-long v3, v12

    sub-long v26, v26, v3

    .line 168
    nop

    .line 169
    nop

    .line 170
    mul-float v3, v14, v8

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    add-int/2addr v3, v12

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 168
    nop

    .line 172
    .local v3, "childMainAxisSize":I
    nop

    .line 174
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v13

    if-eqz v13, :cond_b

    const v13, 0x7fffffff

    if-eq v3, v13, :cond_b

    .line 175
    move v13, v3

    goto :goto_a

    .line 177
    :cond_b
    move v13, v4

    .line 179
    :goto_a
    nop

    .line 180
    nop

    .line 181
    const/16 v28, 0x0

    .line 337
    .local v28, "$i$f$getCrossAxisMax-impl":I
    move/from16 v30, v8

    .end local v8    # "weight":F
    .local v30, "weight":F
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    .line 173
    .end local v28    # "$i$f$getCrossAxisMax-impl":I
    move/from16 v28, v12

    .end local v12    # "remainderUnit":I
    .local v28, "remainderUnit":I
    invoke-static {v13, v3, v4, v8}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v12

    .line 182
    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v12, v13, v8}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v12

    .line 172
    invoke-interface {v6, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    .line 184
    .local v8, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v12

    add-int/2addr v1, v12

    .line 185
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 186
    if-nez v2, :cond_d

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_b

    :cond_c
    move v12, v4

    goto :goto_c

    :cond_d
    :goto_b
    move/from16 v12, v24

    :goto_c
    move v2, v12

    .line 187
    iget-object v12, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aput-object v8, v12, v15

    goto :goto_d

    .line 336
    .end local v28    # "remainderUnit":I
    .end local v30    # "weight":F
    .end local v34    # "remainingToTarget":J
    .end local v36    # "fixedSpace":J
    .local v3, "fixedSpace":J
    .local v8, "weight":F
    .local v12, "remainingToTarget":J
    :cond_e
    move-wide/from16 v36, v3

    .end local v3    # "fixedSpace":J
    .restart local v36    # "fixedSpace":J
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$a$-check-RowColumnMeasurementHelper$measureWithoutPlacing$1":I
    nop

    .end local v3    # "$i$a$-check-RowColumnMeasurementHelper$measureWithoutPlacing$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "All weights <= 0 should have placeables"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v6    # "child":Landroidx/compose/ui/layout/Measurable;
    .end local v8    # "weight":F
    .end local v31    # "arrangementSpacingPx":J
    .end local v36    # "fixedSpace":J
    .local v3, "fixedSpace":J
    .local v7, "arrangementSpacingPx":J
    :cond_f
    move-wide/from16 v36, v3

    move-wide/from16 v31, v7

    move-wide/from16 v34, v12

    const/4 v4, 0x0

    const/16 v25, 0x0

    .line 157
    .end local v3    # "fixedSpace":J
    .end local v7    # "arrangementSpacingPx":J
    .end local v12    # "remainingToTarget":J
    .restart local v31    # "arrangementSpacingPx":J
    .restart local v34    # "remainingToTarget":J
    .restart local v36    # "fixedSpace":J
    :goto_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v19

    move-wide/from16 v7, v31

    move-wide/from16 v12, v34

    move-wide/from16 v3, v36

    goto/16 :goto_8

    .end local v19    # "spaceAfterLastNoWeight":I
    .end local v31    # "arrangementSpacingPx":J
    .end local v34    # "remainingToTarget":J
    .end local v36    # "fixedSpace":J
    .restart local v3    # "fixedSpace":J
    .local v6, "spaceAfterLastNoWeight":I
    .restart local v7    # "arrangementSpacingPx":J
    .restart local v12    # "remainingToTarget":J
    :cond_10
    move-wide/from16 v36, v3

    move/from16 v19, v6

    move-wide/from16 v31, v7

    move-wide/from16 v34, v12

    const/4 v4, 0x0

    .line 192
    .end local v3    # "fixedSpace":J
    .end local v6    # "spaceAfterLastNoWeight":I
    .end local v7    # "arrangementSpacingPx":J
    .end local v12    # "remainingToTarget":J
    .end local v15    # "i":I
    .restart local v19    # "spaceAfterLastNoWeight":I
    .restart local v31    # "arrangementSpacingPx":J
    .restart local v34    # "remainingToTarget":J
    .restart local v36    # "fixedSpace":J
    nop

    .line 190
    int-to-long v6, v1

    add-long v38, v6, v10

    .line 191
    const-wide/16 v40, 0x0

    const/4 v3, 0x0

    .line 338
    .local v3, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    .end local v3    # "$i$f$getMainAxisMax-impl":I
    int-to-long v6, v3

    .line 191
    sub-long v42, v6, v36

    invoke-static/range {v38 .. v43}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v6

    .line 192
    long-to-int v3, v6

    .line 190
    move v1, v3

    move/from16 v28, v2

    move v10, v5

    .line 195
    .end local v2    # "anyAlignBy":Z
    .end local v5    # "crossAxisSpace":I
    .end local v14    # "weightUnitSpace":F
    .end local v26    # "remainder":J
    .end local v29    # "targetSpace":I
    .end local v34    # "remainingToTarget":J
    .local v10, "crossAxisSpace":I
    .local v28, "anyAlignBy":Z
    :goto_e
    const/4 v2, 0x0

    .line 196
    .local v2, "beforeCrossAxisAlignmentLine":I
    const/4 v3, 0x0

    .line 197
    .local v3, "afterCrossAxisAlignmentLine":I
    if-eqz v28, :cond_16

    .line 198
    move/from16 v5, p4

    .local v5, "i":I
    :goto_f
    if-ge v5, v9, :cond_15

    .line 199
    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v6, v6, v5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    .local v6, "placeable":Landroidx/compose/ui/layout/Placeable;
    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v7, v7, v5

    .line 202
    .local v7, "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    nop

    .line 201
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v8

    .line 202
    if-eqz v8, :cond_11

    .line 201
    nop

    .line 202
    invoke-virtual {v8, v6}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_10

    :cond_11
    const/4 v8, 0x0

    .line 201
    :goto_10
    nop

    .line 203
    .local v8, "alignmentLinePosition":Ljava/lang/Integer;
    if-eqz v8, :cond_14

    .line 204
    nop

    .line 206
    move-object v11, v8

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "it":I
    const/4 v11, 0x0

    .line 207
    .local v11, "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$2":I
    const/high16 v13, -0x80000000

    if-eq v12, v13, :cond_12

    goto :goto_11

    :cond_12
    move v12, v4

    .line 206
    .end local v11    # "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$2":I
    .end local v12    # "it":I
    :goto_11
    nop

    .line 204
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 210
    nop

    .line 212
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    .line 214
    move-object v12, v8

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .restart local v12    # "it":I
    const/4 v14, 0x0

    .line 215
    .local v14, "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$3":I
    if-eq v12, v13, :cond_13

    .line 216
    move v13, v12

    goto :goto_12

    .line 218
    :cond_13
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v13

    .line 215
    :goto_12
    nop

    .line 214
    .end local v12    # "it":I
    .end local v14    # "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$3":I
    nop

    .line 212
    sub-int/2addr v11, v13

    .line 210
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 198
    .end local v6    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v7    # "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    .end local v8    # "alignmentLinePosition":Ljava/lang/Integer;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_15
    move v11, v2

    move v12, v3

    goto :goto_13

    .line 197
    .end local v5    # "i":I
    :cond_16
    move v11, v2

    move v12, v3

    .line 229
    .end local v2    # "beforeCrossAxisAlignmentLine":I
    .end local v3    # "afterCrossAxisAlignmentLine":I
    .local v11, "beforeCrossAxisAlignmentLine":I
    .local v12, "afterCrossAxisAlignmentLine":I
    :goto_13
    int-to-long v2, v1

    add-long v2, v36, v2

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 230
    const/4 v3, 0x0

    .line 339
    .local v3, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    .line 228
    .end local v3    # "$i$f$getMainAxisMin-impl":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 232
    .local v13, "mainAxisLayoutSize":I
    const/4 v2, 0x0

    .line 340
    .local v2, "$i$f$getCrossAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    .line 232
    .end local v2    # "$i$f$getCrossAxisMax-impl":I
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_17

    .line 233
    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    sget-object v3, Landroidx/compose/foundation/layout/SizeMode;->Expand:Landroidx/compose/foundation/layout/SizeMode;

    if-ne v2, v3, :cond_17

    .line 235
    const/4 v2, 0x0

    .line 341
    .restart local v2    # "$i$f$getCrossAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    move v3, v2

    .end local v2    # "$i$f$getCrossAxisMax-impl":I
    goto :goto_14

    .line 240
    :cond_17
    const/4 v2, 0x0

    .line 342
    .local v2, "$i$f$getCrossAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 241
    .end local v2    # "$i$f$getCrossAxisMin-impl":I
    add-int v3, v11, v12

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 237
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    .line 232
    :goto_14
    nop

    .line 245
    .local v3, "crossAxisLayoutSize":I
    move/from16 v14, v33

    .end local v33    # "subSize":I
    .local v14, "subSize":I
    new-array v2, v14, [I

    move v5, v4

    :goto_15
    if-ge v5, v14, :cond_18

    aput v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_18
    move-object v15, v2

    .line 246
    .local v15, "mainAxisPositions":[I
    new-array v2, v14, [I

    :goto_16
    if-ge v4, v14, :cond_19

    .line 247
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    add-int v6, v4, p4

    aget-object v5, v5, v6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 246
    goto :goto_16

    :cond_19
    move-object v8, v2

    .line 255
    .local v8, "childrenMainAxisSize":[I
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 256
    move-object/from16 v7, p1

    invoke-direct {v0, v13, v8, v15, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)[I

    move-result-object v16

    .line 250
    new-instance v17, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    .line 252
    nop

    .line 251
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 250
    move-object/from16 v2, v17

    move v4, v13

    move/from16 v5, p4

    move/from16 v18, v19

    .end local v19    # "spaceAfterLastNoWeight":I
    .local v18, "spaceAfterLastNoWeight":I
    move/from16 v6, p5

    move-wide/from16 v24, v31

    .end local v31    # "arrangementSpacingPx":J
    .local v24, "arrangementSpacingPx":J
    move v7, v11

    move-object/from16 v19, v8

    .end local v8    # "childrenMainAxisSize":[I
    .local v19, "childrenMainAxisSize":[I
    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;-><init>(IIIII[I)V

    return-object v17
.end method

.method public final placeHelper(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;ILandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 26
    .param p1, "placeableScope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p2, "measureResult"    # Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    .param p3, "crossAxisOffset"    # I
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v6, p0

    const-string/jumbo v0, "placeableScope"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "measureResult"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "layoutDirection"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    move-object/from16 v7, p1

    .local v7, "$this$placeHelper_u24lambda_u245":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/16 v16, 0x0

    .line 306
    .local v16, "$i$a$-with-RowColumnMeasurementHelper$placeHelper$1":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v0

    .local v0, "i":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getEndIndex()I

    move-result v12

    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 307
    iget-object v0, v6, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v24, v0, v11

    .line 308
    .local v24, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisPositions()[I

    move-result-object v25

    .line 310
    .local v25, "mainAxisPositions":[I
    nop

    .line 311
    nop

    .line 312
    iget-object v0, v6, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v2, v0

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result v3

    .line 314
    nop

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getBeforeCrossAxisAlignmentLine()I

    move-result v5

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I

    move-result v0

    .line 316
    nop

    .line 310
    add-int v0, v0, p3

    .line 317
    .local v0, "crossAxisPosition":I
    iget-object v1, v6, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v2, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v1, v2, :cond_1

    .line 318
    nop

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v1

    sub-int v1, v11, v1

    aget v9, v25, v1

    .line 320
    nop

    .line 318
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v8, v24

    move v10, v0

    move v4, v11

    .end local v11    # "i":I
    .local v4, "i":I
    move v11, v1

    move v1, v12

    move v12, v2

    move-object v13, v3

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_2

    .line 323
    .end local v4    # "i":I
    .restart local v11    # "i":I
    :cond_1
    move v4, v11

    move v1, v12

    .line 324
    .end local v11    # "i":I
    .restart local v4    # "i":I
    nop

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v2

    sub-int v11, v4, v2

    aget v20, v25, v11

    .line 323
    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v17, v7

    move-object/from16 v18, v24

    move/from16 v19, v0

    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 306
    .end local v0    # "crossAxisPosition":I
    .end local v24    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v25    # "mainAxisPositions":[I
    :goto_2
    add-int/lit8 v11, v4, 0x1

    move-object/from16 v13, p4

    move v12, v1

    .end local v4    # "i":I
    .restart local v11    # "i":I
    goto :goto_0

    .line 329
    .end local v11    # "i":I
    :cond_2
    nop

    .line 305
    .end local v7    # "$this$placeHelper_u24lambda_u245":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v16    # "$i$a$-with-RowColumnMeasurementHelper$placeHelper$1":I
    nop

    .line 330
    return-void
.end method
