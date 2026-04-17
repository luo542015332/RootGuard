.class public final Landroidx/compose/ui/graphics/colorspace/TransferParameters;
.super Ljava/lang/Object;
.source "TransferParameters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003JO\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/TransferParameters;",
        "",
        "gamma",
        "",
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "(DDDDDDD)V",
        "getA",
        "()D",
        "getB",
        "getC",
        "getD",
        "getE",
        "getF",
        "getGamma",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "ui-graphics_release"
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
.field private final a:D

.field private final b:D

.field private final c:D

.field private final d:D

.field private final e:D

.field private final f:D

.field private final gamma:D


# direct methods
.method public constructor <init>(DDDDDDD)V
    .registers 37
    .param p1, "gamma"    # D
    .param p3, "a"    # D
    .param p5, "b"    # D
    .param p7, "c"    # D
    .param p9, "d"    # D
    .param p11, "e"    # D
    .param p13, "f"    # D

    .line 35
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v1, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    .line 39
    iput-wide v3, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    .line 41
    move-wide/from16 v9, p5

    iput-wide v9, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    .line 43
    iput-wide v5, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    .line 45
    iput-wide v7, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    .line 47
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    .line 49
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    .line 51
    nop

    .line 52
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    .line 53
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_107

    .line 60
    const-wide/16 v15, 0x0

    cmpl-double v17, v7, v15

    if-ltz v17, :cond_ec

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v7, v17

    if-gtz v19, :cond_ec

    .line 67
    cmpg-double v19, v7, v15

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez v19, :cond_63

    move/from16 v19, v20

    goto :goto_65

    :cond_63
    move/from16 v19, v21

    :goto_65
    if-eqz v19, :cond_88

    cmpg-double v19, v3, v15

    if-nez v19, :cond_6e

    move/from16 v19, v20

    goto :goto_70

    :cond_6e
    move/from16 v19, v21

    :goto_70
    if-nez v19, :cond_7e

    cmpg-double v19, v1, v15

    if-nez v19, :cond_79

    move/from16 v19, v20

    goto :goto_7b

    :cond_79
    move/from16 v19, v21

    :goto_7b
    if-nez v19, :cond_7e

    goto :goto_88

    .line 68
    :cond_7e
    new-instance v15, Ljava/lang/IllegalArgumentException;

    .line 69
    nop

    .line 68
    const-string/jumbo v0, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 73
    :cond_88
    :goto_88
    cmpl-double v0, v7, v17

    if-ltz v0, :cond_a2

    cmpg-double v0, v5, v15

    if-nez v0, :cond_93

    move/from16 v0, v20

    goto :goto_95

    :cond_93
    move/from16 v0, v21

    :goto_95
    if-nez v0, :cond_98

    goto :goto_a2

    .line 74
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    nop

    .line 74
    const-string/jumbo v15, "Parameter c is zero, the transfer function is constant"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a2
    :goto_a2
    cmpg-double v0, v3, v15

    if-nez v0, :cond_a9

    move/from16 v0, v20

    goto :goto_ab

    :cond_a9
    move/from16 v0, v21

    :goto_ab
    if-nez v0, :cond_b8

    cmpg-double v0, v1, v15

    if-nez v0, :cond_b4

    move/from16 v0, v20

    goto :goto_b6

    :cond_b4
    move/from16 v0, v21

    :goto_b6
    if-eqz v0, :cond_c1

    :cond_b8
    cmpg-double v0, v5, v15

    if-nez v0, :cond_bd

    goto :goto_bf

    :cond_bd
    move/from16 v20, v21

    :goto_bf
    if-nez v20, :cond_e2

    .line 86
    :cond_c1
    cmpg-double v0, v5, v15

    if-ltz v0, :cond_d9

    .line 90
    cmpg-double v0, v3, v15

    if-ltz v0, :cond_cf

    cmpg-double v0, v1, v15

    if-ltz v0, :cond_cf

    .line 98
    nop

    .line 35
    return-void

    .line 91
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    nop

    .line 91
    const-string/jumbo v15, "The transfer function must be positive or increasing"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "The transfer function must be increasing"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    nop

    .line 80
    const-string/jumbo v15, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Parameter d must be in the range [0..1], was "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    nop

    .line 62
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 35

    .line 35
    and-int/lit8 v0, p15, 0x20

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_8

    .line 47
    move-wide v14, v1

    goto :goto_a

    .line 35
    :cond_8
    move-wide/from16 v14, p11

    :goto_a
    and-int/lit8 v0, p15, 0x40

    if-eqz v0, :cond_11

    .line 49
    move-wide/from16 v16, v1

    goto :goto_13

    .line 35
    :cond_11
    move-wide/from16 v16, p13

    :goto_13
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-direct/range {v3 .. v17}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDD)V

    .line 99
    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/graphics/colorspace/TransferParameters;DDDDDDDILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/TransferParameters;
    .registers 32

    move-object v0, p0

    and-int/lit8 v1, p15, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    goto :goto_a

    :cond_8
    move-wide/from16 v1, p1

    :goto_a
    and-int/lit8 v3, p15, 0x2

    if-eqz v3, :cond_11

    iget-wide v3, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    goto :goto_13

    :cond_11
    move-wide/from16 v3, p3

    :goto_13
    and-int/lit8 v5, p15, 0x4

    if-eqz v5, :cond_1a

    iget-wide v5, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    goto :goto_1c

    :cond_1a
    move-wide/from16 v5, p5

    :goto_1c
    and-int/lit8 v7, p15, 0x8

    if-eqz v7, :cond_23

    iget-wide v7, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    goto :goto_25

    :cond_23
    move-wide/from16 v7, p7

    :goto_25
    and-int/lit8 v9, p15, 0x10

    if-eqz v9, :cond_2c

    iget-wide v9, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    goto :goto_2e

    :cond_2c
    move-wide/from16 v9, p9

    :goto_2e
    and-int/lit8 v11, p15, 0x20

    if-eqz v11, :cond_35

    iget-wide v11, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    goto :goto_37

    :cond_35
    move-wide/from16 v11, p11

    :goto_37
    and-int/lit8 v13, p15, 0x40

    if-eqz v13, :cond_3e

    iget-wide v13, v0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    goto :goto_40

    :cond_3e
    move-wide/from16 v13, p13

    :goto_40
    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    invoke-virtual/range {p0 .. p14}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->copy(DDDDDDD)Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    return-wide v0
