.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "JsonTreeReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonTreeReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,118:1\n26#1,24:119\n26#1,24:143\n531#2,3:167\n*S KotlinDebug\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n*L\n18#1:119,24\n23#1:143,24\n62#1:167,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0002J\u0017\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0013H\u0082\u0008J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J!\u0010\u000f\u001a\u00020\u000c*\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000c0\u0017H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeReader;",
        "",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "lexer",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V",
        "isLenient",
        "",
        "stackDepth",
        "",
        "read",
        "Lkotlinx/serialization/json/JsonElement;",
        "readArray",
        "readDeepRecursive",
        "readObject",
        "readObjectImpl",
        "Lkotlinx/serialization/json/JsonObject;",
        "reader",
        "Lkotlin/Function0;",
        "readValue",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "isString",
        "Lkotlin/DeepRecursiveScope;",
        "",
        "(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final isLenient:Z

.field private final lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field private stackDepth:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V
    .locals 1
    .param p1, "configuration"    # Lkotlinx/serialization/json/JsonConfiguration;
    .param p2, "lexer"    # Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 15
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    .line 11
    return-void
.end method

.method public static final synthetic access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    return-object v0
.end method

.method public static final synthetic access$readArray(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 10
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;
    .param p1, "$receiver"    # Lkotlin/DeepRecursiveScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 10
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;
    .param p1, "isString"    # Z

    .line 10
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 13

    .line 53
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    .line 55
    .local v0, "lastToken":B
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, "result":Ljava/util/ArrayList;
    :cond_0
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v3

    const/16 v4, 0x9

    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .line 59
    .local v3, "element":Lkotlinx/serialization/json/JsonElement;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    .line 61
    if-eq v0, v2, :cond_0

    .line 62
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 167
    .local v4, "condition$iv":Z
    .local v5, "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    :goto_1
    invoke-static {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I

    move-result v11

    .local v11, "position$iv":I
    const/4 v12, 0x0

    .line 168
    .local v12, "$i$f$require$kotlinx_serialization_json":I
    if-eqz v4, :cond_2

    .line 169
    nop

    .end local v3    # "element":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "condition$iv":Z
    .end local v5    # "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v11    # "position$iv":I
    .end local v12    # "$i$f$require$kotlinx_serialization_json":I
    goto :goto_0

    .line 168
    .restart local v3    # "element":Lkotlinx/serialization/json/JsonElement;
    .restart local v4    # "condition$iv":Z
    .restart local v5    # "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v11    # "position$iv":I
    .restart local v12    # "$i$f$require$kotlinx_serialization_json":I
    :cond_2
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$-require$kotlinx_serialization_json$default-JsonTreeReader$readArray$1":I
    const-string v6, "Expected end of the array or comma"

    .line 168
    .end local v2    # "$i$a$-require$kotlinx_serialization_json$default-JsonTreeReader$readArray$1":I
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move v7, v11

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 66
    .end local v3    # "element":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "condition$iv":Z
    .end local v5    # "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v11    # "position$iv":I
    .end local v12    # "$i$f$require$kotlinx_serialization_json":I
    :cond_3
    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    .line 67
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 68
    :cond_4
    if-eq v0, v2, :cond_5

    .line 71
    :goto_2
    new-instance v2, Lkotlinx/serialization/json/JsonArray;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    return-object v2

    .line 69
    :cond_5
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v4, "Unexpected trailing comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 55
    .end local v1    # "result":Ljava/util/ArrayList;
    :cond_6
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v4, "Unexpected leading comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method private final readDeepRecursive()Lkotlinx/serialization/json/JsonElement;
    .locals 3

    .line 108
    new-instance v0, Lkotlin/DeepRecursiveFunction;

    .line 116
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 108
    invoke-direct {v0, v1}, Lkotlin/DeepRecursiveFunction;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 116
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v1}, Lkotlin/DeepRecursiveKt;->invoke(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method private final readObject(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/DeepRecursiveScope<",
            "Lkotlin/Unit;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 22
    iget v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x4

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x0

    .local v4, "$i$f$readObjectImpl":I
    const/4 v8, 0x0

    .local v8, "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "key$iv":Ljava/lang/String;
    iget-object v10, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/LinkedHashMap;

    .local v10, "result$iv":Ljava/util/LinkedHashMap;
    iget-object v11, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/serialization/json/internal/JsonTreeReader;

    .local v11, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    iget-object v12, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlin/DeepRecursiveScope;

    .local v12, "$this$readObject":Lkotlin/DeepRecursiveScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v10

    move v10, v8

    move v8, v4

    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    .end local v4    # "$i$f$readObjectImpl":I
    .end local v8    # "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    .end local v9    # "key$iv":Ljava/lang/String;
    .end local v10    # "result$iv":Ljava/util/LinkedHashMap;
    .end local v11    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .end local v12    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lkotlinx/serialization/json/internal/JsonTreeReader;
    move-object/from16 v8, p1

    .line 23
    .local v8, "$this$readObject":Lkotlin/DeepRecursiveScope;
    nop

    .local v4, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    const/4 v9, 0x0

    .line 143
    .local v9, "$i$f$readObjectImpl":I
    iget-object v10, v4, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v10, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v10

    .line 144
    .local v10, "lastToken$iv":B
    iget-object v11, v4, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v11

    if-eq v11, v7, :cond_8

    .line 145
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v8

    move-object v8, v4

    move v4, v9

    .line 146
    .end local v9    # "$i$f$readObjectImpl":I
    .local v4, "$i$f$readObjectImpl":I
    .local v8, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v11, "result$iv":Ljava/util/LinkedHashMap;
    .restart local v12    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    :goto_1
    iget-object v9, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 148
    .end local v10    # "lastToken$iv":B
    iget-boolean v9, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v9, :cond_1

    iget-object v9, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    iget-object v9, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "key$iv":Ljava/lang/String;
    :goto_2
    iget-object v10, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 150
    const/4 v10, 0x0

    .line 23
    .local v10, "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v12, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    invoke-virtual {v12, v13, v0}, Lkotlin/DeepRecursiveScope;->callRecursive(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_2

    .line 22
    return-object v3

    .line 23
    :cond_2
    move-object/from16 v20, v3

    move-object v3, v1

    move-object v1, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v8

    move v8, v4

    move-object/from16 v4, v20

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$readObjectImpl":I
    .local v3, "$result":Ljava/lang/Object;
    .local v8, "$i$f$readObjectImpl":I
    .local v11, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v12, "result$iv":Ljava/util/LinkedHashMap;
    .local v13, "$this$readObject":Lkotlin/DeepRecursiveScope;
    :goto_3
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 150
    .end local v10    # "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    nop

    .line 151
    .local v1, "element$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v10, v12

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v10, v11, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v10

    .line 154
    .local v10, "lastToken$iv":B
    nop

    .line 155
    if-eq v10, v7, :cond_4

    .line 156
    .end local v13    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    if-ne v10, v5, :cond_3

    move-object v1, v3

    move v4, v8

    move-object v8, v11

    move-object v11, v12

    goto :goto_4

    .line 157
    .end local v10    # "lastToken$iv":B
    .end local v12    # "result$iv":Ljava/util/LinkedHashMap;
    :cond_3
    iget-object v14, v11, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v15, "Expected end of the object or comma"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 155
    .restart local v10    # "lastToken$iv":B
    .restart local v12    # "result$iv":Ljava/util/LinkedHashMap;
    .restart local v13    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    :cond_4
    move-object v1, v3

    move-object v3, v4

    move v4, v8

    move-object v8, v11

    move-object v11, v12

    move-object v12, v13

    goto :goto_1

    .line 161
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "key$iv":Ljava/lang/String;
    .end local v12    # "result$iv":Ljava/util/LinkedHashMap;
    .end local v13    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v4    # "$i$f$readObjectImpl":I
    .local v8, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v11, "result$iv":Ljava/util/LinkedHashMap;
    :cond_5
    :goto_4
    if-ne v10, v6, :cond_6

    .line 162
    .end local v10    # "lastToken$iv":B
    iget-object v3, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_5

    .line 163
    .restart local v10    # "lastToken$iv":B
    :cond_6
    if-eq v10, v7, :cond_7

    .line 166
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .end local v10    # "lastToken$iv":B
    :goto_5
    new-instance v3, Lkotlinx/serialization/json/JsonObject;

    move-object v5, v11

    check-cast v5, Ljava/util/Map;

    invoke-direct {v3, v5}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 23
    .end local v4    # "$i$f$readObjectImpl":I
    .end local v11    # "result$iv":Ljava/util/LinkedHashMap;
    return-object v3

    .line 164
    .restart local v4    # "$i$f$readObjectImpl":I
    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    :cond_7
    iget-object v12, v8, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v13, "Unexpected trailing comma"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 144
    .local v4, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v8, "$this$readObject":Lkotlin/DeepRecursiveScope;
    .local v9, "$i$f$readObjectImpl":I
    .restart local v10    # "lastToken$iv":B
    :cond_8
    iget-object v11, v4, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v12, "Unexpected leading comma"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readObject()Lkotlinx/serialization/json/JsonElement;
    .locals 15

    .line 18
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$readObjectImpl":I
    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v2

    .line 120
    .local v2, "lastToken$iv":B
    iget-object v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 121
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 122
    .local v4, "result$iv":Ljava/util/LinkedHashMap;
    :cond_0
    iget-object v6, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v6

    const/4 v7, 0x7

    if-eqz v6, :cond_3

    .line 124
    iget-boolean v6, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "key$iv":Ljava/lang/String;
    :goto_0
    iget-object v8, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 126
    const/4 v8, 0x0

    .line 19
    .local v8, "$i$a$-readObjectImpl-JsonTreeReader$readObject$1":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v8

    .line 126
    .end local v8    # "$i$a$-readObjectImpl-JsonTreeReader$readObject$1":I
    nop

    .line 127
    .local v8, "element$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v9, v4

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v2

    .line 130
    nop

    .line 131
    if-eq v2, v5, :cond_0

    .line 132
    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v10, "Expected end of the object or comma"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 137
    .end local v6    # "key$iv":Ljava/lang/String;
    .end local v8    # "element$iv":Lkotlinx/serialization/json/JsonElement;
    :cond_3
    :goto_1
    if-ne v2, v3, :cond_4

    .line 138
    iget-object v3, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 139
    :cond_4
    if-eq v2, v5, :cond_5

    .line 142
    :goto_2
    new-instance v3, Lkotlinx/serialization/json/JsonObject;

    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    invoke-direct {v3, v5}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .end local v0    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .end local v1    # "$i$f$readObjectImpl":I
    .end local v2    # "lastToken$iv":B
    .end local v4    # "result$iv":Ljava/util/LinkedHashMap;
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 20
    return-object v3

    .line 140
    .restart local v0    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .restart local v1    # "$i$f$readObjectImpl":I
    .restart local v2    # "lastToken$iv":B
    .restart local v4    # "result$iv":Ljava/util/LinkedHashMap;
    :cond_5
    iget-object v5, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v6, "Unexpected trailing comma"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 120
    .end local v4    # "result$iv":Ljava/util/LinkedHashMap;
    :cond_6
    iget-object v5, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v6, "Unexpected leading comma"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final readObjectImpl(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/json/JsonObject;
    .locals 14
    .param p1, "reader"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Lkotlinx/serialization/json/JsonObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$readObjectImpl":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v1

    .line 27
    .local v1, "lastToken":B
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 28
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    .local v3, "result":Ljava/util/LinkedHashMap;
    :cond_0
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    .line 31
    iget-boolean v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "key":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 33
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 34
    .local v7, "element":Lkotlinx/serialization/json/JsonElement;
    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v1

    .line 37
    nop

    .line 38
    if-eq v1, v4, :cond_0

    .line 39
    if-ne v1, v6, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v9, "Expected end of the object or comma"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 44
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "element":Lkotlinx/serialization/json/JsonElement;
    :cond_3
    :goto_1
    if-ne v1, v2, :cond_4

    .line 45
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 46
    :cond_4
    if-eq v1, v4, :cond_5

    .line 49
    :goto_2
    new-instance v2, Lkotlinx/serialization/json/JsonObject;

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-direct {v2, v4}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 47
    :cond_5
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v6, "Unexpected trailing comma"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 27
    .end local v3    # "result":Ljava/util/LinkedHashMap;
    :cond_6
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v5, "Unexpected leading comma"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method private final readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 8
    .param p1, "isString"    # Z

    .line 75
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1
    nop

    .line 80
    .local v0, "string":Ljava/lang/String;
    if-nez p1, :cond_2

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v1

    .line 81
    :cond_2
    new-instance v7, Lkotlinx/serialization/json/JsonLiteral;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v7
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 8

    .line 85
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    .line 86
    .local v0, "token":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    goto :goto_1

    .line 87
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    goto :goto_1

    .line 88
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 95
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/2addr v2, v1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    const/16 v1, 0xc8

    if-ne v2, v1, :cond_2

    .line 96
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readDeepRecursive()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 95
    :goto_0
    nop

    .line 100
    .local v1, "result":Lkotlinx/serialization/json/JsonElement;
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    .line 101
    nop

    .end local v1    # "result":Lkotlinx/serialization/json/JsonElement;
    goto :goto_1

    .line 103
    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 85
    .end local v0    # "token":B
    :goto_1
    return-object v1

    .line 104
    .restart local v0    # "token":B
    :cond_4
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read Json element because of unexpected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method
