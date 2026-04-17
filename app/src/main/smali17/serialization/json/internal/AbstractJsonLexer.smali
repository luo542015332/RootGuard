.class public abstract Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.super Ljava/lang/Object;
.source "AbstractJsonLexer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,765:1\n757#1,5:766\n1#2:771\n*S KotlinDebug\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n218#1:766,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0001\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0014J\u0008\u0010\u001f\u001a\u00020 H&J\u0006\u0010!\u001a\u00020 J\u0010\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0004H\u0003J\u0006\u0010#\u001a\u00020 J\u0018\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010&\u001a\u00020\u000fH&J\u0008\u0010\'\u001a\u00020(H&J\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(J\u0010\u0010\'\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020*H\u0016J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u000fJ \u0010-\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0005J3\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020 2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(4\u0012\u0004\u0012\u00020\u001c01H\u0016J\u0006\u00105\u001a\u00020\u000fJ\u0006\u00106\u001a\u00020\u000fJ\u0018\u00107\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0006\u00108\u001a\u00020\u001cJ\u0008\u00109\u001a\u00020\u001cH\u0016J\u0006\u0010:\u001a\u00020\u001cJ\u001f\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020(2\u0008\u0008\u0002\u0010>\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008?J\"\u0010;\u001a\u00020<2\u0006\u0010@\u001a\u00020\u000f2\u0008\u0008\u0002\u0010A\u001a\u00020\u00042\u0008\u0008\u0002\u0010B\u001a\u00020\u000fJ\u000e\u0010C\u001a\u00020\u001c2\u0006\u0010D\u001a\u00020\u000fJ\u0018\u0010E\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0018\u0010F\u001a\u00020\u00042\u0006\u0010G\u001a\u00020*2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016J\u0018\u0010H\u001a\u00020 2\u0006\u0010/\u001a\u00020 2\u0006\u0010G\u001a\u00020*H\u0002J\u0006\u0010I\u001a\u00020 J\u0010\u0010J\u001a\u00020 2\u0006\u0010K\u001a\u00020*H\u0004J\u001a\u0010L\u001a\u0004\u0018\u00010\u000f2\u0006\u0010M\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020 H&J\u0006\u0010N\u001a\u00020(J\u0010\u0010O\u001a\u0004\u0018\u00010\u000f2\u0006\u0010/\u001a\u00020 J\u0010\u0010P\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\u0004H&J1\u0010Q\u001a\u00020\u001c2\u0006\u0010R\u001a\u00020 2\u0008\u0008\u0002\u0010A\u001a\u00020\u00042\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u000f0SH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008TJ\u000e\u0010U\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020 J\u0008\u0010W\u001a\u00020\u0004H\u0016J\u0018\u0010X\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u0004H\u0016J\u0008\u0010Z\u001a\u00020\u000fH\u0002J\u0008\u0010[\u001a\u00020\u000fH\u0016J\u0008\u0010\\\u001a\u00020 H&J\u0010\u0010]\u001a\u00020 2\u0008\u0008\u0002\u0010^\u001a\u00020 J\u0010\u0010_\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020*H\u0004J\u0008\u0010`\u001a\u00020 H\u0002J\"\u0010a\u001a\u0002Hb\"\u0004\u0008\u0000\u0010b2\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u0002Hb0SH\u0082\u0008\u00a2\u0006\u0002\u0010dJC\u0010e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010f\u001a\u00020 2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(4\u0012\u0004\u0012\u00020\u001c01H\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u0011X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006g"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "",
        "()V",
        "currentPosition",
        "",
        "escapedString",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getEscapedString",
        "()Ljava/lang/StringBuilder;",
        "setEscapedString",
        "(Ljava/lang/StringBuilder;)V",
        "path",
        "Lkotlinx/serialization/json/internal/JsonPath;",
        "peekedString",
        "",
        "source",
        "",
        "getSource",
        "()Ljava/lang/CharSequence;",
        "appendEsc",
        "startPosition",
        "appendEscape",
        "lastPosition",
        "current",
        "appendHex",
        "startPos",
        "appendRange",
        "",
        "fromIndex",
        "toIndex",
        "canConsumeValue",
        "",
        "consumeBoolean",
        "start",
        "consumeBooleanLenient",
        "consumeBooleanLiteral",
        "literalSuffix",
        "consumeKeyString",
        "consumeNextToken",
        "",
        "expected",
        "",
        "consumeNumericLiteral",
        "",
        "consumeString",
        "consumeStringChunked",
        "isLenient",
        "consumeChunk",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "stringChunk",
        "consumeStringLenient",
        "consumeStringLenientNotNull",
        "decodedString",
        "discardPeeked",
        "ensureHaveChars",
        "expectEof",
        "fail",
        "",
        "expectedToken",
        "wasConsumed",
        "fail$kotlinx_serialization_json",
        "message",
        "position",
        "hint",
        "failOnUnknownKey",
        "key",
        "fromHexChar",
        "indexOf",
        "char",
        "insideString",
        "isNotEof",
        "isValidValueStart",
        "c",
        "peekLeadingMatchingValue",
        "keyToMatch",
        "peekNextToken",
        "peekString",
        "prefetchOrEof",
        "require",
        "condition",
        "Lkotlin/Function0;",
        "require$kotlinx_serialization_json",
        "skipElement",
        "allowLenientStrings",
        "skipWhitespaces",
        "substring",
        "endPos",
        "takePeeked",
        "toString",
        "tryConsumeComma",
        "tryConsumeNull",
        "doConsume",
        "unexpectedToken",
        "wasUnquotedString",
        "withPositionRollback",
        "T",
        "action",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "writeRange",
        "currentChunkHasEscape",
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
.field protected currentPosition:I

