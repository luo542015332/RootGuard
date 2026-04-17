.class public final Landroidx/datastore/preferences/protobuf/Value;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Value$Builder;,
        Landroidx/datastore/preferences/protobuf/Value$KindCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Value;",
        "Landroidx/datastore/preferences/protobuf/Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

.field public static final LIST_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x3

.field public static final STRUCT_VALUE_FIELD_NUMBER:I = 0x5


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1018
    new-instance v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Value;-><init>()V

    .line 1021
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/Value;
    sput-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    .line 1022
    const-class v1, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 1024
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/Value;
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 23
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Value;
    .registers 1

    .line 17
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearKind()V

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/protobuf/Value;Z)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Z

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setBoolValue(Z)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearBoolValue()V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Struct;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct$Builder;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Struct$Builder;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStructValue(Landroidx/datastore/preferences/protobuf/Struct$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Struct;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->mergeStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearStructValue()V

    return-void
.end method

.method static synthetic access$1600(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue$Builder;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setListValue(Landroidx/datastore/preferences/protobuf/ListValue$Builder;)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->mergeListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearListValue()V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Value;I)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setNullValueValue(I)V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/NullValue;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/NullValue;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setNullValue(Landroidx/datastore/preferences/protobuf/NullValue;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearNullValue()V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Value;D)V
    .registers 3
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # D

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Value;->setNumberValue(D)V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearNumberValue()V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/Value;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/protobuf/Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearStringValue()V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .registers 2
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 17
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStringValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method private clearBoolValue()V
    .registers 3

    .line 307
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 311
    :cond_b
    return-void
.end method

.method private clearKind()V
    .registers 2

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method private clearListValue()V
    .registers 3

    .line 479
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 483
    :cond_b
    return-void
.end method

.method private clearNullValue()V
    .registers 3

    .line 142
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 146
    :cond_b
    return-void
.end method

.method private clearNumberValue()V
    .registers 3

    .line 184
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 188
    :cond_b
    return-void
.end method

.method private clearStringValue()V
    .registers 3

    .line 248
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 252
    :cond_b
    return-void
.end method

.method private clearStructValue()V
    .registers 3

    .line 393
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 397
    :cond_b
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Value;
    .registers 1

    .line 1027
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method private mergeListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V
    .registers 5
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 459
    if-eqz p1, :cond_29

    .line 462
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 463
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/ListValue;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 464
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->newBuilder(Landroidx/datastore/preferences/protobuf/ListValue;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    move-result-object v0

    .line 465
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_26

    .line 467
    :cond_24
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 469
    :goto_26
    iput v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 470
    return-void

    .line 460
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V
    .registers 5
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Struct;

    .line 373
    if-eqz p1, :cond_29

    .line 376
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 377
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Struct;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 378
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Struct;->newBuilder(Landroidx/datastore/preferences/protobuf/Struct;)Landroidx/datastore/preferences/protobuf/Struct$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct$Builder;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_26

    .line 381
    :cond_24
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 383
    :goto_26
    iput v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 384
    return-void

    .line 374
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .registers 1

    .line 560
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .registers 2
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 563
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Value;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 2
    .param p0, "data"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 501
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 3
    .param p0, "data"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 508
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 2
    .param p0, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 3
    .param p0, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 488
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 495
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Value;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 513
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 520
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 1033
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBoolValue(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 296
    const/4 v0, 0x4

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 297
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 298
    return-void
.end method

.method private setListValue(Landroidx/datastore/preferences/protobuf/ListValue$Builder;)V
    .registers 3
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    .line 448
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 449
    const/4 v0, 0x6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 450
    return-void
.end method

.method private setListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V
    .registers 3
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 433
    if-eqz p1, :cond_8

    .line 436
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 437
    const/4 v0, 0x6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 438
    return-void

    .line 434
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setNullValue(Landroidx/datastore/preferences/protobuf/NullValue;)V
    .registers 3
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/NullValue;

    .line 128
    if-eqz p1, :cond_10

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 132
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/NullValue;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 133
    return-void

    .line 129
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setNullValueValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private setNumberValue(D)V
    .registers 4
    .param p1, "value"    # D

    .line 173
    const/4 v0, 0x2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 234
    if-eqz p1, :cond_8

    .line 237
    const/4 v0, 0x3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 238
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 239
    return-void

    .line 235
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setStringValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 263
    if-eqz p1, :cond_f

    .line 266
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Value;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 267
    const/4 v0, 0x3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 268
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 269
    return-void

    .line 264
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setStructValue(Landroidx/datastore/preferences/protobuf/Struct$Builder;)V
    .registers 3
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Struct$Builder;

    .line 362
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 363
    const/4 v0, 0x5

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 364
    return-void
.end method

.method private setStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V
    .registers 3
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Struct;

    .line 347
    if-eqz p1, :cond_8

    .line 350
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 351
    const/4 v0, 0x5

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 352
    return-void

    .line 348
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 966
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5a

    .line 1011
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1008
    :pswitch_12
    return-object v1

    .line 1005
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 990
    :pswitch_19
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 991
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Value;>;"
    if-nez v0, :cond_34

    .line 992
    const-class v1, Landroidx/datastore/preferences/protobuf/Value;

    monitor-enter v1

    .line 993
    :try_start_20
    sget-object v2, Landroidx/datastore/preferences/protobuf/Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 994
    if-nez v0, :cond_2f

    .line 995
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 998
    sput-object v0, Landroidx/datastore/preferences/protobuf/Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1000
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 1002
    :cond_34
    :goto_34
    return-object v0

    .line 987
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Value;>;"
    :pswitch_35
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    return-object v0

    .line 974
    :pswitch_38
    const-string v0, "kind_"

    const-string v1, "kindCase_"

    const-class v2, Landroidx/datastore/preferences/protobuf/Struct;

    const-class v3, Landroidx/datastore/preferences/protobuf/ListValue;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 980
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003\u023b\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000"

    .line 983
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Value;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 971
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_4d
    new-instance v0, Landroidx/datastore/preferences/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/Value$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Value$1;)V

    return-object v0

    .line 968
    :pswitch_53
    new-instance v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Value;-><init>()V

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getBoolValue()Z
    .registers 3

    .line 282
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 283
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 285
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getKindCase()Landroidx/datastore/preferences/protobuf/Value$KindCase;
    .registers 2

    .line 66
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value$KindCase;->forNumber(I)Landroidx/datastore/preferences/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Landroidx/datastore/preferences/protobuf/ListValue;
    .registers 3

    .line 420
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 421
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0

    .line 423
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Landroidx/datastore/preferences/protobuf/NullValue;
    .registers 3

    .line 101
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 102
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/NullValue;->forNumber(I)Landroidx/datastore/preferences/protobuf/NullValue;

    move-result-object v0

    .line 103
    .local v0, "result":Landroidx/datastore/preferences/protobuf/NullValue;
    if-nez v0, :cond_16

    sget-object v1, Landroidx/datastore/preferences/protobuf/NullValue;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/NullValue;

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    return-object v1

    .line 105
    .end local v0    # "result":Landroidx/datastore/preferences/protobuf/NullValue;
    :cond_18
    sget-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->NULL_VALUE:Landroidx/datastore/preferences/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValueValue()I
    .registers 3

    .line 86
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 87
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 89
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberValue()D
    .registers 3

    .line 159
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 160
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 162
    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 4

    .line 201
    const-string v0, ""

    .line 202
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 203
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 205
    :cond_c
    return-object v0
.end method

.method public getStringValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 4

    .line 218
    const-string v0, ""

    .line 219
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 220
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 222
    :cond_c
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public getStructValue()Landroidx/datastore/preferences/protobuf/Struct;
    .registers 3

    .line 334
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 335
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    return-object v0

    .line 337
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Struct;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public hasListValue()Z
    .registers 3

    .line 409
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasStructValue()Z
    .registers 3

    .line 323
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
