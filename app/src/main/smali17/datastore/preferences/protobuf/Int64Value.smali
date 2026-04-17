.class public final Landroidx/datastore/preferences/protobuf/Int64Value;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Int64Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Int64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Int64Value$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Int64Value;",
        "Landroidx/datastore/preferences/protobuf/Int64Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/Int64ValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Int64Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 254
    new-instance v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Int64Value;-><init>()V

    .line 257
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/Int64Value;
    sput-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    .line 258
    const-class v1, Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 260
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/Int64Value;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 1

    .line 14
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Int64Value;J)V
    .registers 3
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Int64Value;
    .param p1, "x1"    # J

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Int64Value;->setValue(J)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Int64Value;)V
    .registers 1
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Int64Value;

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Int64Value;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .registers 3

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/Int64Value;->value_:J

    .line 57
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 1

    .line 263
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Int64Value$Builder;
    .registers 1

    .line 134
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Int64Value;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Int64Value;)Landroidx/datastore/preferences/protobuf/Int64Value$Builder;
    .registers 2
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/Int64Value;

    .line 137
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Int64Value;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;

    return-object v0
.end method

.method public static of(J)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "value"    # J

    .line 267
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Int64Value;->newBuilder()Landroidx/datastore/preferences/protobuf/Int64Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->setValue(J)Landroidx/datastore/preferences/protobuf/Int64Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Int64Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Int64Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 2
    .param p0, "data"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 75
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "data"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 82
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 2
    .param p0, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 62
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 69
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 87
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Int64Value;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 94
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Int64Value;",
            ">;"
        }
    .end annotation

    .line 273
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Int64Value;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(J)V
    .registers 3
    .param p1, "value"    # J

    .line 45
    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/Int64Value;->value_:J

    .line 46
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 206
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_54

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 244
    :pswitch_12
    return-object v1

    .line 241
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_19
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 227
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Int64Value;>;"
    if-nez v0, :cond_34

    .line 228
    const-class v1, Landroidx/datastore/preferences/protobuf/Int64Value;

    monitor-enter v1

    .line 229
    :try_start_20
    sget-object v2, Landroidx/datastore/preferences/protobuf/Int64Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 230
    if-nez v0, :cond_2f

    .line 231
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 234
    sput-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 236
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 238
    :cond_34
    :goto_34
    return-object v0

    .line 223
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Int64Value;>;"
    :pswitch_35
    sget-object v0, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    return-object v0

    .line 214
    :pswitch_38
    const-string/jumbo v0, "value_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0002"

    .line 219
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/Int64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Int64Value;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 211
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_48
    new-instance v0, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Int64Value$1;)V

    return-object v0

    .line 208
    :pswitch_4e
    new-instance v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Int64Value;-><init>()V

    return-object v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getValue()J
    .registers 3

    .line 33
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/Int64Value;->value_:J

    return-wide v0
.end method