.field private escapedString:Ljava/lang/StringBuilder;

.field public final path:Lkotlinx/serialization/json/internal/JsonPath;

.field private peekedString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lkotlinx/serialization/json/internal/JsonPath;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/JsonPath;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    .line 147
    return-void
.end method

.method public static final synthetic access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I
    .registers 2
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 147
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v0
.end method

.method private final appendEsc(I)I
    .registers 12
    .param p1, "startPosition"    # I

    .line 500
    move v0, p1

    .line 501
    .local v0, "currentPosition":I
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 502
    const/4 v1, -0x1

    if-eq v0, v1, :cond_52

    .line 503
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentPosition":I
    .local v2, "currentPosition":I
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 504
    .local v0, "currentChar":C
    const/16 v1, 0x75

    if-ne v0, v1, :cond_1f

    .line 505
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendHex(Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 508
    :cond_1f
    invoke-static {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->escapeToChar(I)C

    move-result v1

    .line 509
    .local v1, "c":C
    if-eqz v1, :cond_2b

    .line 510
    iget-object v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    return v2

    .line 509
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid escaped char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 502
    .end local v1    # "c":C
    .end local v2    # "currentPosition":I
    .local v0, "currentPosition":I
    :cond_52
    const-string v5, "Expected escape sequence to continue, got EOF"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method private final appendEscape(II)I
    .registers 4
    .param p1, "lastPosition"    # I
    .param p2, "current"    # I

    .line 423
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    .line 424
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEsc(I)I

    move-result v0

    return v0
.end method

.method private final appendHex(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 515
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_2e

    .line 516
    iput p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 517
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->ensureHaveChars()V

    .line 518
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 v0, v0, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 520
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendHex(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 519
    :cond_1e
    const-string v2, "Unexpected EOF during unicode escape"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 522
    :cond_2e
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    .line 523
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    .line 524
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    .line 523
    add-int/2addr v1, v2

    .line 525
    add-int/lit8 v2, p2, 0x2

    invoke-direct {p0, p1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 523
    add-int/2addr v1, v2

    .line 526
    add-int/lit8 v2, p2, 0x3

    invoke-direct {p0, p1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 523
    add-int/2addr v1, v2

    .line 526
    int-to-char v1, v1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private final consumeBoolean(I)Z
    .registers 11
    .param p1, "start"    # I

    .line 723
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 724
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_59

    const/4 v1, -0x1

    if-eq v0, v1, :cond_59

    .line 725
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "current":I
    .local v2, "current":I
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    sparse-switch v0, :sswitch_data_6a

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected valid boolean literal prefix, but had \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 727
    :sswitch_4b
    const-string v0, "rue"

    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    .line 728
    const/4 v0, 0x1

    goto :goto_58

    .line 731
    :sswitch_52
    const-string v0, "alse"

    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    .line 732
    const/4 v0, 0x0

    .line 725
    :goto_58
    return v0

    .line 724
    .end local v2    # "current":I
    .restart local v0    # "current":I
    :cond_59
    const-string v4, "EOF"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    nop

    :sswitch_data_6a
    .sparse-switch
        0x66 -> :sswitch_52
        0x74 -> :sswitch_4b
    .end sparse-switch
.end method

.method private final consumeBooleanLiteral(Ljava/lang/String;I)V
    .registers 13
    .param p1, "literalSuffix"    # Ljava/lang/String;
    .param p2, "current"    # I

    .line 741
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_5e

    .line 745
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_56

    .line 746
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 747
    .local v2, "expected":C
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    add-int v4, p2, v0

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 748
    .local v3, "actual":C
    or-int/lit8 v4, v3, 0x20

    if-ne v2, v4, :cond_2b

    .line 745
    .end local v2    # "expected":C
    .end local v3    # "actual":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 749
    .restart local v2    # "expected":C
    .restart local v3    # "actual":C
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected valid boolean literal prefix, but had \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x27

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 753
    .end local v0    # "i":I
    .end local v2    # "expected":C
    .end local v3    # "actual":C
    :cond_56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 754
    return-void

    .line 742
    :cond_5e
    const-string v2, "Unexpected end of boolean literal"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private static final consumeNumericLiteral$calculateExponent(JZ)D
    .registers 7
    .param p0, "exponentAccumulator"    # J
    .param p2, "isExponentPositive"    # Z

    .line 673
    nop

    .line 674
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    if-nez p2, :cond_c

    long-to-double v2, p0

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_14

    .line 675
    :cond_c
    const/4 v2, 0x1

    if-ne p2, v2, :cond_15

    long-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 676
    :goto_14
    return-wide v0

    .line 675
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final decodedString(II)Ljava/lang/String;
    .registers 6
    .param p1, "lastPosition"    # I
    .param p2, "currentPosition"    # I

    .line 428
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    .line 429
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 431
    return-object v0
.end method

.method public static synthetic fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .registers 6

    .line 596
    if-nez p5, :cond_13

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_8

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :cond_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_e

    const-string p3, ""

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;
    .registers 5

    .line 228
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json(BZ)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final fromHexChar(Ljava/lang/CharSequence;I)I
    .registers 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "currentPosition"    # I

    .line 536
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 537
    .local v0, "character":C
    nop

    .line 2
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-gt v3, v0, :cond_11

    .line 537
    const/16 v3, 0x3a

    if-ge v0, v3, :cond_11

    move v3, v1

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    if-eqz v3, :cond_17

    add-int/lit8 v1, v0, -0x30

    goto :goto_3b

    .line 538
    :cond_17
    nop

    .line 2
    const/16 v3, 0x61

    if-gt v3, v0, :cond_22

    .line 538
    const/16 v3, 0x67

    if-ge v0, v3, :cond_22

    move v3, v1

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    if-eqz v3, :cond_2a

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v1, v1, 0xa

    goto :goto_3b

    .line 539
    :cond_2a
    nop

    .line 2
    const/16 v3, 0x41

    if-gt v3, v0, :cond_34

    .line 539
    const/16 v3, 0x47

    if-ge v0, v3, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    if-eqz v1, :cond_3c

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v1, v1, 0xa

    .line 536
    .end local v0    # "character":C
    :goto_3b
    return v1

    .line 540
    .restart local v0    # "character":C
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid toHexChar char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in unicode escape"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method private final insideString(ZC)Z
    .registers 6
    .param p1, "isLenient"    # Z
    .param p2, "char"    # C

    .line 326
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 327
    invoke-static {p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    if-nez v2, :cond_b

    goto :goto_13

    :cond_b
    move v0, v1

    goto :goto_13

    .line 329
    :cond_d
    const/16 v2, 0x22

    if-eq p2, v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    .line 330
    :goto_13
    return v0
.end method

.method public static synthetic require$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 12
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .param p1, "condition"    # Z
    .param p2, "position"    # I
    .param p3, "message"    # Lkotlin/jvm/functions/Function0;

    .line 531
    if-nez p5, :cond_28

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    # getter for: Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I
    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I

    move-result p2

    :cond_a
    const-string p4, "message"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 532
    .local p4, "$i$f$require$kotlinx_serialization_json":I
    if-eqz p1, :cond_13

    .line 533
    return-void

    .line 532
    :cond_13
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p5, Lkotlin/KotlinNothingValueException;

    invoke-direct {p5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p5

    .line 531
    .end local p4    # "$i$f$require$kotlinx_serialization_json":I
    :cond_28
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string p5, "Super calls with default arguments not supported in this target, function: require"

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private final takePeeked()Ljava/lang/String;
    .registers 5

    .line 435
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    .line 771
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 435
    .local v2, "$i$a$-also-AbstractJsonLexer$takePeeked$1":I
    const/4 v3, 0x0

    iput-object v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-also-AbstractJsonLexer$takePeeked$1":I
    return-object v0
.end method

.method public static synthetic tryConsumeNull$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;ZILjava/lang/Object;)Z
    .registers 4

    .line 259
    if-nez p3, :cond_c

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_7

    move p1, p3

    :cond_7
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeNull(Z)Z

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: tryConsumeNull"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final wasUnquotedString()Z
    .registers 4

    .line 451
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method private final withPositionRollback(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 6
    .param p1, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 757
    .local v0, "$i$f$withPositionRollback":I
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 758
    .local v1, "snapshot":I
    nop

    .line 759
    const/4 v2, 0x1

    :try_start_5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_12

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 761
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 759
    return-object v3

    .line 761
    :catchall_12
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method private final writeRange(IIZLkotlin/jvm/functions/Function1;)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "currentChunkHasEscape"    # Z
    .param p4, "consumeChunk"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 370
    if-eqz p3, :cond_a

    .line 371
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 373
    :cond_a
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_11
    return-void
.end method


# virtual methods
.method protected appendRange(II)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 496
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 497
    return-void
.end method

.method public abstract canConsumeValue()Z
.end method

.method public final consumeBoolean()Z
    .registers 2

    .line 694
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final consumeBooleanLenient()Z
    .registers 12

    .line 698
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 699
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_67

    .line 700
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v1, v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 701
    nop

    .line 702
    move v1, v3

    goto :goto_21

    .line 704
    :cond_20
    const/4 v1, 0x0

    .line 700
    :goto_21
    nop

    .line 706
    .local v1, "hasQuotation":Z
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBoolean(I)Z

    move-result v4

    .line 707
    .local v4, "result":Z
    if-eqz v1, :cond_66

    .line 708
    iget v5, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v5, v6, :cond_56

    .line 709
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_46

    .line 711
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    goto :goto_66

    .line 710
    :cond_46
    const-string v6, "Expected closing quotation mark"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 708
    :cond_56
    const-string v6, "EOF"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 713
    :cond_66
    :goto_66
    return v4

    .line 699
    .end local v1    # "hasQuotation":Z
    .end local v4    # "result":Z
    :cond_67
    const-string v6, "EOF"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public abstract consumeKeyString()Ljava/lang/String;
.end method

.method public abstract consumeNextToken()B
.end method

.method public final consumeNextToken(B)B
    .registers 6
    .param p1, "expected"    # B

    .line 192
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    .line 193
    .local v0, "token":B
    if-ne v0, p1, :cond_7

    .line 196
    return v0

    .line 194
    :cond_7
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public consumeNextToken(C)V
    .registers 6
    .param p1, "expected"    # C

    .line 200
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->ensureHaveChars()V

    .line 201
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    .local v0, "source":Ljava/lang/CharSequence;
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 203
    .local v1, "cpos":I
    :goto_9
    nop

    .line 204
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 205
    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    .line 206
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cpos":I
    .local v2, "cpos":I
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 207
    .local v1, "c":C
    const/16 v3, 0x20

    if-eq v1, v3, :cond_30

    const/16 v3, 0xa

    if-eq v1, v3, :cond_30

    const/16 v3, 0xd

    if-eq v1, v3, :cond_30

    const/16 v3, 0x9

    if-ne v1, v3, :cond_28

    goto :goto_30

    .line 208
    :cond_28
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 209
    if-ne v1, p1, :cond_2d

    return-void

    .line 210
    :cond_2d
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    .line 203
    .end local v1    # "c":C
    :cond_30
    :goto_30
    move v1, v2

    goto :goto_9

    .line 212
    .end local v2    # "cpos":I
    .local v1, "cpos":I
    :cond_32
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 213
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    .line 214
    return-void
.end method

.method public final consumeNumericLiteral()J
    .registers 24

    .line 606
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 607
    .local v0, "current":I
    invoke-virtual {v6, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v7

    .line 608
    .end local v0    # "current":I
    .local v7, "current":I
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v7, v0, :cond_279

    const/4 v0, -0x1

    if-eq v7, v0, :cond_279

    .line 609
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_42

    .line 612
    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v7, v0, :cond_31

    .line 613
    const/4 v0, 0x1

    goto :goto_43

    .line 612
    :cond_31
    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 615
    :cond_42
    const/4 v0, 0x0

    .line 609
    :goto_43
    move v8, v0

    .line 617
    .local v8, "hasQuotation":Z
    const-wide/16 v4, 0x0

    .line 618
    .local v4, "accumulator":J
    const-wide/16 v9, 0x0

    .line 619
    .local v9, "exponentAccumulator":J
    const/4 v0, 0x0

    .line 620
    .local v0, "isNegative":Z
    const/4 v11, 0x0

    .line 621
    .local v11, "isExponentPositive":Z
    const/4 v12, 0x0

    .line 622
    .local v12, "hasExponent":Z
    move v13, v7

    move-wide v14, v9

    move/from16 v16, v12

    move-wide v9, v4

    move v12, v11

    move v11, v7

    move v7, v0

    .line 623
    .end local v0    # "isNegative":Z
    .end local v4    # "accumulator":J
    .local v7, "isNegative":Z
    .local v9, "accumulator":J
    .local v11, "current":I
    .local v12, "isExponentPositive":Z
    .local v13, "start":I
    .local v14, "exponentAccumulator":J
    .local v16, "hasExponent":Z
    :goto_53
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v11, v0, :cond_17e

    .line 624
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 625
    .local v5, "ch":C
    const/16 v0, 0x65

    if-eq v5, v0, :cond_72

    const/16 v0, 0x45

    if-ne v5, v0, :cond_6e

    goto :goto_72

    :cond_6e
    move/from16 v18, v12

    move v12, v5

    goto :goto_ae

    :cond_72
    :goto_72
    if-nez v16, :cond_ab

    .line 626
    if-eq v11, v13, :cond_7d

    .line 627
    const/4 v12, 0x1

    .line 628
    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 629
    nop

    .line 630
    goto :goto_53

    .line 626
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected symbol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in numeric literal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v18, v12

    move v12, v5

    .end local v5    # "ch":C
    .local v12, "ch":C
    .local v18, "isExponentPositive":Z
    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 625
    .end local v18    # "isExponentPositive":Z
    .restart local v5    # "ch":C
    .local v12, "isExponentPositive":Z
    :cond_ab
    move/from16 v18, v12

    move v12, v5

    .line 632
    .end local v5    # "ch":C
    .local v12, "ch":C
    .restart local v18    # "isExponentPositive":Z
    :goto_ae
    const/16 v0, 0x2d

    if-ne v12, v0, :cond_cd

    if-eqz v16, :cond_cd

    .line 633
    if-eq v11, v13, :cond_bc

    .line 634
    const/4 v0, 0x0

    .end local v18    # "isExponentPositive":Z
    .local v0, "isExponentPositive":Z
    add-int/lit8 v11, v11, 0x1

    .line 635
    nop

    .line 636
    move v12, v0

    goto :goto_53

    .line 633
    .end local v0    # "isExponentPositive":Z
    .restart local v18    # "isExponentPositive":Z
    :cond_bc
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 638
    :cond_cd
    const/16 v4, 0x2b

    if-ne v12, v4, :cond_ed

    if-eqz v16, :cond_ed

    .line 639
    if-eq v11, v13, :cond_dc

    .line 640
    const/4 v0, 0x1

    .end local v18    # "isExponentPositive":Z
    .restart local v0    # "isExponentPositive":Z
    add-int/lit8 v11, v11, 0x1

    .line 641
    nop

    .line 642
    move v12, v0

    goto/16 :goto_53

    .line 639
    .end local v0    # "isExponentPositive":Z
    .restart local v18    # "isExponentPositive":Z
    :cond_dc
    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 644
    :cond_ed
    if-ne v12, v0, :cond_10a

    .line 645
    if-ne v11, v13, :cond_f9

    .line 646
    const/4 v7, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 647
    nop

    .line 648
    move/from16 v12, v18

    goto/16 :goto_53

    .line 645
    :cond_f9
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 650
    :cond_10a
    invoke-static {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v17

    .line 651
    .local v17, "token":B
    if-nez v17, :cond_17b

    add-int/lit8 v11, v11, 0x1

    .line 652
    nop

    .line 653
    add-int/lit8 v5, v12, -0x30

    .line 654
    .local v5, "digit":I
    const/16 v0, 0xa

    if-ltz v5, :cond_11d

    if-ge v5, v0, :cond_11d

    const/4 v4, 0x1

    goto :goto_11e

    :cond_11d
    const/4 v4, 0x0

    :goto_11e
    if-eqz v4, :cond_152

    .line 655
    if-eqz v16, :cond_12c

    .line 656
    int-to-long v2, v0

    mul-long/2addr v2, v14

    move-wide/from16 v20, v14

    .end local v14    # "exponentAccumulator":J
    .local v20, "exponentAccumulator":J
    int-to-long v14, v5

    add-long/2addr v14, v2

    .line 657
    .end local v20    # "exponentAccumulator":J
    .restart local v14    # "exponentAccumulator":J
    move/from16 v12, v18

    goto/16 :goto_53

    .line 659
    :cond_12c
    move-wide/from16 v20, v14

    .end local v14    # "exponentAccumulator":J
    .restart local v20    # "exponentAccumulator":J
    int-to-long v2, v0

    mul-long/2addr v2, v9

    int-to-long v14, v5

    sub-long v9, v2, v14

    .line 660
    const-wide/16 v2, 0x0

    cmp-long v0, v9, v2

    if-gtz v0, :cond_13f

    move/from16 v12, v18

    move-wide/from16 v14, v20

    goto/16 :goto_53

    :cond_13f
    const-string v1, "Numeric value overflow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v15, v5

    .end local v5    # "digit":I
    .local v15, "digit":I
    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 654
    .end local v15    # "digit":I
    .end local v20    # "exponentAccumulator":J
    .restart local v5    # "digit":I
    .restart local v14    # "exponentAccumulator":J
    :cond_152
    move v15, v5

    .end local v5    # "digit":I
    .restart local v15    # "digit":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected symbol \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' in numeric literal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 651
    .end local v15    # "digit":I
    :cond_17b
    move-wide/from16 v20, v14

    .end local v14    # "exponentAccumulator":J
    .restart local v20    # "exponentAccumulator":J
    goto :goto_182

    .line 623
    .end local v17    # "token":B
    .end local v18    # "isExponentPositive":Z
    .end local v20    # "exponentAccumulator":J
    .local v12, "isExponentPositive":Z
    .restart local v14    # "exponentAccumulator":J
    :cond_17e
    move/from16 v18, v12

    move-wide/from16 v20, v14

    .line 662
    .end local v12    # "isExponentPositive":Z
    .end local v14    # "exponentAccumulator":J
    .restart local v18    # "isExponentPositive":Z
    .restart local v20    # "exponentAccumulator":J
    :goto_182
    if-eq v11, v13, :cond_186

    const/4 v0, 0x1

    goto :goto_187

    :cond_186
    const/4 v0, 0x0

    :goto_187
    move v12, v0

    .line 663
    .local v12, "hasChars":Z
    if-eq v13, v11, :cond_264

    if-eqz v7, :cond_197

    add-int/lit8 v0, v11, -0x1

    if-eq v13, v0, :cond_191

    goto :goto_197

    :cond_191
    move/from16 v14, v18

    move-wide/from16 v21, v20

    goto/16 :goto_268

    .line 666
    :cond_197
    :goto_197
    if-eqz v8, :cond_1ca

    .line 667
    if-eqz v12, :cond_1b9

    .line 668
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1a8

    add-int/lit8 v11, v11, 0x1

    .line 669
    goto :goto_1ca

    .line 668
    :cond_1a8
    const-string v1, "Expected closing quotation mark"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 667
    :cond_1b9
    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 671
    :cond_1ca
    :goto_1ca
    iput v11, v6, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 678
    if-eqz v16, :cond_242

    .line 679
    long-to-double v0, v9

    move/from16 v14, v18

    move-wide/from16 v2, v20

    .end local v18    # "isExponentPositive":Z
    .end local v20    # "exponentAccumulator":J
    .local v2, "exponentAccumulator":J
    .local v14, "isExponentPositive":Z
    invoke-static {v2, v3, v14}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNumericLiteral$calculateExponent(JZ)D

    move-result-wide v17

    mul-double v0, v0, v17

    .line 680
    .local v0, "doubleAccumulator":D
    const-wide/high16 v17, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v5, v0, v17

    if-gtz v5, :cond_22d

    const-wide/high16 v17, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v5, v0, v17

    if-ltz v5, :cond_22d

    .line 681
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    cmpg-double v5, v17, v0

    if-nez v5, :cond_1f0

    const/16 v19, 0x1

    goto :goto_1f2

    :cond_1f0
    const/16 v19, 0x0

    :goto_1f2
    if-eqz v19, :cond_1f8

    .line 682
    double-to-long v9, v0

    move-wide/from16 v21, v2

    goto :goto_246

    .line 681
    :cond_1f8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-wide/from16 v19, v0

    .end local v0    # "doubleAccumulator":D
    .local v19, "doubleAccumulator":D
    move-object/from16 v0, p0

    move-object v1, v4

    move-wide/from16 v21, v2

    .end local v2    # "exponentAccumulator":J
    .local v21, "exponentAccumulator":J
    move v2, v5

    move-object v3, v15

    move/from16 v4, v17

    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 680
    .end local v19    # "doubleAccumulator":D
    .end local v21    # "exponentAccumulator":J
    .restart local v0    # "doubleAccumulator":D
    .restart local v2    # "exponentAccumulator":J
    :cond_22d
    move-wide/from16 v19, v0

    move-wide/from16 v21, v2

    .end local v0    # "doubleAccumulator":D
    .end local v2    # "exponentAccumulator":J
    .restart local v19    # "doubleAccumulator":D
    .restart local v21    # "exponentAccumulator":J
    const-string v1, "Numeric value overflow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 678
    .end local v14    # "isExponentPositive":Z
    .end local v19    # "doubleAccumulator":D
    .end local v21    # "exponentAccumulator":J
    .restart local v18    # "isExponentPositive":Z
    .restart local v20    # "exponentAccumulator":J
    :cond_242
    move/from16 v14, v18

    move-wide/from16 v21, v20

    .line 685
    .end local v18    # "isExponentPositive":Z
    .end local v20    # "exponentAccumulator":J
    .restart local v14    # "isExponentPositive":Z
    .restart local v21    # "exponentAccumulator":J
    :goto_246
    nop

    .line 686
    if-eqz v7, :cond_24b

    move-wide v0, v9

    goto :goto_252

    .line 687
    :cond_24b
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v9, v0

    if-eqz v0, :cond_253

    neg-long v0, v9

    .line 685
    :goto_252
    return-wide v0

    .line 688
    :cond_253
    const-string v1, "Numeric value overflow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 663
    .end local v14    # "isExponentPositive":Z
    .end local v21    # "exponentAccumulator":J
    .restart local v18    # "isExponentPositive":Z
    .restart local v20    # "exponentAccumulator":J
    :cond_264
    move/from16 v14, v18

    move-wide/from16 v21, v20

    .line 664
    .end local v18    # "isExponentPositive":Z
    .end local v20    # "exponentAccumulator":J
    .restart local v14    # "isExponentPositive":Z
    .restart local v21    # "exponentAccumulator":J
    :goto_268
    const-string v1, "Expected numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 608
    .end local v8    # "hasQuotation":Z
    .end local v9    # "accumulator":J
    .end local v11    # "current":I
    .end local v12    # "hasChars":Z
    .end local v13    # "start":I
    .end local v14    # "isExponentPositive":Z
    .end local v16    # "hasExponent":Z
    .end local v21    # "exponentAccumulator":J
    .local v7, "current":I
    :cond_279
    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final consumeString()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 380
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_9
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 16
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startPosition"    # I
    .param p3, "current"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    move v0, p3

    .line 389
    .local v0, "currentPosition":I
    move v1, p2

    .line 390
    .local v1, "lastPosition":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 391
    .local v2, "char":C
    const/4 v3, 0x0

    .line 392
    .local v3, "usedAppend":Z
    :goto_d
    const/16 v4, 0x22

    if-eq v2, v4, :cond_5c

    .line 393
    const/16 v4, 0x5c

    const/4 v5, -0x1

    if-ne v2, v4, :cond_33

    .line 394
    const/4 v3, 0x1

    .line 395
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEscape(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 396
    if-eq v0, v5, :cond_23

    .line 398
    move v1, v0

    goto :goto_57

    .line 397
    :cond_23
    const-string v7, "Unexpected EOF"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    move v8, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 398
    :cond_33
    add-int/lit8 v0, v0, 0x1

    .line 399
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v0, v4, :cond_57

    .line 400
    const/4 v3, 0x1

    .line 402
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    .line 403
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 404
    if-eq v0, v5, :cond_47

    .line 406
    move v1, v0

    goto :goto_57

    .line 405
    :cond_47
    const-string v7, "Unexpected EOF"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    move v8, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 408
    :cond_57
    :goto_57
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_d

    .line 411
    :cond_5c
    if-nez v3, :cond_63

    .line 413
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_67

    .line 416
    :cond_63
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v4

    .line 411
    :goto_67
    nop

    .line 418
    .local v4, "string":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 419
    return-object v4
.end method

.method public consumeStringChunked(ZLkotlin/jvm/functions/Function1;)V
    .registers 15
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

    .line 333
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    .line 334
    .local v0, "nextToken":B
    if-eqz p1, :cond_e

    if-eqz v0, :cond_e

    return-void

    .line 336
    :cond_e
    const/16 v1, 0x22

    if-nez p1, :cond_15

    .line 337
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    .line 339
    :cond_15
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 340
    .local v2, "currentPosition":I
    move v3, v2

    .line 341
    .local v3, "lastPosition":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 342
    .local v4, "char":C
    const/4 v5, 0x0

    .line 343
    .local v5, "usedAppend":Z
    :goto_21
    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->insideString(ZC)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 344
    if-nez p1, :cond_38

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_38

    .line 345
    const/4 v5, 0x1

    .line 346
    invoke-direct {p0, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEscape(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v2

    .line 347
    move v3, v2

    goto :goto_3a

    .line 349
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 351
    :goto_3a
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v2, v6, :cond_61

    .line 353
    invoke-direct {p0, v3, v2, v5, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->writeRange(IIZLkotlin/jvm/functions/Function1;)V

    .line 354
    const/4 v5, 0x0

    .line 355
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v2

    .line 356
    const/4 v6, -0x1

    if-eq v2, v6, :cond_51

    .line 358
    move v3, v2

    goto :goto_61

    .line 357
    :cond_51
    const-string v7, "EOF"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    move v8, v2

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 360
    :cond_61
    :goto_61
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_21

    .line 362
    :cond_6a
    invoke-direct {p0, v3, v2, v5, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->writeRange(IIZLkotlin/jvm/functions/Function1;)V

    .line 363
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 364
    if-nez p1, :cond_74

    .line 365
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    .line 367
    :cond_74
    return-void
.end method

.method public final consumeStringLenient()Ljava/lang/String;
    .registers 10

    .line 456
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 457
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    :cond_9
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 460
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_9e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9e

    .line 461
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    .line 462
    .local v2, "token":B
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 463
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 466
    :cond_2e
    if-nez v2, :cond_75

    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, "usedAppend":Z
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v4

    if-nez v4, :cond_62

    add-int/lit8 v0, v0, 0x1

    .line 471
    nop

    .line 472
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v0, v4, :cond_31

    .line 473
    const/4 v3, 0x1

    .line 474
    iget v4, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v4, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    .line 475
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v4

    .line 476
    .local v4, "eof":I
    if-ne v4, v1, :cond_60

    .line 478
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 479
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 481
    :cond_60
    move v0, v4

    .end local v4    # "eof":I
    goto :goto_31

    .line 485
    :cond_62
    if-nez v3, :cond_6b

    .line 486
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 488
    :cond_6b
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v1

    .line 485
    :goto_71
    nop

    .line 490
    .local v1, "result":Ljava/lang/String;
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 491
    return-object v1

    .line 467
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "usedAppend":Z
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected beginning of the string, but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 460
    .end local v2    # "token":B
    :cond_9e
    const-string v2, "EOF"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final consumeStringLenientNotNull()Ljava/lang/String;
    .registers 9

    .line 439
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "result":Ljava/lang/String;
    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->wasUnquotedString()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_23

    .line 444
    :cond_13
    const-string v3, "Unexpected \'null\' value instead of string literal"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 446
    :cond_23
    :goto_23
    return-object v0
.end method

.method public final discardPeeked()V
    .registers 2

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public ensureHaveChars()V
    .registers 1

    .line 157
    return-void
.end method

.method public final expectEof()V
    .registers 9

    .line 178
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    .line 179
    .local v0, "nextToken":B
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 181
    return-void

    .line 180
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected EOF after parsing, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "hint"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1b

    const-string v0, ""

    goto :goto_2e

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "hintMessage":Ljava/lang/String;
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonPath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v1

    throw v1
.end method

.method public final fail$kotlinx_serialization_json(BZ)Ljava/lang/Void;
    .registers 12
    .param p1, "expectedToken"    # B
    .param p2, "wasConsumed"    # Z

    .line 230
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "expected":Ljava/lang/String;
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-eqz p2, :cond_a

    add-int/lit8 v1, v1, -0x1

    .line 232
    .local v1, "position":I
    :cond_a
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_26

    if-gez v1, :cond_19

    goto :goto_26

    :cond_19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_26
    :goto_26
    const-string v2, "EOF"

    :goto_28
    move-object v8, v2

    .line 233
    .local v8, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but had \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v1

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public final failOnUnknownKey(Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "processed":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 593
    .local v1, "lastIndexOf":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an unknown key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {p0, v2, v1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method protected final getEscapedString()Ljava/lang/StringBuilder;
    .registers 2

    .line 188
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected abstract getSource()Ljava/lang/CharSequence;
.end method

.method public indexOf(CI)I
    .registers 9
    .param p1, "char"    # C
    .param p2, "startPos"    # I

    .line 317
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isNotEof()Z
    .registers 3

    .line 159
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected final isValidValueStart(C)Z
    .registers 5
    .param p1, "c"    # C

    .line 171
    nop

    .line 172
    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_9

    :goto_7
    move v0, v2

    goto :goto_f

    :cond_9
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_e

    goto :goto_7

    :cond_e
    move v0, v1

    :goto_f
    if-eqz v0, :cond_13

    :goto_11
    move v0, v2

    goto :goto_19

    :cond_13
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_18

    goto :goto_11

    :cond_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_1d

    :goto_1b
    move v0, v2

    goto :goto_23

    :cond_1d
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_22

    goto :goto_1b

    :cond_22
    move v0, v1

    :goto_23
    if-eqz v0, :cond_26

    goto :goto_27

    .line 173
    :cond_26
    move v1, v2

    .line 171
    :goto_27
    return v1
.end method

.method public abstract peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public final peekNextToken()B
    .registers 6

    .line 237
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    .local v0, "source":Ljava/lang/CharSequence;
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 239
    .local v1, "cpos":I
    :goto_6
    nop

    .line 240
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 241
    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v1, v2, :cond_2e

    .line 242
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 243
    .local v2, "ch":C
    const/16 v4, 0x20

    if-eq v2, v4, :cond_2a

    if-eq v2, v3, :cond_2a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x9

    if-ne v2, v3, :cond_23

    goto :goto_2a

    .line 247
    :cond_23
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 248
    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v3

    return v3

    .line 243
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    .line 244
    nop

    .line 245
    goto :goto_6

    .line 250
    .end local v2    # "ch":C
    :cond_2e
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 251
    return v3
.end method

.method public final peekString(Z)Ljava/lang/String;
    .registers 5
    .param p1, "isLenient"    # Z

    .line 301
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    .line 302
    .local v0, "token":B
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_12

    .line 303
    if-eq v0, v2, :cond_d

    if-eqz v0, :cond_d

    return-object v1

    .line 304
    :cond_d
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 306
    :cond_12
    if-eq v0, v2, :cond_15

    return-object v1

    .line 307
    :cond_15
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :goto_19
    nop

    .line 309
    .local v1, "string":Ljava/lang/String;
    iput-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    .line 310
    return-object v1
.end method

.method public abstract prefetchOrEof(I)I
.end method

.method public final require$kotlinx_serialization_json(ZILkotlin/jvm/functions/Function0;)V
    .registers 12
    .param p1, "condition"    # Z
    .param p2, "position"    # I
    .param p3, "message"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 532
    .local v0, "$i$f$require$kotlinx_serialization_json":I
    if-eqz p1, :cond_9

    .line 533
    return-void

    .line 532
    :cond_9
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method protected final setEscapedString(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/StringBuilder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final skipElement(Z)V
    .registers 13
    .param p1, "allowLenientStrings"    # Z

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 546
    .local v0, "tokenStack":Ljava/util/List;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    .line 547
    .local v1, "lastToken":B
    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v3, :cond_16

    if-eq v1, v2, :cond_16

    .line 548
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    .line 549
    return-void

    .line 551
    :cond_16
    :goto_16
    nop

    .line 552
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    .line 553
    const/4 v4, 0x1

    if-ne v1, v4, :cond_28

    .line 554
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_27

    :cond_24
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    .line 555
    :goto_27
    goto :goto_16

    .line 557
    :cond_28
    nop

    .line 558
    if-ne v1, v3, :cond_2c

    :goto_2b
    goto :goto_30

    :cond_2c
    if-ne v1, v2, :cond_2f

    goto :goto_2b

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    if-eqz v4, :cond_3a

    .line 559
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 561
    :cond_3a
    const/16 v4, 0x9

    if-ne v1, v4, :cond_6e

    .line 562
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    if-ne v4, v3, :cond_4e

    .line 567
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_a5

    .line 563
    :cond_4e
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found ] instead of } at path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    .line 562
    invoke-static {v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v2

    throw v2

    .line 569
    :cond_6e
    const/4 v4, 0x7

    if-ne v1, v4, :cond_a1

    .line 570
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_81

    .line 575
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_a5

    .line 571
    :cond_81
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found } instead of ] at path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    .line 570
    invoke-static {v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v2

    throw v2

    .line 577
    :cond_a1
    const/16 v4, 0xa

    if-eq v1, v4, :cond_af

    .line 579
    :goto_a5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    .line 580
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_16

    return-void

    .line 577
    :cond_af
    const-string v6, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public skipWhitespaces()I
    .registers 4

    .line 281
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 283
    .local v0, "current":I
    :goto_2
    nop

    .line 284
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 285
    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 286
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 288
    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v1, v2, :cond_24

    const/16 v2, 0xa

    if-eq v1, v2, :cond_24

    const/16 v2, 0xd

    if-eq v1, v2, :cond_24

    const/16 v2, 0x9

    if-ne v1, v2, :cond_23

    goto :goto_24

    .line 291
    :cond_23
    goto :goto_27

    .line 288
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    .line 289
    goto :goto_2

    .line 294
    .end local v1    # "c":C
    :cond_27
    :goto_27
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 295
    return v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 318
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader(source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract tryConsumeComma()Z
.end method

.method public final tryConsumeNull(Z)Z
    .registers 10
    .param p1, "doConsume"    # Z

    .line 260
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 261
    .local v0, "current":I
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 263
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 264
    .local v1, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4d

    const/4 v4, -0x1

    if-ne v0, v4, :cond_19

    goto :goto_4d

    .line 265
    :cond_19
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_32

    .line 266
    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v6

    add-int v7, v0, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2f

    return v2

    .line 265
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 272
    .end local v4    # "i":I
    :cond_32
    if-le v1, v3, :cond_45

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v4, v0, 0x4

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v3

    if-nez v3, :cond_45

    return v2

    .line 274
    :cond_45
    if-eqz p1, :cond_4b

    .line 275
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 277
    :cond_4b
    const/4 v2, 0x1

    return v2

    .line 264
    :cond_4d
    :goto_4d
    return v2
.end method

.method protected final unexpectedToken(C)V
    .registers 7
    .param p1, "expected"    # C

    .line 217
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-lez v0, :cond_38

    const/16 v1, 0x22

    if-ne p1, v1, :cond_38

    .line 218
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const/4 v2, 0x0

    .line 766
    .local v2, "$i$f$withPositionRollback":I
    iget v3, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 767
    .local v3, "snapshot$iv":I
    nop

    .line 768
    const/4 v4, 0x0

    .line 219
    .local v4, "$i$a$-withPositionRollback-AbstractJsonLexer$unexpectedToken$inputLiteral$1":I
    add-int/lit8 v0, v0, -0x1

    :try_start_10
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 220
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_34

    .line 768
    .end local v4    # "$i$a$-withPositionRollback-AbstractJsonLexer$unexpectedToken$inputLiteral$1":I
    nop

    .line 770
    iput v3, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 768
    nop

    .line 218
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v2    # "$i$f$withPositionRollback":I
    .end local v3    # "snapshot$iv":I
    nop

    .line 222
    .local v0, "inputLiteral":Ljava/lang/String;
    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 223
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls to default values."

    const-string v3, "Expected string literal but \'null\' literal was found"

    invoke-virtual {p0, v3, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 770
    .end local v0    # "inputLiteral":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v2    # "$i$f$withPositionRollback":I
    .restart local v3    # "snapshot$iv":I
    :catchall_34
    move-exception v0

    iput v3, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    throw v0

    .line 225
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v2    # "$i$f$withPositionRollback":I
    .end local v3    # "snapshot$iv":I
    :cond_38
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
