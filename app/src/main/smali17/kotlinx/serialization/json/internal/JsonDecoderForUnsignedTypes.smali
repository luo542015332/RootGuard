.class public final Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes\n+ 2 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,396:1\n389#2,5:397\n389#2,5:402\n389#2,5:407\n389#2,5:412\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes\n*L\n382#1:397,5\n383#1:402,5\n384#1:407,5\n385#1:412,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
        "lexer",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "decodeByte",
        "",
        "decodeElementIndex",
        "",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "decodeInt",
        "decodeLong",
        "",
        "decodeShort",
        "",
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
.field private final lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field private final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V
    .locals 1
    .param p1, "lexer"    # Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .param p2, "json"    # Lkotlinx/serialization/json/Json;

    const-string v0, "lexer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 376
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 379
    invoke-virtual {p2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 375
    return-void
.end method


# virtual methods
.method public decodeByte()B
    .locals 11

    .line 384
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v6, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "UByte"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 407
    .local v8, "$i$f$parseString":I
    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 409
    move-object v0, v9

    .local v0, "$this$decodeByte_u24lambda_u242":Ljava/lang/String;
    const/4 v1, 0x0

    .line 384
    .local v1, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeByte$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUByte(Ljava/lang/String;)B

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "$this$decodeByte_u24lambda_u242":Ljava/lang/String;
    .end local v1    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeByte$1":I
    nop

    .line 384
    .end local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return v2

    .line 410
    .restart local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 411
    .local v10, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for input \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 2
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 380
    const-string/jumbo v1, "unsupported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeInt()I
    .locals 11

    .line 382
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v6, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "UInt"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 397
    .local v8, "$i$f$parseString":I
    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 399
    move-object v0, v9

    .local v0, "$this$decodeInt_u24lambda_u240":Ljava/lang/String;
    const/4 v1, 0x0

    .line 382
    .local v1, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeInt$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "$this$decodeInt_u24lambda_u240":Ljava/lang/String;
    .end local v1    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeInt$1":I
    nop

    .line 382
    .end local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return v2

    .line 400
    .restart local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 401
    .local v10, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for input \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public decodeLong()J
    .locals 11

    .line 383
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v6, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "ULong"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 402
    .local v8, "$i$f$parseString":I
    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 404
    move-object v0, v9

    .local v0, "$this$decodeLong_u24lambda_u241":Ljava/lang/String;
    const/4 v1, 0x0

    .line 383
    .local v1, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeLong$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toULong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "$this$decodeLong_u24lambda_u241":Ljava/lang/String;
    .end local v1    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeLong$1":I
    nop

    .line 383
    .end local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return-wide v2

    .line 405
    .restart local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 406
    .local v10, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for input \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public decodeShort()S
    .locals 11

    .line 385
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v6, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "UShort"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 412
    .local v8, "$i$f$parseString":I
    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 414
    move-object v0, v9

    .local v0, "$this$decodeShort_u24lambda_u243":Ljava/lang/String;
    const/4 v1, 0x0

    .line 385
    .local v1, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeShort$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUShort(Ljava/lang/String;)S

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v0    # "$this$decodeShort_u24lambda_u243":Ljava/lang/String;
    .end local v1    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeShort$1":I
    nop

    .line 385
    .end local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return v2

    .line 415
    .restart local v6    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 416
    .local v10, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for input \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 379
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method
