.class public final Lkotlinx/serialization/json/internal/JsonToStringWriter;
.super Ljava/lang/Object;
.source "JsonToStringWriter.kt"

# interfaces
.implements Lkotlinx/serialization/json/internal/JsonWriter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonToStringWriter;",
        "Lkotlinx/serialization/json/internal/JsonWriter;",
        "()V",
        "array",
        "",
        "size",
        "",
        "appendStringSlowPath",
        "",
        "firstEscapedChar",
        "currentSize",
        "string",
        "",
        "ensureAdditionalCapacity",
        "expected",
        "ensureTotalCapacity",
        "oldSize",
        "additional",
        "release",
        "toString",
        "write",
        "text",
        "writeChar",
        "char",
        "",
        "writeLong",
        "value",
        "",
        "writeQuoted",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private array:[C

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPool;->take()[C

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    .line 28
    return-void
.end method

.method private final appendStringSlowPath(IILjava/lang/String;)V
    .registers 13
    .param p1, "firstEscapedChar"    # I
    .param p2, "currentSize"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 73
    move v0, p2

    .line 74
    .local v0, "sz":I
    move v1, p1

    .local v1, "i":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_6
    const/4 v3, 0x1

    if-ge v1, v2, :cond_6b

    .line 79
    const/4 v4, 0x2

    invoke-direct {p0, v0, v4}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    move-result v0

    .line 80
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 82
    .local v4, "ch":I
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_60

    .line 89
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v5

    aget-byte v5, v5, v4

    .line 90
    .local v5, "marker":B
    if-nez v5, :cond_2a

    .line 91
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "sz":I
    .local v6, "sz":I
    int-to-char v7, v4

    aput-char v7, v3, v0

    move v0, v6

    goto :goto_68

    .line 93
    .end local v6    # "sz":I
    .restart local v0    # "sz":I
    :cond_2a
    if-ne v5, v3, :cond_4f

    .line 94
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .local v3, "escapedString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    move-result v0

    .line 96
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    .line 98
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .end local v3    # "escapedString":Ljava/lang/String;
    goto :goto_68

    .line 101
    :cond_4f
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/16 v6, 0x5c

    aput-char v6, v3, v0

    .line 102
    add-int/lit8 v6, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v3, v6

    add-int/lit8 v0, v0, 0x2

    .line 103
    nop

    .line 104
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .end local v5    # "marker":B
    goto :goto_68

    .line 108
    :cond_60
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "sz":I
    .local v5, "sz":I
    int-to-char v6, v4

    aput-char v6, v3, v0

    move v0, v5

    .line 74
    .end local v4    # "ch":I
    .end local v5    # "sz":I
    .restart local v0    # "sz":I
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 111
    .end local v1    # "i":I
    :cond_6b
    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    move-result v0

    .line 112
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "sz":I
    .local v2, "sz":I
    const/16 v3, 0x22

    aput-char v3, v1, v0

    .line 113
    iput v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 114
    return-void
.end method

.method private final ensureAdditionalCapacity(I)V
    .registers 3
    .param p1, "expected"    # I

    .line 125
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    .line 126
    return-void
.end method

.method private final ensureTotalCapacity(II)I
    .registers 6
    .param p1, "oldSize"    # I
    .param p2, "additional"    # I

    .line 130
    add-int v0, p1, p2

    .line 131
    .local v0, "newSize":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    array-length v2, v1

    if-gt v2, v0, :cond_18

    .line 132
    mul-int/lit8 v2, p1, 0x2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    .line 134
    :cond_18
    return p1
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 117
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPool;->release([C)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/4 v2, 0x0

    iget v3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 44
    .local v0, "length":I
    if-nez v0, :cond_d

    return-void

    .line 45
    :cond_d
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureAdditionalCapacity(I)V

    .line 46
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 47
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 48
    return-void
.end method

.method public writeChar(C)V
    .registers 5
    .param p1, "char"    # C

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureAdditionalCapacity(I)V

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    aput-char p1, v0, v1

    .line 40
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "value"    # J

    .line 34
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->write(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureAdditionalCapacity(I)V

    .line 52
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    .line 53
    .local v0, "arr":[C
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 54
    .local v1, "sz":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "sz":I
    .local v2, "sz":I
    const/16 v3, 0x22

    aput-char v3, v0, v1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 57
    move v4, v2

    .local v4, "i":I
    add-int v5, v2, v1

    :goto_24
    if-ge v4, v5, :cond_40

    .line 58
    aget-char v6, v0, v4

    .line 60
    .local v6, "ch":I
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_3d

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v7

    aget-byte v7, v7, v6

    if-eqz v7, :cond_3d

    .line 62
    sub-int v3, v4, v2

    invoke-direct {p0, v3, v4, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->appendStringSlowPath(IILjava/lang/String;)V

    return-void

    .line 57
    .end local v6    # "ch":I
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 67
    .end local v4    # "i":I
    :cond_40
    add-int/2addr v2, v1

    .line 68
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "sz":I
    .local v4, "sz":I
    aput-char v3, v0, v2

    .line 69
    iput v4, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 70
    return-void
.end method
