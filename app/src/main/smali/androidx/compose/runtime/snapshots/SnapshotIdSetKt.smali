.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;
.super Ljava/lang/Object;
.source "SnapshotIdSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "lowestBitOf",
        "",
        "bits",
        "",
        "binarySearch",
        "",
        "value",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$lowestBitOf(J)I
    .registers 3
    .param p0, "bits"    # J

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;->lowestBitOf(J)I

    move-result v0

    return v0
.end method

.method public static final binarySearch([II)I
    .registers 6
    .param p0, "$this$binarySearch"    # [I
    .param p1, "value"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "low":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 385
    .local v1, "high":I
    :goto_9
    if-gt v0, v1, :cond_1c

    .line 386
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 387
    .local v2, "mid":I
    aget v3, p0, v2

    .line 388
    .local v3, "midVal":I
    if-le p1, v3, :cond_16

    .line 389
    add-int/lit8 v0, v2, 0x1

    goto :goto_9

    .line 390
    :cond_16
    if-ge p1, v3, :cond_1b

    .line 391
    add-int/lit8 v1, v2, -0x1

    goto :goto_9

    .line 393
    :cond_1b
    return v2

    .line 395
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static final lowestBitOf(J)I
    .registers 9
    .param p0, "bits"    # J

    .line 356
    move-wide v0, p0

    .line 357
    .local v0, "b":J
    const/4 v2, 0x0

    .line 358
    .local v2, "base":I
    const-wide v3, 0xffffffffL

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    add-int/lit8 v2, v2, 0x20

    .line 359
    nop

    .line 360
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 362
    :cond_14
    const-wide/32 v3, 0xffff

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    add-int/lit8 v2, v2, 0x10

    .line 363
    nop

    .line 364
    const/16 v3, 0x10

    shr-long/2addr v0, v3

    .line 366
    :cond_22
    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2f

    add-int/lit8 v2, v2, 0x8

    .line 367
    nop

    .line 368
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 370
    :cond_2f
    const-wide/16 v3, 0xf

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3b

    add-int/lit8 v2, v2, 0x4

    .line 371
    nop

    .line 372
    const/4 v3, 0x4

    shr-long/2addr v0, v3

    .line 374
    :cond_3b
    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_43

    return v2

    .line 375
    :cond_43
    const-wide/16 v3, 0x2

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4d

    add-int/lit8 v3, v2, 0x1

    return v3

    .line 376
    :cond_4d
    const-wide/16 v3, 0x4

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_57

    add-int/lit8 v3, v2, 0x2

    return v3

    .line 377
    :cond_57
    const-wide/16 v3, 0x8

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_61

    add-int/lit8 v3, v2, 0x3

    return v3

    .line 378
    :cond_61
    const/4 v3, -0x1

    return v3
.end method
