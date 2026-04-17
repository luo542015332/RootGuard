.class public final Lkotlinx/serialization/json/internal/ReaderJsonLexer;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "ReaderJsonLexer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0014J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016J\u0018\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0012H\u0016J\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u000cH\u0016J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000cH\u0002J\u0006\u0010#\u001a\u00020\u000eJ\u0018\u0010$\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000cH\u0016J\u0008\u0010&\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "reader",
        "Lkotlinx/serialization/json/internal/SerialReader;",
        "buffer",
        "",
        "(Lkotlinx/serialization/json/internal/SerialReader;[C)V",
        "source",
        "Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "getSource",
        "()Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "threshold",
        "",
        "appendRange",
        "",
        "fromIndex",
        "toIndex",
        "canConsumeValue",
        "",
        "consumeKeyString",
        "",
        "consumeNextToken",
        "",
        "ensureHaveChars",
        "indexOf",
        "char",
        "",
        "startPos",
        "peekLeadingMatchingValue",
        "keyToMatch",
        "isLenient",
        "prefetchOrEof",
        "position",
        "preload",
        "unprocessedCount",
        "release",
        "substring",
        "endPos",
        "tryConsumeComma",
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
.field private final buffer:[C

.field private final reader:Lkotlinx/serialization/json/internal/SerialReader;

.field private final source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

.field private threshold:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/SerialReader;[C)V
    .registers 4
    .param p1, "reader"    # Lkotlinx/serialization/json/internal/SerialReader;
    .param p2, "buffer"    # [C

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    .line 38
    iput-object p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/SerialReader;

    .line 39
    iput-object p2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    .line 41
    const/16 v0, 0x80

    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    .line 43
    new-instance v0, Lkotlinx/serialization/json/internal/ArrayAsSequence;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;-><init>([C)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

    .line 45
    nop

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->preload(I)V

    .line 47
    nop

    .line 37
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/internal/SerialReader;[CILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 37
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 39
    sget-object p2, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->take()[C

    move-result-object p2

    .line 37
    :cond_a
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;-><init>(Lkotlinx/serialization/json/internal/SerialReader;[C)V

    .line 186
    return-void
.end method

.method private final preload(I)V
    .registers 9
    .param p1, "unprocessedCount"    # I

    .line 79
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    # getter for: Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C
    invoke-static {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->access$getBuffer$p(Lkotlinx/serialization/json/internal/ArrayAsSequence;)[C

    move-result-object v0

    .line 80
    .local v0, "buffer":[C
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 81
    iget v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    iget v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    add-int/2addr v3, p1

    invoke-static {v0, v0, v1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([C[CIII)[C

    .line 83
    :cond_13
    move v2, p1

    .line 84
    .local v2, "filledCount":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v3

    .line 85
    .local v3, "sizeTotal":I
    :goto_1c
    if-eq v2, v3, :cond_35

    .line 86
    iget-object v4, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/SerialReader;

    sub-int v5, v3, v2

    invoke-interface {v4, v0, v2, v5}, Lkotlinx/serialization/json/internal/SerialReader;->read([CII)I

    move-result v4

    .line 87
    .local v4, "actual":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_33

    .line 89
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v6

    invoke-virtual {v6, v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->trim(I)V

    .line 90
    iput v5, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    .line 91
    goto :goto_35

    .line 93
    :cond_33
    add-int/2addr v2, v4

    .end local v4    # "actual":I
    goto :goto_1c

    .line 95
    :cond_35
    :goto_35
    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 96
    return-void
.end method


# virtual methods
.method protected appendRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 177
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getEscapedString()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    # getter for: Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C
    invoke-static {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->access$getBuffer$p(Lkotlinx/serialization/json/internal/ArrayAsSequence;)[C

    move-result-object v1

    sub-int v2, p2, p1

    invoke-virtual {v0, v1, p1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "this.append(value, start\u2026x, endIndex - startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public canConsumeValue()Z
    .registers 4

    .line 60
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 61
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 62
    .local v0, "current":I
    :goto_5
    nop

    .line 63
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 64
    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    .line 65
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 67
    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2d

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2d

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2d

    const/16 v2, 0x9

    if-ne v1, v2, :cond_26

    goto :goto_2d

    .line 71
    :cond_26
    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 72
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->isValidValueStart(C)Z

    move-result v2

    return v2

    .line 67
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    .line 68
    nop

    .line 69
    goto :goto_5

    .line 74
    .end local v1    # "c":C
    :cond_31
    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 75
    const/4 v1, 0x0

    return v1
.end method

.method public consumeKeyString()Ljava/lang/String;
    .registers 8

    .line 142
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeNextToken(C)V

    .line 143
    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 144
    .local v1, "current":I
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->indexOf(CI)I

    move-result v0

    .line 145
    .local v0, "closingQuote":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_31

    .line 146
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 147
    if-eq v1, v2, :cond_21

    .line 151
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    invoke-virtual {p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 147
    :cond_21
    move-object v2, p0

    check-cast v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 154
    :cond_31
    move v2, v1

    .local v2, "i":I
    :goto_32
    if-ge v2, v0, :cond_50

    .line 156
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_4d

    .line 157
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    invoke-virtual {p0, v3, v4, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 154
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 160
    .end local v2    # "i":I
    :cond_50
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 161
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public consumeNextToken()B
    .registers 6

    .line 107
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 108
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 109
    .local v0, "source":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 110
    .local v1, "cpos":I
    :goto_9
    nop

    .line 111
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 112
    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 113
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cpos":I
    .local v2, "cpos":I
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 114
    .local v1, "ch":C
    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v3

    .line 115
    .local v3, "tc":B
    const/4 v4, 0x3

    if-eq v3, v4, :cond_22

    .line 117
    iput v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 118
    nop

    .line 114
    .end local v3    # "tc":B
    return v3

    .line 115
    .restart local v3    # "tc":B
    :cond_22
    move v1, v2

    goto :goto_9

    .line 122
    .end local v2    # "cpos":I
    .end local v3    # "tc":B
    .local v1, "cpos":I
    :cond_24
    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 123
    const/16 v2, 0xa

    return v2
.end method

.method public ensureHaveChars()V
    .registers 5

    .line 127
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 128
    .local v0, "cur":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    .line 129
    .local v1, "oldSize":I
    sub-int v2, v1, v0

    .line 130
    .local v2, "spaceLeft":I
    iget v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    if-le v2, v3, :cond_11

    return-void

    .line 133
    :cond_11
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->preload(I)V

    .line 134
    return-void
.end method

.method public bridge synthetic getSource()Ljava/lang/CharSequence;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;
    .registers 2

    .line 43
    iget-object v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

    return-object v0
.end method

.method public indexOf(CI)I
    .registers 7
    .param p1, "char"    # C
    .param p2, "startPos"    # I

    .line 165
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 166
    .local v0, "src":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    move v1, p2

    .local v1, "i":I
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_15

    .line 167
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_12

    return v1

    .line 166
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 169
    .end local v1    # "i":I
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method public peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "keyToMatch"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public prefetchOrEof(I)I
    .registers 4
    .param p1, "position"    # I

    .line 99
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    return p1

    .line 100
    :cond_b
    iput p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 101
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 102
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    if-eqz v0, :cond_27

    goto :goto_28

    .line 103
    :cond_27
    return v1

    .line 102
    :cond_28
    :goto_28
    const/4 v0, -0x1

    return v0
.end method

.method public final release()V
    .registers 3

    .line 184
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->release([C)V

    .line 185
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 173
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryConsumeComma()Z
    .registers 5

    .line 50
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 51
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_29

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    goto :goto_29

    .line 52
    :cond_13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_28

    .line 53
    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 54
    return v2

    .line 56
    :cond_28
    return v2

    .line 51
    :cond_29
    :goto_29
    return v2
.end method
