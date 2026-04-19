.class public final Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1;
.super Ljava/lang/Object;
.source "JsonNamingStrategy.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonNamingStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonNamingStrategy.kt\nkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1174#2:135\n1175#2:137\n1#3:136\n*S KotlinDebug\n*F\n+ 1 JsonNamingStrategy.kt\nkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1\n*L\n103#1:135\n103#1:137\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "kotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1",
        "Lkotlinx/serialization/json/JsonNamingStrategy;",
        "serialNameForJson",
        "",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "elementIndex",
        "",
        "serialName",
        "toString",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialNameForJson(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .param p2, "elementIndex"    # I
    .param p3, "serialName"    # Ljava/lang/String;

    move-object/from16 v0, p3

    const-string v1, "descriptor"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serialName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    .local v1, "$this$serialNameForJson_u24lambda_u241":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 100
    .local v4, "$i$a$-buildString-JsonNamingStrategy$Builtins$SnakeCase$1$serialNameForJson$1":I
    const/4 v5, 0x0

    .line 101
    .local v5, "bufferedChar":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 103
    .local v6, "previousUpperCharsCount":I
    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    .local v7, "$this$forEach$iv":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 135
    .local v8, "$i$f$forEach":I
    const/4 v10, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v7, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .local v11, "element$iv":C
    move v12, v11

    .local v12, "c":C
    const/4 v13, 0x0

    .line 104
    .local v13, "$i$a$-forEach-JsonNamingStrategy$Builtins$SnakeCase$1$serialNameForJson$1$1":I
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v14

    const/16 v15, 0x5f

    const/4 v9, 0x1

    if-eqz v14, :cond_3

    .line 105
    if-nez v6, :cond_1

    move-object v14, v1

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v9

    if-eq v9, v15, :cond_1

    .line 106
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    .line 136
    .local v9, "p0":C
    const/4 v14, 0x0

    .line 108
    .local v14, "$i$a$-let-JsonNamingStrategy$Builtins$SnakeCase$1$serialNameForJson$1$1$1":I
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .end local v9    # "p0":C
    .end local v14    # "$i$a$-let-JsonNamingStrategy$Builtins$SnakeCase$1$serialNameForJson$1$1$1":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 111
    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_2

    .line 113
    :cond_3
    if-eqz v5, :cond_5

    .line 114
    if-le v6, v9, :cond_4

    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 115
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v5, 0x0

    .line 121
    :cond_5
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :goto_2
    nop

    .line 135
    .end local v12    # "c":C
    .end local v13    # "$i$a$-forEach-JsonNamingStrategy$Builtins$SnakeCase$1$serialNameForJson$1$1":I
    nop

    .end local v11    # "element$iv":C
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 137
    :cond_6
    nop

    .line 125
    .end local v7    # "$this$forEach$iv":Ljava/lang/CharSequence;
    .end local v8    # "$i$f$forEach":I
    if-eqz v5, :cond_7

    .line 126
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    :cond_7
    nop

    .line 99
    .end local v1    # "$this$serialNameForJson_u24lambda_u241":Ljava/lang/StringBuilder;
    .end local v4    # "$i$a$-buildString-JsonNamingStrategy$Builtins$SnakeCase$1$serialNameForJson$1":I
    .end local v5    # "bufferedChar":Ljava/lang/Object;
    .end local v6    # "previousUpperCharsCount":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "kotlinx.serialization.json.JsonNamingStrategy.SnakeCase"

    return-object v0
.end method
