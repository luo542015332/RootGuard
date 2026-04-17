.class final Landroidx/datastore/preferences/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private final extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 101
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V
    .registers 32
    .param p1, "buffer"    # [I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "minFieldNumber"    # I
    .param p4, "maxFieldNumber"    # I
    .param p5, "defaultInstance"    # Landroidx/datastore/preferences/protobuf/MessageLite;
    .param p6, "proto3"    # Z
    .param p7, "useCachedSizeField"    # Z
    .param p8, "intArray"    # [I
    .param p9, "checkInitialized"    # I
    .param p10, "mapFieldPositions"    # I
    .param p11, "newInstanceSchema"    # Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .param p12, "listFieldSchema"    # Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .param p15, "mapFieldSchema"    # Landroidx/datastore/preferences/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            "ZZ[III",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 189
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p13, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<**>;"
    .local p14, "extensionSchema":Landroidx/datastore/preferences/protobuf/ExtensionSchema;, "Landroidx/datastore/preferences/protobuf/ExtensionSchema<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    move-object/from16 v3, p1

    iput-object v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 191
    move-object/from16 v4, p2

    iput-object v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 192
    move/from16 v5, p3

    iput v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    .line 193
    move/from16 v6, p4

    iput v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    .line 195
    instance-of v7, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-boolean v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    .line 196
    move/from16 v7, p6

    iput-boolean v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 197
    if-eqz v2, :cond_2b

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    iput-boolean v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    .line 198
    move/from16 v8, p7

    iput-boolean v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 200
    move-object/from16 v9, p8

    iput-object v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 201
    move/from16 v10, p9

    iput v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 202
    move/from16 v11, p10

    iput v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 204
    move-object/from16 v12, p11

    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 205
    move-object/from16 v13, p12

    iput-object v13, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 206
    move-object/from16 v14, p13

    iput-object v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 207
    iput-object v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 208
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 209
    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 210
    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5746
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5721
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private decodeMapEntry([BIILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 25
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p6, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4421
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p4, "metadata":Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;, "Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p5, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v0, p2

    invoke-static {v7, v0, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4422
    .end local p2    # "position":I
    .local v0, "position":I
    iget v11, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4423
    .local v11, "length":I
    if-ltz v11, :cond_aa

    sub-int v1, v8, v0

    if-gt v11, v1, :cond_aa

    .line 4426
    add-int v12, v0, v11

    .line 4427
    .local v12, "end":I
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 4428
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    .line 4429
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .local v13, "key":Ljava/lang/Object;, "TK;"
    .local v14, "value":Ljava/lang/Object;, "TV;"
    :goto_1e
    if-ge v0, v12, :cond_99

    .line 4430
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    aget-byte v0, v7, v0

    .line 4431
    .local v0, "tag":I
    if-gez v0, :cond_2f

    .line 4432
    invoke-static {v0, v7, v1, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32(I[BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4433
    iget v0, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    move v15, v0

    move v6, v1

    goto :goto_31

    .line 4431
    :cond_2f
    move v15, v0

    move v6, v1

    .line 4435
    .end local v0    # "tag":I
    .end local v1    # "position":I
    .local v6, "position":I
    .local v15, "tag":I
    :goto_31
    ushr-int/lit8 v16, v15, 0x3

    .line 4436
    .local v16, "fieldNumber":I
    and-int/lit8 v5, v15, 0x7

    .line 4437
    .local v5, "wireType":I
    packed-switch v16, :pswitch_data_b4

    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .local v17, "position":I
    .local p2, "length":I
    goto :goto_90

    .line 4447
    .end local v17    # "position":I
    .end local p2    # "length":I
    .restart local v5    # "wireType":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :pswitch_3e
    iget-object v0, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v5, v0, :cond_67

    .line 4448
    iget-object v4, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 4454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 4449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v3, p3

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .local v11, "wireType":I
    .restart local p2    # "length":I
    move-object/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "position":I
    .restart local v17    # "position":I
    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->decodeMapEntryValue([BIILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4456
    .end local v17    # "position":I
    .local v0, "position":I
    iget-object v14, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4457
    move/from16 v11, p2

    goto :goto_1e

    .line 4447
    .end local v0    # "position":I
    .end local p2    # "length":I
    .restart local v5    # "wireType":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :cond_67
    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .restart local v17    # "position":I
    .restart local p2    # "length":I
    goto :goto_90

    .line 4439
    .end local v17    # "position":I
    .end local p2    # "length":I
    .restart local v5    # "wireType":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :pswitch_6d
    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .restart local v17    # "position":I
    .restart local p2    # "length":I
    iget-object v0, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v11, v0, :cond_90

    .line 4440
    iget-object v4, v9, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    .line 4441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->decodeMapEntryValue([BIILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4442
    .end local v17    # "position":I
    .restart local v0    # "position":I
    iget-object v13, v10, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4443
    move/from16 v11, p2

    goto :goto_1e

    .line 4463
    .end local v0    # "position":I
    .restart local v17    # "position":I
    :cond_90
    :goto_90
    move/from16 v1, v17

    .end local v17    # "position":I
    .restart local v1    # "position":I
    invoke-static {v15, v7, v1, v8, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->skipField(I[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4464
    .end local v1    # "position":I
    .end local v11    # "wireType":I
    .end local v15    # "tag":I
    .end local v16    # "fieldNumber":I
    .restart local v0    # "position":I
    move/from16 v11, p2

    goto :goto_1e

    .line 4465
    .end local p2    # "length":I
    .local v11, "length":I
    :cond_99
    move/from16 p2, v11

    .end local v11    # "length":I
    .restart local p2    # "length":I
    if-ne v0, v12, :cond_a3

    .line 4468
    move-object/from16 v1, p5

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4469
    return v12

    .line 4466
    :cond_a3
    move-object/from16 v1, p5

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 4423
    .end local v12    # "end":I
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .end local p2    # "length":I
    .restart local v11    # "length":I
    :cond_aa
    move-object/from16 v1, p5

    move/from16 p2, v11

    .line 4424
    .end local v11    # "length":I
    .restart local p2    # "length":I
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_3e
    .end packed-switch
.end method

.method private decodeMapEntryValue([BIILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "fieldType"    # Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;
    .param p6, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4353
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p5, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 4407
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4404
    :pswitch_14
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4405
    goto/16 :goto_b4

    .line 4400
    :pswitch_1a
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4401
    iget-wide v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4402
    goto/16 :goto_b4

    .line 4396
    :pswitch_2c
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4397
    iget v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4398
    goto/16 :goto_b4

    .line 4393
    :pswitch_3e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->getInstance()Landroidx/datastore/preferences/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    .line 4392
    invoke-static {v0, p1, p2, p3, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageField(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4394
    goto :goto_b4

    .line 4387
    :pswitch_4b
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4388
    iget-wide v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4389
    goto :goto_b4

    .line 4382
    :pswitch_58
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4383
    iget v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4384
    goto :goto_b4

    .line 4376
    :pswitch_65
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4377
    add-int/lit8 p2, p2, 0x4

    .line 4378
    goto :goto_b4

    .line 4372
    :pswitch_72
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4373
    add-int/lit8 p2, p2, 0x8

    .line 4374
    goto :goto_b4

    .line 4367
    :pswitch_7f
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4368
    add-int/lit8 p2, p2, 0x4

    .line 4369
    goto :goto_b4

    .line 4362
    :pswitch_8c
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4363
    add-int/lit8 p2, p2, 0x8

    .line 4364
    goto :goto_b4

    .line 4359
    :pswitch_99
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeBytes([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4360
    goto :goto_b4

    .line 4355
    :pswitch_9e
    invoke-static {p1, p2, p6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4356
    iget-wide v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x0

    :goto_ad
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p6, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4357
    nop

    .line 4409
    :goto_b4
    return p2

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_7f
        :pswitch_72
        :pswitch_72
        :pswitch_65
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_4b
        :pswitch_4b
        :pswitch_3e
        :pswitch_2c
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5705
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 14
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 807
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 808
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 810
    .local v1, "offset":J
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_1da

    .line 932
    return v5

    .line 927
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 929
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 928
    invoke-static {v3, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    nop

    .line 927
    :goto_29
    return v4

    .line 907
    :pswitch_2a
    nop

    .line 908
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 907
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 904
    :pswitch_38
    nop

    .line 905
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 904
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 868
    :pswitch_46
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 870
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 869
    invoke-static {v3, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move v4, v5

    goto :goto_5d

    :cond_5c
    nop

    .line 868
    :goto_5d
    return v4

    .line 865
    :pswitch_5e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 866
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_72

    move v4, v5

    goto :goto_73

    :cond_72
    nop

    .line 865
    :goto_73
    return v4

    .line 862
    :pswitch_74
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 863
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_86

    move v4, v5

    goto :goto_87

    :cond_86
    nop

    .line 862
    :goto_87
    return v4

    .line 859
    :pswitch_88
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 860
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_9c

    move v4, v5

    goto :goto_9d

    :cond_9c
    nop

    .line 859
    :goto_9d
    return v4

    .line 856
    :pswitch_9e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 857
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_b0

    move v4, v5

    goto :goto_b1

    :cond_b0
    nop

    .line 856
    :goto_b1
    return v4

    .line 853
    :pswitch_b2
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 854
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_c4

    move v4, v5

    goto :goto_c5

    :cond_c4
    nop

    .line 853
    :goto_c5
    return v4

    .line 850
    :pswitch_c6
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 851
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_d8

    move v4, v5

    goto :goto_d9

    :cond_d8
    nop

    .line 850
    :goto_d9
    return v4

    .line 846
    :pswitch_da
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 848
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 847
    invoke-static {v3, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    move v4, v5

    goto :goto_f1

    :cond_f0
    nop

    .line 846
    :goto_f1
    return v4

    .line 842
    :pswitch_f2
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 844
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 843
    invoke-static {v3, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    move v4, v5

    goto :goto_109

    :cond_108
    nop

    .line 842
    :goto_109
    return v4

    .line 838
    :pswitch_10a
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 840
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 839
    invoke-static {v3, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    move v4, v5

    goto :goto_121

    :cond_120
    nop

    .line 838
    :goto_121
    return v4

    .line 835
    :pswitch_122
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 836
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-ne v3, v6, :cond_134

    move v4, v5

    goto :goto_135

    :cond_134
    nop

    .line 835
    :goto_135
    return v4

    .line 832
    :pswitch_136
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 833
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_148

    move v4, v5

    goto :goto_149

    :cond_148
    nop

    .line 832
    :goto_149
    return v4

    .line 829
    :pswitch_14a
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 830
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_15e

    move v4, v5

    goto :goto_15f

    :cond_15e
    nop

    .line 829
    :goto_15f
    return v4

    .line 826
    :pswitch_160
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 827
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_172

    move v4, v5

    goto :goto_173

    :cond_172
    nop

    .line 826
    :goto_173
    return v4

    .line 823
    :pswitch_174
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 824
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_188

    move v4, v5

    goto :goto_189

    :cond_188
    nop

    .line 823
    :goto_189
    return v4

    .line 820
    :pswitch_18a
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_19e

    .line 821
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_19e

    move v4, v5

    goto :goto_19f

    :cond_19e
    nop

    .line 820
    :goto_19f
    return v4

    .line 816
    :pswitch_1a0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 817
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 818
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v3, v6, :cond_1ba

    move v4, v5

    goto :goto_1bb

    :cond_1ba
    nop

    .line 816
    :goto_1bb
    return v4

    .line 812
    :pswitch_1bc
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 813
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 814
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1d8

    move v4, v5

    goto :goto_1d9

    :cond_1d8
    nop

    .line 812
    :goto_1d9
    return v4

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_1bc
        :pswitch_1a0
        :pswitch_18a
        :pswitch_174
        :pswitch_160
        :pswitch_14a
        :pswitch_136
        :pswitch_122
        :pswitch_10a
        :pswitch_f2
        :pswitch_da
        :pswitch_c6
        :pswitch_b2
        :pswitch_9e
        :pswitch_88
        :pswitch_74
        :pswitch_5e
        :pswitch_46
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_2a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 21
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5454
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct {v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    .line 5455
    .local v9, "fieldNumber":I
    invoke-direct {v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    .line 5456
    .local v10, "offset":J
    move-object/from16 v12, p1

    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    .line 5457
    .local v13, "mapField":Ljava/lang/Object;
    if-nez v13, :cond_19

    .line 5458
    return-object p3

    .line 5460
    :cond_19
    invoke-direct {v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v14

    .line 5461
    .local v14, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    if-nez v14, :cond_20

    .line 5462
    return-object p3

    .line 5464
    :cond_20
    iget-object v0, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    .line 5466
    .local v15, "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    nop

    .line 5467
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v9

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0

    .line 5469
    .end local p3    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "unknownFields":Ljava/lang/Object;, "TUB;"
    return-object v0
.end method

.method private final filterUnknownEnumMap(IILjava/util/Map;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 15
    .param p1, "pos"    # I
    .param p2, "number"    # I
    .param p4, "enumVerifier"    # Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5480
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p3, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 5481
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    .line 5482
    .local v0, "metadata":Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;, "Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 5483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5484
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p4, v3}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-nez v3, :cond_67

    .line 5485
    if-nez p5, :cond_34

    .line 5486
    invoke-virtual {p6}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    .line 5488
    :cond_34
    nop

    .line 5489
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->computeSerializedSize(Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 5490
    .local v3, "entrySize":I
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ByteString;->newCodedBuilder(I)Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;

    move-result-object v4

    .line 5491
    .local v4, "codedBuilder":Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->getCodedOutput()Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    move-result-object v5

    .line 5493
    .local v5, "codedOutput":Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    :try_start_49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_60

    .line 5497
    nop

    .line 5498
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->build()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p6, p5, p2, v6}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 5499
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_67

    .line 5494
    :catch_60
    move-exception v6

    .line 5496
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 5501
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "entrySize":I
    .end local v4    # "codedBuilder":Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;
    .end local v5    # "codedOutput":Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_67
    :goto_67
    goto :goto_12

    .line 5502
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_68
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5709
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .registers 4
    .param p1, "pos"    # I

    .line 4859
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 4
    .param p1, "pos"    # I

    .line 4855
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;
    .registers 7
    .param p1, "pos"    # I

    .line 4844
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 4845
    .local v0, "index":I
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/Schema;

    .line 4846
    .local v1, "schema":Landroidx/datastore/preferences/protobuf/Schema;
    if-eqz v1, :cond_d

    .line 4847
    return-object v1

    .line 4849
    :cond_d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->getInstance()Landroidx/datastore/preferences/protobuf/Protobuf;

    move-result-object v2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v1

    .line 4850
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 4851
    return-object v1
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 4336
    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 4337
    .local v0, "unknownFields":Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 4338
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4339
    move-object v1, p0

    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-object v0, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 4341
    :cond_14
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1416
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1418
    .local v2, "size":I
    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1419
    .local v3, "unsafe":Lsun/misc/Unsafe;
    const/4 v4, -0x1

    .line 1420
    .local v4, "currentPresenceFieldOffset":I
    const/4 v5, 0x0

    .line 1421
    .local v5, "currentPresenceField":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    if-ge v6, v7, :cond_664

    .line 1422
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 1423
    .local v7, "typeAndOffset":I
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    .line 1425
    .local v8, "number":I
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v9

    .line 1426
    .local v9, "fieldType":I
    const/4 v10, 0x0

    .line 1427
    .local v10, "presenceMaskAndOffset":I
    const/4 v11, 0x0

    .line 1428
    .local v11, "presenceMask":I
    const/16 v12, 0x11

    const v13, 0xfffff

    const/4 v14, 0x1

    if-gt v9, v12, :cond_3a

    .line 1429
    iget-object v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v6, 0x2

    aget v10, v12, v15

    .line 1430
    and-int v12, v10, v13

    .line 1431
    .local v12, "presenceFieldOffset":I
    ushr-int/lit8 v13, v10, 0x14

    shl-int v11, v14, v13

    .line 1432
    if-eq v12, v4, :cond_39

    .line 1433
    move v4, v12

    .line 1434
    int-to-long v14, v12

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 1436
    .end local v12    # "presenceFieldOffset":I
    :cond_39
    goto :goto_56

    :cond_3a
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_39

    sget-object v12, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 1437
    invoke-virtual {v12}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v12

    if-lt v9, v12, :cond_56

    sget-object v12, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 1438
    invoke-virtual {v12}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v12

    if-gt v9, v12, :cond_56

    .line 1439
    iget-object v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    and-int v10, v12, v13

    .line 1442
    :cond_56
    :goto_56
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    .line 1444
    .local v12, "offset":J
    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_67c

    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .local v16, "currentPresenceFieldOffset":I
    goto/16 :goto_65e

    .line 1961
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_62
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 1962
    nop

    .line 1965
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1966
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v15

    .line 1963
    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1961
    :cond_7c
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1956
    :pswitch_80
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_93

    .line 1957
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1956
    :cond_93
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1951
    :pswitch_97
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_aa

    .line 1952
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1951
    :cond_aa
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1946
    :pswitch_ae
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_bf

    .line 1947
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1946
    :cond_bf
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1941
    :pswitch_c3
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_d2

    .line 1942
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1941
    :cond_d2
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1936
    :pswitch_d6
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_e9

    .line 1937
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1936
    :cond_e9
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1931
    :pswitch_ed
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_100

    .line 1932
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1931
    :cond_100
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1924
    :pswitch_104
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11a

    .line 1925
    nop

    .line 1927
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1926
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1924
    :cond_11a
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1918
    :pswitch_11e
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_135

    .line 1919
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1920
    .local v14, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1921
    .end local v14    # "value":Ljava/lang/Object;
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1918
    :cond_135
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1908
    :pswitch_139
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_15c

    .line 1909
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1910
    .restart local v14    # "value":Ljava/lang/Object;
    instance-of v15, v14, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v15, :cond_150

    .line 1911
    move-object v15, v14

    check-cast v15, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v8, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_158

    .line 1913
    :cond_150
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v8, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1915
    .end local v14    # "value":Ljava/lang/Object;
    :goto_158
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1908
    :cond_15c
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1903
    :pswitch_160
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_170

    .line 1904
    const/4 v14, 0x1

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1903
    :cond_170
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1898
    :pswitch_174
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_183

    .line 1899
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1898
    :cond_183
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1893
    :pswitch_187
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_198

    .line 1894
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1893
    :cond_198
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1888
    :pswitch_19c
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1af

    .line 1889
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1888
    :cond_1af
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1883
    :pswitch_1b3
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1c6

    .line 1884
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1883
    :cond_1c6
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1878
    :pswitch_1ca
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1dd

    .line 1879
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1878
    :cond_1dd
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1873
    :pswitch_1e1
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1f1

    .line 1874
    const/4 v14, 0x0

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1873
    :cond_1f1
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1868
    :pswitch_1f5
    invoke-direct {v0, v1, v8, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_206

    .line 1869
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1868
    :cond_206
    move/from16 v16, v4

    goto/16 :goto_65e

    .line 1863
    :pswitch_20a
    iget-object v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 1865
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    .line 1864
    invoke-interface {v14, v8, v15, v4}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1866
    goto/16 :goto_65e

    .line 1855
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_21d
    move/from16 v16, v4

    .line 1858
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1859
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    .line 1856
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1860
    goto/16 :goto_65e

    .line 1840
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_230
    move/from16 v16, v4

    .line 1842
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1841
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1843
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1844
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_246

    .line 1845
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1847
    :cond_246
    nop

    .line 1848
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1849
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1824
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_254
    move/from16 v16, v4

    .line 1826
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1825
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1827
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1828
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_26a

    .line 1829
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1831
    :cond_26a
    nop

    .line 1832
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1833
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1808
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_278
    move/from16 v16, v4

    .line 1810
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1809
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1811
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1812
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_28e

    .line 1813
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1815
    :cond_28e
    nop

    .line 1816
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1817
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1792
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_29c
    move/from16 v16, v4

    .line 1794
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1793
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1795
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1796
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2b2

    .line 1797
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1799
    :cond_2b2
    nop

    .line 1800
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1801
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1776
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_2c0
    move/from16 v16, v4

    .line 1778
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1777
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1779
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1780
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2d6

    .line 1781
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1783
    :cond_2d6
    nop

    .line 1784
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1785
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1760
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_2e4
    move/from16 v16, v4

    .line 1762
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1761
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1763
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1764
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2fa

    .line 1765
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1767
    :cond_2fa
    nop

    .line 1768
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1769
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1744
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_308
    move/from16 v16, v4

    .line 1746
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1745
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1747
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1748
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_31e

    .line 1749
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1751
    :cond_31e
    nop

    .line 1752
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1753
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1728
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_32c
    move/from16 v16, v4

    .line 1730
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1729
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1731
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1732
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_342

    .line 1733
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1735
    :cond_342
    nop

    .line 1736
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1737
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1712
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_350
    move/from16 v16, v4

    .line 1714
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1713
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1715
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1716
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_366

    .line 1717
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1719
    :cond_366
    nop

    .line 1720
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1721
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1696
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_374
    move/from16 v16, v4

    .line 1698
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1697
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1699
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1700
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_38a

    .line 1701
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1703
    :cond_38a
    nop

    .line 1704
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1705
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1680
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_398
    move/from16 v16, v4

    .line 1682
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1681
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1683
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1684
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3ae

    .line 1685
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1687
    :cond_3ae
    nop

    .line 1688
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1689
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1664
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3bc
    move/from16 v16, v4

    .line 1666
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1665
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1667
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1668
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3d2

    .line 1669
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1671
    :cond_3d2
    nop

    .line 1672
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1673
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1648
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3e0
    move/from16 v16, v4

    .line 1650
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1649
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1651
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1652
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3f6

    .line 1653
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1655
    :cond_3f6
    nop

    .line 1656
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1657
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1632
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_404
    move/from16 v16, v4

    .line 1634
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1633
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1635
    .local v4, "fieldSize":I
    if-lez v4, :cond_65e

    .line 1636
    iget-boolean v14, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_41a

    .line 1637
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1639
    :cond_41a
    nop

    .line 1640
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1641
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    .line 1626
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_428
    move/from16 v16, v4

    .line 1628
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1627
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1629
    goto/16 :goto_65e

    .line 1621
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_437
    move/from16 v16, v4

    .line 1623
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1622
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1624
    goto/16 :goto_65e

    .line 1616
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_446
    move/from16 v16, v4

    .line 1618
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1617
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1619
    goto/16 :goto_65e

    .line 1611
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_455
    move/from16 v16, v4

    .line 1613
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1612
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1614
    goto/16 :goto_65e

    .line 1606
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_464
    move/from16 v16, v4

    .line 1608
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1607
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1609
    goto/16 :goto_65e

    .line 1601
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_473
    move/from16 v16, v4

    .line 1603
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1602
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1604
    goto/16 :goto_65e

    .line 1596
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_482
    move/from16 v16, v4

    .line 1598
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1597
    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1599
    goto/16 :goto_65e

    .line 1591
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_491
    move/from16 v16, v4

    .line 1593
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    .line 1592
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1594
    goto/16 :goto_65e

    .line 1587
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4a4
    move/from16 v16, v4

    .line 1588
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1589
    goto/16 :goto_65e

    .line 1582
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4b3
    move/from16 v16, v4

    .line 1584
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1583
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1585
    goto/16 :goto_65e

    .line 1577
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4c2
    move/from16 v16, v4

    .line 1579
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1578
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1580
    goto/16 :goto_65e

    .line 1572
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4d1
    move/from16 v16, v4

    .line 1574
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1573
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1575
    goto/16 :goto_65e

    .line 1567
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4e0
    move/from16 v16, v4

    .line 1569
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1568
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1570
    goto/16 :goto_65e

    .line 1562
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4ef
    move/from16 v16, v4

    .line 1564
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1563
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1565
    goto/16 :goto_65e

    .line 1557
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_4fe
    move/from16 v16, v4

    .line 1559
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1558
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1560
    goto/16 :goto_65e

    .line 1552
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_50d
    move/from16 v16, v4

    .line 1554
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1553
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1555
    goto/16 :goto_65e

    .line 1547
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_51c
    move/from16 v16, v4

    .line 1549
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1548
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1550
    goto/16 :goto_65e

    .line 1538
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_52b
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1539
    nop

    .line 1542
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 1543
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    .line 1540
    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1533
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_543
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1534
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1528
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_554
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1529
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1523
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_565
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1524
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1518
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_574
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1519
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1513
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_581
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1514
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1508
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_592
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1509
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1502
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_5a3
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1503
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1504
    .local v4, "value":Landroidx/datastore/preferences/protobuf/ByteString;
    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1505
    .end local v4    # "value":Landroidx/datastore/preferences/protobuf/ByteString;
    goto/16 :goto_65e

    .line 1496
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_5b6
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1497
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1498
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1499
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_65e

    .line 1486
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_5cb
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1487
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1488
    .local v4, "value":Ljava/lang/Object;
    instance-of v14, v4, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v14, :cond_5e2

    .line 1489
    move-object v14, v4

    check-cast v14, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_5ea

    .line 1491
    :cond_5e2
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1493
    .end local v4    # "value":Ljava/lang/Object;
    :goto_5ea
    goto/16 :goto_65e

    .line 1481
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_5ec
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1482
    const/4 v4, 0x1

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    .line 1476
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_5fa
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1477
    invoke-static {v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    .line 1471
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_606
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1472
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    .line 1466
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_614
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1467
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    .line 1461
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_624
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1462
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    .line 1456
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_634
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1457
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    .line 1451
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_644
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1452
    const/4 v4, 0x0

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    .line 1446
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_651
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    .line 1447
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 1421
    .end local v7    # "typeAndOffset":I
    .end local v8    # "number":I
    .end local v9    # "fieldType":I
    .end local v10    # "presenceMaskAndOffset":I
    .end local v11    # "presenceMask":I
    .end local v12    # "offset":J
    :cond_65e
    :goto_65e
    add-int/lit8 v6, v6, 0x3

    move/from16 v4, v16

    goto/16 :goto_a

    .line 1974
    .end local v6    # "i":I
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :cond_664
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v6, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v2, v6

    .line 1976
    iget-boolean v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v6, :cond_67a

    .line 1977
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/FieldSet;->getSerializedSize()I

    move-result v6

    add-int/2addr v2, v6

    .line 1980
    :cond_67a
    return v2

    nop

    :pswitch_data_67c
    .packed-switch 0x0
        :pswitch_651
        :pswitch_644
        :pswitch_634
        :pswitch_624
        :pswitch_614
        :pswitch_606
        :pswitch_5fa
        :pswitch_5ec
        :pswitch_5cb
        :pswitch_5b6
        :pswitch_5a3
        :pswitch_592
        :pswitch_581
        :pswitch_574
        :pswitch_565
        :pswitch_554
        :pswitch_543
        :pswitch_52b
        :pswitch_51c
        :pswitch_50d
        :pswitch_4fe
        :pswitch_4ef
        :pswitch_4e0
        :pswitch_4d1
        :pswitch_4c2
        :pswitch_4b3
        :pswitch_4a4
        :pswitch_491
        :pswitch_482
        :pswitch_473
        :pswitch_464
        :pswitch_455
        :pswitch_446
        :pswitch_437
        :pswitch_428
        :pswitch_404
        :pswitch_3e0
        :pswitch_3bc
        :pswitch_398
        :pswitch_374
        :pswitch_350
        :pswitch_32c
        :pswitch_308
        :pswitch_2e4
        :pswitch_2c0
        :pswitch_29c
        :pswitch_278
        :pswitch_254
        :pswitch_230
        :pswitch_21d
        :pswitch_20a
        :pswitch_1f5
        :pswitch_1e1
        :pswitch_1ca
        :pswitch_1b3
        :pswitch_19c
        :pswitch_187
        :pswitch_174
        :pswitch_160
        :pswitch_139
        :pswitch_11e
        :pswitch_104
        :pswitch_ed
        :pswitch_d6
        :pswitch_c3
        :pswitch_ae
        :pswitch_97
        :pswitch_80
        :pswitch_62
    .end packed-switch
.end method

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1984
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1985
    .local v2, "unsafe":Lsun/misc/Unsafe;
    const/4 v3, 0x0

    .line 1986
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_57e

    .line 1987
    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 1988
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v6

    .line 1989
    .local v6, "fieldType":I
    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 1991
    .local v7, "number":I
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 1992
    .local v8, "offset":J
    sget-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 1993
    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v10

    const/4 v11, 0x0

    if-lt v6, v10, :cond_39

    sget-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 1994
    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v10

    if-gt v6, v10, :cond_39

    iget-object v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v10, v12

    const v12, 0xfffff

    and-int/2addr v10, v12

    goto :goto_3a

    :cond_39
    move v10, v11

    .line 1998
    .local v10, "cachedSizeOffset":I
    :goto_3a
    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    packed-switch v6, :pswitch_data_586

    goto/16 :goto_57a

    .line 2497
    :pswitch_43
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2498
    nop

    .line 2501
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 2502
    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    .line 2499
    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2492
    :pswitch_5b
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2493
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2487
    :pswitch_6c
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2488
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2482
    :pswitch_7d
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2483
    invoke-static {v7, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2477
    :pswitch_8a
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57a

    .line 2478
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2472
    :pswitch_97
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2473
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2467
    :pswitch_a8
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2468
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2460
    :pswitch_b9
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2461
    nop

    .line 2463
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 2462
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2454
    :pswitch_cd
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2455
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2456
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2457
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_57a

    .line 2444
    :pswitch_e2
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2445
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2446
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v12, :cond_f9

    .line 2447
    move-object v12, v11

    check-cast v12, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v7, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_101

    .line 2449
    :cond_f9
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2451
    .end local v11    # "value":Ljava/lang/Object;
    :goto_101
    goto/16 :goto_57a

    .line 2439
    :pswitch_103
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2440
    invoke-static {v7, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2434
    :pswitch_110
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57a

    .line 2435
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2429
    :pswitch_11d
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2430
    invoke-static {v7, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2424
    :pswitch_12a
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2425
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2419
    :pswitch_13b
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2420
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2414
    :pswitch_14c
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2415
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2409
    :pswitch_15d
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2410
    invoke-static {v7, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2404
    :pswitch_16a
    invoke-direct {v0, v1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2405
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2399
    :pswitch_179
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 2401
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 2400
    invoke-interface {v11, v7, v12, v13}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2402
    goto/16 :goto_57a

    .line 2393
    :pswitch_18a
    nop

    .line 2395
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    .line 2394
    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2396
    goto/16 :goto_57a

    .line 2378
    :pswitch_19a
    nop

    .line 2380
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2379
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2381
    .local v11, "fieldSize":I
    if-lez v11, :cond_57a

    .line 2382
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1af

    .line 2383
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2385
    :cond_1af
    nop

    .line 2386
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2387
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2362
    .end local v11    # "fieldSize":I
    :pswitch_1bd
    nop

    .line 2364
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2363
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2365
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2366
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1d2

    .line 2367
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2369
    :cond_1d2
    nop

    .line 2370
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2371
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2346
    .end local v11    # "fieldSize":I
    :pswitch_1e0
    nop

    .line 2348
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2347
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2349
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2350
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1f5

    .line 2351
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2353
    :cond_1f5
    nop

    .line 2354
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2355
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2330
    .end local v11    # "fieldSize":I
    :pswitch_203
    nop

    .line 2332
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2331
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2333
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2334
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_218

    .line 2335
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2337
    :cond_218
    nop

    .line 2338
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2339
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2314
    .end local v11    # "fieldSize":I
    :pswitch_226
    nop

    .line 2316
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2315
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2317
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2318
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_23b

    .line 2319
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2321
    :cond_23b
    nop

    .line 2322
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2323
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2298
    .end local v11    # "fieldSize":I
    :pswitch_249
    nop

    .line 2300
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2299
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2301
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2302
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_25e

    .line 2303
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2305
    :cond_25e
    nop

    .line 2306
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2307
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2282
    .end local v11    # "fieldSize":I
    :pswitch_26c
    nop

    .line 2284
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2283
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2285
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2286
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_281

    .line 2287
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2289
    :cond_281
    nop

    .line 2290
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2291
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2266
    .end local v11    # "fieldSize":I
    :pswitch_28f
    nop

    .line 2268
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2267
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2269
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2270
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2a4

    .line 2271
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2273
    :cond_2a4
    nop

    .line 2274
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2275
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2250
    .end local v11    # "fieldSize":I
    :pswitch_2b2
    nop

    .line 2252
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2251
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2253
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2254
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2c7

    .line 2255
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2257
    :cond_2c7
    nop

    .line 2258
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2259
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2234
    .end local v11    # "fieldSize":I
    :pswitch_2d5
    nop

    .line 2236
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2235
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2237
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2238
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2ea

    .line 2239
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2241
    :cond_2ea
    nop

    .line 2242
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2243
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2218
    .end local v11    # "fieldSize":I
    :pswitch_2f8
    nop

    .line 2220
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2219
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2221
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2222
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_30d

    .line 2223
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2225
    :cond_30d
    nop

    .line 2226
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2227
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2202
    .end local v11    # "fieldSize":I
    :pswitch_31b
    nop

    .line 2204
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2203
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2205
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2206
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_330

    .line 2207
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2209
    :cond_330
    nop

    .line 2210
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2211
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2186
    .end local v11    # "fieldSize":I
    :pswitch_33e
    nop

    .line 2188
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2187
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2189
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2190
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_353

    .line 2191
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2193
    :cond_353
    nop

    .line 2194
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2195
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2170
    .end local v11    # "fieldSize":I
    :pswitch_361
    nop

    .line 2172
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2171
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2173
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57a

    .line 2174
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_376

    .line 2175
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2177
    :cond_376
    nop

    .line 2178
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2179
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57a

    .line 2165
    .end local v11    # "fieldSize":I
    :pswitch_384
    nop

    .line 2166
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2167
    goto/16 :goto_57a

    .line 2160
    :pswitch_390
    nop

    .line 2162
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2161
    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2163
    goto/16 :goto_57a

    .line 2157
    :pswitch_39c
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2158
    goto/16 :goto_57a

    .line 2154
    :pswitch_3a7
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2155
    goto/16 :goto_57a

    .line 2149
    :pswitch_3b2
    nop

    .line 2151
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2150
    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2152
    goto/16 :goto_57a

    .line 2144
    :pswitch_3be
    nop

    .line 2146
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2145
    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2147
    goto/16 :goto_57a

    .line 2139
    :pswitch_3ca
    nop

    .line 2141
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    .line 2140
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2142
    goto/16 :goto_57a

    .line 2134
    :pswitch_3d6
    nop

    .line 2136
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    .line 2135
    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2137
    goto/16 :goto_57a

    .line 2131
    :pswitch_3e6
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2132
    goto/16 :goto_57a

    .line 2128
    :pswitch_3f1
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2129
    goto/16 :goto_57a

    .line 2125
    :pswitch_3fc
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2126
    goto/16 :goto_57a

    .line 2122
    :pswitch_407
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2123
    goto/16 :goto_57a

    .line 2117
    :pswitch_412
    nop

    .line 2119
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2118
    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2120
    goto/16 :goto_57a

    .line 2113
    :pswitch_41e
    nop

    .line 2114
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2115
    goto/16 :goto_57a

    .line 2109
    :pswitch_42a
    nop

    .line 2110
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2111
    goto/16 :goto_57a

    .line 2106
    :pswitch_436
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2107
    goto/16 :goto_57a

    .line 2103
    :pswitch_441
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2104
    goto/16 :goto_57a

    .line 2094
    :pswitch_44c
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2095
    nop

    .line 2098
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 2099
    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    .line 2096
    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2088
    :pswitch_464
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2089
    nop

    .line 2090
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2083
    :pswitch_476
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2084
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2078
    :pswitch_487
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2079
    invoke-static {v7, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2073
    :pswitch_494
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57a

    .line 2074
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2068
    :pswitch_4a1
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2069
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2063
    :pswitch_4b2
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2064
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57a

    .line 2057
    :pswitch_4c3
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2058
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 2059
    .local v11, "value":Landroidx/datastore/preferences/protobuf/ByteString;
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2060
    .end local v11    # "value":Landroidx/datastore/preferences/protobuf/ByteString;
    goto/16 :goto_57a

    .line 2051
    :pswitch_4d6
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2052
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2053
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2054
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_57a

    .line 2041
    :pswitch_4eb
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2042
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2043
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v12, :cond_502

    .line 2044
    move-object v12, v11

    check-cast v12, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v7, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_50a

    .line 2046
    :cond_502
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2048
    .end local v11    # "value":Ljava/lang/Object;
    :goto_50a
    goto/16 :goto_57a

    .line 2036
    :pswitch_50c
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2037
    invoke-static {v7, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2031
    :pswitch_518
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57a

    .line 2032
    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2026
    :pswitch_524
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2027
    invoke-static {v7, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2021
    :pswitch_530
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2022
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2015
    :pswitch_540
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2016
    nop

    .line 2017
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2010
    :pswitch_551
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2011
    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2005
    :pswitch_561
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2006
    invoke-static {v7, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57a

    .line 2000
    :pswitch_56d
    invoke-direct {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57a

    .line 2001
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    .line 1986
    .end local v5    # "typeAndOffset":I
    .end local v6    # "fieldType":I
    .end local v7    # "number":I
    .end local v8    # "offset":J
    .end local v10    # "cachedSizeOffset":I
    :cond_57a
    :goto_57a
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_8

    .line 2510
    .end local v4    # "i":I
    :cond_57e
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2512
    return v3

    :pswitch_data_586
    .packed-switch 0x0
        :pswitch_56d
        :pswitch_561
        :pswitch_551
        :pswitch_540
        :pswitch_530
        :pswitch_524
        :pswitch_518
        :pswitch_50c
        :pswitch_4eb
        :pswitch_4d6
        :pswitch_4c3
        :pswitch_4b2
        :pswitch_4a1
        :pswitch_494
        :pswitch_487
        :pswitch_476
        :pswitch_464
        :pswitch_44c
        :pswitch_441
        :pswitch_436
        :pswitch_42a
        :pswitch_41e
        :pswitch_412
        :pswitch_407
        :pswitch_3fc
        :pswitch_3f1
        :pswitch_3e6
        :pswitch_3d6
        :pswitch_3ca
        :pswitch_3be
        :pswitch_3b2
        :pswitch_3a7
        :pswitch_39c
        :pswitch_390
        :pswitch_384
        :pswitch_361
        :pswitch_33e
        :pswitch_31b
        :pswitch_2f8
        :pswitch_2d5
        :pswitch_2b2
        :pswitch_28f
        :pswitch_26c
        :pswitch_249
        :pswitch_226
        :pswitch_203
        :pswitch_1e0
        :pswitch_1bd
        :pswitch_19a
        :pswitch_18a
        :pswitch_179
        :pswitch_16a
        :pswitch_15d
        :pswitch_14c
        :pswitch_13b
        :pswitch_12a
        :pswitch_11d
        :pswitch_110
        :pswitch_103
        :pswitch_e2
        :pswitch_cd
        :pswitch_b9
        :pswitch_a8
        :pswitch_97
        :pswitch_8a
        :pswitch_7d
        :pswitch_6c
        :pswitch_5b
        :pswitch_43
    .end packed-switch
.end method

.method private getUnknownFieldsSerializedSize(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2517
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2518
    .local v0, "unknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5713
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 5697
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .registers 13
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5758
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_da

    .line 5759
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 5760
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 5761
    .local v3, "offset":J
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v5

    const-wide/16 v6, 0x0

    packed-switch v5, :pswitch_data_f0

    .line 5806
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5804
    :pswitch_1d
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_24

    move v1, v2

    :cond_24
    return v1

    .line 5802
    :pswitch_25
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_2e

    move v1, v2

    :cond_2e
    return v1

    .line 5800
    :pswitch_2f
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_36

    move v1, v2

    :cond_36
    return v1

    .line 5798
    :pswitch_37
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_40

    move v1, v2

    :cond_40
    return v1

    .line 5796
    :pswitch_41
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_48

    move v1, v2

    :cond_48
    return v1

    .line 5794
    :pswitch_49
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_50

    move v1, v2

    :cond_50
    return v1

    .line 5792
    :pswitch_51
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_58

    move v1, v2

    :cond_58
    return v1

    .line 5790
    :pswitch_59
    sget-object v1, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 5788
    :pswitch_65
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6c

    move v1, v2

    :cond_6c
    return v1

    .line 5779
    :pswitch_6d
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5780
    .local v1, "value":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_7e

    .line 5781
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 5782
    :cond_7e
    instance-of v5, v1, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v5, :cond_8a

    .line 5783
    sget-object v5, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v5, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 5785
    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 5777
    .end local v1    # "value":Ljava/lang/Object;
    :pswitch_90
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    return v1

    .line 5775
    :pswitch_95
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_9c

    move v1, v2

    :cond_9c
    return v1

    .line 5773
    :pswitch_9d
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_a6

    move v1, v2

    :cond_a6
    return v1

    .line 5771
    :pswitch_a7
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_ae

    move v1, v2

    :cond_ae
    return v1

    .line 5769
    :pswitch_af
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_b8

    move v1, v2

    :cond_b8
    return v1

    .line 5767
    :pswitch_b9
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_c2

    move v1, v2

    :cond_c2
    return v1

    .line 5765
    :pswitch_c3
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_cd

    move v1, v2

    :cond_cd
    return v1

    .line 5763
    :pswitch_ce
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_d9

    move v1, v2

    :cond_d9
    return v1

    .line 5809
    .end local v0    # "typeAndOffset":I
    .end local v3    # "offset":J
    :cond_da
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5810
    .local v0, "presenceMaskAndOffset":I
    ushr-int/lit8 v3, v0, 0x14

    shl-int v3, v2, v3

    .line 5811
    .local v3, "presenceMask":I
    const v4, 0xfffff

    and-int/2addr v4, v0

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_ef

    move v1, v2

    :cond_ef
    return v1

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_c3
        :pswitch_b9
        :pswitch_af
        :pswitch_a7
        :pswitch_9d
        :pswitch_95
        :pswitch_90
        :pswitch_6d
        :pswitch_65
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_37
        :pswitch_2f
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method

.method private isFieldPresent(Ljava/lang/Object;III)Z
    .registers 6
    .param p2, "pos"    # I
    .param p3, "presenceField"    # I
    .param p4, "presenceMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 5750
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    .line 5751
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 5753
    :cond_9
    and-int v0, p3, p4

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isInitialized(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Schema;)Z
    .registers 5
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "typeAndOffset"    # I
    .param p2, "schema"    # Landroidx/datastore/preferences/protobuf/Schema;

    .line 5577
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 5578
    .local v0, "nested":Ljava/lang/Object;
    invoke-interface {p2, v0}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .registers 10
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 5583
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5584
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TN;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 5585
    return v2

    .line 5588
    :cond_12
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v1

    .line 5589
    .local v1, "schema":Landroidx/datastore/preferences/protobuf/Schema;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 5590
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5591
    .local v4, "nested":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v4}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 5592
    const/4 v2, 0x0

    return v2

    .line 5589
    .end local v4    # "nested":Ljava/lang/Object;, "TN;"
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 5595
    .end local v3    # "i":I
    :cond_2c
    return v2
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .registers 13
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5599
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 5600
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 5601
    return v2

    .line 5603
    :cond_16
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    .line 5604
    .local v1, "mapDefaultEntry":Ljava/lang/Object;
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    .line 5605
    .local v3, "metadata":Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;, "Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata<**>;"
    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    if-eq v4, v5, :cond_2b

    .line 5606
    return v2

    .line 5609
    :cond_2b
    const/4 v4, 0x0

    .line 5610
    .local v4, "schema":Landroidx/datastore/preferences/protobuf/Schema;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5611
    .local v6, "nested":Ljava/lang/Object;
    if-nez v4, :cond_4c

    .line 5612
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->getInstance()Landroidx/datastore/preferences/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    .line 5614
    :cond_4c
    invoke-interface {v4, v6}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 5615
    const/4 v2, 0x0

    return v2

    .line 5617
    .end local v6    # "nested":Ljava/lang/Object;
    :cond_54
    goto :goto_34

    .line 5618
    :cond_55
    return v2
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 9
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5835
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5836
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v1, v0

    int-to-long v3, v1

    .line 5837
    invoke-static {p2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v2, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 5836
    :goto_19
    return v1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .registers 7
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5830
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5831
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v1, p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static isRequired(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 5693
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2522
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5717
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .registers 24
    .param p4, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .param p5, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Landroidx/datastore/preferences/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3860
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "extensionSchema":Landroidx/datastore/preferences/protobuf/ExtensionSchema;, "Landroidx/datastore/preferences/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v1, 0x0

    .line 3861
    .local v1, "unknownFields":Ljava/lang/Object;, "TUB;"
    const/4 v2, 0x0

    move-object v13, v1

    move-object v14, v2

    .line 3864
    .end local v1    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v13, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v14, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    :goto_e
    :try_start_e
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->getFieldNumber()I

    move-result v1

    move v15, v1

    .line 3865
    .local v15, "number":I
    invoke-direct {v8, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_6f9

    move v7, v1

    .line 3866
    .local v7, "pos":I
    if-gez v7, :cond_a8

    .line 3867
    const v1, 0x7fffffff

    if-ne v15, v1, :cond_36

    .line 4324
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v1, "i":I
    :goto_21
    iget v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_30

    .line 4325
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4326
    invoke-direct {v8, v10, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4324
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 4328
    .end local v1    # "i":I
    :cond_30
    if-eqz v13, :cond_35

    .line 4329
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3868
    :cond_35
    return-void

    .line 3871
    :cond_36
    :try_start_36
    iget-boolean v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    move-object/from16 v6, p2

    goto :goto_46

    :cond_3e
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 3874
    move-object/from16 v6, p2

    invoke-virtual {v6, v12, v1, v15}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_6f9

    :goto_46
    move-object/from16 v16, v1

    .line 3876
    .local v16, "extension":Ljava/lang/Object;
    if-eqz v16, :cond_6e

    .line 3877
    if-nez v14, :cond_56

    .line 3878
    :try_start_4c
    invoke-virtual/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_52

    move-object v14, v1

    .end local v14    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    .local v1, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    goto :goto_56

    .line 4324
    .end local v1    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    .end local v7    # "pos":I
    .end local v15    # "number":I
    .end local v16    # "extension":Ljava/lang/Object;
    .restart local v14    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    :catchall_52
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6fd

    .line 3880
    .restart local v7    # "pos":I
    .restart local v15    # "number":I
    .restart local v16    # "extension":Ljava/lang/Object;
    :cond_56
    :goto_56
    nop

    .line 3881
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .local v17, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    move-object/from16 v7, p1

    :try_start_66
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->parseExtension(Landroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 3888
    move-object/from16 v14, v17

    goto :goto_e

    .line 3890
    .end local v17    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    .restart local v7    # "pos":I
    .local v14, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    :cond_6e
    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    invoke-virtual {v9, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Landroidx/datastore/preferences/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 3891
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->skipField()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 3892
    move-object/from16 v14, v17

    goto :goto_e

    .line 3895
    :cond_80
    if-nez v13, :cond_87

    .line 3896
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 3899
    :cond_87
    invoke-virtual {v9, v13, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;)Z

    move-result v1
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_6f4

    if-eqz v1, :cond_91

    .line 3900
    move-object/from16 v14, v17

    goto/16 :goto_e

    .line 4324
    :cond_91
    iget v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v1, "i":I
    :goto_93
    iget v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_a2

    .line 4325
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4326
    invoke-direct {v8, v10, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4324
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 4328
    .end local v1    # "i":I
    :cond_a2
    if-eqz v13, :cond_a7

    .line 4329
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3904
    :cond_a7
    return-void

    .line 3906
    .end local v16    # "extension":Ljava/lang/Object;
    .end local v17    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    .restart local v7    # "pos":I
    .local v14, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    :cond_a8
    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    :try_start_ab
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_6f4

    move v7, v1

    .line 3909
    .local v7, "typeAndOffset":I
    :try_start_b0
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v1
    :try_end_b4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b0 .. :try_end_b4} :catch_6a6
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_6f4

    packed-switch v1, :pswitch_data_714

    .line 4298
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    if-nez v13, :cond_688

    .line 4299
    :try_start_ba
    invoke-virtual/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2
    :try_end_be
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_ba .. :try_end_be} :catch_684
    .catchall {:try_start_ba .. :try_end_be} :catchall_6f4

    goto/16 :goto_687

    .line 4290
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_c0
    nop

    .line 4292
    :try_start_c1
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4293
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4290
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4294
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4295
    move v1, v7

    goto/16 :goto_6a5

    .line 4285
    :pswitch_d6
    nop

    .line 4286
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4285
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4287
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4288
    move v1, v7

    goto/16 :goto_6a5

    .line 4280
    :pswitch_ec
    nop

    .line 4281
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4280
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4282
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4283
    move v1, v7

    goto/16 :goto_6a5

    .line 4275
    :pswitch_102
    nop

    .line 4276
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4275
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4277
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4278
    move v1, v7

    goto/16 :goto_6a5

    .line 4270
    :pswitch_118
    nop

    .line 4271
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4270
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4272
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4273
    move v1, v7

    goto/16 :goto_6a5

    .line 4257
    :pswitch_12e
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readEnum()I

    move-result v1

    .line 4258
    .local v1, "enumValue":I
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4259
    .local v2, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    if-eqz v2, :cond_148

    invoke-interface {v2, v1}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_13f

    goto :goto_148

    .line 4263
    :cond_13f
    nop

    .line 4264
    invoke-static {v15, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4267
    move v1, v7

    goto/16 :goto_6a5

    .line 4260
    :cond_148
    :goto_148
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4261
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a5

    .line 4251
    .end local v1    # "enumValue":I
    .end local v2    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    :pswitch_159
    nop

    .line 4252
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4251
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4253
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4254
    move v1, v7

    goto/16 :goto_6a5

    .line 4247
    :pswitch_16f
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4248
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4249
    move v1, v7

    goto/16 :goto_6a5

    .line 4229
    :pswitch_180
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 4230
    nop

    .line 4232
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 4234
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    .line 4233
    invoke-interface {v11, v2, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4231
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4235
    .local v1, "mergedResult":Ljava/lang/Object;
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4236
    .end local v1    # "mergedResult":Ljava/lang/Object;
    goto :goto_1b6

    .line 4237
    :cond_1a3
    nop

    .line 4239
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4241
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    .line 4240
    invoke-interface {v11, v3, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4237
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4242
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4244
    :goto_1b6
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4245
    move v1, v7

    goto/16 :goto_6a5

    .line 4225
    :pswitch_1bc
    invoke-direct {v8, v10, v7, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V

    .line 4226
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4227
    move v1, v7

    goto/16 :goto_6a5

    .line 4220
    :pswitch_1c5
    nop

    .line 4221
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4220
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4222
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4223
    move v1, v7

    goto/16 :goto_6a5

    .line 4215
    :pswitch_1db
    nop

    .line 4216
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4215
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4217
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4218
    move v1, v7

    goto/16 :goto_6a5

    .line 4210
    :pswitch_1f1
    nop

    .line 4211
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4210
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4212
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4213
    move v1, v7

    goto/16 :goto_6a5

    .line 4205
    :pswitch_207
    nop

    .line 4206
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4205
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4207
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4208
    move v1, v7

    goto/16 :goto_6a5

    .line 4200
    :pswitch_21d
    nop

    .line 4201
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4200
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4202
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4203
    move v1, v7

    goto/16 :goto_6a5

    .line 4195
    :pswitch_233
    nop

    .line 4196
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4195
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4197
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4198
    move v1, v7

    goto/16 :goto_6a5

    .line 4190
    :pswitch_249
    nop

    .line 4191
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 4190
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4192
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4193
    move v1, v7

    goto/16 :goto_6a5

    .line 4185
    :pswitch_25f
    nop

    .line 4186
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 4185
    invoke-static {v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4187
    invoke-direct {v8, v10, v15, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4188
    move v1, v7

    goto/16 :goto_6a5

    .line 4182
    :pswitch_275
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v14

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/Reader;)V
    :try_end_285
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c1 .. :try_end_285} :catch_288
    .catchall {:try_start_c1 .. :try_end_285} :catchall_6f4

    .line 4183
    move v1, v7

    goto/16 :goto_6a5

    .line 4306
    :catch_288
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_6a9

    .line 4173
    :pswitch_28d
    nop

    .line 4175
    :try_start_28e
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 4177
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6
    :try_end_296
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_28e .. :try_end_296} :catch_2a7
    .catchall {:try_start_28e .. :try_end_296} :catchall_6f4

    .line 4173
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .local v16, "typeAndOffset":I
    move-object/from16 v7, p5

    :try_start_2a0
    invoke-direct/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 4179
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4306
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :catch_2a7
    move-exception v0

    move/from16 v16, v7

    move-object v2, v0

    move/from16 v1, v16

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    goto/16 :goto_6a9

    .line 4168
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2af
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4169
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4168
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4170
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4164
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2c2
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4165
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4164
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4166
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4160
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2d5
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4161
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4160
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4162
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4156
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2e8
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4157
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4156
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 4158
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4143
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2fb
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4144
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4145
    .local v1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4146
    nop

    .line 4150
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4147
    invoke-static {v15, v1, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 4153
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4138
    .end local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_318
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4139
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4138
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4140
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4134
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_32b
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4135
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4134
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4136
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4130
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_33e
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4131
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4130
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4132
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4126
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_351
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4127
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4126
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4128
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4122
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_364
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4123
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4122
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4124
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4118
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_377
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4119
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4118
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4120
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4114
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_38a
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4115
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4114
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4116
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4110
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_39d
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4111
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4110
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4112
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4106
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3b0
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4107
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4106
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4108
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4102
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3c3
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4103
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4102
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4104
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4098
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3d6
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4099
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4098
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4100
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4094
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3e9
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4095
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4094
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4096
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4090
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3fc
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4091
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4090
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 4092
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4077
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_40f
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4078
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4079
    .restart local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4080
    nop

    .line 4084
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4081
    invoke-static {v15, v1, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 4087
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4072
    .end local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_42c
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4073
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4072
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4074
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4068
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_43f
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4069
    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4068
    invoke-interface {v11, v1}, Landroidx/datastore/preferences/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    .line 4070
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4059
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_452
    move/from16 v16, v7

    .line 4063
    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    .line 4059
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    :try_end_465
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2a0 .. :try_end_465} :catch_469
    .catchall {:try_start_2a0 .. :try_end_465} :catchall_6f4

    .line 4065
    move/from16 v1, v16

    goto/16 :goto_6a5

    .line 4306
    :catch_469
    move-exception v0

    move-object v2, v0

    move/from16 v1, v16

    goto/16 :goto_6a9

    .line 4055
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_46f
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    move/from16 v1, v16

    .end local v16    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    :try_start_473
    invoke-direct {v8, v10, v1, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V

    .line 4056
    goto/16 :goto_6a5

    .line 4051
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_478
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4052
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4051
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4053
    goto/16 :goto_6a5

    .line 4047
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_488
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4048
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4047
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4049
    goto/16 :goto_6a5

    .line 4043
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_498
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4044
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4043
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4045
    goto/16 :goto_6a5

    .line 4039
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_4a8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4040
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4039
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4041
    goto/16 :goto_6a5

    .line 4035
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_4b8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4036
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4035
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4037
    goto/16 :goto_6a5

    .line 4031
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_4c8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4032
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4031
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4033
    goto/16 :goto_6a5

    .line 4027
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_4d8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4028
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4027
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4029
    goto/16 :goto_6a5

    .line 4023
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_4e8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 4024
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4023
    invoke-interface {v11, v2}, Landroidx/datastore/preferences/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4025
    goto/16 :goto_6a5

    .line 4005
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_4f8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_51d

    .line 4006
    nop

    .line 4008
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4010
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    .line 4009
    invoke-interface {v11, v3, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4007
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4011
    .local v2, "mergedResult":Ljava/lang/Object;
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4012
    .end local v2    # "mergedResult":Ljava/lang/Object;
    goto/16 :goto_6a5

    .line 4013
    :cond_51d
    nop

    .line 4015
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 4017
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    .line 4016
    invoke-interface {v11, v4, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 4013
    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4018
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4020
    goto/16 :goto_6a5

    .line 4000
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_532
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4001
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4002
    goto/16 :goto_6a5

    .line 3996
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_543
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3997
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3998
    goto/16 :goto_6a5

    .line 3992
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_554
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3993
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3994
    goto/16 :goto_6a5

    .line 3988
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_565
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3989
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3990
    goto/16 :goto_6a5

    .line 3975
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_576
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readEnum()I

    move-result v2

    .line 3976
    .local v2, "enumValue":I
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 3977
    .local v3, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    if-eqz v3, :cond_590

    invoke-interface {v3, v2}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_588

    goto :goto_590

    .line 3981
    :cond_588
    nop

    .line 3982
    invoke-static {v15, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    .line 3985
    goto/16 :goto_6a5

    .line 3978
    :cond_590
    :goto_590
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3979
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a5

    .line 3970
    .end local v1    # "typeAndOffset":I
    .end local v2    # "enumValue":I
    .end local v3    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .restart local v7    # "typeAndOffset":I
    :pswitch_59c
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3971
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3972
    goto/16 :goto_6a5

    .line 3966
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_5ad
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3967
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3968
    goto/16 :goto_6a5

    .line 3948
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_5be
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5e3

    .line 3949
    nop

    .line 3951
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3953
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    .line 3952
    invoke-interface {v11, v3, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 3950
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3954
    .local v2, "mergedResult":Ljava/lang/Object;
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3955
    .end local v2    # "mergedResult":Ljava/lang/Object;
    goto/16 :goto_6a5

    .line 3956
    :cond_5e3
    nop

    .line 3958
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 3960
    invoke-direct {v8, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    .line 3959
    invoke-interface {v11, v4, v12}, Landroidx/datastore/preferences/protobuf/Reader;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 3956
    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3961
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3963
    goto/16 :goto_6a5

    .line 3943
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_5f8
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v1, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V

    .line 3944
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3945
    goto/16 :goto_6a5

    .line 3939
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_601
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3940
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3941
    goto/16 :goto_6a5

    .line 3935
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_612
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3936
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3937
    goto/16 :goto_6a5

    .line 3931
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_623
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3932
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3933
    goto/16 :goto_6a5

    .line 3927
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_634
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3928
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3929
    goto :goto_6a5

    .line 3923
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_644
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3924
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3925
    goto :goto_6a5

    .line 3919
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_654
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3920
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3921
    goto :goto_6a5

    .line 3915
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_664
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v10, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3916
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3917
    goto :goto_6a5

    .line 3911
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_674
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3912
    invoke-direct {v8, v10, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3913
    goto :goto_6a5

    .line 4306
    :catch_684
    move-exception v0

    move-object v2, v0

    goto :goto_6a9

    .line 4299
    :goto_687
    move-object v13, v2

    .line 4301
    :cond_688
    invoke-virtual {v9, v13, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;)Z

    move-result v2
    :try_end_68c
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_473 .. :try_end_68c} :catch_684
    .catchall {:try_start_473 .. :try_end_68c} :catchall_6f4

    if-nez v2, :cond_6a5

    .line 4324
    iget v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v2, "i":I
    :goto_690
    iget v3, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_69f

    .line 4325
    iget-object v3, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4326
    invoke-direct {v8, v10, v3, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4324
    add-int/lit8 v2, v2, 0x1

    goto :goto_690

    .line 4328
    .end local v2    # "i":I
    :cond_69f
    if-eqz v13, :cond_6a4

    .line 4329
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4302
    :cond_6a4
    return-void

    .line 4321
    :cond_6a5
    :goto_6a5
    goto :goto_6f0

    .line 4306
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :catch_6a6
    move-exception v0

    move v1, v7

    move-object v2, v0

    .line 4309
    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    .local v2, "e":Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_6a9
    :try_start_6a9
    invoke-virtual {v9, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Landroidx/datastore/preferences/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_6cc

    .line 4310
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/Reader;->skipField()Z

    move-result v3
    :try_end_6b3
    .catchall {:try_start_6a9 .. :try_end_6b3} :catchall_6f4

    if-nez v3, :cond_6f0

    .line 4324
    iget v3, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v3, "i":I
    :goto_6b7
    iget v4, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_6c6

    .line 4325
    iget-object v4, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    .line 4326
    invoke-direct {v8, v10, v4, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4324
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b7

    .line 4328
    .end local v3    # "i":I
    :cond_6c6
    if-eqz v13, :cond_6cb

    .line 4329
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4311
    :cond_6cb
    return-void

    .line 4314
    :cond_6cc
    if-nez v13, :cond_6d3

    .line 4315
    :try_start_6ce
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4317
    :cond_6d3
    invoke-virtual {v9, v13, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;)Z

    move-result v3
    :try_end_6d7
    .catchall {:try_start_6ce .. :try_end_6d7} :catchall_6f4

    if-nez v3, :cond_6f0

    .line 4324
    iget v3, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .restart local v3    # "i":I
    :goto_6db
    iget v4, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_6ea

    .line 4325
    iget-object v4, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    .line 4326
    invoke-direct {v8, v10, v4, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4324
    add-int/lit8 v3, v3, 0x1

    goto :goto_6db

    .line 4328
    .end local v3    # "i":I
    :cond_6ea
    if-eqz v13, :cond_6ef

    .line 4329
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4318
    :cond_6ef
    return-void

    .line 4322
    .end local v1    # "typeAndOffset":I
    .end local v2    # "e":Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v14    # "pos":I
    .end local v15    # "number":I
    :cond_6f0
    :goto_6f0
    move-object/from16 v14, v17

    goto/16 :goto_e

    .line 4324
    :catchall_6f4
    move-exception v0

    move-object v1, v0

    move-object/from16 v14, v17

    goto :goto_6fd

    .end local v17    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    .local v14, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<TET;>;"
    :catchall_6f9
    move-exception v0

    move-object/from16 v17, v14

    move-object v1, v0

    :goto_6fd
    iget v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v2, "i":I
    :goto_6ff
    iget v3, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_70e

    .line 4325
    iget-object v3, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4326
    invoke-direct {v8, v10, v3, v13, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4324
    add-int/lit8 v2, v2, 0x1

    goto :goto_6ff

    .line 4328
    .end local v2    # "i":I
    :cond_70e
    if-eqz v13, :cond_713

    .line 4329
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4331
    :cond_713
    throw v1

    :pswitch_data_714
    .packed-switch 0x0
        :pswitch_674
        :pswitch_664
        :pswitch_654
        :pswitch_644
        :pswitch_634
        :pswitch_623
        :pswitch_612
        :pswitch_601
        :pswitch_5f8
        :pswitch_5be
        :pswitch_5ad
        :pswitch_59c
        :pswitch_576
        :pswitch_565
        :pswitch_554
        :pswitch_543
        :pswitch_532
        :pswitch_4f8
        :pswitch_4e8
        :pswitch_4d8
        :pswitch_4c8
        :pswitch_4b8
        :pswitch_4a8
        :pswitch_498
        :pswitch_488
        :pswitch_478
        :pswitch_46f
        :pswitch_452
        :pswitch_43f
        :pswitch_42c
        :pswitch_40f
        :pswitch_3fc
        :pswitch_3e9
        :pswitch_3d6
        :pswitch_3c3
        :pswitch_3b0
        :pswitch_39d
        :pswitch_38a
        :pswitch_377
        :pswitch_364
        :pswitch_351
        :pswitch_33e
        :pswitch_32b
        :pswitch_318
        :pswitch_2fb
        :pswitch_2e8
        :pswitch_2d5
        :pswitch_2c2
        :pswitch_2af
        :pswitch_28d
        :pswitch_275
        :pswitch_25f
        :pswitch_249
        :pswitch_233
        :pswitch_21d
        :pswitch_207
        :pswitch_1f1
        :pswitch_1db
        :pswitch_1c5
        :pswitch_1bc
        :pswitch_180
        :pswitch_16f
        :pswitch_159
        :pswitch_12e
        :pswitch_118
        :pswitch_102
        :pswitch_ec
        :pswitch_d6
        :pswitch_c0
    .end packed-switch
.end method

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/Reader;)V
    .registers 11
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .param p5, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5431
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5432
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5437
    .local v2, "mapField":Ljava/lang/Object;
    if-nez v2, :cond_18

    .line 5438
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v3, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5439
    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    .line 5440
    :cond_18
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 5441
    move-object v3, v2

    .line 5442
    .local v3, "oldMapField":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5443
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v4, v2, v3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5444
    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5446
    .end local v3    # "oldMapField":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 5447
    invoke-interface {v3, v2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 5448
    invoke-interface {v4, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    .line 5446
    invoke-interface {p5, v3, v4, p4}, Landroidx/datastore/preferences/protobuf/Reader;->readMap(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 5450
    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1369
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1370
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1372
    .local v1, "offset":J
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1373
    return-void

    .line 1376
    :cond_f
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1377
    .local v3, "mine":Ljava/lang/Object;
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1378
    .local v4, "theirs":Ljava/lang/Object;
    if-eqz v3, :cond_26

    if-eqz v4, :cond_26

    .line 1379
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1380
    .local v5, "merged":Ljava/lang/Object;
    invoke-static {p1, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1381
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .end local v5    # "merged":Ljava/lang/Object;
    goto :goto_2f

    .line 1382
    :cond_26
    if-eqz v4, :cond_2f

    .line 1383
    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1384
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_30

    .line 1382
    :cond_2f
    :goto_2f
    nop

    .line 1386
    :goto_30
    return-void
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 11
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1389
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1390
    .local v0, "typeAndOffset":I
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    .line 1391
    .local v1, "number":I
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 1393
    .local v2, "offset":J
    invoke-direct {p0, p2, v1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1394
    return-void

    .line 1397
    :cond_13
    invoke-static {p1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1398
    .local v4, "mine":Ljava/lang/Object;
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1399
    .local v5, "theirs":Ljava/lang/Object;
    if-eqz v4, :cond_2a

    if-eqz v5, :cond_2a

    .line 1400
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1401
    .local v6, "merged":Ljava/lang/Object;
    invoke-static {p1, v2, v3, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1402
    invoke-direct {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .end local v6    # "merged":Ljava/lang/Object;
    goto :goto_33

    .line 1403
    :cond_2a
    if-eqz v5, :cond_33

    .line 1404
    invoke-static {p1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1405
    invoke-direct {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_34

    .line 1403
    :cond_33
    :goto_33
    nop

    .line 1407
    :goto_34
    return-void
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1186
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1187
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1188
    .local v1, "offset":J
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1190
    .local v3, "number":I
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_174

    goto/16 :goto_173

    .line 1361
    :pswitch_15
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1362
    goto/16 :goto_173

    .line 1355
    :pswitch_1a
    invoke-direct {p0, p2, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1356
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1357
    invoke-direct {p0, p1, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 1346
    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1347
    goto/16 :goto_173

    .line 1339
    :pswitch_31
    invoke-direct {p0, p2, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1340
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1341
    invoke-direct {p0, p1, v3, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 1328
    :pswitch_43
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-static {v4, p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->mergeMap(Landroidx/datastore/preferences/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1329
    goto/16 :goto_173

    .line 1325
    :pswitch_4a
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-virtual {v4, p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1326
    goto/16 :goto_173

    .line 1291
    :pswitch_51
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1292
    goto/16 :goto_173

    .line 1285
    :pswitch_56
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1286
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1287
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1279
    :pswitch_68
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1280
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1281
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1273
    :pswitch_7a
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1274
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1275
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1267
    :pswitch_8c
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1268
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1269
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1261
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1262
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1263
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1255
    :pswitch_b0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1256
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1257
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1249
    :pswitch_c2
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1250
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1251
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1246
    :pswitch_d4
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1247
    goto/16 :goto_173

    .line 1240
    :pswitch_d9
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1241
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1242
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1234
    :pswitch_eb
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1235
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1236
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1228
    :pswitch_fd
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1229
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1230
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1222
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1223
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1224
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1216
    :pswitch_11f
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1217
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1218
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1210
    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1211
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1212
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1204
    :pswitch_141
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1205
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1206
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1198
    :pswitch_152
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1199
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1200
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1192
    :pswitch_163
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1193
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1194
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1366
    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method static newSchema(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .registers 14
    .param p1, "messageInfo"    # Landroidx/datastore/preferences/protobuf/MessageInfo;
    .param p2, "newInstanceSchema"    # Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .param p3, "listFieldSchema"    # Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .param p6, "mapFieldSchema"    # Landroidx/datastore/preferences/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/MessageInfo;",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")",
            "Landroidx/datastore/preferences/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 220
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<**>;"
    .local p5, "extensionSchema":Landroidx/datastore/preferences/protobuf/ExtensionSchema;, "Landroidx/datastore/preferences/protobuf/ExtensionSchema<*>;"
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    if-eqz v0, :cond_11

    .line 221
    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    move-result-object v0

    return-object v0

    .line 230
    :cond_11
    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->newSchemaForMessageInfo(Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    move-result-object v0

    return-object v0
.end method

.method static newSchemaForMessageInfo(Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .registers 39
    .param p0, "messageInfo"    # Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;
    .param p1, "newInstanceSchema"    # Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Landroidx/datastore/preferences/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")",
            "Landroidx/datastore/preferences/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 619
    .local p3, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Landroidx/datastore/preferences/protobuf/ExtensionSchema;, "Landroidx/datastore/preferences/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v2

    .line 620
    .local v0, "isProto3":Z
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->getFields()[Landroidx/datastore/preferences/protobuf/FieldInfo;

    move-result-object v1

    .line 623
    .local v1, "fis":[Landroidx/datastore/preferences/protobuf/FieldInfo;
    array-length v4, v1

    if-nez v4, :cond_19

    .line 624
    const/4 v3, 0x0

    .line 625
    .local v3, "minFieldNumber":I
    const/4 v4, 0x0

    move/from16 v20, v4

    .local v4, "maxFieldNumber":I
    goto :goto_2a

    .line 627
    .end local v3    # "minFieldNumber":I
    .end local v4    # "maxFieldNumber":I
    :cond_19
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getFieldNumber()I

    move-result v4

    .line 628
    .local v4, "minFieldNumber":I
    array-length v5, v1

    sub-int/2addr v5, v3

    aget-object v3, v1, v5

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    move/from16 v20, v3

    move v3, v4

    .line 631
    .end local v4    # "minFieldNumber":I
    .restart local v3    # "minFieldNumber":I
    .local v20, "maxFieldNumber":I
    :goto_2a
    array-length v15, v1

    .line 633
    .local v15, "numEntries":I
    mul-int/lit8 v4, v15, 0x3

    new-array v14, v4, [I

    .line 634
    .local v14, "buffer":[I
    mul-int/lit8 v4, v15, 0x2

    new-array v13, v4, [Ljava/lang/Object;

    .line 636
    .local v13, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 637
    .local v4, "mapFieldCount":I
    const/4 v5, 0x0

    .line 638
    .local v5, "repeatedFieldCount":I
    array-length v6, v1

    move v7, v2

    :goto_37
    const/16 v8, 0x31

    const/16 v9, 0x12

    if-ge v7, v6, :cond_63

    aget-object v10, v1, v7

    .line 639
    .local v10, "fi":Landroidx/datastore/preferences/protobuf/FieldInfo;
    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    if-ne v11, v12, :cond_4a

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 641
    :cond_4a
    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v11

    if-lt v11, v9, :cond_60

    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v9

    if-gt v9, v8, :cond_60

    .line 644
    add-int/lit8 v5, v5, 0x1

    .line 638
    .end local v10    # "fi":Landroidx/datastore/preferences/protobuf/FieldInfo;
    :cond_60
    :goto_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 647
    :cond_63
    const/4 v6, 0x0

    if-lez v4, :cond_69

    new-array v7, v4, [I

    goto :goto_6a

    :cond_69
    move-object v7, v6

    .line 648
    .local v7, "mapFieldPositions":[I
    :goto_6a
    if-lez v5, :cond_6e

    new-array v6, v5, [I

    .line 649
    .local v6, "repeatedFieldOffsets":[I
    :cond_6e
    const/4 v4, 0x0

    .line 650
    const/4 v5, 0x0

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v10

    .line 653
    .local v10, "checkInitialized":[I
    if-nez v10, :cond_7a

    .line 654
    sget-object v10, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v12, v10

    goto :goto_7b

    .line 653
    :cond_7a
    move-object v12, v10

    .line 656
    .end local v10    # "checkInitialized":[I
    .local v12, "checkInitialized":[I
    :goto_7b
    const/4 v10, 0x0

    .line 658
    .local v10, "checkInitializedIndex":I
    const/4 v11, 0x0

    .line 659
    .local v11, "fieldIndex":I
    const/16 v16, 0x0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v4, v16

    move/from16 v32, v11

    move v11, v10

    move/from16 v10, v32

    .end local v5    # "repeatedFieldCount":I
    .local v4, "bufferIndex":I
    .local v10, "fieldIndex":I
    .local v11, "checkInitializedIndex":I
    .local v21, "mapFieldCount":I
    .local v22, "repeatedFieldCount":I
    :goto_8a
    array-length v5, v1

    if-ge v10, v5, :cond_ea

    .line 660
    aget-object v5, v1, v10

    .line 661
    .local v5, "fi":Landroidx/datastore/preferences/protobuf/FieldInfo;
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    .line 665
    .local v2, "fieldNumber":I
    invoke-static {v5, v14, v4, v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->storeFieldData(Landroidx/datastore/preferences/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V

    .line 668
    array-length v8, v12

    if-ge v11, v8, :cond_a2

    aget v8, v12, v11

    if-ne v8, v2, :cond_a2

    .line 670
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "checkInitializedIndex":I
    .local v8, "checkInitializedIndex":I
    aput v4, v12, v11

    move v11, v8

    .line 673
    .end local v8    # "checkInitializedIndex":I
    .restart local v11    # "checkInitializedIndex":I
    :cond_a2
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v8

    sget-object v9, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    if-ne v8, v9, :cond_b3

    .line 674
    add-int/lit8 v8, v21, 0x1

    .end local v21    # "mapFieldCount":I
    .local v8, "mapFieldCount":I
    aput v4, v7, v21

    move/from16 v21, v8

    move/from16 v19, v10

    goto :goto_df

    .line 675
    .end local v8    # "mapFieldCount":I
    .restart local v21    # "mapFieldCount":I
    :cond_b3
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x12

    if-lt v8, v9, :cond_dd

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x31

    if-gt v8, v9, :cond_dd

    .line 678
    add-int/lit8 v8, v22, 0x1

    .line 679
    .end local v22    # "repeatedFieldCount":I
    .local v8, "repeatedFieldCount":I
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v17

    move/from16 v19, v10

    .end local v10    # "fieldIndex":I
    .local v19, "fieldIndex":I
    invoke-static/range {v17 .. v17}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    aput v9, v6, v22

    move/from16 v22, v8

    goto :goto_df

    .line 675
    .end local v8    # "repeatedFieldCount":I
    .end local v19    # "fieldIndex":I
    .restart local v10    # "fieldIndex":I
    .restart local v22    # "repeatedFieldCount":I
    :cond_dd
    move/from16 v19, v10

    .line 682
    .end local v10    # "fieldIndex":I
    .restart local v19    # "fieldIndex":I
    :goto_df
    nop

    .end local v2    # "fieldNumber":I
    .end local v5    # "fi":Landroidx/datastore/preferences/protobuf/FieldInfo;
    add-int/lit8 v10, v19, 0x1

    .line 659
    .end local v19    # "fieldIndex":I
    .restart local v10    # "fieldIndex":I
    add-int/lit8 v4, v4, 0x3

    const/4 v2, 0x0

    const/16 v8, 0x31

    const/16 v9, 0x12

    goto :goto_8a

    :cond_ea
    move/from16 v19, v10

    .line 685
    .end local v4    # "bufferIndex":I
    .end local v10    # "fieldIndex":I
    .restart local v19    # "fieldIndex":I
    if-nez v7, :cond_f2

    .line 686
    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v2, v7

    goto :goto_f3

    .line 685
    :cond_f2
    move-object v2, v7

    .line 688
    .end local v7    # "mapFieldPositions":[I
    .local v2, "mapFieldPositions":[I
    :goto_f3
    if-nez v6, :cond_f9

    .line 689
    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v10, v6

    goto :goto_fa

    .line 688
    :cond_f9
    move-object v10, v6

    .line 691
    .end local v6    # "repeatedFieldOffsets":[I
    .local v10, "repeatedFieldOffsets":[I
    :goto_fa
    array-length v4, v12

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v10

    add-int/2addr v4, v5

    new-array v9, v4, [I

    .line 693
    .local v9, "combined":[I
    array-length v4, v12

    const/4 v5, 0x0

    invoke-static {v12, v5, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    array-length v4, v12

    array-length v6, v2

    invoke-static {v2, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    array-length v4, v12

    array-length v6, v2

    add-int/2addr v4, v6

    array-length v6, v10

    invoke-static {v10, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    new-instance v23, Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v16

    const/16 v17, 0x1

    array-length v8, v12

    array-length v4, v12

    array-length v5, v2

    add-int v18, v4, v5

    move-object/from16 v4, v23

    move-object v5, v14

    move-object v6, v13

    move v7, v3

    move/from16 v24, v8

    move/from16 v8, v20

    move-object/from16 v25, v9

    .end local v9    # "combined":[I
    .local v25, "combined":[I
    move-object/from16 v9, v16

    move-object/from16 v27, v10

    move/from16 v26, v19

    .end local v10    # "repeatedFieldOffsets":[I
    .end local v19    # "fieldIndex":I
    .local v26, "fieldIndex":I
    .local v27, "repeatedFieldOffsets":[I
    move v10, v0

    move/from16 v28, v11

    .end local v11    # "checkInitializedIndex":I
    .local v28, "checkInitializedIndex":I
    move/from16 v11, v17

    move-object/from16 v29, v12

    .end local v12    # "checkInitialized":[I
    .local v29, "checkInitialized":[I
    move-object/from16 v12, v25

    move-object/from16 v30, v13

    .end local v13    # "objects":[Ljava/lang/Object;
    .local v30, "objects":[Ljava/lang/Object;
    move/from16 v13, v24

    move-object/from16 v24, v14

    .end local v14    # "buffer":[I
    .local v24, "buffer":[I
    move/from16 v14, v18

    move/from16 v31, v15

    .end local v15    # "numEntries":I
    .local v31, "numEntries":I
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    .line 703
    return-object v23
.end method

.method static newSchemaForRawMessageInfo(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .registers 49
    .param p0, "messageInfo"    # Landroidx/datastore/preferences/protobuf/RawMessageInfo;
    .param p1, "newInstanceSchema"    # Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Landroidx/datastore/preferences/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/RawMessageInfo;",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")",
            "Landroidx/datastore/preferences/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 247
    .local p3, "unknownFieldSchema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Landroidx/datastore/preferences/protobuf/ExtensionSchema;, "Landroidx/datastore/preferences/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    const/4 v10, 0x0

    .line 249
    .local v10, "isProto3":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 251
    .local v1, "length":I
    const/4 v4, 0x0

    .line 253
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 254
    .local v4, "next":I
    const v6, 0xd800

    if-lt v4, v6, :cond_39

    .line 255
    and-int/lit16 v7, v4, 0x1fff

    .line 256
    .local v7, "result":I
    const/16 v8, 0xd

    .line 257
    .local v8, "shift":I
    :goto_23
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_34

    .line 258
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 259
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_23

    .line 261
    :cond_34
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 263
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_39
    move/from16 v20, v4

    .line 265
    .local v20, "flags":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 266
    if-lt v4, v6, :cond_5d

    .line 267
    and-int/lit16 v5, v4, 0x1fff

    .line 268
    .local v5, "result":I
    const/16 v8, 0xd

    .line 269
    .restart local v8    # "shift":I
    :goto_47
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_58

    .line 270
    and-int/lit16 v7, v4, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    .line 271
    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_47

    .line 273
    :cond_58
    shl-int v7, v4, v8

    or-int v4, v5, v7

    move v7, v9

    .line 275
    .end local v5    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :cond_5d
    move/from16 v21, v4

    .line 287
    .local v21, "fieldCount":I
    if-nez v21, :cond_82

    .line 288
    const/4 v5, 0x0

    .line 289
    .local v5, "oneofCount":I
    const/4 v8, 0x0

    .line 290
    .local v8, "hasBitsCount":I
    const/4 v9, 0x0

    .line 291
    .local v9, "minFieldNumber":I
    const/4 v11, 0x0

    .line 292
    .local v11, "maxFieldNumber":I
    const/4 v12, 0x0

    .line 293
    .local v12, "numEntries":I
    const/4 v13, 0x0

    .line 294
    .local v13, "mapFieldCount":I
    const/4 v14, 0x0

    .line 295
    .local v14, "repeatedFieldCount":I
    const/4 v15, 0x0

    .line 296
    .local v15, "checkInitialized":I
    sget-object v16, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 297
    .local v16, "intArray":[I
    const/16 v17, 0x0

    move v2, v5

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move-object/from16 v29, v16

    move/from16 v16, v17

    .local v17, "objectsPosition":I
    goto/16 :goto_1bb

    .line 299
    .end local v5    # "oneofCount":I
    .end local v8    # "hasBitsCount":I
    .end local v9    # "minFieldNumber":I
    .end local v11    # "maxFieldNumber":I
    .end local v12    # "numEntries":I
    .end local v13    # "mapFieldCount":I
    .end local v14    # "repeatedFieldCount":I
    .end local v15    # "checkInitialized":I
    .end local v16    # "intArray":[I
    .end local v17    # "objectsPosition":I
    :cond_82
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 300
    if-lt v4, v6, :cond_a4

    .line 301
    and-int/lit16 v7, v4, 0x1fff

    .line 302
    .local v7, "result":I
    const/16 v8, 0xd

    .line 303
    .local v8, "shift":I
    :goto_8e
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_9f

    .line 304
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 305
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_8e

    .line 307
    :cond_9f
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 309
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_a4
    move v7, v4

    .line 311
    .local v7, "oneofCount":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 312
    if-lt v4, v6, :cond_c7

    .line 313
    and-int/lit16 v5, v4, 0x1fff

    .line 314
    .local v5, "result":I
    const/16 v9, 0xd

    .line 315
    .local v9, "shift":I
    :goto_b1
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_c2

    .line 316
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 317
    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_b1

    .line 319
    :cond_c2
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    .line 321
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v11    # "i":I
    .restart local v8    # "i":I
    :cond_c7
    move v5, v4

    .line 323
    .local v5, "hasBitsCount":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 324
    if-lt v4, v6, :cond_ea

    .line 325
    and-int/lit16 v8, v4, 0x1fff

    .line 326
    .local v8, "result":I
    const/16 v11, 0xd

    .line 327
    .local v11, "shift":I
    :goto_d4
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "i":I
    .local v12, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    if-lt v9, v6, :cond_e5

    .line 328
    and-int/lit16 v9, v4, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    .line 329
    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_d4

    .line 331
    :cond_e5
    shl-int v9, v4, v11

    or-int v4, v8, v9

    move v9, v12

    .line 333
    .end local v8    # "result":I
    .end local v11    # "shift":I
    .end local v12    # "i":I
    .restart local v9    # "i":I
    :cond_ea
    move v8, v4

    .line 335
    .local v8, "minFieldNumber":I
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 336
    if-lt v4, v6, :cond_10d

    .line 337
    and-int/lit16 v9, v4, 0x1fff

    .line 338
    .local v9, "result":I
    const/16 v12, 0xd

    .line 339
    .local v12, "shift":I
    :goto_f7
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_108

    .line 340
    and-int/lit16 v11, v4, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    .line 341
    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_f7

    .line 343
    :cond_108
    shl-int v11, v4, v12

    or-int v4, v9, v11

    move v11, v13

    .line 345
    .end local v9    # "result":I
    .end local v12    # "shift":I
    .end local v13    # "i":I
    .restart local v11    # "i":I
    :cond_10d
    move v9, v4

    .line 347
    .local v9, "maxFieldNumber":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 348
    if-lt v4, v6, :cond_130

    .line 349
    and-int/lit16 v11, v4, 0x1fff

    .line 350
    .local v11, "result":I
    const/16 v13, 0xd

    .line 351
    .local v13, "shift":I
    :goto_11a
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v4, v12

    if-lt v12, v6, :cond_12b

    .line 352
    and-int/lit16 v12, v4, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    .line 353
    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_11a

    .line 355
    :cond_12b
    shl-int v12, v4, v13

    or-int v4, v11, v12

    move v12, v14

    .line 357
    .end local v11    # "result":I
    .end local v13    # "shift":I
    .end local v14    # "i":I
    .restart local v12    # "i":I
    :cond_130
    move v11, v4

    .line 359
    .local v11, "numEntries":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 360
    if-lt v4, v6, :cond_153

    .line 361
    and-int/lit16 v12, v4, 0x1fff

    .line 362
    .local v12, "result":I
    const/16 v14, 0xd

    .line 363
    .local v14, "shift":I
    :goto_13d
    add-int/lit8 v15, v13, 0x1

    .end local v13    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v4, v13

    if-lt v13, v6, :cond_14e

    .line 364
    and-int/lit16 v13, v4, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 365
    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_13d

    .line 367
    :cond_14e
    shl-int v13, v4, v14

    or-int v4, v12, v13

    move v13, v15

    .line 369
    .end local v12    # "result":I
    .end local v14    # "shift":I
    .end local v15    # "i":I
    .restart local v13    # "i":I
    :cond_153
    move v12, v4

    .line 371
    .local v12, "mapFieldCount":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 372
    if-lt v4, v6, :cond_178

    .line 373
    and-int/lit16 v13, v4, 0x1fff

    .line 374
    .local v13, "result":I
    const/16 v15, 0xd

    .line 375
    .local v15, "shift":I
    :goto_160
    add-int/lit8 v16, v14, 0x1

    .end local v14    # "i":I
    .local v16, "i":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v4, v14

    if-lt v14, v6, :cond_172

    .line 376
    and-int/lit16 v14, v4, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 377
    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_160

    .line 379
    :cond_172
    shl-int v14, v4, v15

    or-int v4, v13, v14

    move/from16 v14, v16

    .line 381
    .end local v13    # "result":I
    .end local v15    # "shift":I
    .end local v16    # "i":I
    .restart local v14    # "i":I
    :cond_178
    move v13, v4

    .line 383
    .local v13, "repeatedFieldCount":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 384
    if-lt v4, v6, :cond_19e

    .line 385
    and-int/lit16 v14, v4, 0x1fff

    .line 386
    .local v14, "result":I
    const/16 v16, 0xd

    .line 387
    .local v16, "shift":I
    :goto_185
    add-int/lit8 v17, v15, 0x1

    .end local v15    # "i":I
    .local v17, "i":I
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v4, v15

    if-lt v15, v6, :cond_198

    .line 388
    and-int/lit16 v15, v4, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    .line 389
    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_185

    .line 391
    :cond_198
    shl-int v15, v4, v16

    or-int v4, v14, v15

    move/from16 v15, v17

    .line 393
    .end local v14    # "result":I
    .end local v16    # "shift":I
    .end local v17    # "i":I
    .restart local v15    # "i":I
    :cond_19e
    move v14, v4

    .line 394
    .local v14, "checkInitialized":I
    add-int v16, v14, v12

    add-int v2, v16, v13

    new-array v2, v2, [I

    .line 396
    .local v2, "intArray":[I
    mul-int/lit8 v16, v7, 0x2

    add-int v16, v16, v5

    move-object/from16 v29, v2

    move/from16 v22, v5

    move v2, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move v7, v15

    .line 399
    .end local v5    # "hasBitsCount":I
    .end local v8    # "minFieldNumber":I
    .end local v9    # "maxFieldNumber":I
    .end local v11    # "numEntries":I
    .end local v12    # "mapFieldCount":I
    .end local v13    # "repeatedFieldCount":I
    .end local v14    # "checkInitialized":I
    .end local v15    # "i":I
    .local v2, "oneofCount":I
    .local v7, "i":I
    .local v16, "objectsPosition":I
    .local v22, "hasBitsCount":I
    .local v23, "minFieldNumber":I
    .local v24, "maxFieldNumber":I
    .local v25, "numEntries":I
    .local v26, "mapFieldCount":I
    .local v27, "repeatedFieldCount":I
    .local v28, "checkInitialized":I
    .local v29, "intArray":[I
    :goto_1bb
    sget-object v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 400
    .local v15, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v30

    .line 401
    .local v30, "messageInfoObjects":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 402
    .local v5, "checkInitializedPosition":I
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 403
    .local v14, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v8, v25, 0x3

    new-array v13, v8, [I

    .line 404
    .local v13, "buffer":[I
    mul-int/lit8 v8, v25, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    .line 406
    .local v12, "objects":[Ljava/lang/Object;
    move/from16 v8, v28

    .line 407
    .local v8, "mapFieldIndex":I
    add-int v9, v28, v26

    .line 409
    .local v9, "repeatedFieldIndex":I
    const/4 v11, 0x0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v11

    move/from16 v36, v16

    move v11, v7

    .line 410
    .end local v4    # "next":I
    .end local v5    # "checkInitializedPosition":I
    .end local v7    # "i":I
    .end local v8    # "mapFieldIndex":I
    .end local v9    # "repeatedFieldIndex":I
    .end local v16    # "objectsPosition":I
    .local v11, "i":I
    .local v31, "next":I
    .local v32, "checkInitializedPosition":I
    .local v33, "mapFieldIndex":I
    .local v34, "repeatedFieldIndex":I
    .local v35, "bufferIndex":I
    .local v36, "objectsPosition":I
    :goto_1e4
    if-ge v11, v1, :cond_42c

    .line 415
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 416
    .end local v31    # "next":I
    .local v5, "next":I
    if-lt v5, v6, :cond_208

    .line 417
    and-int/lit16 v7, v5, 0x1fff

    .line 418
    .local v7, "result":I
    const/16 v8, 0xd

    .line 419
    .local v8, "shift":I
    :goto_1f2
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    if-lt v4, v6, :cond_203

    .line 420
    and-int/lit16 v4, v5, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v7, v4

    .line 421
    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_1f2

    .line 423
    :cond_203
    shl-int v4, v5, v8

    or-int v5, v7, v4

    move v4, v9

    .line 425
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_208
    move v7, v5

    .line 427
    .local v7, "fieldNumber":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 428
    .end local v5    # "next":I
    .local v4, "next":I
    if-lt v4, v6, :cond_22b

    .line 429
    and-int/lit16 v5, v4, 0x1fff

    .line 430
    .local v5, "result":I
    const/16 v9, 0xd

    .line 431
    .local v9, "shift":I
    :goto_215
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_226

    .line 432
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 433
    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_215

    .line 435
    :cond_226
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    .line 437
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v11    # "i":I
    .restart local v8    # "i":I
    :cond_22b
    move v5, v4

    .line 438
    .local v5, "fieldTypeWithExtraBits":I
    and-int/lit16 v9, v5, 0xff

    .line 440
    .local v9, "fieldType":I
    and-int/lit16 v11, v5, 0x400

    if-eqz v11, :cond_238

    .line 441
    add-int/lit8 v11, v32, 0x1

    .end local v32    # "checkInitializedPosition":I
    .local v11, "checkInitializedPosition":I
    aput v35, v29, v32

    move/from16 v32, v11

    .line 449
    .end local v11    # "checkInitializedPosition":I
    .restart local v32    # "checkInitializedPosition":I
    :cond_238
    const/16 v11, 0x33

    if-lt v9, v11, :cond_2e6

    .line 450
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 451
    if-lt v4, v6, :cond_261

    .line 452
    and-int/lit16 v8, v4, 0x1fff

    .line 453
    .local v8, "result":I
    const/16 v31, 0xd

    .line 454
    .local v31, "shift":I
    :goto_248
    add-int/lit8 v37, v11, 0x1

    .end local v11    # "i":I
    .local v37, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_25b

    .line 455
    and-int/lit16 v11, v4, 0x1fff

    shl-int v11, v11, v31

    or-int/2addr v8, v11

    .line 456
    add-int/lit8 v31, v31, 0xd

    move/from16 v11, v37

    goto :goto_248

    .line 458
    :cond_25b
    shl-int v11, v4, v31

    or-int v4, v8, v11

    move/from16 v11, v37

    .line 460
    .end local v8    # "result":I
    .end local v31    # "shift":I
    .end local v37    # "i":I
    .restart local v11    # "i":I
    :cond_261
    move v8, v4

    .line 462
    .local v8, "oneofIndex":I
    add-int/lit8 v6, v9, -0x33

    .line 463
    .local v6, "oneofFieldType":I
    const/16 v3, 0x9

    if-eq v6, v3, :cond_28b

    const/16 v3, 0x11

    if-ne v6, v3, :cond_26f

    move/from16 v38, v1

    goto :goto_28d

    .line 466
    :cond_26f
    const/16 v3, 0xc

    if-ne v6, v3, :cond_288

    .line 468
    and-int/lit8 v3, v20, 0x1

    move/from16 v38, v1

    const/4 v1, 0x1

    .end local v1    # "length":I
    .local v38, "length":I
    if-ne v3, v1, :cond_29b

    .line 469
    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v1, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v1, "objectsPosition":I
    aget-object v18, v30, v36

    aput-object v18, v12, v3

    move/from16 v36, v1

    goto :goto_29b

    .line 466
    .end local v38    # "length":I
    .local v1, "length":I
    .restart local v36    # "objectsPosition":I
    :cond_288
    move/from16 v38, v1

    .end local v1    # "length":I
    .restart local v38    # "length":I
    goto :goto_29b

    .line 463
    .end local v38    # "length":I
    .restart local v1    # "length":I
    :cond_28b
    move/from16 v38, v1

    .line 465
    .end local v1    # "length":I
    .restart local v38    # "length":I
    :goto_28d
    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v3, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v3, "objectsPosition":I
    aget-object v18, v30, v36

    aput-object v18, v12, v1

    move/from16 v36, v3

    .line 474
    .end local v3    # "objectsPosition":I
    .restart local v36    # "objectsPosition":I
    :cond_29b
    :goto_29b
    mul-int/lit8 v1, v8, 0x2

    .line 475
    .local v1, "index":I
    aget-object v3, v30, v1

    .line 476
    .local v3, "o":Ljava/lang/Object;
    move/from16 v18, v4

    .end local v4    # "next":I
    .local v18, "next":I
    instance-of v4, v3, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_2a9

    .line 477
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    .local v4, "oneofField":Ljava/lang/reflect/Field;
    goto :goto_2b2

    .line 479
    .end local v4    # "oneofField":Ljava/lang/reflect/Field;
    :cond_2a9
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 484
    .restart local v4    # "oneofField":Ljava/lang/reflect/Field;
    aput-object v4, v30, v1

    .line 487
    :goto_2b2
    move/from16 v39, v10

    move/from16 v19, v11

    .end local v10    # "isProto3":Z
    .end local v11    # "i":I
    .local v19, "i":I
    .local v39, "isProto3":Z
    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 490
    .local v10, "fieldOffset":I
    add-int/lit8 v1, v1, 0x1

    .line 491
    aget-object v3, v30, v1

    .line 492
    instance-of v11, v3, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_2c7

    .line 493
    move-object v11, v3

    check-cast v11, Ljava/lang/reflect/Field;

    .local v11, "oneofCaseField":Ljava/lang/reflect/Field;
    goto :goto_2d0

    .line 495
    .end local v11    # "oneofCaseField":Ljava/lang/reflect/Field;
    :cond_2c7
    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-static {v14, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 496
    .restart local v11    # "oneofCaseField":Ljava/lang/reflect/Field;
    aput-object v11, v30, v1

    .line 499
    :goto_2d0
    move-object/from16 v40, v3

    move-object/from16 v31, v4

    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "oneofField":Ljava/lang/reflect/Field;
    .local v31, "oneofField":Ljava/lang/reflect/Field;
    .local v40, "o":Ljava/lang/Object;
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 500
    .local v3, "presenceFieldOffset":I
    const/4 v1, 0x0

    .line 501
    .end local v6    # "oneofFieldType":I
    .end local v8    # "oneofIndex":I
    .end local v11    # "oneofCaseField":Ljava/lang/reflect/Field;
    .end local v31    # "oneofField":Ljava/lang/reflect/Field;
    .end local v40    # "o":Ljava/lang/Object;
    .local v1, "presenceMaskShift":I
    move-object/from16 v40, v0

    move/from16 v41, v2

    move v6, v10

    move/from16 v4, v18

    move/from16 v11, v19

    move v10, v7

    goto/16 :goto_3f9

    .line 502
    .end local v3    # "presenceFieldOffset":I
    .end local v18    # "next":I
    .end local v19    # "i":I
    .end local v38    # "length":I
    .end local v39    # "isProto3":Z
    .local v1, "length":I
    .local v4, "next":I
    .local v8, "i":I
    .local v10, "isProto3":Z
    :cond_2e6
    move/from16 v38, v1

    move/from16 v39, v10

    .end local v1    # "length":I
    .end local v10    # "isProto3":Z
    .restart local v38    # "length":I
    .restart local v39    # "isProto3":Z
    add-int/lit8 v1, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v1, "objectsPosition":I
    aget-object v3, v30, v36

    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 503
    .local v3, "field":Ljava/lang/reflect/Field;
    const/16 v6, 0x31

    const/16 v10, 0x9

    if-eq v9, v10, :cond_367

    const/16 v10, 0x11

    if-ne v9, v10, :cond_300

    goto/16 :goto_367

    .line 505
    :cond_300
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_358

    if-ne v9, v6, :cond_307

    goto :goto_358

    .line 508
    :cond_307
    const/16 v10, 0xc

    if-eq v9, v10, :cond_343

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_343

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_314

    goto :goto_343

    .line 514
    :cond_314
    const/16 v10, 0x32

    if-ne v9, v10, :cond_341

    .line 515
    add-int/lit8 v10, v33, 0x1

    .end local v33    # "mapFieldIndex":I
    .local v10, "mapFieldIndex":I
    aput v35, v29, v33

    .line 516
    div-int/lit8 v11, v35, 0x3

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v18, v1, 0x1

    .end local v1    # "objectsPosition":I
    .local v18, "objectsPosition":I
    aget-object v1, v30, v1

    aput-object v1, v12, v11

    .line 517
    and-int/lit16 v1, v5, 0x800

    if-eqz v1, :cond_33b

    .line 518
    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v11, 0x1

    add-int/2addr v1, v11

    add-int/lit8 v11, v18, 0x1

    .end local v18    # "objectsPosition":I
    .local v11, "objectsPosition":I
    aget-object v18, v30, v18

    aput-object v18, v12, v1

    move/from16 v33, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    .line 517
    .end local v11    # "objectsPosition":I
    .restart local v18    # "objectsPosition":I
    :cond_33b
    move/from16 v33, v10

    move/from16 v1, v18

    const/4 v11, 0x1

    goto :goto_373

    .line 514
    .end local v10    # "mapFieldIndex":I
    .end local v18    # "objectsPosition":I
    .restart local v1    # "objectsPosition":I
    .restart local v33    # "mapFieldIndex":I
    :cond_341
    const/4 v11, 0x1

    goto :goto_373

    .line 511
    :cond_343
    :goto_343
    and-int/lit8 v10, v20, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_356

    .line 512
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "objectsPosition":I
    .restart local v11    # "objectsPosition":I
    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    .line 511
    .end local v11    # "objectsPosition":I
    .restart local v1    # "objectsPosition":I
    :cond_356
    const/4 v11, 0x1

    goto :goto_373

    .line 507
    :cond_358
    :goto_358
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "objectsPosition":I
    .restart local v11    # "objectsPosition":I
    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    .line 504
    .end local v11    # "objectsPosition":I
    .restart local v1    # "objectsPosition":I
    :cond_367
    :goto_367
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v10

    .line 522
    :goto_373
    move v10, v7

    .end local v7    # "fieldNumber":I
    .local v10, "fieldNumber":I
    invoke-virtual {v15, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    .line 523
    .local v6, "fieldOffset":I
    and-int/lit8 v7, v20, 0x1

    if-ne v7, v11, :cond_3da

    const/16 v7, 0x11

    if-gt v9, v7, :cond_3da

    .line 524
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 525
    const v8, 0xd800

    if-lt v4, v8, :cond_3ae

    .line 526
    and-int/lit16 v8, v4, 0x1fff

    .line 527
    .local v8, "result":I
    const/16 v18, 0xd

    .line 528
    .local v18, "shift":I
    :goto_390
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .restart local v19    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    const v11, 0xd800

    if-lt v7, v11, :cond_3a7

    .line 529
    and-int/lit16 v7, v4, 0x1fff

    shl-int v7, v7, v18

    or-int/2addr v8, v7

    .line 530
    add-int/lit8 v18, v18, 0xd

    move/from16 v7, v19

    const/4 v11, 0x1

    goto :goto_390

    .line 532
    :cond_3a7
    shl-int v7, v4, v18

    or-int v4, v8, v7

    move/from16 v8, v19

    goto :goto_3b0

    .line 525
    .end local v8    # "result":I
    .end local v18    # "shift":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_3ae
    move v11, v8

    move v8, v7

    .line 534
    .end local v7    # "i":I
    .local v8, "i":I
    :goto_3b0
    move v7, v4

    .line 537
    .local v7, "hasBitsIndex":I
    mul-int/lit8 v18, v2, 0x2

    div-int/lit8 v19, v7, 0x20

    add-int v18, v18, v19

    .line 538
    .local v18, "index":I
    aget-object v11, v30, v18

    .line 539
    .local v11, "o":Ljava/lang/Object;
    move-object/from16 v40, v0

    .end local v0    # "info":Ljava/lang/String;
    .local v40, "info":Ljava/lang/String;
    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3c3

    .line 540
    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/Field;

    .local v0, "hasBitsField":Ljava/lang/reflect/Field;
    goto :goto_3cc

    .line 542
    .end local v0    # "hasBitsField":Ljava/lang/reflect/Field;
    :cond_3c3
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    invoke-static {v14, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 543
    .restart local v0    # "hasBitsField":Ljava/lang/reflect/Field;
    aput-object v0, v30, v18

    .line 546
    :goto_3cc
    move/from16 v19, v1

    move/from16 v41, v2

    .end local v1    # "objectsPosition":I
    .end local v2    # "oneofCount":I
    .local v19, "objectsPosition":I
    .local v41, "oneofCount":I
    invoke-virtual {v15, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 547
    .local v1, "presenceFieldOffset":I
    rem-int/lit8 v7, v7, 0x20

    .line 548
    .end local v0    # "hasBitsField":Ljava/lang/reflect/Field;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v18    # "index":I
    .local v7, "presenceMaskShift":I
    move v0, v1

    move v1, v7

    goto :goto_3e2

    .line 523
    .end local v7    # "presenceMaskShift":I
    .end local v19    # "objectsPosition":I
    .end local v40    # "info":Ljava/lang/String;
    .end local v41    # "oneofCount":I
    .local v0, "info":Ljava/lang/String;
    .local v1, "objectsPosition":I
    .restart local v2    # "oneofCount":I
    :cond_3da
    move-object/from16 v40, v0

    move/from16 v19, v1

    move/from16 v41, v2

    .line 549
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "objectsPosition":I
    .end local v2    # "oneofCount":I
    .restart local v19    # "objectsPosition":I
    .restart local v40    # "info":Ljava/lang/String;
    .restart local v41    # "oneofCount":I
    const/4 v0, 0x0

    .line 550
    .local v0, "presenceFieldOffset":I
    const/4 v1, 0x0

    .line 553
    .local v1, "presenceMaskShift":I
    :goto_3e2
    const/16 v2, 0x12

    if-lt v9, v2, :cond_3f5

    const/16 v2, 0x31

    if-gt v9, v2, :cond_3f5

    .line 556
    add-int/lit8 v2, v34, 0x1

    .end local v34    # "repeatedFieldIndex":I
    .local v2, "repeatedFieldIndex":I
    aput v6, v29, v34

    move v3, v0

    move/from16 v34, v2

    move v11, v8

    move/from16 v36, v19

    goto :goto_3f9

    .line 560
    .end local v2    # "repeatedFieldIndex":I
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v34    # "repeatedFieldIndex":I
    :cond_3f5
    move v3, v0

    move v11, v8

    move/from16 v36, v19

    .end local v0    # "presenceFieldOffset":I
    .end local v8    # "i":I
    .end local v19    # "objectsPosition":I
    .local v3, "presenceFieldOffset":I
    .local v11, "i":I
    .restart local v36    # "objectsPosition":I
    :goto_3f9
    add-int/lit8 v0, v35, 0x1

    .end local v35    # "bufferIndex":I
    .local v0, "bufferIndex":I
    aput v10, v13, v35

    .line 561
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "bufferIndex":I
    .local v2, "bufferIndex":I
    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_406

    const/high16 v7, 0x20000000

    goto :goto_407

    :cond_406
    const/4 v7, 0x0

    :goto_407
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_40e

    const/high16 v8, 0x10000000

    goto :goto_40f

    :cond_40e
    const/4 v8, 0x0

    :goto_40f
    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x14

    or-int/2addr v7, v8

    or-int/2addr v7, v6

    aput v7, v13, v0

    .line 566
    add-int/lit8 v35, v2, 0x1

    .end local v2    # "bufferIndex":I
    .restart local v35    # "bufferIndex":I
    shl-int/lit8 v0, v1, 0x14

    or-int/2addr v0, v3

    aput v0, v13, v2

    .line 567
    .end local v1    # "presenceMaskShift":I
    .end local v3    # "presenceFieldOffset":I
    .end local v5    # "fieldTypeWithExtraBits":I
    .end local v6    # "fieldOffset":I
    .end local v9    # "fieldType":I
    .end local v10    # "fieldNumber":I
    move/from16 v31, v4

    move/from16 v1, v38

    move/from16 v10, v39

    move-object/from16 v0, v40

    move/from16 v2, v41

    const v6, 0xd800

    goto/16 :goto_1e4

    .line 569
    .end local v4    # "next":I
    .end local v38    # "length":I
    .end local v39    # "isProto3":Z
    .end local v40    # "info":Ljava/lang/String;
    .end local v41    # "oneofCount":I
    .local v0, "info":Ljava/lang/String;
    .local v1, "length":I
    .local v2, "oneofCount":I
    .local v10, "isProto3":Z
    .local v31, "next":I
    :cond_42c
    move-object/from16 v40, v0

    move/from16 v38, v1

    move/from16 v41, v2

    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "oneofCount":I
    .restart local v38    # "length":I
    .restart local v40    # "info":Ljava/lang/String;
    .restart local v41    # "oneofCount":I
    new-instance v0, Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v9

    const/4 v1, 0x0

    add-int v2, v28, v26

    move-object v4, v0

    move-object v5, v13

    move-object v6, v12

    move/from16 v7, v23

    move/from16 v8, v24

    move v3, v11

    .end local v11    # "i":I
    .local v3, "i":I
    move v11, v1

    move-object v1, v12

    .end local v12    # "objects":[Ljava/lang/Object;
    .local v1, "objects":[Ljava/lang/Object;
    move-object/from16 v12, v29

    move-object/from16 v37, v13

    .end local v13    # "buffer":[I
    .local v37, "buffer":[I
    move/from16 v13, v28

    move-object/from16 v42, v14

    .end local v14    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v42, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v14, v2

    move-object v2, v15

    .end local v15    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    .line 569
    return-object v0
.end method

.method private numberAt(I)I
    .registers 3
    .param p1, "pos"    # I

    .line 5677
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method private static offset(I)J
    .registers 3
    .param p0, "value"    # I

    .line 5701
    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5741
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5725
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5729
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5733
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5737
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 24
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "bufferPosition"    # I
    .param p6, "fieldOffset"    # J
    .param p8, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4659
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p6

    sget-object v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4660
    .local v11, "unsafe":Lsun/misc/Unsafe;
    move/from16 v12, p5

    invoke-direct {p0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 4661
    .local v13, "mapDefaultEntry":Ljava/lang/Object;
    invoke-virtual {v11, v8, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 4662
    .local v0, "mapField":Ljava/lang/Object;
    iget-object v1, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v1, v0}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4663
    move-object v1, v0

    .line 4664
    .local v1, "oldMapField":Ljava/lang/Object;
    iget-object v2, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v2, v13}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4665
    iget-object v2, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v2, v0, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4666
    invoke-virtual {v11, v8, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v14, v0

    goto :goto_2b

    .line 4662
    .end local v1    # "oldMapField":Ljava/lang/Object;
    :cond_2a
    move-object v14, v0

    .line 4668
    .end local v0    # "mapField":Ljava/lang/Object;
    .local v14, "mapField":Ljava/lang/Object;
    :goto_2b
    iget-object v0, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 4672
    invoke-interface {v0, v13}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v0, v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 4673
    invoke-interface {v0, v14}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 4668
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->decodeMapEntry([BIILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 36
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "typeAndOffset"    # I
    .param p9, "fieldType"    # I
    .param p10, "fieldOffset"    # J
    .param p12, "bufferPosition"    # I
    .param p13, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4691
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move-object/from16 v7, p13

    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4692
    .local v6, "unsafe":Lsun/misc/Unsafe;
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v3, v15, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    .line 4693
    .local v4, "oneofCaseOffset":J
    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch p9, :pswitch_data_2a0

    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    goto/16 :goto_29d

    .line 4819
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_32
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7c

    .line 4820
    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v17, v2, 0x4

    .line 4821
    .local v17, "endTag":I
    nop

    .line 4823
    invoke-direct {v0, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    .line 4822
    move-object/from16 v3, p2

    move-wide v8, v4

    .end local v4    # "oneofCaseOffset":J
    .local v8, "oneofCaseOffset":J
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v10, v6

    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    move/from16 v6, v17

    move-object v0, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeGroupField(Landroidx/datastore/preferences/protobuf/Schema;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4824
    .end local p3    # "position":I
    .local v2, "position":I
    nop

    .line 4825
    invoke-virtual {v10, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v11, :cond_5b

    .line 4826
    invoke-virtual {v10, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_5c

    :cond_5b
    nop

    :goto_5c
    move-object/from16 v3, v16

    .line 4828
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_66

    .line 4829
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6f

    .line 4831
    :cond_66
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4832
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4831
    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4834
    :goto_6f
    invoke-virtual {v10, v1, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4835
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v17    # "endTag":I
    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    move v0, v2

    goto/16 :goto_29e

    .line 4819
    .end local v2    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :cond_7c
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    .end local v4    # "oneofCaseOffset":J
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v5, p3

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    goto/16 :goto_29d

    .line 4812
    .end local v8    # "oneofCaseOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_8a
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    .end local v4    # "oneofCaseOffset":J
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_b0

    .line 4813
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    .end local v8    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    invoke-static {v4, v5, v0}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4814
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget-wide v8, v0, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4815
    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29e

    .line 4812
    .end local v2    # "position":I
    .end local v6    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :cond_b0
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    .end local v8    # "oneofCaseOffset":J
    .restart local v6    # "oneofCaseOffset":J
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29d

    .line 4805
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_bc
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    .end local v4    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_df

    .line 4806
    invoke-static {v4, v5, v0}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4807
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget v3, v0, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4808
    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29e

    .line 4805
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_df
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29d

    .line 4791
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_e6
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    .end local v4    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_12f

    .line 4792
    invoke-static {v4, v5, v0}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4793
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget v3, v0, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4794
    .local v3, "enumValue":I
    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v5

    .line 4795
    .local v5, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    if-eqz v5, :cond_11a

    invoke-interface {v5, v3}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v9

    if-eqz v9, :cond_108

    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    goto :goto_11f

    .line 4800
    :cond_108
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v9

    move-object/from16 p3, v5

    .end local v5    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .local p3, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v10

    move/from16 v10, p5

    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v9, v10, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_129

    .line 4795
    .end local p3    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .local v5, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :cond_11a
    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    .line 4796
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    :goto_11f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4797
    invoke-virtual {v5, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4802
    .end local v3    # "enumValue":I
    .end local p3    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    :goto_129
    move-object/from16 v9, p2

    move v0, v2

    move-object v4, v5

    goto/16 :goto_29e

    .line 4791
    .end local v2    # "position":I
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .local p3, "position":I
    :cond_12f
    move-object v8, v0

    move-object v4, v10

    move-object/from16 v0, p0

    move/from16 v10, p5

    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v9, p2

    goto/16 :goto_29d

    .line 4784
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_139
    move-object v8, v7

    move-wide/from16 v20, v4

    move-object v4, v6

    move-wide/from16 v6, v20

    move v5, v9

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_153

    .line 4785
    move-object/from16 v9, p2

    invoke-static {v9, v5, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeBytes([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4786
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget-object v3, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4787
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_29e

    .line 4784
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_153
    move-object/from16 v9, p2

    goto/16 :goto_29d

    .line 4766
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_157
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_192

    .line 4767
    nop

    .line 4769
    invoke-direct {v0, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    .line 4768
    move/from16 v3, p4

    invoke-static {v2, v9, v5, v3, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageField(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4770
    .end local p3    # "position":I
    .restart local v2    # "position":I
    nop

    .line 4771
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v11, :cond_178

    .line 4772
    invoke-virtual {v4, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_179

    :cond_178
    nop

    :goto_179
    move-object/from16 v5, v16

    .line 4774
    .local v5, "oldValue":Ljava/lang/Object;
    if-nez v5, :cond_183

    .line 4775
    iget-object v0, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18c

    .line 4777
    :cond_183
    iget-object v0, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4778
    invoke-static {v5, v0}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4777
    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4780
    :goto_18c
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4781
    .end local v5    # "oldValue":Ljava/lang/Object;
    move v0, v2

    goto/16 :goto_29e

    .line 4766
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_192
    move/from16 v3, p4

    goto/16 :goto_29d

    .line 4748
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_196
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_29d

    .line 4749
    invoke-static {v9, v5, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4750
    .end local p3    # "position":I
    .local v0, "position":I
    iget v2, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4751
    .local v2, "length":I
    if-nez v2, :cond_1ae

    .line 4752
    const-string v3, ""

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1cd

    .line 4754
    :cond_1ae
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_1c2

    add-int v3, v0, v2

    .line 4755
    invoke-static {v9, v0, v3}, Landroidx/datastore/preferences/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_1bd

    goto :goto_1c2

    .line 4756
    :cond_1bd
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 4758
    :cond_1c2
    :goto_1c2
    new-instance v3, Ljava/lang/String;

    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v9, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4759
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4760
    add-int/2addr v0, v2

    .line 4762
    .end local v3    # "value":Ljava/lang/String;
    :goto_1cd
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4763
    .end local v2    # "length":I
    goto/16 :goto_29e

    .line 4741
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_1d2
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_29d

    .line 4742
    invoke-static {v9, v5, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4743
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget-wide v2, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_1ea

    const/4 v3, 0x1

    goto :goto_1eb

    :cond_1ea
    const/4 v3, 0x0

    :goto_1eb
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4744
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29e

    .line 4734
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_1f7
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v2, :cond_29d

    .line 4735
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4736
    add-int/lit8 v0, v5, 0x4

    .line 4737
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29e

    .line 4726
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_213
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    const/4 v0, 0x1

    if-ne v12, v0, :cond_29d

    .line 4727
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4728
    add-int/lit8 v0, v5, 0x8

    .line 4729
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29e

    .line 4718
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_230
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_29d

    .line 4719
    invoke-static {v9, v5, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4720
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget v2, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4721
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29e

    .line 4710
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_24b
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_29d

    .line 4711
    invoke-static {v9, v5, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4712
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget-wide v2, v8, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4713
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29e

    .line 4702
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_266
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v2, :cond_29d

    .line 4703
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4704
    add-int/lit8 v0, v5, 0x4

    .line 4705
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29e

    .line 4695
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_281
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    const/4 v0, 0x1

    if-ne v12, v0, :cond_29d

    .line 4696
    invoke-static/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4697
    add-int/lit8 v0, v5, 0x8

    .line 4698
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29e

    .line 4840
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_29d
    :goto_29d
    move v0, v5

    .end local p3    # "position":I
    .restart local v0    # "position":I
    :goto_29e
    return v0

    nop

    :pswitch_data_2a0
    .packed-switch 0x33
        :pswitch_281
        :pswitch_266
        :pswitch_24b
        :pswitch_24b
        :pswitch_230
        :pswitch_213
        :pswitch_1f7
        :pswitch_1d2
        :pswitch_196
        :pswitch_157
        :pswitch_139
        :pswitch_230
        :pswitch_e6
        :pswitch_1f7
        :pswitch_213
        :pswitch_bc
        :pswitch_8a
        :pswitch_32
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 35
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5179
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 5180
    .local v9, "unsafe":Lsun/misc/Unsafe;
    const/4 v0, 0x0

    .line 5181
    .local v0, "tag":I
    const/4 v1, -0x1

    .line 5182
    .local v1, "oldNumber":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p3

    .line 5183
    .end local p3    # "position":I
    .local v0, "position":I
    .local v1, "tag":I
    .local v2, "oldNumber":I
    .local v3, "pos":I
    :goto_14
    if-ge v0, v13, :cond_411

    .line 5184
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "position":I
    .local v4, "position":I
    aget-byte v0, v12, v0

    .line 5185
    .end local v1    # "tag":I
    .local v0, "tag":I
    if-gez v0, :cond_26

    .line 5186
    invoke-static {v0, v12, v4, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32(I[BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 5187
    iget v0, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v16, v0

    move v10, v4

    goto :goto_29

    .line 5185
    :cond_26
    move/from16 v16, v0

    move v10, v4

    .line 5189
    .end local v0    # "tag":I
    .end local v4    # "position":I
    .local v10, "position":I
    .local v16, "tag":I
    :goto_29
    ushr-int/lit8 v8, v16, 0x3

    .line 5190
    .local v8, "number":I
    and-int/lit8 v7, v16, 0x7

    .line 5191
    .local v7, "wireType":I
    if-le v8, v2, :cond_37

    .line 5192
    div-int/lit8 v0, v3, 0x3

    invoke-direct {v15, v8, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v0

    move v6, v0

    .end local v3    # "pos":I
    .local v0, "pos":I
    goto :goto_3c

    .line 5194
    .end local v0    # "pos":I
    .restart local v3    # "pos":I
    :cond_37
    invoke-direct {v15, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v0

    move v6, v0

    .line 5196
    .end local v3    # "pos":I
    .local v6, "pos":I
    :goto_3c
    move/from16 v17, v8

    .line 5197
    .end local v2    # "oldNumber":I
    .local v17, "oldNumber":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_4c

    .line 5199
    const/4 v0, 0x0

    move/from16 v20, v0

    move/from16 p3, v7

    move/from16 v18, v8

    move-object/from16 v22, v9

    .end local v6    # "pos":I
    .restart local v0    # "pos":I
    goto/16 :goto_3eb

    .line 5201
    .end local v0    # "pos":I
    .restart local v6    # "pos":I
    :cond_4c
    iget-object v0, v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, v6, 0x1

    aget v4, v0, v1

    .line 5202
    .local v4, "typeAndOffset":I
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v5

    .line 5203
    .local v5, "fieldType":I
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 5204
    .local v2, "fieldOffset":J
    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v5, v0, :cond_2b2

    .line 5205
    const/4 v0, 0x1

    packed-switch v5, :pswitch_data_41e

    .line 5316
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .local v20, "unsafe":Lsun/misc/Unsafe;
    .local v21, "typeAndOffset":I
    .local v22, "number":I
    .local v23, "fieldType":I
    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ad

    .line 5308
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_77
    if-nez v7, :cond_9a

    .line 5309
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    .line 5310
    iget-wide v0, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5311
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v18

    .line 5310
    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    .end local v2    # "fieldOffset":J
    .local v20, "fieldOffset":J
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5312
    move v3, v6

    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5308
    .end local v20    # "fieldOffset":J
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :cond_9a
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v20    # "fieldOffset":J
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5300
    .end local v20    # "fieldOffset":J
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_ac
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v20    # "fieldOffset":J
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_cb

    .line 5301
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5302
    .end local v10    # "position":I
    .local v0, "position":I
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5303
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5302
    move-wide/from16 v4, v20

    .end local v20    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5304
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5300
    .end local v0    # "position":I
    .end local v4    # "fieldOffset":J
    .restart local v10    # "position":I
    .restart local v20    # "fieldOffset":J
    :cond_cb
    move-wide/from16 v4, v20

    .end local v20    # "fieldOffset":J
    .restart local v4    # "fieldOffset":J
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5293
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_d8
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_f0

    .line 5294
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5295
    .end local v10    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5296
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5293
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_f0
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5286
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_fb
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v1, :cond_113

    .line 5287
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeBytes([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5288
    .end local v10    # "position":I
    .restart local v0    # "position":I
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5289
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5286
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_113
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5271
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_11e
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v1, :cond_14c

    .line 5272
    nop

    .line 5274
    invoke-direct {v15, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    .line 5273
    invoke-static {v0, v12, v10, v13, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageField(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5275
    .end local v10    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5276
    .local v1, "oldValue":Ljava/lang/Object;
    if-nez v1, :cond_13b

    .line 5277
    iget-object v2, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_145

    .line 5279
    :cond_13b
    iget-object v2, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5280
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5279
    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5282
    nop

    .line 5183
    .end local v1    # "oldValue":Ljava/lang/Object;
    .end local v4    # "fieldOffset":J
    .end local v7    # "wireType":I
    .end local v8    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    :goto_145
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5271
    .end local v0    # "position":I
    .restart local v4    # "fieldOffset":J
    .restart local v7    # "wireType":I
    .restart local v8    # "typeAndOffset":I
    .restart local v10    # "position":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    :cond_14c
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5260
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_157
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v1, :cond_179

    .line 5261
    const/high16 v0, 0x20000000

    and-int/2addr v0, v8

    if-nez v0, :cond_169

    .line 5262
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeString([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v10    # "position":I
    .restart local v0    # "position":I
    goto :goto_16d

    .line 5264
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_169
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5266
    .end local v10    # "position":I
    .restart local v0    # "position":I
    :goto_16d
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5267
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5260
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_179
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5253
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_184
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_1a5

    .line 5254
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 5255
    .end local v10    # "position":I
    .local v1, "position":I
    iget-wide v2, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_199

    goto :goto_19a

    :cond_199
    const/4 v0, 0x0

    :goto_19a
    invoke-static {v14, v4, v5, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 5256
    move v0, v1

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5253
    .end local v1    # "position":I
    .restart local v10    # "position":I
    :cond_1a5
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5246
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_1b0
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    const/4 v0, 0x5

    if-ne v7, v0, :cond_1c9

    .line 5247
    invoke-static {v12, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5248
    add-int/lit8 v0, v10, 0x4

    .line 5249
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5246
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_1c9
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5238
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_1d4
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v0, :cond_1f4

    .line 5239
    invoke-static {v12, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v24, v4

    .end local v4    # "fieldOffset":J
    .local v24, "fieldOffset":J
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5240
    add-int/lit8 v0, v10, 0x8

    .line 5241
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5238
    .end local v0    # "position":I
    .end local v24    # "fieldOffset":J
    .restart local v4    # "fieldOffset":J
    .restart local v10    # "position":I
    :cond_1f4
    move-wide/from16 v24, v4

    .end local v4    # "fieldOffset":J
    .restart local v24    # "fieldOffset":J
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5230
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .end local v24    # "fieldOffset":J
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_201
    move-wide/from16 v24, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    .restart local v24    # "fieldOffset":J
    if-nez v7, :cond_21c

    .line 5231
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5232
    .end local v10    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    move-wide/from16 v4, v24

    .end local v24    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5233
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    .line 5230
    .end local v0    # "position":I
    .end local v4    # "fieldOffset":J
    .restart local v10    # "position":I
    .restart local v24    # "fieldOffset":J
    :cond_21c
    move-wide/from16 v4, v24

    .end local v24    # "fieldOffset":J
    .restart local v4    # "fieldOffset":J
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ad

    .line 5222
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_229
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_251

    .line 5223
    invoke-static {v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    .line 5224
    iget-wide v2, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move-wide v2, v4

    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    .end local v4    # "fieldOffset":J
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .local v20, "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5225
    move v3, v6

    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    .line 5222
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .restart local v4    # "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :cond_251
    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    .end local v4    # "fieldOffset":J
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ad

    .line 5214
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_261
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    const/4 v0, 0x5

    if-ne v7, v0, :cond_27f

    .line 5215
    invoke-static {v12, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 5216
    add-int/lit8 v0, v10, 0x4

    .line 5217
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    .line 5214
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_27f
    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ad

    .line 5207
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_28a
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v0, :cond_2a7

    .line 5208
    invoke-static {v12, v10}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 5209
    add-int/lit8 v0, v10, 0x8

    .line 5210
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    .line 5207
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_2a7
    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ad

    .line 5318
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :cond_2b2
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    const/16 v0, 0x1b

    .end local v23    # "fieldType":I
    .restart local v5    # "fieldType":I
    if-ne v5, v0, :cond_317

    .line 5320
    if-ne v7, v1, :cond_309

    .line 5321
    move-object/from16 v4, v20

    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v4, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 5322
    .local v0, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_2e4

    .line 5323
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 5324
    .local v1, "size":I
    if-nez v1, :cond_2d8

    const/16 v2, 0xa

    goto :goto_2da

    :cond_2d8
    mul-int/lit8 v2, v1, 0x2

    .line 5325
    :goto_2da
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5327
    invoke-virtual {v4, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_2e6

    .line 5322
    .end local v1    # "size":I
    :cond_2e4
    move-object/from16 v18, v0

    .line 5329
    .end local v0    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .local v18, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :goto_2e6
    nop

    .line 5331
    invoke-direct {v15, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    .line 5330
    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move-object/from16 v19, v4

    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v19, "unsafe":Lsun/misc/Unsafe;
    move/from16 v4, p4

    move v15, v5

    .end local v5    # "fieldType":I
    .local v15, "fieldType":I
    move-object/from16 v5, v18

    move/from16 v20, v6

    .end local v6    # "pos":I
    .local v20, "pos":I
    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageList(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5332
    .end local v10    # "position":I
    .local v0, "position":I
    move-object/from16 v15, p0

    move/from16 v2, v17

    move-object/from16 v9, v19

    move/from16 v3, v20

    goto/16 :goto_14

    .line 5320
    .end local v0    # "position":I
    .end local v15    # "fieldType":I
    .end local v18    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .end local v19    # "unsafe":Lsun/misc/Unsafe;
    .restart local v5    # "fieldType":I
    .restart local v6    # "pos":I
    .restart local v10    # "position":I
    .local v20, "unsafe":Lsun/misc/Unsafe;
    :cond_309
    move v15, v5

    move-object/from16 v19, v20

    move/from16 v20, v6

    .end local v5    # "fieldType":I
    .end local v6    # "pos":I
    .restart local v15    # "fieldType":I
    .restart local v19    # "unsafe":Lsun/misc/Unsafe;
    .local v20, "pos":I
    move v14, v7

    move/from16 v18, v22

    move-object/from16 v22, v19

    move/from16 v19, v10

    goto/16 :goto_3ad

    .line 5334
    .end local v15    # "fieldType":I
    .end local v19    # "unsafe":Lsun/misc/Unsafe;
    .restart local v5    # "fieldType":I
    .restart local v6    # "pos":I
    .local v20, "unsafe":Lsun/misc/Unsafe;
    :cond_317
    move v15, v5

    move-object/from16 v19, v20

    move/from16 v20, v6

    .end local v5    # "fieldType":I
    .end local v6    # "pos":I
    .restart local v15    # "fieldType":I
    .restart local v19    # "unsafe":Lsun/misc/Unsafe;
    .local v20, "pos":I
    const/16 v0, 0x31

    if-gt v15, v0, :cond_36b

    .line 5336
    move v6, v10

    .line 5337
    .local v6, "oldPosition":I
    move/from16 v5, v21

    .end local v21    # "typeAndOffset":I
    .local v5, "typeAndOffset":I
    int-to-long v3, v5

    .line 5338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v23, v3

    move v3, v10

    move/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "typeAndOffset":I
    .local v18, "typeAndOffset":I
    move/from16 v5, v16

    move/from16 v26, v6

    .end local v6    # "oldPosition":I
    .local v26, "oldPosition":I
    move/from16 v6, v22

    move/from16 p3, v7

    .end local v7    # "wireType":I
    .local p3, "wireType":I
    move-wide/from16 v27, v8

    move/from16 v21, v18

    move/from16 v18, v22

    .end local v8    # "fieldOffset":J
    .end local v22    # "number":I
    .local v18, "number":I
    .restart local v21    # "typeAndOffset":I
    .local v27, "fieldOffset":J
    move/from16 v8, v20

    move-object/from16 v22, v19

    move/from16 v19, v10

    .end local v10    # "position":I
    .local v19, "position":I
    .local v22, "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v9, v23

    move v11, v15

    move-wide/from16 v12, v27

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5351
    .end local v19    # "position":I
    .restart local v0    # "position":I
    move/from16 v1, v26

    .end local v26    # "oldPosition":I
    .local v1, "oldPosition":I
    if-eq v0, v1, :cond_368

    .line 5352
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    .line 5354
    .end local v1    # "oldPosition":I
    :cond_368
    move v10, v0

    goto/16 :goto_3eb

    .end local v0    # "position":I
    .end local v18    # "number":I
    .end local v27    # "fieldOffset":J
    .end local p3    # "wireType":I
    .restart local v7    # "wireType":I
    .restart local v8    # "fieldOffset":J
    .restart local v10    # "position":I
    .local v19, "unsafe":Lsun/misc/Unsafe;
    .local v22, "number":I
    :cond_36b
    move/from16 p3, v7

    move-wide/from16 v27, v8

    move/from16 v18, v22

    move-object/from16 v22, v19

    move/from16 v19, v10

    .end local v7    # "wireType":I
    .end local v8    # "fieldOffset":J
    .end local v10    # "position":I
    .restart local v18    # "number":I
    .local v19, "position":I
    .local v22, "unsafe":Lsun/misc/Unsafe;
    .restart local v27    # "fieldOffset":J
    .restart local p3    # "wireType":I
    const/16 v0, 0x32

    if-ne v15, v0, :cond_3b2

    .line 5355
    move/from16 v14, p3

    .end local p3    # "wireType":I
    .local v14, "wireType":I
    if-ne v14, v1, :cond_3ad

    .line 5356
    move/from16 v9, v19

    .line 5357
    .local v9, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v27

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5358
    .end local v19    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v9, :cond_3a9

    .line 5359
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    .line 5361
    .end local v9    # "oldPosition":I
    :cond_3a9
    move v10, v0

    move/from16 p3, v14

    goto :goto_3eb

    .line 5383
    .end local v0    # "position":I
    .end local v14    # "wireType":I
    .end local v15    # "fieldType":I
    .end local v18    # "number":I
    .end local v21    # "typeAndOffset":I
    .end local v27    # "fieldOffset":J
    .restart local v7    # "wireType":I
    .restart local v10    # "position":I
    .local v19, "unsafe":Lsun/misc/Unsafe;
    .local v22, "number":I
    :cond_3ad
    :goto_3ad
    move/from16 p3, v14

    move/from16 v10, v19

    .end local v7    # "wireType":I
    .end local v10    # "position":I
    .restart local v14    # "wireType":I
    .restart local v18    # "number":I
    .local v19, "position":I
    .local v22, "unsafe":Lsun/misc/Unsafe;
    goto :goto_3eb

    .line 5363
    .end local v14    # "wireType":I
    .restart local v15    # "fieldType":I
    .restart local v21    # "typeAndOffset":I
    .restart local v27    # "fieldOffset":J
    .restart local p3    # "wireType":I
    :cond_3b2
    move/from16 v14, p3

    .end local p3    # "wireType":I
    .restart local v14    # "wireType":I
    move/from16 v13, v19

    .line 5364
    .local v13, "oldPosition":I
    nop

    .line 5365
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v18

    move v7, v14

    move/from16 v8, v21

    move v9, v15

    move-wide/from16 v10, v27

    move/from16 v12, v20

    move v14, v13

    .end local v13    # "oldPosition":I
    .local v14, "oldPosition":I
    .restart local p3    # "wireType":I
    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5378
    .end local v19    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v14, :cond_3ea

    .line 5379
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    .line 5378
    :cond_3ea
    move v10, v0

    .line 5383
    .end local v0    # "position":I
    .end local v14    # "oldPosition":I
    .end local v15    # "fieldType":I
    .end local v21    # "typeAndOffset":I
    .end local v27    # "fieldOffset":J
    .restart local v10    # "position":I
    :goto_3eb
    nop

    .line 5384
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5383
    move/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILandroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5385
    .end local v10    # "position":I
    .end local v18    # "number":I
    .end local p3    # "wireType":I
    .restart local v0    # "position":I
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    .line 5386
    .end local v16    # "tag":I
    .end local v17    # "oldNumber":I
    .end local v20    # "pos":I
    .end local v22    # "unsafe":Lsun/misc/Unsafe;
    .local v1, "tag":I
    .local v2, "oldNumber":I
    .restart local v3    # "pos":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    :cond_411
    move-object/from16 v22, v9

    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .restart local v22    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v4, p4

    if-ne v0, v4, :cond_418

    .line 5389
    return v0

    .line 5387
    :cond_418
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_41e
    .packed-switch 0x0
        :pswitch_28a
        :pswitch_261
        :pswitch_229
        :pswitch_229
        :pswitch_201
        :pswitch_1d4
        :pswitch_1b0
        :pswitch_184
        :pswitch_157
        :pswitch_11e
        :pswitch_fb
        :pswitch_201
        :pswitch_d8
        :pswitch_1b0
        :pswitch_1d4
        :pswitch_ac
        :pswitch_77
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 31
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "bufferPosition"    # I
    .param p9, "typeAndOffset"    # J
    .param p11, "fieldType"    # I
    .param p12, "fieldOffset"    # J
    .param p14, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4487
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 4488
    .local v3, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v3}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_32

    .line 4489
    invoke-interface {v3}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    .line 4490
    .local v4, "size":I
    if-nez v4, :cond_27

    const/16 v5, 0xa

    goto :goto_29

    :cond_27
    mul-int/lit8 v5, v4, 0x2

    .line 4491
    :goto_29
    invoke-interface {v3, v5}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v3

    .line 4493
    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v3

    goto :goto_33

    .line 4488
    .end local v4    # "size":I
    :cond_32
    move-object v8, v3

    .line 4495
    .end local v3    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .local v8, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :goto_33
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p11, :pswitch_data_21a

    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .local v13, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_218

    .line 4632
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :pswitch_3e
    const/4 v2, 0x3

    if-ne v11, v2, :cond_5a

    .line 4633
    nop

    .line 4635
    invoke-direct {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    .line 4634
    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v8

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeGroupList(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .local v2, "position":I
    goto/16 :goto_219

    .line 4632
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :cond_5a
    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    move/from16 v14, p6

    goto/16 :goto_218

    .line 4625
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :pswitch_5f
    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_6a

    .line 4626
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedSInt64List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4627
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_6a
    if-nez v11, :cond_7f

    .line 4628
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4627
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_7f
    move/from16 v14, p6

    goto/16 :goto_218

    .line 4617
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :pswitch_83
    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_8e

    .line 4618
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedSInt32List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4619
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_8e
    if-nez v11, :cond_a3

    .line 4620
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4619
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_a3
    move/from16 v14, p6

    goto/16 :goto_218

    .line 4589
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :pswitch_a7
    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_af

    .line 4590
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedVarint32List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_c0

    .line 4591
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_af
    if-nez v11, :cond_e5

    .line 4592
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4596
    .end local p3    # "position":I
    .restart local v2    # "position":I
    :goto_c0
    move-object v3, v1

    check-cast v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 4597
    .local v3, "unknownFields":Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_cc

    .line 4602
    const/4 v3, 0x0

    .line 4604
    :cond_cc
    nop

    .line 4608
    invoke-direct {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 4605
    move/from16 v14, p6

    invoke-static {v14, v13, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 4611
    if-eqz v3, :cond_219

    .line 4612
    move-object v4, v1

    check-cast v4, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-object v3, v4, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    goto/16 :goto_219

    .line 4591
    .end local v2    # "position":I
    .end local v3    # "unknownFields":Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .restart local p3    # "position":I
    :cond_e5
    move/from16 v14, p6

    goto/16 :goto_218

    .line 4583
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :pswitch_e9
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_218

    .line 4584
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeBytesList(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4570
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_ff
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_218

    .line 4571
    nop

    .line 4573
    invoke-direct {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    .line 4572
    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageList(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4561
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_11a
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_218

    .line 4562
    const-wide/32 v2, 0x20000000

    and-long v2, p9, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13b

    .line 4563
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeStringList(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4565
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_13b
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4554
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_14c
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_157

    .line 4555
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedBoolList([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4556
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_157
    if-nez v11, :cond_218

    .line 4557
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeBoolList(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4546
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_16a
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_175

    .line 4547
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedFixed32List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4548
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_175
    if-ne v11, v2, :cond_218

    .line 4549
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4536
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_188
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_193

    .line 4537
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedFixed64List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4538
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_193
    if-ne v11, v3, :cond_218

    .line 4539
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4526
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_1a6
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_1b1

    .line 4527
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedVarint32List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4528
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_1b1
    if-nez v11, :cond_218

    .line 4529
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_219

    .line 4516
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_1c4
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_1ce

    .line 4517
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedVarint64List([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_219

    .line 4518
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_1ce
    if-nez v11, :cond_218

    .line 4519
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_219

    .line 4506
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_1e0
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_1ea

    .line 4507
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedFloatList([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_219

    .line 4508
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_1ea
    if-ne v11, v2, :cond_218

    .line 4509
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFloatList(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_219

    .line 4498
    .end local v2    # "position":I
    .end local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_1fc
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_206

    .line 4499
    invoke-static {v9, v10, v13, v15}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodePackedDoubleList([BILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_219

    .line 4500
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_206
    if-ne v11, v3, :cond_218

    .line 4501
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_219

    .line 4647
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_218
    :goto_218
    move v2, v10

    .end local p3    # "position":I
    .restart local v2    # "position":I
    :cond_219
    :goto_219
    return v2

    :pswitch_data_21a
    .packed-switch 0x12
        :pswitch_1fc
        :pswitch_1e0
        :pswitch_1c4
        :pswitch_1c4
        :pswitch_1a6
        :pswitch_188
        :pswitch_16a
        :pswitch_14c
        :pswitch_11a
        :pswitch_ff
        :pswitch_e9
        :pswitch_1a6
        :pswitch_a7
        :pswitch_16a
        :pswitch_188
        :pswitch_83
        :pswitch_5f
        :pswitch_1fc
        :pswitch_1e0
        :pswitch_1c4
        :pswitch_1c4
        :pswitch_1a6
        :pswitch_188
        :pswitch_16a
        :pswitch_14c
        :pswitch_1a6
        :pswitch_a7
        :pswitch_16a
        :pswitch_188
        :pswitch_83
        :pswitch_5f
        :pswitch_3e
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .registers 3
    .param p1, "number"    # I

    .line 5846
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    .line 5847
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 5849
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private positionForFieldNumber(II)I
    .registers 4
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 5853
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    .line 5854
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 5856
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private presenceMaskAndOffsetAt(I)I
    .registers 4
    .param p1, "pos"    # I

    .line 5685
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private readGroupList(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .param p6, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/Schema<",
            "TE;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5672
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p5, "schema":Landroidx/datastore/preferences/protobuf/Schema;, "Landroidx/datastore/preferences/protobuf/Schema<TE;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 5673
    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5672
    invoke-interface {p4, v0, p5, p6}, Landroidx/datastore/preferences/protobuf/Reader;->readGroupList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 5674
    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .param p5, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/Schema<",
            "TE;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5660
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p4, "schema":Landroidx/datastore/preferences/protobuf/Schema;, "Landroidx/datastore/preferences/protobuf/Schema<TE;>;"
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5661
    .local v0, "offset":J
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 5662
    invoke-virtual {v2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 5661
    invoke-interface {p3, v2, p4, p5}, Landroidx/datastore/preferences/protobuf/Reader;->readMessageList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 5663
    return-void
.end method

.method private readString(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5630
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5632
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 5633
    :cond_12
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_22

    .line 5636
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 5640
    :cond_22
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Reader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5642
    :goto_2d
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Reader;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5645
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5646
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 5647
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5646
    invoke-interface {p3, v0}, Landroidx/datastore/preferences/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_21

    .line 5649
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Landroidx/datastore/preferences/protobuf/Reader;->readStringList(Ljava/util/List;)V

    .line 5651
    :goto_21
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 589
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 590
    :catch_5
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 594
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 595
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 596
    return-object v4

    .line 594
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 602
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found. Known fields are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .registers 8
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5816
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_5

    .line 5818
    return-void

    .line 5820
    :cond_5
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5821
    .local v0, "presenceMaskAndOffset":I
    ushr-int/lit8 v1, v0, 0x14

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 5822
    .local v1, "presenceMask":I
    const v2, 0xfffff

    and-int/2addr v2, v0

    int-to-long v2, v2

    .line 5823
    .local v2, "presenceFieldOffset":J
    nop

    .line 5826
    invoke-static {p1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    or-int/2addr v4, v1

    .line 5823
    invoke-static {p1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 5827
    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .registers 7
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 5841
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5842
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 5843
    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .registers 7
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 5860
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 5861
    .local v0, "max":I
    :goto_7
    if-gt p2, v0, :cond_1e

    .line 5863
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 5864
    .local v1, "mid":I
    mul-int/lit8 v2, v1, 0x3

    .line 5865
    .local v2, "pos":I
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 5866
    .local v3, "midFieldNumber":I
    if-ne p1, v3, :cond_16

    .line 5868
    return v2

    .line 5870
    :cond_16
    if-ge p1, v3, :cond_1b

    .line 5872
    add-int/lit8 v0, v1, -0x1

    goto :goto_1d

    .line 5875
    :cond_1b
    add-int/lit8 p2, v1, 0x1

    .line 5877
    .end local v1    # "mid":I
    .end local v2    # "pos":I
    .end local v3    # "midFieldNumber":I
    :goto_1d
    goto :goto_7

    .line 5878
    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method private static storeFieldData(Landroidx/datastore/preferences/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V
    .registers 14
    .param p0, "fi"    # Landroidx/datastore/preferences/protobuf/FieldInfo;
    .param p1, "buffer"    # [I
    .param p2, "bufferIndex"    # I
    .param p3, "proto3"    # Z
    .param p4, "objects"    # [Ljava/lang/Object;

    .line 728
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getOneof()Landroidx/datastore/preferences/protobuf/OneofInfo;

    move-result-object v0

    .line 729
    .local v0, "oneof":Landroidx/datastore/preferences/protobuf/OneofInfo;
    if-eqz v0, :cond_24

    .line 730
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    .line 731
    .local v1, "typeId":I
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 732
    .local v2, "fieldOffset":I
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 733
    .local v3, "presenceFieldOffset":I
    const/4 v4, 0x0

    .local v4, "presenceMaskShift":I
    goto :goto_71

    .line 735
    .end local v1    # "typeId":I
    .end local v2    # "fieldOffset":I
    .end local v3    # "presenceFieldOffset":I
    .end local v4    # "presenceMaskShift":I
    :cond_24
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getType()Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v1

    .line 736
    .local v1, "type":Landroidx/datastore/preferences/protobuf/FieldType;
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 737
    .restart local v2    # "fieldOffset":I
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v3

    .line 738
    .local v3, "typeId":I
    if-nez p3, :cond_58

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->isMap()Z

    move-result v4

    if-nez v4, :cond_58

    .line 739
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 740
    .local v4, "presenceFieldOffset":I
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getPresenceMask()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v1, v3

    move v3, v4

    move v4, v5

    .local v5, "presenceMaskShift":I
    goto :goto_71

    .line 742
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "presenceMaskShift":I
    :cond_58
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_64

    .line 743
    const/4 v4, 0x0

    .line 744
    .restart local v4    # "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    .restart local v5    # "presenceMaskShift":I
    goto :goto_71

    .line 746
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "presenceMaskShift":I
    :cond_64
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 747
    .restart local v4    # "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    .line 752
    .local v1, "typeId":I
    .local v3, "presenceFieldOffset":I
    .local v4, "presenceMaskShift":I
    :goto_71
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    .line 753
    add-int/lit8 v5, p2, 0x1

    .line 754
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_83

    const/high16 v6, 0x20000000

    goto :goto_84

    :cond_83
    move v6, v7

    .line 755
    :goto_84
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_8c

    const/high16 v7, 0x10000000

    :cond_8c
    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v2

    aput v6, p1, v5

    .line 758
    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v4, 0x14

    or-int/2addr v6, v3

    aput v6, p1, v5

    .line 760
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object v5

    .line 761
    .local v5, "messageFieldClass":Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_cc

    .line 762
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p4, v6

    .line 763
    if-eqz v5, :cond_b9

    .line 764
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_e9

    .line 765
    :cond_b9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getEnumVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_e9

    .line 766
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getEnumVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    goto :goto_e9

    .line 769
    :cond_cc
    if-eqz v5, :cond_d7

    .line 770
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_e9

    .line 771
    :cond_d7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getEnumVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_e9

    .line 772
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldInfo;->getEnumVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    .line 775
    :cond_e9
    :goto_e9
    return-void
.end method

.method private static type(I)I
    .registers 2
    .param p0, "value"    # I

    .line 5689
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private typeAndOffsetAt(I)I
    .registers 4
    .param p1, "pos"    # I

    .line 5681
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 24
    .param p2, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2544
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2545
    .local v3, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v4, 0x0

    .line 2546
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v5, :cond_23

    .line 2547
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v5, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v5

    .line 2548
    .local v5, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    .line 2549
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2550
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/util/Map$Entry;

    .line 2553
    .end local v5    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    :cond_23
    const/4 v5, -0x1

    .line 2554
    .local v5, "currentPresenceFieldOffset":I
    const/4 v6, 0x0

    .line 2555
    .local v6, "currentPresenceField":I
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    .line 2556
    .local v7, "bufferLength":I
    sget-object v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2557
    .local v8, "unsafe":Lsun/misc/Unsafe;
    const/4 v9, 0x0

    .local v9, "pos":I
    :goto_2b
    if-ge v9, v7, :cond_5c1

    .line 2558
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    .line 2559
    .local v11, "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v12

    .line 2560
    .local v12, "number":I
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v13

    .line 2562
    .local v13, "fieldType":I
    const/4 v14, 0x0

    .line 2563
    .local v14, "presenceMaskAndOffset":I
    const/4 v15, 0x0

    .line 2564
    .local v15, "presenceMask":I
    iget-boolean v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    move-object/from16 v17, v4

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .local v17, "nextExtension":Ljava/util/Map$Entry;
    if-nez v10, :cond_64

    const/16 v10, 0x11

    if-gt v13, v10, :cond_64

    .line 2565
    iget-object v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v9, 0x2

    aget v14, v10, v18

    .line 2566
    const v10, 0xfffff

    and-int/2addr v10, v14

    .line 2567
    .local v10, "presenceFieldOffset":I
    if-eq v10, v5, :cond_5b

    .line 2568
    move v5, v10

    .line 2569
    move/from16 v19, v5

    .end local v5    # "currentPresenceFieldOffset":I
    .local v19, "currentPresenceFieldOffset":I
    int-to-long v4, v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v5, v19

    .line 2571
    .end local v19    # "currentPresenceFieldOffset":I
    .restart local v5    # "currentPresenceFieldOffset":I
    :cond_5b
    ushr-int/lit8 v4, v14, 0x14

    const/16 v18, 0x1

    shl-int v15, v18, v4

    move-object/from16 v4, v17

    goto :goto_66

    .line 2575
    .end local v10    # "presenceFieldOffset":I
    :cond_64
    move-object/from16 v4, v17

    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v4    # "nextExtension":Ljava/util/Map$Entry;
    :goto_66
    if-eqz v4, :cond_85

    iget-object v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v10, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v10

    if-gt v10, v12, :cond_85

    .line 2576
    iget-object v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v10, v2, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2577
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_83

    :cond_82
    const/4 v10, 0x0

    :goto_83
    move-object v4, v10

    goto :goto_66

    .line 2579
    :cond_85
    move-object/from16 v17, v4

    move v10, v5

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .end local v5    # "currentPresenceFieldOffset":I
    .local v10, "currentPresenceFieldOffset":I
    .restart local v17    # "nextExtension":Ljava/util/Map$Entry;
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 2581
    .local v4, "offset":J
    move/from16 v19, v7

    .end local v7    # "bufferLength":I
    .local v19, "bufferLength":I
    const/4 v7, 0x0

    packed-switch v13, :pswitch_data_5e2

    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .local v16, "currentPresenceFieldOffset":I
    .local v20, "typeAndOffset":I
    goto/16 :goto_5b7

    .line 2901
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_98
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 2902
    nop

    .line 2903
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    .line 2902
    invoke-interface {v2, v12, v7, v10}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5b7

    .line 2901
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :cond_ae
    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    goto/16 :goto_5b7

    .line 2896
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :pswitch_b2
    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 2897
    move/from16 v20, v11

    .end local v11    # "typeAndOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5b7

    .line 2896
    .end local v20    # "typeAndOffset":I
    .restart local v11    # "typeAndOffset":I
    :cond_c5
    move/from16 v20, v11

    .end local v11    # "typeAndOffset":I
    .restart local v20    # "typeAndOffset":I
    goto/16 :goto_5b7

    .line 2891
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_c9
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2892
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5b7

    .line 2886
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_dc
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2887
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5b7

    .line 2881
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_ef
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2882
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5b7

    .line 2876
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_102
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2877
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5b7

    .line 2871
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_115
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2872
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5b7

    .line 2866
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_128
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2867
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_5b7

    .line 2860
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_13d
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2861
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2862
    .local v7, "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2863
    .end local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_5b7

    .line 2855
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_154
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2856
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5b7

    .line 2850
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_167
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2851
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5b7

    .line 2845
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_17a
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2846
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5b7

    .line 2840
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_18d
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2841
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5b7

    .line 2835
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1a0
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2836
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5b7

    .line 2830
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1b3
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2831
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5b7

    .line 2825
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1c6
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2826
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5b7

    .line 2820
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1d9
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2821
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5b7

    .line 2815
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1ec
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    .line 2816
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5b7

    .line 2812
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1ff
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v2, v12, v7, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V

    .line 2813
    goto/16 :goto_5b7

    .line 2804
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_20c
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2805
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2806
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2808
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v11

    .line 2804
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2809
    goto/16 :goto_5b7

    .line 2800
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_223
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2801
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2800
    const/4 v11, 0x1

    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2802
    goto/16 :goto_5b7

    .line 2796
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_237
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2797
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2796
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2798
    goto/16 :goto_5b7

    .line 2792
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_24b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2793
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2792
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2794
    goto/16 :goto_5b7

    .line 2788
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_25f
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2789
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2788
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2790
    goto/16 :goto_5b7

    .line 2784
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_273
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2785
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2784
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2786
    goto/16 :goto_5b7

    .line 2780
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_287
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2781
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2780
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2782
    goto/16 :goto_5b7

    .line 2776
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_29b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2777
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2776
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2778
    goto/16 :goto_5b7

    .line 2771
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2af
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2772
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2771
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2774
    goto/16 :goto_5b7

    .line 2767
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2c3
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2768
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2767
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2769
    goto/16 :goto_5b7

    .line 2763
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2d7
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2764
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2763
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2765
    goto/16 :goto_5b7

    .line 2759
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2eb
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2760
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2759
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2761
    goto/16 :goto_5b7

    .line 2755
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2ff
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2756
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2755
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2757
    goto/16 :goto_5b7

    .line 2751
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_313
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2752
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2751
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2753
    goto/16 :goto_5b7

    .line 2747
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_327
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2748
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2747
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2749
    goto/16 :goto_5b7

    .line 2742
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_33b
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2743
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2742
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2744
    goto/16 :goto_5b7

    .line 2738
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_34e
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2739
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2738
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2740
    goto/16 :goto_5b7

    .line 2734
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_361
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2735
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2734
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2736
    goto/16 :goto_5b7

    .line 2730
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_374
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2731
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2730
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2732
    goto/16 :goto_5b7

    .line 2726
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_387
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2727
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2726
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2728
    goto/16 :goto_5b7

    .line 2722
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_39a
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2723
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2722
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2724
    goto/16 :goto_5b7

    .line 2718
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3ad
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2719
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2718
    invoke-static {v7, v10, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 2720
    goto/16 :goto_5b7

    .line 2711
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3c0
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2712
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2713
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2715
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v11

    .line 2711
    invoke-static {v7, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2716
    goto/16 :goto_5b7

    .line 2707
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3d7
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2708
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2707
    invoke-static {v7, v10, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 2709
    goto/16 :goto_5b7

    .line 2703
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3ea
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2704
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2703
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2705
    goto/16 :goto_5b7

    .line 2699
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3fd
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2700
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2699
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2701
    goto/16 :goto_5b7

    .line 2695
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_410
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2696
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2695
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2697
    goto/16 :goto_5b7

    .line 2691
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_423
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2692
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2691
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2693
    goto/16 :goto_5b7

    .line 2687
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_436
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2688
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2687
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2689
    goto/16 :goto_5b7

    .line 2683
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_449
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2684
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2683
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2685
    goto/16 :goto_5b7

    .line 2679
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_45c
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2680
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2679
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2681
    goto/16 :goto_5b7

    .line 2675
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_46f
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2676
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2675
    invoke-static {v10, v11, v2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 2677
    goto/16 :goto_5b7

    .line 2669
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_482
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2670
    nop

    .line 2671
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    .line 2670
    invoke-interface {v2, v12, v7, v10}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5b7

    .line 2664
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_498
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2665
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5b7

    .line 2659
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4a9
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2660
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5b7

    .line 2654
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4ba
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2655
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5b7

    .line 2649
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4cb
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2650
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5b7

    .line 2644
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4dc
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2645
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5b7

    .line 2639
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4ed
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2640
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5b7

    .line 2634
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4fe
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2635
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_5b7

    .line 2628
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_511
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2629
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2630
    .restart local v7    # "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2631
    .end local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_5b7

    .line 2623
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_526
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2624
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5b7

    .line 2618
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_537
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2619
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5b7

    .line 2613
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_548
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2614
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5b7

    .line 2608
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_558
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2609
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5b7

    .line 2603
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_568
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2604
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    goto :goto_5b7

    .line 2598
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_578
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2599
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5b7

    .line 2593
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_588
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2594
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5b7

    .line 2588
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_598
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2589
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5b7

    .line 2583
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_5a8
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    .line 2584
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 2557
    .end local v4    # "offset":J
    .end local v12    # "number":I
    .end local v13    # "fieldType":I
    .end local v14    # "presenceMaskAndOffset":I
    .end local v15    # "presenceMask":I
    .end local v20    # "typeAndOffset":I
    :cond_5b7
    :goto_5b7
    add-int/lit8 v9, v9, 0x3

    move/from16 v5, v16

    move-object/from16 v4, v17

    move/from16 v7, v19

    goto/16 :goto_2b

    .end local v16    # "currentPresenceFieldOffset":I
    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .end local v19    # "bufferLength":I
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    .restart local v5    # "currentPresenceFieldOffset":I
    .local v7, "bufferLength":I
    :cond_5c1
    move-object/from16 v17, v4

    move/from16 v19, v7

    .line 2911
    .end local v7    # "bufferLength":I
    .end local v9    # "pos":I
    .restart local v19    # "bufferLength":I
    :goto_5c5
    if-eqz v4, :cond_5dc

    .line 2912
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2913
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_5da

    :cond_5d9
    const/4 v7, 0x0

    :goto_5da
    move-object v4, v7

    goto :goto_5c5

    .line 2915
    :cond_5dc
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeUnknownInMessageTo(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 2916
    return-void

    :pswitch_data_5e2
    .packed-switch 0x0
        :pswitch_5a8
        :pswitch_598
        :pswitch_588
        :pswitch_578
        :pswitch_568
        :pswitch_558
        :pswitch_548
        :pswitch_537
        :pswitch_526
        :pswitch_511
        :pswitch_4fe
        :pswitch_4ed
        :pswitch_4dc
        :pswitch_4cb
        :pswitch_4ba
        :pswitch_4a9
        :pswitch_498
        :pswitch_482
        :pswitch_46f
        :pswitch_45c
        :pswitch_449
        :pswitch_436
        :pswitch_423
        :pswitch_410
        :pswitch_3fd
        :pswitch_3ea
        :pswitch_3d7
        :pswitch_3c0
        :pswitch_3ad
        :pswitch_39a
        :pswitch_387
        :pswitch_374
        :pswitch_361
        :pswitch_34e
        :pswitch_33b
        :pswitch_327
        :pswitch_313
        :pswitch_2ff
        :pswitch_2eb
        :pswitch_2d7
        :pswitch_2c3
        :pswitch_2af
        :pswitch_29b
        :pswitch_287
        :pswitch_273
        :pswitch_25f
        :pswitch_24b
        :pswitch_237
        :pswitch_223
        :pswitch_20c
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_1a0
        :pswitch_18d
        :pswitch_17a
        :pswitch_167
        :pswitch_154
        :pswitch_13d
        :pswitch_128
        :pswitch_115
        :pswitch_102
        :pswitch_ef
        :pswitch_dc
        :pswitch_c9
        :pswitch_b2
        :pswitch_98
    .end packed-switch
.end method

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 14
    .param p2, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2920
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 2921
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 2922
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_1d

    .line 2923
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v2

    .line 2924
    .local v2, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2925
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2926
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 2930
    .end local v2    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    :cond_1d
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    .line 2931
    .local v2, "bufferLength":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_21
    const/4 v4, 0x0

    if-ge v3, v2, :cond_5ab

    .line 2932
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 2933
    .local v5, "typeAndOffset":I
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 2936
    .local v6, "number":I
    :goto_2c
    if-eqz v1, :cond_4b

    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v7, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v6, :cond_4b

    .line 2937
    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2938
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_49

    :cond_48
    move-object v7, v4

    :goto_49
    move-object v1, v7

    goto :goto_2c

    .line 2941
    :cond_4b
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_5c8

    goto/16 :goto_5a7

    .line 3353
    :pswitch_56
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3354
    nop

    .line 3356
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3357
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    .line 3354
    invoke-interface {p2, v6, v4, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5a7

    .line 3348
    :pswitch_6e
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3349
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    .line 3343
    :pswitch_81
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3344
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    .line 3338
    :pswitch_94
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3339
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    .line 3333
    :pswitch_a7
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3334
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    .line 3328
    :pswitch_ba
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3329
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    .line 3323
    :pswitch_cd
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3324
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    .line 3317
    :pswitch_e0
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3318
    nop

    .line 3319
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 3318
    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_5a7

    .line 3311
    :pswitch_f6
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3312
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3313
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3314
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_5a7

    .line 3306
    :pswitch_10d
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3307
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5a7

    .line 3301
    :pswitch_120
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3302
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    .line 3296
    :pswitch_133
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3297
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5a7

    .line 3291
    :pswitch_146
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3292
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5a7

    .line 3286
    :pswitch_159
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3287
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5a7

    .line 3281
    :pswitch_16c
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3282
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5a7

    .line 3276
    :pswitch_17f
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3277
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5a7

    .line 3271
    :pswitch_192
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3272
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5a7

    .line 3266
    :pswitch_1a5
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3267
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5a7

    .line 3263
    :pswitch_1b8
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3264
    goto/16 :goto_5a7

    .line 3255
    :pswitch_1c5
    nop

    .line 3256
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3257
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3259
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v8

    .line 3255
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3260
    goto/16 :goto_5a7

    .line 3248
    :pswitch_1dd
    nop

    .line 3249
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3250
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3248
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3253
    goto/16 :goto_5a7

    .line 3241
    :pswitch_1f1
    nop

    .line 3242
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3243
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3241
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3246
    goto/16 :goto_5a7

    .line 3234
    :pswitch_205
    nop

    .line 3235
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3236
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3234
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3239
    goto/16 :goto_5a7

    .line 3227
    :pswitch_219
    nop

    .line 3228
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3229
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3227
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3232
    goto/16 :goto_5a7

    .line 3220
    :pswitch_22d
    nop

    .line 3221
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3222
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3220
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3225
    goto/16 :goto_5a7

    .line 3213
    :pswitch_241
    nop

    .line 3214
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3215
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3213
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3218
    goto/16 :goto_5a7

    .line 3206
    :pswitch_255
    nop

    .line 3207
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3208
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3206
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3211
    goto/16 :goto_5a7

    .line 3198
    :pswitch_269
    nop

    .line 3199
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3200
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3198
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3204
    goto/16 :goto_5a7

    .line 3191
    :pswitch_27d
    nop

    .line 3192
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3193
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3191
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3196
    goto/16 :goto_5a7

    .line 3184
    :pswitch_291
    nop

    .line 3185
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3186
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3184
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3189
    goto/16 :goto_5a7

    .line 3177
    :pswitch_2a5
    nop

    .line 3178
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3179
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3177
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3182
    goto/16 :goto_5a7

    .line 3170
    :pswitch_2b9
    nop

    .line 3171
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3172
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3170
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3175
    goto/16 :goto_5a7

    .line 3163
    :pswitch_2cd
    nop

    .line 3164
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3165
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3163
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3168
    goto/16 :goto_5a7

    .line 3156
    :pswitch_2e1
    nop

    .line 3157
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3158
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3156
    invoke-static {v4, v8, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3161
    goto/16 :goto_5a7

    .line 3148
    :pswitch_2f5
    nop

    .line 3149
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3150
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3148
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3153
    goto/16 :goto_5a7

    .line 3141
    :pswitch_309
    nop

    .line 3142
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3143
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3141
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3146
    goto/16 :goto_5a7

    .line 3134
    :pswitch_31d
    nop

    .line 3135
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3136
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3134
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3139
    goto/16 :goto_5a7

    .line 3127
    :pswitch_331
    nop

    .line 3128
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3129
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3127
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3132
    goto/16 :goto_5a7

    .line 3120
    :pswitch_345
    nop

    .line 3121
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3122
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3120
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3125
    goto/16 :goto_5a7

    .line 3113
    :pswitch_359
    nop

    .line 3114
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3115
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3113
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3118
    goto/16 :goto_5a7

    .line 3107
    :pswitch_36d
    nop

    .line 3108
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3109
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3107
    invoke-static {v4, v7, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3111
    goto/16 :goto_5a7

    .line 3100
    :pswitch_381
    nop

    .line 3101
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3102
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3104
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v8

    .line 3100
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3105
    goto/16 :goto_5a7

    .line 3094
    :pswitch_399
    nop

    .line 3095
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3096
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3094
    invoke-static {v4, v7, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3098
    goto/16 :goto_5a7

    .line 3087
    :pswitch_3ad
    nop

    .line 3088
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3089
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3087
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3092
    goto/16 :goto_5a7

    .line 3080
    :pswitch_3c1
    nop

    .line 3081
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3082
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3080
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3085
    goto/16 :goto_5a7

    .line 3073
    :pswitch_3d5
    nop

    .line 3074
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3075
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3073
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3078
    goto/16 :goto_5a7

    .line 3066
    :pswitch_3e9
    nop

    .line 3067
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3068
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3066
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3071
    goto/16 :goto_5a7

    .line 3059
    :pswitch_3fd
    nop

    .line 3060
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3061
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3059
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3064
    goto/16 :goto_5a7

    .line 3052
    :pswitch_411
    nop

    .line 3053
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3054
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3052
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3057
    goto/16 :goto_5a7

    .line 3045
    :pswitch_425
    nop

    .line 3046
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3047
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3045
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3050
    goto/16 :goto_5a7

    .line 3038
    :pswitch_439
    nop

    .line 3039
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3040
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3038
    invoke-static {v4, v7, p2, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3043
    goto/16 :goto_5a7

    .line 3030
    :pswitch_44d
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3031
    nop

    .line 3033
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3034
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    .line 3031
    invoke-interface {p2, v6, v4, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5a7

    .line 3025
    :pswitch_465
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3026
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    .line 3020
    :pswitch_478
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3021
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    .line 3015
    :pswitch_48b
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3016
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    .line 3010
    :pswitch_49e
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3011
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    .line 3005
    :pswitch_4b1
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3006
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    .line 3000
    :pswitch_4c4
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3001
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    .line 2994
    :pswitch_4d7
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2995
    nop

    .line 2996
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 2995
    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_5a7

    .line 2988
    :pswitch_4ed
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2989
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2990
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2991
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_5a7

    .line 2983
    :pswitch_504
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2984
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5a7

    .line 2978
    :pswitch_517
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2979
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    .line 2973
    :pswitch_52a
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2974
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5a7

    .line 2968
    :pswitch_53c
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2969
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5a7

    .line 2963
    :pswitch_54e
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2964
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    goto :goto_5a7

    .line 2958
    :pswitch_560
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2959
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5a7

    .line 2953
    :pswitch_572
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2954
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5a7

    .line 2948
    :pswitch_584
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2949
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5a7

    .line 2943
    :pswitch_596
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2944
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 2931
    .end local v5    # "typeAndOffset":I
    .end local v6    # "number":I
    :cond_5a7
    :goto_5a7
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_21

    .line 3365
    .end local v3    # "pos":I
    :cond_5ab
    :goto_5ab
    if-eqz v1, :cond_5c2

    .line 3366
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3367
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_5c0

    :cond_5bf
    move-object v3, v4

    :goto_5c0
    move-object v1, v3

    goto :goto_5ab

    .line 3369
    :cond_5c2
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeUnknownInMessageTo(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3370
    return-void

    :pswitch_data_5c8
    .packed-switch 0x0
        :pswitch_596
        :pswitch_584
        :pswitch_572
        :pswitch_560
        :pswitch_54e
        :pswitch_53c
        :pswitch_52a
        :pswitch_517
        :pswitch_504
        :pswitch_4ed
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4b1
        :pswitch_49e
        :pswitch_48b
        :pswitch_478
        :pswitch_465
        :pswitch_44d
        :pswitch_439
        :pswitch_425
        :pswitch_411
        :pswitch_3fd
        :pswitch_3e9
        :pswitch_3d5
        :pswitch_3c1
        :pswitch_3ad
        :pswitch_399
        :pswitch_381
        :pswitch_36d
        :pswitch_359
        :pswitch_345
        :pswitch_331
        :pswitch_31d
        :pswitch_309
        :pswitch_2f5
        :pswitch_2e1
        :pswitch_2cd
        :pswitch_2b9
        :pswitch_2a5
        :pswitch_291
        :pswitch_27d
        :pswitch_269
        :pswitch_255
        :pswitch_241
        :pswitch_22d
        :pswitch_219
        :pswitch_205
        :pswitch_1f1
        :pswitch_1dd
        :pswitch_1c5
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_192
        :pswitch_17f
        :pswitch_16c
        :pswitch_159
        :pswitch_146
        :pswitch_133
        :pswitch_120
        :pswitch_10d
        :pswitch_f6
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_81
        :pswitch_6e
        :pswitch_56
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 13
    .param p2, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3374
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeUnknownInMessageTo(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3376
    const/4 v0, 0x0

    .line 3377
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 3378
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_22

    .line 3379
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v2

    .line 3380
    .local v2, "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 3381
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 3386
    .end local v2    # "extensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    :cond_22
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    .local v2, "pos":I
    :goto_27
    const/4 v3, 0x0

    if-ltz v2, :cond_5b1

    .line 3387
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 3388
    .local v4, "typeAndOffset":I
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3391
    .local v5, "number":I
    :goto_32
    if-eqz v1, :cond_51

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_51

    .line 3392
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3393
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_4f

    :cond_4e
    move-object v6, v3

    :goto_4f
    move-object v1, v6

    goto :goto_32

    .line 3396
    :cond_51
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_5ca

    goto/16 :goto_5ad

    .line 3807
    :pswitch_5c
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3808
    nop

    .line 3810
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3811
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6

    .line 3808
    invoke-interface {p2, v5, v3, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5ad

    .line 3802
    :pswitch_74
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3803
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    .line 3797
    :pswitch_87
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3798
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    .line 3792
    :pswitch_9a
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3793
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    .line 3787
    :pswitch_ad
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3788
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    .line 3782
    :pswitch_c0
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3783
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    .line 3777
    :pswitch_d3
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3778
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    .line 3771
    :pswitch_e6
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3772
    nop

    .line 3773
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 3772
    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_5ad

    .line 3765
    :pswitch_fc
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3766
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3767
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3768
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_5ad

    .line 3760
    :pswitch_113
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3761
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5ad

    .line 3755
    :pswitch_126
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3756
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    .line 3750
    :pswitch_139
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3751
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5ad

    .line 3745
    :pswitch_14c
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3746
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5ad

    .line 3740
    :pswitch_15f
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3741
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5ad

    .line 3735
    :pswitch_172
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3736
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5ad

    .line 3730
    :pswitch_185
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3731
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5ad

    .line 3725
    :pswitch_198
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3726
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5ad

    .line 3720
    :pswitch_1ab
    invoke-direct {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3721
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5ad

    .line 3717
    :pswitch_1be
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3718
    goto/16 :goto_5ad

    .line 3709
    :pswitch_1cb
    nop

    .line 3710
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3711
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3713
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    .line 3709
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3714
    goto/16 :goto_5ad

    .line 3702
    :pswitch_1e3
    nop

    .line 3703
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3704
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3702
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3707
    goto/16 :goto_5ad

    .line 3695
    :pswitch_1f7
    nop

    .line 3696
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3697
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3695
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3700
    goto/16 :goto_5ad

    .line 3688
    :pswitch_20b
    nop

    .line 3689
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3690
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3688
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3693
    goto/16 :goto_5ad

    .line 3681
    :pswitch_21f
    nop

    .line 3682
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3683
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3681
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3686
    goto/16 :goto_5ad

    .line 3674
    :pswitch_233
    nop

    .line 3675
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3676
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3674
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3679
    goto/16 :goto_5ad

    .line 3667
    :pswitch_247
    nop

    .line 3668
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3669
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3667
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3672
    goto/16 :goto_5ad

    .line 3660
    :pswitch_25b
    nop

    .line 3661
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3662
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3660
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3665
    goto/16 :goto_5ad

    .line 3652
    :pswitch_26f
    nop

    .line 3653
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3654
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3652
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3658
    goto/16 :goto_5ad

    .line 3645
    :pswitch_283
    nop

    .line 3646
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3647
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3645
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3650
    goto/16 :goto_5ad

    .line 3638
    :pswitch_297
    nop

    .line 3639
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3640
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3638
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3643
    goto/16 :goto_5ad

    .line 3631
    :pswitch_2ab
    nop

    .line 3632
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3633
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3631
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3636
    goto/16 :goto_5ad

    .line 3624
    :pswitch_2bf
    nop

    .line 3625
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3626
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3624
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3629
    goto/16 :goto_5ad

    .line 3617
    :pswitch_2d3
    nop

    .line 3618
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3619
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3617
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3622
    goto/16 :goto_5ad

    .line 3610
    :pswitch_2e7
    nop

    .line 3611
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3612
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3610
    invoke-static {v3, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3615
    goto/16 :goto_5ad

    .line 3603
    :pswitch_2fb
    nop

    .line 3604
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3605
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3603
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3608
    goto/16 :goto_5ad

    .line 3596
    :pswitch_30f
    nop

    .line 3597
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3598
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3596
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3601
    goto/16 :goto_5ad

    .line 3589
    :pswitch_323
    nop

    .line 3590
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3591
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3589
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3594
    goto/16 :goto_5ad

    .line 3582
    :pswitch_337
    nop

    .line 3583
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3584
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3582
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3587
    goto/16 :goto_5ad

    .line 3575
    :pswitch_34b
    nop

    .line 3576
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3577
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3575
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3580
    goto/16 :goto_5ad

    .line 3568
    :pswitch_35f
    nop

    .line 3569
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3570
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3568
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3573
    goto/16 :goto_5ad

    .line 3562
    :pswitch_373
    nop

    .line 3563
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3564
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3562
    invoke-static {v3, v6, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3566
    goto/16 :goto_5ad

    .line 3555
    :pswitch_387
    nop

    .line 3556
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3557
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3559
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    .line 3555
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3560
    goto/16 :goto_5ad

    .line 3549
    :pswitch_39f
    nop

    .line 3550
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3551
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3549
    invoke-static {v3, v6, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3553
    goto/16 :goto_5ad

    .line 3542
    :pswitch_3b3
    nop

    .line 3543
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3544
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3542
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3547
    goto/16 :goto_5ad

    .line 3535
    :pswitch_3c7
    nop

    .line 3536
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3537
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3535
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3540
    goto/16 :goto_5ad

    .line 3528
    :pswitch_3db
    nop

    .line 3529
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3530
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3528
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3533
    goto/16 :goto_5ad

    .line 3521
    :pswitch_3ef
    nop

    .line 3522
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3523
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3521
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3526
    goto/16 :goto_5ad

    .line 3514
    :pswitch_403
    nop

    .line 3515
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3516
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3514
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3519
    goto/16 :goto_5ad

    .line 3507
    :pswitch_417
    nop

    .line 3508
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3509
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3507
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3512
    goto/16 :goto_5ad

    .line 3500
    :pswitch_42b
    nop

    .line 3501
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3502
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3500
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3505
    goto/16 :goto_5ad

    .line 3493
    :pswitch_43f
    nop

    .line 3494
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3495
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3493
    invoke-static {v3, v6, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V

    .line 3498
    goto/16 :goto_5ad

    .line 3485
    :pswitch_453
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3486
    nop

    .line 3488
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3489
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6

    .line 3486
    invoke-interface {p2, v5, v3, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5ad

    .line 3480
    :pswitch_46b
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3481
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    .line 3475
    :pswitch_47e
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3476
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    .line 3470
    :pswitch_491
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3471
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    .line 3465
    :pswitch_4a4
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3466
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    .line 3460
    :pswitch_4b7
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3461
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    .line 3455
    :pswitch_4ca
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3456
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    .line 3449
    :pswitch_4dd
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3450
    nop

    .line 3451
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 3450
    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_5ad

    .line 3443
    :pswitch_4f3
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3444
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3445
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 3446
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_5ad

    .line 3438
    :pswitch_50a
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3439
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5ad

    .line 3433
    :pswitch_51d
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3434
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    .line 3428
    :pswitch_530
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3429
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5ad

    .line 3423
    :pswitch_542
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3424
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5ad

    .line 3418
    :pswitch_554
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3419
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    goto :goto_5ad

    .line 3413
    :pswitch_566
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3414
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5ad

    .line 3408
    :pswitch_578
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3409
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5ad

    .line 3403
    :pswitch_58a
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3404
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5ad

    .line 3398
    :pswitch_59c
    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3399
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 3386
    .end local v4    # "typeAndOffset":I
    .end local v5    # "number":I
    :cond_5ad
    :goto_5ad
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_27

    .line 3818
    .end local v2    # "pos":I
    :cond_5b1
    :goto_5b1
    if-eqz v1, :cond_5c8

    .line 3819
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3820
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5c6

    :cond_5c5
    move-object v2, v3

    :goto_5c6
    move-object v1, v2

    goto :goto_5b1

    .line 3822
    :cond_5c8
    return-void

    nop

    :pswitch_data_5ca
    .packed-switch 0x0
        :pswitch_59c
        :pswitch_58a
        :pswitch_578
        :pswitch_566
        :pswitch_554
        :pswitch_542
        :pswitch_530
        :pswitch_51d
        :pswitch_50a
        :pswitch_4f3
        :pswitch_4dd
        :pswitch_4ca
        :pswitch_4b7
        :pswitch_4a4
        :pswitch_491
        :pswitch_47e
        :pswitch_46b
        :pswitch_453
        :pswitch_43f
        :pswitch_42b
        :pswitch_417
        :pswitch_403
        :pswitch_3ef
        :pswitch_3db
        :pswitch_3c7
        :pswitch_3b3
        :pswitch_39f
        :pswitch_387
        :pswitch_373
        :pswitch_35f
        :pswitch_34b
        :pswitch_337
        :pswitch_323
        :pswitch_30f
        :pswitch_2fb
        :pswitch_2e7
        :pswitch_2d3
        :pswitch_2bf
        :pswitch_2ab
        :pswitch_297
        :pswitch_283
        :pswitch_26f
        :pswitch_25b
        :pswitch_247
        :pswitch_233
        :pswitch_21f
        :pswitch_20b
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_1cb
        :pswitch_1be
        :pswitch_1ab
        :pswitch_198
        :pswitch_185
        :pswitch_172
        :pswitch_15f
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_fc
        :pswitch_e6
        :pswitch_d3
        :pswitch_c0
        :pswitch_ad
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_5c
    .end packed-switch
.end method

.method private writeMapHelper(Landroidx/datastore/preferences/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 7
    .param p1, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .param p2, "number"    # I
    .param p3, "mapField"    # Ljava/lang/Object;
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3827
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    if-eqz p3, :cond_15

    .line 3828
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 3830
    invoke-direct {p0, p4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 3831
    invoke-interface {v1, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 3828
    invoke-interface {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeMap(ILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 3833
    :cond_15
    return-void
.end method

.method private writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5622
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 5623
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_11

    .line 5625
    :cond_b
    move-object v0, p2

    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p3, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 5627
    :goto_11
    return-void
.end method

.method private writeUnknownInMessageTo(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 5
    .param p3, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3837
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;, "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 3838
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 785
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 786
    .local v0, "bufferLength":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_4
    const/4 v2, 0x0

    if-ge v1, v0, :cond_11

    .line 787
    invoke-direct {p0, p1, p2, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 788
    return v2

    .line 786
    :cond_e
    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    .line 792
    .end local v1    # "pos":I
    :cond_11
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 793
    .local v1, "messageUnknown":Ljava/lang/Object;
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 794
    .local v3, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 795
    return v2

    .line 798
    :cond_24
    iget-boolean v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_39

    .line 799
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v2

    .line 800
    .local v2, "messageExtensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v4

    .line 801
    .local v4, "otherExtensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    invoke-virtual {v2, v4}, Landroidx/datastore/preferences/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 803
    .end local v2    # "messageExtensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    .end local v4    # "otherExtensions":Landroidx/datastore/preferences/protobuf/FieldSet;, "Landroidx/datastore/preferences/protobuf/FieldSet<*>;"
    :cond_39
    const/4 v2, 0x1

    return v2
.end method

.method getSchemaSize()I
    .registers 2

    .line 5882
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1411
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result v0

    :goto_d
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 938
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 939
    .local v0, "hashCode":I
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    .line 940
    .local v1, "bufferLength":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_5
    if-ge v2, v1, :cond_27b

    .line 941
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 942
    .local v3, "typeAndOffset":I
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 944
    .local v4, "entryNumber":I
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 946
    .local v5, "offset":J
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_29c

    goto/16 :goto_277

    .line 1146
    :pswitch_1c
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1147
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1148
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1149
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .local v8, "hashCode":I
    move v0, v8

    goto/16 :goto_277

    .line 1141
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_30
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1142
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_277

    .line 1136
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_44
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1137
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1131
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_54
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1132
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1126
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_68
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1127
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1121
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_78
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1122
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1116
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_88
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1117
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1111
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_98
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1112
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1105
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_ac
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1106
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1107
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1108
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .restart local v8    # "hashCode":I
    move v0, v8

    goto/16 :goto_277

    .line 1099
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_c0
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1100
    mul-int/lit8 v7, v0, 0x35

    .line 1101
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_277

    .line 1094
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_d6
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1095
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1089
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_ea
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1090
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1084
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_fa
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1085
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1079
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_10e
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1080
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1074
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_11e
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1075
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1069
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_132
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1070
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1064
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_146
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1065
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1057
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_15a
    invoke-direct {p0, p1, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1058
    mul-int/lit8 v7, v0, 0x35

    .line 1060
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1054
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_172
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1055
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1051
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_180
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1052
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1011
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_18e
    const/16 v7, 0x25

    .line 1012
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1013
    .local v8, "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_19a

    .line 1014
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1016
    :cond_19a
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 1017
    .end local v0    # "hashCode":I
    .local v9, "hashCode":I
    move v0, v9

    goto/16 :goto_277

    .line 1006
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1a0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1007
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1003
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1ae
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1004
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1000
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1b8
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1001
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 997
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1c6
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 998
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 994
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1d0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 995
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 991
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1da
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 992
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 988
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1e4
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 989
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 979
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1f2
    const/16 v7, 0x25

    .line 980
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 981
    .restart local v8    # "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_1fe

    .line 982
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 984
    :cond_1fe
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 985
    .end local v0    # "hashCode":I
    .restart local v9    # "hashCode":I
    move v0, v9

    goto/16 :goto_277

    .line 975
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_204
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 976
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 972
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_214
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 973
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 969
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_221
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 970
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 966
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_22a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 967
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 963
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_237
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 964
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 960
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_240
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 961
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 957
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_24d
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 958
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 954
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_25a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 955
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 948
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_267
    mul-int/lit8 v7, v0, 0x35

    .line 951
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 950
    invoke-static {v8, v9}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 952
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    .line 940
    .end local v3    # "typeAndOffset":I
    .end local v4    # "entryNumber":I
    .end local v5    # "offset":J
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :cond_277
    :goto_277
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 1157
    .end local v2    # "pos":I
    :cond_27b
    mul-int/lit8 v2, v0, 0x35

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1159
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_29a

    .line 1160
    mul-int/lit8 v0, v2, 0x35

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v3, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 1163
    :cond_29a
    return v2

    nop

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_267
        :pswitch_25a
        :pswitch_24d
        :pswitch_240
        :pswitch_237
        :pswitch_22a
        :pswitch_221
        :pswitch_214
        :pswitch_204
        :pswitch_1f2
        :pswitch_1e4
        :pswitch_1da
        :pswitch_1d0
        :pswitch_1c6
        :pswitch_1b8
        :pswitch_1ae
        :pswitch_1a0
        :pswitch_18e
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_172
        :pswitch_15a
        :pswitch_146
        :pswitch_132
        :pswitch_11e
        :pswitch_10e
        :pswitch_fa
        :pswitch_ea
        :pswitch_d6
        :pswitch_c0
        :pswitch_ac
        :pswitch_98
        :pswitch_88
        :pswitch_78
        :pswitch_68
        :pswitch_54
        :pswitch_44
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 5507
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    .line 5508
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 5509
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_7b

    .line 5510
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 5511
    .local v3, "pos":I
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 5513
    .local v6, "number":I
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 5515
    .local v7, "typeAndOffset":I
    const/4 v8, 0x0

    .line 5516
    .local v8, "presenceMaskAndOffset":I
    const/4 v9, 0x0

    .line 5517
    .local v9, "presenceMask":I
    iget-boolean v10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-nez v10, :cond_33

    .line 5518
    iget-object v10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v3, 0x2

    aget v8, v10, v11

    .line 5519
    const v10, 0xfffff

    and-int/2addr v10, v8

    .line 5520
    .local v10, "presenceFieldOffset":I
    ushr-int/lit8 v11, v8, 0x14

    shl-int v9, v4, v11

    .line 5521
    if-eq v10, v0, :cond_33

    .line 5522
    move v0, v10

    .line 5523
    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v4, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 5527
    .end local v10    # "presenceFieldOffset":I
    :cond_33
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isRequired(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 5528
    invoke-direct {p0, p1, v3, v1, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-nez v4, :cond_40

    .line 5529
    return v5

    .line 5536
    :cond_40
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_8e

    goto :goto_78

    .line 5552
    :sswitch_48
    invoke-direct {p0, p1, v6, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 5553
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 5554
    return v5

    .line 5558
    :sswitch_59
    invoke-direct {p0, p1, v7, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_78

    .line 5559
    return v5

    .line 5546
    :sswitch_60
    invoke-direct {p0, p1, v7, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_78

    .line 5547
    return v5

    .line 5539
    :sswitch_67
    invoke-direct {p0, p1, v3, v1, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 5540
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 5541
    return v5

    .line 5509
    .end local v3    # "pos":I
    .end local v6    # "number":I
    .end local v7    # "typeAndOffset":I
    .end local v8    # "presenceMaskAndOffset":I
    .end local v9    # "presenceMask":I
    :cond_78
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5567
    .end local v2    # "i":I
    :cond_7b
    iget-boolean v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_8c

    .line 5568
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 5569
    return v5

    .line 5573
    :cond_8c
    return v4

    nop

    :sswitch_data_8e
    .sparse-switch
        0x9 -> :sswitch_67
        0x11 -> :sswitch_67
        0x1b -> :sswitch_60
        0x31 -> :sswitch_60
        0x32 -> :sswitch_59
        0x3c -> :sswitch_48
        0x44 -> :sswitch_48
    .end sparse-switch
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5405
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_25

    .line 5406
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 5407
    .local v1, "offset":J
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5408
    .local v3, "mapField":Ljava/lang/Object;
    if-nez v3, :cond_19

    .line 5409
    goto :goto_22

    .line 5411
    :cond_19
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5405
    .end local v1    # "offset":J
    .end local v3    # "mapField":Ljava/lang/Object;
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5413
    .end local v0    # "i":I
    :cond_25
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    .line 5414
    .local v0, "length":I
    iget v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .local v1, "i":I
    :goto_2a
    if-ge v1, v0, :cond_39

    .line 5415
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    .line 5414
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 5417
    .end local v1    # "i":I
    :cond_39
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5418
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_47

    .line 5419
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5421
    :cond_47
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .param p2, "reader"    # Landroidx/datastore/preferences/protobuf/Reader;
    .param p3, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Reader;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3843
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_e

    .line 3846
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeFromHelper(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 3847
    return-void

    .line 3844
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1168
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_21

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 1173
    invoke-direct {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1171
    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    .line 1176
    .end local v0    # "i":I
    :cond_e
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-nez v0, :cond_20

    .line 1177
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->mergeUnknownFields(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1179
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_20

    .line 1180
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->mergeExtensions(Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1183
    :cond_20
    return-void

    .line 1169
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)V
    .registers 14
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5395
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_8

    .line 5396
    invoke-direct/range {p0 .. p5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    goto :goto_12

    .line 5398
    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    .line 5400
    :goto_12
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 780
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I
    .registers 42
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "endGroup"    # I
    .param p6, "registers"    # Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4871
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4872
    .local v10, "unsafe":Lsun/misc/Unsafe;
    const/4 v0, -0x1

    .line 4873
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 4874
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    .line 4875
    .local v2, "tag":I
    const/4 v3, -0x1

    .line 4876
    .local v3, "oldNumber":I
    const/4 v4, 0x0

    move v8, v0

    move v7, v1

    move/from16 v0, p3

    .line 4877
    .end local v1    # "currentPresenceField":I
    .end local p3    # "position":I
    .local v0, "position":I
    .local v4, "pos":I
    .local v7, "currentPresenceField":I
    .local v8, "currentPresenceFieldOffset":I
    :goto_17
    if-ge v0, v13, :cond_68d

    .line 4878
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    aget-byte v0, v12, v0

    .line 4879
    .end local v2    # "tag":I
    .local v0, "tag":I
    if-gez v0, :cond_28

    .line 4880
    invoke-static {v0, v12, v1, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32(I[BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4881
    iget v0, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    move v5, v1

    goto :goto_2a

    .line 4879
    :cond_28
    move v2, v0

    move v5, v1

    .line 4883
    .end local v0    # "tag":I
    .end local v1    # "position":I
    .restart local v2    # "tag":I
    .local v5, "position":I
    :goto_2a
    ushr-int/lit8 v1, v2, 0x3

    .line 4884
    .local v1, "number":I
    and-int/lit8 v0, v2, 0x7

    .line 4885
    .local v0, "wireType":I
    if-le v1, v3, :cond_38

    .line 4886
    div-int/lit8 v6, v4, 0x3

    invoke-direct {v15, v1, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    move v6, v4

    goto :goto_3d

    .line 4888
    :cond_38
    invoke-direct {v15, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    move v6, v4

    .line 4890
    .end local v4    # "pos":I
    .local v6, "pos":I
    :goto_3d
    move/from16 v16, v1

    .line 4891
    .end local v3    # "oldNumber":I
    .local v16, "oldNumber":I
    const/4 v3, -0x1

    if-ne v6, v3, :cond_52

    .line 4893
    const/4 v3, 0x0

    move v15, v0

    move/from16 v24, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v23, v5

    move/from16 v22, v7

    move-object/from16 v31, v10

    .end local v6    # "pos":I
    .local v3, "pos":I
    goto/16 :goto_62a

    .line 4895
    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    :cond_52
    iget-object v3, v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v4, v6, 0x1

    aget v4, v3, v4

    .line 4896
    .local v4, "typeAndOffset":I
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v3

    .line 4897
    .local v3, "fieldType":I
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v11

    .line 4898
    .local v11, "fieldOffset":J
    move/from16 v17, v2

    .end local v2    # "tag":I
    .local v17, "tag":I
    const/16 v2, 0x11

    move/from16 v18, v4

    .end local v4    # "typeAndOffset":I
    .local v18, "typeAndOffset":I
    if-gt v3, v2, :cond_4ae

    .line 4900
    iget-object v2, v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v19, v6, 0x2

    aget v19, v2, v19

    .line 4901
    .local v19, "presenceMaskAndOffset":I
    ushr-int/lit8 v2, v19, 0x14

    const/4 v4, 0x1

    shl-int v21, v4, v2

    .line 4902
    .local v21, "presenceMask":I
    const v2, 0xfffff

    and-int v2, v19, v2

    .line 4905
    .local v2, "presenceFieldOffset":I
    if-eq v2, v8, :cond_8f

    .line 4906
    const/4 v4, -0x1

    if-eq v8, v4, :cond_84

    .line 4907
    move/from16 p3, v5

    .end local v5    # "position":I
    .restart local p3    # "position":I
    int-to-long v4, v8

    invoke-virtual {v10, v14, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_86

    .line 4906
    .end local p3    # "position":I
    .restart local v5    # "position":I
    :cond_84
    move/from16 p3, v5

    .line 4909
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :goto_86
    move v4, v2

    .line 4910
    .end local v8    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    move v8, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v8    # "currentPresenceFieldOffset":I
    int-to-long v4, v2

    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v7, v4

    .end local v7    # "currentPresenceField":I
    .local v4, "currentPresenceField":I
    goto :goto_91

    .line 4905
    .end local v4    # "currentPresenceField":I
    .end local p3    # "position":I
    .restart local v5    # "position":I
    .restart local v7    # "currentPresenceField":I
    :cond_8f
    move/from16 p3, v5

    .line 4912
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :goto_91
    const/4 v4, 0x5

    packed-switch v3, :pswitch_data_6dc

    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v8, "position":I
    .local v9, "fieldOffset":J
    .local v13, "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v24, "number":I
    .local v25, "currentPresenceFieldOffset":I
    .local v26, "fieldType":I
    .local v27, "tag":I
    .local v30, "typeAndOffset":I
    goto/16 :goto_49f

    .line 5046
    .end local v9    # "fieldOffset":J
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "tag":I
    .end local v30    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_af
    const/4 v4, 0x3

    if-ne v0, v4, :cond_107

    .line 5047
    shl-int/lit8 v4, v1, 0x3

    or-int/lit8 v20, v4, 0x4

    .line 5048
    .local v20, "endTag":I
    nop

    .line 5050
    invoke-direct {v15, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    .line 5049
    move v5, v0

    .end local v0    # "wireType":I
    .local v5, "wireType":I
    move-object v0, v4

    move/from16 v24, v1

    .end local v1    # "number":I
    .restart local v24    # "number":I
    move-object/from16 v1, p2

    move/from16 v4, v17

    move/from16 v17, v2

    .end local v2    # "presenceFieldOffset":I
    .local v4, "tag":I
    .local v17, "presenceFieldOffset":I
    move/from16 v2, p3

    move/from16 v25, v8

    move v8, v3

    .end local v3    # "fieldType":I
    .local v8, "fieldType":I
    .restart local v25    # "currentPresenceFieldOffset":I
    move/from16 v3, p4

    move/from16 v26, v8

    move/from16 v27, v18

    move v8, v4

    .end local v4    # "tag":I
    .end local v18    # "typeAndOffset":I
    .local v8, "tag":I
    .restart local v26    # "fieldType":I
    .local v27, "typeAndOffset":I
    move/from16 v4, v20

    move v13, v5

    move/from16 v18, v8

    move/from16 v8, p3

    .end local v5    # "wireType":I
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v18, "tag":I
    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeGroupField(Landroidx/datastore/preferences/protobuf/Schema;[BIIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5051
    .end local v8    # "position":I
    .local v0, "position":I
    and-int v1, v7, v21

    if-nez v1, :cond_e8

    .line 5052
    iget-object v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f6

    .line 5054
    :cond_e8
    nop

    .line 5058
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5057
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5054
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5061
    :goto_f6
    or-int v7, v7, v21

    .line 5062
    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    .line 5046
    .end local v13    # "wireType":I
    .end local v20    # "endTag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :cond_107
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    move/from16 v30, v27

    move/from16 v27, v18

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    goto/16 :goto_49f

    .line 5036
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_125
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    if-nez v13, :cond_15e

    .line 5037
    move-wide v4, v11

    move-object/from16 v12, p2

    .end local v11    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-static {v12, v8, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 5038
    iget-wide v0, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5039
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v22

    .line 5038
    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v28, v4

    .end local v4    # "fieldOffset":J
    .local v28, "fieldOffset":J
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5041
    or-int v7, v7, v21

    .line 5042
    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v0, v8

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    .line 5036
    .end local v28    # "fieldOffset":J
    .restart local v11    # "fieldOffset":J
    :cond_15e
    move-wide/from16 v28, v11

    move-object/from16 v12, p2

    .end local v11    # "fieldOffset":J
    .restart local v28    # "fieldOffset":J
    move-object v11, v9

    move/from16 v30, v27

    move/from16 v27, v18

    move-object/from16 v18, v10

    move-wide/from16 v9, v28

    goto/16 :goto_49f

    .line 5027
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .end local v28    # "fieldOffset":J
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_16d
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-wide/from16 v28, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    .restart local v28    # "fieldOffset":J
    if-nez v13, :cond_1a0

    .line 5028
    invoke-static {v12, v8, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5029
    .end local v8    # "position":I
    .local v0, "position":I
    iget v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5030
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5029
    move-wide/from16 v2, v28

    .end local v28    # "fieldOffset":J
    .local v2, "fieldOffset":J
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5031
    or-int v7, v7, v21

    .line 5032
    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    .line 5027
    .end local v0    # "position":I
    .end local v2    # "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v28    # "fieldOffset":J
    :cond_1a0
    move-wide/from16 v2, v28

    .end local v28    # "fieldOffset":J
    .restart local v2    # "fieldOffset":J
    move-object v11, v9

    move/from16 v30, v27

    move/from16 v27, v18

    move-object/from16 v18, v10

    move-wide v9, v2

    goto/16 :goto_49f

    .line 5012
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_1ac
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    move-wide v2, v11

    move-object/from16 v12, p2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v2, "fieldOffset":J
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    if-nez v13, :cond_206

    .line 5013
    invoke-static {v12, v8, v9}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5014
    .end local v8    # "position":I
    .local v0, "position":I
    iget v1, v9, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5015
    .local v1, "enumValue":I
    invoke-direct {v15, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v4

    .line 5016
    .local v4, "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    if-eqz v4, :cond_1f1

    invoke-interface {v4, v1}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_1d5

    move/from16 v9, v18

    goto :goto_1f3

    .line 5021
    :cond_1d5
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v5

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move/from16 v9, v18

    .end local v18    # "tag":I
    .local v9, "tag":I
    invoke-virtual {v5, v9, v8}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 5023
    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_17

    .line 5016
    .end local v9    # "tag":I
    .restart local v18    # "tag":I
    :cond_1f1
    move/from16 v9, v18

    .line 5017
    .end local v18    # "tag":I
    .restart local v9    # "tag":I
    :goto_1f3
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5018
    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_17

    .line 5012
    .end local v0    # "position":I
    .end local v1    # "enumValue":I
    .end local v4    # "enumVerifier":Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .end local v9    # "tag":I
    .restart local v8    # "position":I
    .restart local v18    # "tag":I
    :cond_206
    move/from16 v9, v18

    .end local v18    # "tag":I
    .restart local v9    # "tag":I
    move-object/from16 v11, p6

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    .line 5004
    .end local v9    # "tag":I
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .local v1, "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_213
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v9, v17

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-wide v2, v11

    move-object/from16 v12, p2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v2, "fieldOffset":J
    .local v8, "position":I
    .restart local v9    # "tag":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v13, v0, :cond_242

    .line 5005
    move-object/from16 v11, p6

    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeBytes([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5006
    .end local v8    # "position":I
    .local v0, "position":I
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5007
    or-int v7, v7, v21

    .line 5008
    move/from16 v13, p4

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 5004
    .end local v0    # "position":I
    .restart local v8    # "position":I
    :cond_242
    move-object/from16 v11, p6

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    .line 4986
    .end local v9    # "tag":I
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_24d
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v2, "fieldOffset":J
    .local v8, "position":I
    .restart local v9    # "tag":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v13, v0, :cond_297

    .line 4987
    nop

    .line 4989
    invoke-direct {v15, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    .line 4988
    move v5, v13

    move/from16 v13, p4

    .end local v13    # "wireType":I
    .restart local v5    # "wireType":I
    invoke-static {v0, v12, v8, v13, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageField(Landroidx/datastore/preferences/protobuf/Schema;[BIILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4990
    .end local v8    # "position":I
    .local v0, "position":I
    and-int v1, v7, v21

    if-nez v1, :cond_27c

    .line 4991
    iget-object v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_28a

    .line 4993
    :cond_27c
    nop

    .line 4997
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4996
    invoke-static {v1, v4}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4993
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4999
    :goto_28a
    or-int v7, v7, v21

    .line 5000
    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4986
    .end local v0    # "position":I
    .end local v5    # "wireType":I
    .restart local v8    # "position":I
    .restart local v13    # "wireType":I
    :cond_297
    move v5, v13

    move/from16 v13, p4

    .end local v13    # "wireType":I
    .restart local v5    # "wireType":I
    move v13, v5

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    .line 4974
    .end local v5    # "wireType":I
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_2a4
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v2, "fieldOffset":J
    .restart local v5    # "wireType":I
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v5, v0, :cond_2df

    .line 4975
    const/high16 v0, 0x20000000

    move/from16 v1, v27

    .end local v27    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    and-int/2addr v0, v1

    if-nez v0, :cond_2c9

    .line 4976
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeString([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v8    # "position":I
    .local v0, "position":I
    goto :goto_2cd

    .line 4978
    .end local v0    # "position":I
    .restart local v8    # "position":I
    :cond_2c9
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4980
    .end local v8    # "position":I
    .restart local v0    # "position":I
    :goto_2cd
    iget-object v4, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4981
    or-int v7, v7, v21

    .line 4982
    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4974
    .end local v0    # "position":I
    .end local v1    # "typeAndOffset":I
    .restart local v8    # "position":I
    .restart local v27    # "typeAndOffset":I
    :cond_2df
    move/from16 v1, v27

    .end local v27    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    move/from16 v30, v1

    move v13, v5

    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v2

    goto/16 :goto_49f

    .line 4966
    .end local v5    # "wireType":I
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .local v0, "wireType":I
    .local v1, "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_2eb
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v1, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    .end local v0    # "wireType":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v1, "typeAndOffset":I
    .local v2, "fieldOffset":J
    .restart local v5    # "wireType":I
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    if-nez v5, :cond_328

    .line 4967
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4968
    .end local v8    # "position":I
    .local v0, "position":I
    move/from16 p3, v0

    move/from16 v27, v1

    .end local v0    # "position":I
    .end local v1    # "typeAndOffset":I
    .restart local v27    # "typeAndOffset":I
    .restart local p3    # "position":I
    iget-wide v0, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v28, 0x0

    cmp-long v0, v0, v28

    if-eqz v0, :cond_315

    const/4 v4, 0x1

    goto :goto_316

    :cond_315
    const/4 v4, 0x0

    :goto_316
    invoke-static {v14, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4969
    or-int v7, v7, v21

    .line 4970
    move/from16 v0, p3

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4966
    .end local v27    # "typeAndOffset":I
    .end local p3    # "position":I
    .restart local v1    # "typeAndOffset":I
    .restart local v8    # "position":I
    :cond_328
    move/from16 v27, v1

    .end local v1    # "typeAndOffset":I
    .restart local v27    # "typeAndOffset":I
    move v13, v5

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    .line 4958
    .end local v5    # "wireType":I
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .local v1, "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_334
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v2, "fieldOffset":J
    .restart local v5    # "wireType":I
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    if-ne v5, v4, :cond_362

    .line 4959
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4960
    add-int/lit8 v0, v8, 0x4

    .line 4961
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4962
    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4958
    .end local v0    # "position":I
    .restart local v8    # "position":I
    :cond_362
    move v13, v5

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    .line 4949
    .end local v5    # "wireType":I
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_36c
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v2, "fieldOffset":J
    .restart local v5    # "wireType":I
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3a9

    .line 4950
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v22

    move-object v0, v10

    move/from16 v4, v27

    .end local v27    # "typeAndOffset":I
    .local v4, "typeAndOffset":I
    move-object/from16 v1, p1

    move-wide/from16 v28, v2

    .end local v2    # "fieldOffset":J
    .restart local v28    # "fieldOffset":J
    move/from16 v30, v4

    move v13, v5

    .end local v4    # "typeAndOffset":I
    .end local v5    # "wireType":I
    .restart local v13    # "wireType":I
    .restart local v30    # "typeAndOffset":I
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4951
    add-int/lit8 v0, v8, 0x8

    .line 4952
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4953
    move/from16 v13, p4

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4949
    .end local v0    # "position":I
    .end local v13    # "wireType":I
    .end local v28    # "fieldOffset":J
    .end local v30    # "typeAndOffset":I
    .restart local v2    # "fieldOffset":J
    .restart local v5    # "wireType":I
    .restart local v8    # "position":I
    .restart local v27    # "typeAndOffset":I
    :cond_3a9
    move-wide/from16 v28, v2

    move v13, v5

    move/from16 v30, v27

    .end local v2    # "fieldOffset":J
    .end local v5    # "wireType":I
    .end local v27    # "typeAndOffset":I
    .restart local v13    # "wireType":I
    .restart local v28    # "fieldOffset":J
    .restart local v30    # "typeAndOffset":I
    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide/from16 v9, v28

    goto/16 :goto_49f

    .line 4940
    .end local v9    # "tag":I
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v28    # "fieldOffset":J
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_3b6
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-wide/from16 v28, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v9    # "tag":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v28    # "fieldOffset":J
    .restart local v30    # "typeAndOffset":I
    if-nez v13, :cond_3e6

    .line 4941
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint32([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4942
    .end local v8    # "position":I
    .local v0, "position":I
    iget v1, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->int1:I

    move-wide/from16 v4, v28

    .end local v28    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4943
    or-int v7, v7, v21

    .line 4944
    move/from16 v13, p4

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4940
    .end local v0    # "position":I
    .end local v4    # "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v28    # "fieldOffset":J
    :cond_3e6
    move-wide/from16 v4, v28

    .end local v28    # "fieldOffset":J
    .restart local v4    # "fieldOffset":J
    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v4

    goto/16 :goto_49f

    .line 4931
    .end local v4    # "fieldOffset":J
    .end local v9    # "tag":I
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_3ef
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-wide v4, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .restart local v4    # "fieldOffset":J
    .local v8, "position":I
    .restart local v9    # "tag":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v30    # "typeAndOffset":I
    if-nez v13, :cond_42d

    .line 4932
    invoke-static {v12, v8, v11}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeVarint64([BILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 4933
    iget-wide v2, v11, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v22, v2

    move-wide v2, v4

    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v4

    .end local v4    # "fieldOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "fieldOffset":J
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v27, "tag":I
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4934
    or-int v7, v7, v21

    .line 4935
    move/from16 v13, p4

    move v4, v6

    move v0, v8

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4931
    .end local v18    # "unsafe":Lsun/misc/Unsafe;
    .end local v27    # "tag":I
    .restart local v4    # "fieldOffset":J
    .local v9, "tag":I
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :cond_42d
    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v4

    .end local v4    # "fieldOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "fieldOffset":J
    .restart local v18    # "unsafe":Lsun/misc/Unsafe;
    .restart local v27    # "tag":I
    goto/16 :goto_49f

    .line 4922
    .end local v9    # "fieldOffset":J
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "tag":I
    .end local v30    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_434
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v9    # "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "tag":I
    .restart local v30    # "typeAndOffset":I
    if-ne v13, v4, :cond_49f

    .line 4923
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v9, v10, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 4924
    add-int/lit8 v0, v8, 0x4

    .line 4925
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4926
    move/from16 v13, p4

    move v4, v6

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    .line 4914
    .end local v9    # "fieldOffset":J
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "tag":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_469
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v9    # "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "tag":I
    .restart local v30    # "typeAndOffset":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_49f

    .line 4915
    invoke-static {v12, v8}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v9, v10, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 4916
    add-int/lit8 v0, v8, 0x8

    .line 4917
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4918
    move/from16 v13, p4

    move v4, v6

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    .line 5068
    .end local v0    # "position":I
    .end local v17    # "presenceFieldOffset":I
    .end local v19    # "presenceMaskAndOffset":I
    .end local v21    # "presenceMask":I
    .restart local v8    # "position":I
    :cond_49f
    :goto_49f
    move/from16 v19, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move v15, v13

    move-object/from16 v31, v18

    move/from16 v8, v25

    move/from16 v18, v27

    goto/16 :goto_62a

    .end local v9    # "fieldOffset":J
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "tag":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v3    # "fieldType":I
    .local v5, "position":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    :cond_4ae
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move v8, v5

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v5    # "position":I
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v11    # "fieldOffset":J
    .end local v17    # "tag":I
    .local v8, "position":I
    .restart local v9    # "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "tag":I
    .restart local v30    # "typeAndOffset":I
    const/16 v0, 0x1b

    move/from16 v5, v26

    .end local v26    # "fieldType":I
    .local v5, "fieldType":I
    if-ne v5, v0, :cond_52d

    .line 5070
    const/4 v0, 0x2

    if-ne v13, v0, :cond_51d

    .line 5071
    move-object/from16 v4, v18

    .end local v18    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v4, v14, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 5072
    .local v0, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4ef

    .line 5073
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 5074
    .local v1, "size":I
    if-nez v1, :cond_4e3

    const/16 v2, 0xa

    goto :goto_4e5

    :cond_4e3
    mul-int/lit8 v2, v1, 0x2

    .line 5075
    :goto_4e5
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5077
    invoke-virtual {v4, v14, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v17, v0

    goto :goto_4f1

    .line 5072
    .end local v1    # "size":I
    :cond_4ef
    move-object/from16 v17, v0

    .line 5079
    .end local v0    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .local v17, "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    :goto_4f1
    nop

    .line 5081
    invoke-direct {v15, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    .line 5080
    move/from16 v1, v27

    move-object/from16 v2, p2

    move v3, v8

    move-object/from16 v18, v4

    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .restart local v18    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v4, p4

    move-wide/from16 v28, v9

    move v9, v5

    .end local v5    # "fieldType":I
    .local v9, "fieldType":I
    .restart local v28    # "fieldOffset":J
    move-object/from16 v5, v17

    move/from16 v19, v6

    .end local v6    # "pos":I
    .local v19, "pos":I
    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeMessageList(Landroidx/datastore/preferences/protobuf/Schema;I[BIILandroidx/datastore/preferences/protobuf/Internal$ProtobufList;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5082
    .end local v8    # "position":I
    .local v0, "position":I
    move/from16 v13, p4

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v4, v19

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    .line 5070
    .end local v0    # "position":I
    .end local v17    # "list":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<*>;"
    .end local v19    # "pos":I
    .end local v28    # "fieldOffset":J
    .restart local v5    # "fieldType":I
    .restart local v6    # "pos":I
    .restart local v8    # "position":I
    .local v9, "fieldOffset":J
    :cond_51d
    move/from16 v19, v6

    move-wide/from16 v28, v9

    move v9, v5

    .end local v5    # "fieldType":I
    .end local v6    # "pos":I
    .local v9, "fieldType":I
    .restart local v19    # "pos":I
    .restart local v28    # "fieldOffset":J
    move/from16 v22, v7

    move/from16 v23, v8

    move v15, v13

    move-object/from16 v31, v18

    move/from16 v18, v27

    goto/16 :goto_5e3

    .line 5084
    .end local v19    # "pos":I
    .end local v28    # "fieldOffset":J
    .restart local v5    # "fieldType":I
    .restart local v6    # "pos":I
    .local v9, "fieldOffset":J
    :cond_52d
    move/from16 v19, v6

    move-wide/from16 v28, v9

    move v9, v5

    .end local v5    # "fieldType":I
    .end local v6    # "pos":I
    .local v9, "fieldType":I
    .restart local v19    # "pos":I
    .restart local v28    # "fieldOffset":J
    const/16 v0, 0x31

    if-gt v9, v0, :cond_591

    .line 5086
    move v10, v8

    .line 5087
    .local v10, "oldPosition":I
    move/from16 v6, v30

    .end local v30    # "typeAndOffset":I
    .local v6, "typeAndOffset":I
    int-to-long v4, v6

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v8

    move-wide/from16 v20, v4

    const/16 v17, -0x1

    move/from16 v4, p4

    move/from16 v5, v27

    move/from16 v17, v6

    .end local v6    # "typeAndOffset":I
    .local v17, "typeAndOffset":I
    move/from16 v6, v24

    move/from16 v22, v7

    .end local v7    # "currentPresenceField":I
    .local v22, "currentPresenceField":I
    move v7, v13

    move/from16 v23, v8

    move/from16 v26, v9

    move/from16 v9, v27

    .end local v8    # "position":I
    .end local v27    # "tag":I
    .local v9, "tag":I
    .local v23, "position":I
    .restart local v26    # "fieldType":I
    move/from16 v8, v19

    move v15, v10

    move-object/from16 v31, v18

    move-wide/from16 v27, v28

    move/from16 v18, v9

    .end local v9    # "tag":I
    .end local v10    # "oldPosition":I
    .end local v28    # "fieldOffset":J
    .local v15, "oldPosition":I
    .local v18, "tag":I
    .local v27, "fieldOffset":J
    .local v31, "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v9, v20

    move/from16 v11, v26

    move/from16 v32, v13

    .end local v13    # "wireType":I
    .local v32, "wireType":I
    move-wide/from16 v12, v27

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5101
    .end local v23    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v15, :cond_589

    .line 5102
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v8, v25

    move-object/from16 v10, v31

    goto/16 :goto_17

    .line 5104
    .end local v15    # "oldPosition":I
    :cond_589
    move/from16 v23, v0

    move/from16 v8, v25

    move/from16 v15, v32

    goto/16 :goto_62a

    .end local v0    # "position":I
    .end local v17    # "typeAndOffset":I
    .end local v22    # "currentPresenceField":I
    .end local v26    # "fieldType":I
    .end local v31    # "unsafe":Lsun/misc/Unsafe;
    .end local v32    # "wireType":I
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "position":I
    .local v9, "fieldType":I
    .restart local v13    # "wireType":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v27, "tag":I
    .restart local v28    # "fieldOffset":J
    .restart local v30    # "typeAndOffset":I
    :cond_591
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v26, v9

    move/from16 v32, v13

    move-object/from16 v31, v18

    move/from16 v18, v27

    move-wide/from16 v27, v28

    move/from16 v17, v30

    .end local v7    # "currentPresenceField":I
    .end local v8    # "position":I
    .end local v9    # "fieldType":I
    .end local v13    # "wireType":I
    .end local v28    # "fieldOffset":J
    .end local v30    # "typeAndOffset":I
    .restart local v17    # "typeAndOffset":I
    .local v18, "tag":I
    .restart local v22    # "currentPresenceField":I
    .restart local v23    # "position":I
    .restart local v26    # "fieldType":I
    .local v27, "fieldOffset":J
    .restart local v31    # "unsafe":Lsun/misc/Unsafe;
    .restart local v32    # "wireType":I
    const/16 v0, 0x32

    move/from16 v14, v26

    .end local v26    # "fieldType":I
    .local v14, "fieldType":I
    if-ne v14, v0, :cond_5e6

    .line 5105
    move/from16 v15, v32

    const/4 v0, 0x2

    .end local v32    # "wireType":I
    .local v15, "wireType":I
    if-ne v15, v0, :cond_5e3

    .line 5106
    move/from16 v9, v23

    .line 5107
    .local v9, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v27

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5108
    .end local v23    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v9, :cond_5de

    .line 5109
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v8, v25

    move-object/from16 v10, v31

    goto/16 :goto_17

    .line 5111
    .end local v9    # "oldPosition":I
    :cond_5de
    move/from16 v23, v0

    move/from16 v8, v25

    goto :goto_62a

    .line 5133
    .end local v0    # "position":I
    .end local v14    # "fieldType":I
    .end local v15    # "wireType":I
    .end local v17    # "typeAndOffset":I
    .end local v22    # "currentPresenceField":I
    .end local v31    # "unsafe":Lsun/misc/Unsafe;
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "position":I
    .restart local v13    # "wireType":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v27, "tag":I
    :cond_5e3
    :goto_5e3
    move/from16 v8, v25

    .end local v7    # "currentPresenceField":I
    .end local v8    # "position":I
    .end local v13    # "wireType":I
    .end local v27    # "tag":I
    .restart local v15    # "wireType":I
    .local v18, "tag":I
    .restart local v22    # "currentPresenceField":I
    .restart local v23    # "position":I
    .restart local v31    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_62a

    .line 5113
    .end local v15    # "wireType":I
    .restart local v14    # "fieldType":I
    .restart local v17    # "typeAndOffset":I
    .local v27, "fieldOffset":J
    .restart local v32    # "wireType":I
    :cond_5e6
    move/from16 v15, v32

    .end local v32    # "wireType":I
    .restart local v15    # "wireType":I
    move/from16 v13, v23

    .line 5114
    .local v13, "oldPosition":I
    nop

    .line 5115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v24

    move v7, v15

    move/from16 v8, v17

    move v9, v14

    move-wide/from16 v10, v27

    move/from16 v12, v19

    move/from16 v26, v14

    move v14, v13

    .end local v13    # "oldPosition":I
    .local v14, "oldPosition":I
    .restart local v26    # "fieldType":I
    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILandroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5128
    .end local v23    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v14, :cond_626

    .line 5129
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v8, v25

    move-object/from16 v10, v31

    goto/16 :goto_17

    .line 5128
    :cond_626
    move/from16 v23, v0

    move/from16 v8, v25

    .line 5133
    .end local v0    # "position":I
    .end local v14    # "oldPosition":I
    .end local v17    # "typeAndOffset":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "fieldOffset":J
    .local v8, "currentPresenceFieldOffset":I
    .restart local v23    # "position":I
    :goto_62a
    move/from16 v9, p5

    move/from16 v10, v18

    .end local v18    # "tag":I
    .local v10, "tag":I
    if-ne v10, v9, :cond_641

    if-eqz v9, :cond_641

    .line 5134
    move-object/from16 v11, p0

    move-object/from16 v12, p6

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v0, v23

    goto/16 :goto_696

    .line 5137
    :cond_641
    move-object/from16 v11, p0

    iget-boolean v0, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_665

    move-object/from16 v12, p6

    iget-object v0, v12, Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 5138
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_667

    .line 5139
    iget-object v5, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    iget-object v6, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v23    # "position":I
    .restart local v0    # "position":I
    goto :goto_679

    .line 5137
    .end local v0    # "position":I
    .restart local v23    # "position":I
    :cond_665
    move-object/from16 v12, p6

    .line 5144
    :cond_667
    nop

    .line 5145
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5144
    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILandroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5147
    .end local v15    # "wireType":I
    .end local v23    # "position":I
    .end local v24    # "number":I
    .restart local v0    # "position":I
    :goto_679
    move-object/from16 v14, p1

    move/from16 v13, p4

    move v2, v10

    move-object v15, v11

    move/from16 v3, v16

    move/from16 v4, v19

    move/from16 v7, v22

    move-object/from16 v10, v31

    move v11, v9

    move-object v9, v12

    move-object/from16 v12, p2

    goto/16 :goto_17

    .line 4877
    .end local v16    # "oldNumber":I
    .end local v19    # "pos":I
    .end local v22    # "currentPresenceField":I
    .end local v31    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "tag":I
    .local v3, "oldNumber":I
    .local v4, "pos":I
    .restart local v7    # "currentPresenceField":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    :cond_68d
    move/from16 v22, v7

    move/from16 v25, v8

    move-object v12, v9

    move-object/from16 v31, v10

    move v9, v11

    move-object v11, v15

    .line 5148
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v31    # "unsafe":Lsun/misc/Unsafe;
    :goto_696
    const/4 v1, -0x1

    if-eq v8, v1, :cond_6a2

    .line 5149
    int-to-long v5, v8

    move-object/from16 v1, p1

    move-object/from16 v10, v31

    .end local v31    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v10, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6a6

    .line 5148
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v31    # "unsafe":Lsun/misc/Unsafe;
    :cond_6a2
    move-object/from16 v1, p1

    move-object/from16 v10, v31

    .line 5151
    .end local v31    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :goto_6a6
    const/4 v5, 0x0

    .line 5152
    .local v5, "unknownFields":Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    iget v6, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .local v6, "i":I
    :goto_6a9
    iget v13, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v6, v13, :cond_6bd

    .line 5153
    iget-object v13, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v13, v13, v6

    iget-object v14, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 5154
    invoke-direct {v11, v1, v13, v5, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    move-object v5, v13

    check-cast v5, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 5152
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a9

    .line 5160
    .end local v6    # "i":I
    :cond_6bd
    if-eqz v5, :cond_6c4

    .line 5161
    iget-object v6, v11, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 5162
    invoke-virtual {v6, v1, v5}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5164
    :cond_6c4
    if-nez v9, :cond_6d0

    .line 5165
    move/from16 v6, p4

    if-ne v0, v6, :cond_6cb

    goto :goto_6d6

    .line 5166
    :cond_6cb
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    .line 5169
    :cond_6d0
    move/from16 v6, p4

    if-gt v0, v6, :cond_6d7

    if-ne v2, v9, :cond_6d7

    .line 5173
    :goto_6d6
    return v0

    .line 5170
    :cond_6d7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    :pswitch_data_6dc
    .packed-switch 0x0
        :pswitch_469
        :pswitch_434
        :pswitch_3ef
        :pswitch_3ef
        :pswitch_3b6
        :pswitch_36c
        :pswitch_334
        :pswitch_2eb
        :pswitch_2a4
        :pswitch_24d
        :pswitch_213
        :pswitch_3b6
        :pswitch_1ac
        :pswitch_334
        :pswitch_36c
        :pswitch_16d
        :pswitch_125
        :pswitch_af
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 5
    .param p2, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2531
    .local p0, "this":Landroidx/datastore/preferences/protobuf/MessageSchema;, "Landroidx/datastore/preferences/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Writer;->fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    .line 2532
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto :goto_17

    .line 2534
    :cond_c
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_14

    .line 2535
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto :goto_17

    .line 2537
    :cond_14
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 2540
    :goto_17
    return-void
.end method
