.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001c\u0010\u000c\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder$Companion;",
        "",
        "()V",
        "INVALID_HOST",
        "",
        "parsePort",
        "",
        "input",
        "pos",
        "limit",
        "portColonOffset",
        "schemeDelimiterOffset",
        "slashCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 5
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->parsePort(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 5
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->portColonOffset(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 5
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 5
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "$receiver"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->slashCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final parsePort(Ljava/lang/String;II)I
    .registers 18
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1544
    nop

    .line 1546
    const/4 v1, -0x1

    :try_start_2
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf8

    const/4 v13, 0x0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "portString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1b} :catch_28

    .line 1548
    .local v2, "i":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v4, v2, :cond_24

    const/high16 v5, 0x10000

    if-ge v2, v5, :cond_24

    move v3, v4

    :cond_24
    if-eqz v3, :cond_2a

    move v1, v2

    goto :goto_2a

    .line 1549
    .end local v0    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_28
    move-exception v0

    .line 1550
    .local v0, "_":Ljava/lang/NumberFormatException;
    nop

    .line 1544
    .end local v0    # "_":Ljava/lang/NumberFormatException;
    :cond_2a
    :goto_2a
    return v1
.end method

.method private final portColonOffset(Ljava/lang/String;II)I
    .registers 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1528
    move v0, p2

    .line 1529
    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_20

    .line 1530
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1531
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_18

    .line 1532
    :cond_b
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_1d

    .line 1533
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_b

    goto :goto_1d

    .line 1536
    :cond_18
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1d

    return v0

    .line 1538
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1540
    :cond_20
    return p3
.end method

.method private final schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 14
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1491
    sub-int v0, p3, p2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ge v0, v1, :cond_7

    return v2

    .line 1493
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1494
    .local v0, "c0":C
    const/16 v1, 0x61

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    const/16 v4, 0x41

    if-ltz v3, :cond_1d

    const/16 v3, 0x7a

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_2d

    :cond_1d
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-ltz v3, :cond_83

    const/16 v3, 0x5a

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_2d

    goto/16 :goto_83

    .line 1496
    :cond_2d
    add-int/lit8 v3, p2, 0x1

    .local v3, "i":I
    :goto_2f
    if-ge v3, p3, :cond_82

    .line 1497
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1499
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v1, v5, :cond_3f

    const/16 v8, 0x7b

    if-ge v5, v8, :cond_3f

    move v8, v7

    goto :goto_40

    :cond_3f
    move v8, v6

    :goto_40
    if-eqz v8, :cond_44

    :goto_42
    move v8, v7

    goto :goto_4c

    :cond_44
    if-gt v4, v5, :cond_4b

    const/16 v8, 0x5b

    if-ge v5, v8, :cond_4b

    goto :goto_42

    :cond_4b
    move v8, v6

    :goto_4c
    const/16 v9, 0x3a

    if-eqz v8, :cond_52

    :goto_50
    move v8, v7

    goto :goto_5a

    :cond_52
    const/16 v8, 0x30

    if-gt v8, v5, :cond_59

    if-ge v5, v9, :cond_59

    goto :goto_50

    :cond_59
    move v8, v6

    :goto_5a
    if-eqz v8, :cond_5e

    :goto_5c
    move v8, v7

    goto :goto_64

    :cond_5e
    const/16 v8, 0x2b

    if-ne v5, v8, :cond_63

    goto :goto_5c

    :cond_63
    move v8, v6

    :goto_64
    if-eqz v8, :cond_68

    :goto_66
    move v8, v7

    goto :goto_6e

    :cond_68
    const/16 v8, 0x2d

    if-ne v5, v8, :cond_6d

    goto :goto_66

    :cond_6d
    move v8, v6

    :goto_6e
    if-eqz v8, :cond_72

    :goto_70
    move v6, v7

    goto :goto_77

    :cond_72
    const/16 v8, 0x2e

    if-ne v5, v8, :cond_77

    goto :goto_70

    :cond_77
    :goto_77
    if-nez v6, :cond_7f

    .line 1502
    if-ne v5, v9, :cond_7d

    move v2, v3

    goto :goto_7e

    .line 1505
    :cond_7d
    nop

    .line 1497
    :goto_7e
    return v2

    .line 1496
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1509
    .end local v3    # "i":I
    :cond_82
    return v2

    .line 1494
    :cond_83
    :goto_83
    return v2
.end method

.method private final slashCount(Ljava/lang/String;II)I
    .registers 8
    .param p1, "$this$slashCount"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1514
    const/4 v0, 0x0

    .line 1515
    .local v0, "slashCount":I
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_17

    .line 1516
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1517
    .local v2, "c":C
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_12

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_11

    goto :goto_12

    .line 1520
    :cond_11
    goto :goto_17

    .line 1518
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 1515
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1523
    .end local v1    # "i":I
    :cond_17
    :goto_17
    return v0
.end method
