.class public final Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
.super Ljava/lang/Object;
.source "AppOpsApis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttributionTag:Ljava/lang/String;

.field private final mBeginTimeMillis:J

.field private final mEndTimeMillis:J

.field private mFilter:I

.field private mFlags:I

.field private mHistoryFlags:I

.field private mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(JJ)V
    .registers 8
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mUid:I

    .line 274
    const/16 v0, 0x1f

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    .line 290
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_17

    cmp-long v0, p1, p3

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-string v2, "beginTimeMillis must be non negative and lesser than endTimeMillis"

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 292
    iput-wide p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    .line 293
    iput-wide p3, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    .line 294
    iput v1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    .line 295
    return-void
.end method


# virtual methods
.method public build()Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;
    .registers 21

    .line 416
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 417
    .local v1, "historyFlags":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v2, v3, :cond_24

    .line 418
    iget v2, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_14

    .line 419
    sget v2, Landroid/app/AppOpsManager;->HISTORY_FLAG_AGGREGATE:I

    or-int/2addr v1, v2

    .line 421
    :cond_14
    iget v2, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1c

    .line 422
    sget v2, Landroid/app/AppOpsManager;->HISTORY_FLAG_DISCRETE:I

    or-int/2addr v1, v2

    .line 424
    :cond_1c
    iget v2, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_24

    .line 425
    sget v2, Landroid/app/AppOpsManager;->HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I

    or-int/2addr v1, v2

    .line 429
    :cond_24
    const/4 v2, 0x0

    .line 430
    .local v2, "filter":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    const/16 v8, 0x8

    if-lt v3, v7, :cond_4d

    .line 431
    iget v3, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_35

    .line 432
    sget v3, Landroid/app/AppOpsManager;->FILTER_BY_UID:I

    or-int/2addr v2, v3

    .line 434
    :cond_35
    iget v3, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3d

    .line 435
    sget v3, Landroid/app/AppOpsManager;->FILTER_BY_PACKAGE_NAME:I

    or-int/2addr v2, v3

    .line 437
    :cond_3d
    iget v3, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_45

    .line 438
    sget v3, Landroid/app/AppOpsManager;->FILTER_BY_ATTRIBUTION_TAG:I

    or-int/2addr v2, v3

    .line 440
    :cond_45
    iget v3, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_4d

    .line 441
    sget v3, Landroid/app/AppOpsManager;->FILTER_BY_OP_NAMES:I

    or-int/2addr v2, v3

    .line 445
    :cond_4d
    const/4 v3, 0x0

    .line 446
    .local v3, "flags":I
    iget v7, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_56

    .line 447
    sget v6, Landroid/app/AppOpsManager;->OP_FLAG_SELF:I

    or-int/2addr v3, v6

    .line 449
    :cond_56
    iget v6, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_5e

    .line 450
    sget v5, Landroid/app/AppOpsManager;->OP_FLAG_TRUSTED_PROXY:I

    or-int/2addr v3, v5

    .line 452
    :cond_5e
    iget v5, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_66

    .line 453
    sget v4, Landroid/app/AppOpsManager;->OP_FLAG_UNTRUSTED_PROXY:I

    or-int/2addr v3, v4

    .line 455
    :cond_66
    iget v4, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_6e

    .line 456
    sget v4, Landroid/app/AppOpsManager;->OP_FLAG_TRUSTED_PROXIED:I

    or-int/2addr v3, v4

    .line 458
    :cond_6e
    iget v4, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_78

    .line 459
    sget v4, Landroid/app/AppOpsManager;->OP_FLAG_UNTRUSTED_PROXIED:I

    or-int/2addr v3, v4

    .line 462
    :cond_78
    new-instance v4, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    iget v8, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mUid:I

    iget-object v9, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v10, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v11, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    iget-wide v14, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    iget-wide v5, v0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    const/16 v19, 0x0

    move-object v7, v4

    move v12, v1

    move v13, v2

    move-wide/from16 v16, v5

    move/from16 v18, v3

    invoke-direct/range {v7 .. v19}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILrikka/hidden/compat/AppOpsApis$1;)V

    return-object v4
.end method

.method public setAttributionTag(Ljava/lang/String;)Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 345
    iput-object p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    .line 346
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    .line 348
    return-object p0
.end method

.method public setFlags(I)Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 390
    const/16 v0, 0x1f

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkFlagsArgument(II)I

    .line 391
    iput p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFlags:I

    .line 392
    return-object p0
.end method

.method public setHistoryFlags(I)Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 405
    const/4 v0, 0x7

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkFlagsArgument(II)I

    .line 407
    iput p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    .line 408
    return-object p0
.end method

.method public setOpNames(Ljava/util/List;)Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;"
        }
    .end annotation

    .line 366
    .local p1, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    .line 368
    if-nez p1, :cond_b

    .line 369
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_11

    .line 371
    :cond_b
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    .line 374
    :goto_11
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 326
    iput-object p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    .line 328
    if-nez p1, :cond_b

    .line 329
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_11

    .line 331
    :cond_b
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    .line 334
    :goto_11
    return-object p0
.end method

.method public setUid(I)Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    .registers 6
    .param p1, "uid"    # I

    .line 305
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    if-ltz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    const-string/jumbo v3, "uid must be -1 or non negative"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 307
    iput p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mUid:I

    .line 309
    if-ne p1, v1, :cond_1b

    .line 310
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_20

    .line 312
    :cond_1b
    iget v1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/2addr v0, v1

    iput v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;->mFilter:I

    .line 315
    :goto_20
    return-object p0
.end method