.end method

.method public final component2()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    return-wide v0
.end method

.method public final component3()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    return-wide v0
.end method

.method public final component4()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    return-wide v0
.end method

.method public final component5()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    return-wide v0
.end method

.method public final component6()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    return-wide v0
.end method

.method public final component7()D
    .registers 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    return-wide v0
.end method

.method public final copy(DDDDDDD)Landroidx/compose/ui/graphics/colorspace/TransferParameters;
    .registers 31

    new-instance v15, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object v0, v15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDD)V

    return-object v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_23

    return v2

    :cond_23
    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2e

    return v2

    :cond_2e
    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_39

    return v2

    :cond_39
    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_44

    return v2

    :cond_44
    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4f

    return v2

    :cond_4f
    iget-wide v3, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5a

    return v2

    :cond_5a
    return v0
.end method

.method public final getA()D
    .registers 3

    .line 39
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    return-wide v0
.end method

.method public final getB()D
    .registers 3

    .line 41
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    return-wide v0
.end method

.method public final getC()D
    .registers 3

    .line 43
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    return-wide v0
.end method

.method public final getD()D
    .registers 3

    .line 45
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    return-wide v0
.end method

.method public final getE()D
    .registers 3

    .line 47
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    return-wide v0
.end method

.method public final getF()D
    .registers 3

    .line 49
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    return-wide v0
.end method

.method public final getGamma()D
    .registers 3

    .line 37
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TransferParameters(gamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
