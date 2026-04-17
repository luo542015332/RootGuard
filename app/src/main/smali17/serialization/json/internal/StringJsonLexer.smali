.class public final Lkotlinx/serialization/json/internal/StringJsonLexer;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "StringJsonLexer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n*L\n107#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\n\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J3\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00082!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u000c0\u0012H\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001b\u001a\u00020\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StringJsonLexer;",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "source",
        "",
        "(Ljava/lang/String;)V",
        "getSource",
        "()Ljava/lang/String;",
        "canConsumeValue",
        "",
        "consumeKeyString",
        "consumeNextToken",
        "",
        "",
        "expected",
        "",
        "consumeStringChunked",
        "isLenient",
        "consumeChunk",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "stringChunk",
        "peekLeadingMatchingValue",
        "keyToMatch",
        "prefetchOrEof",
        "",
        "position",
        "skipWhitespaces",
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
.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canConsumeValue()Z
    .registers 5

    .line 34
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 35
    .local v0, "current":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    .line 36
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 39
    .local v1, "c":C
    const/16 v3, 0x20

    if-eq v1, v3, :cond_31

    const/16 v3, 0xa

    if-eq v1, v3, :cond_31

    const/16 v3, 0xd

    if-eq v1, v3, :cond_31

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2a

    goto :goto_31

    .line 43
    :cond_2a
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 44
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->isValidValueStart(C)Z

    move-result v2

    return v2

    .line 39
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    .line 40
    nop

    .line 41
    goto :goto_7

    .line 46
    .end local v1    # "c":C
    :cond_35
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 47
    return v2
.end method

.method public consumeKeyString()Ljava/lang/String;
    .registers 8

    .line 86
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(C)V

    .line 87
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 88
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 89
    .local v1, "closingQuote":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4c

    .line 96
    move v2, v0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_39

    .line 98
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_36

    .line 99
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {p0, v3, v4, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 96
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 102
    .end local v2    # "i":I
    :cond_39
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 103
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 92
    :cond_4c
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    .line 93
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$kotlinx_serialization_json(BZ)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public consumeNextToken()B
    .registers 5

    .line 12
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "source":Ljava/lang/String;
    :cond_4
    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 14
    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 15
    .local v1, "ch":C
    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    .line 16
    .local v2, "tc":B
    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 17
    nop

    .line 15
    .end local v2    # "tc":B
    return v2

    .line 20
    .end local v1    # "ch":C
    :cond_24
    const/16 v1, 0xa

    return v1
.end method

.method public consumeNextToken(C)V
    .registers 6
    .param p1, "expected"    # C

    .line 68
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->unexpectedToken(C)V

    .line 69
    :cond_8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "source":Ljava/lang/String;
    :cond_c
    :goto_c
    iget v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 71
    iget v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 72
    .local v2, "c":C
    const/16 v3, 0x20

    if-eq v2, v3, :cond_c

    const/16 v3, 0xa

    if-eq v2, v3, :cond_c

    const/16 v3, 0xd

    if-eq v2, v3, :cond_c

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2f

    goto :goto_c

    .line 73
    :cond_2f
    if-ne v2, p1, :cond_32

    return-void

    .line 74
    :cond_32
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->unexpectedToken(C)V

    .end local v2    # "c":C
    goto :goto_c

    .line 76
    :cond_36
    iput v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 77
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->unexpectedToken(C)V

    .line 78
    return-void
.end method

.method public consumeStringChunked(ZLkotlin/jvm/functions/Function1;)V
    .registers 7
    .param p1, "isLenient"    # Z
    .param p2, "consumeChunk"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "consumeChunk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 129
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2d
    nop

    .line 108
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public bridge synthetic getSource()Ljava/lang/CharSequence;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getSource()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    return-object v0
.end method

.method public peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p1, "keyToMatch"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 112
    .local v0, "positionSnapshot":I
    nop

    .line 113
    :try_start_8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_40

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_16

    .line 121
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    .line 113
    return-object v3

    .line 114
    :cond_16
    :try_start_16
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekString(Z)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "firstKey":Ljava/lang/String;
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_40

    if-nez v2, :cond_26

    .line 121
    .end local v1    # "firstKey":Ljava/lang/String;
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    .line 115
    .restart local v1    # "firstKey":Ljava/lang/String;
    return-object v3

    .line 116
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    .line 117
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result v2
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_40

    const/4 v4, 0x5

    if-eq v2, v4, :cond_36

    .line 121
    .end local v1    # "firstKey":Ljava/lang/String;
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    .line 117
    .restart local v1    # "firstKey":Ljava/lang/String;
    return-object v3

    .line 118
    :cond_36
    :try_start_36
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekString(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_40

    .line 121
    .end local v1    # "firstKey":Ljava/lang/String;
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    .line 118
    .restart local v1    # "firstKey":Ljava/lang/String;
    return-object v2

    .line 121
    .end local v1    # "firstKey":Ljava/lang/String;
    :catchall_40
    move-exception v1

    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    throw v1
.end method

.method public prefetchOrEof(I)I
    .registers 3
    .param p1, "position"    # I

    .line 9
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_c

    move v0, p1

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public skipWhitespaces()I
    .registers 4

    .line 51
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 52
    .local v0, "current":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v0

    .line 54
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 55
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 57
    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x9

    if-ne v1, v2, :cond_29

    goto :goto_2a

    .line 60
    :cond_29
    goto :goto_2d

    .line 57
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    .line 58
    goto :goto_6

    .line 63
    .end local v1    # "c":C
    :cond_2d
    :goto_2d
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 64
    return v0
.end method

.method public tryConsumeComma()Z
    .registers 5

    .line 24
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 25
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    goto :goto_29

    .line 26
    :cond_13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_28

    .line 27
    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 28
    return v2

    .line 30
    :cond_28
    return v2

    .line 25
    :cond_29
    :goto_29
    return v2
.end method
