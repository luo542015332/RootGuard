.class public final Lokio/internal/-ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0080\u0008\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\r\u0010\u0013\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\u0015\u0010\u0014\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0080\u0008\u001a-\u0010\u0016\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000c*\u00020\u0012H\u0080\u0008\u001a\r\u0010\u001d\u001a\u00020\u000c*\u00020\u0012H\u0080\u0008\u001a\r\u0010\u001e\u001a\u00020\u000c*\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u000c2\u0006\u0010!\u001a\u00020\tH\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u000c2\u0006\u0010!\u001a\u00020\u000cH\u0080\u0008\u001a\u0017\u0010\"\u001a\u00020 *\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010#H\u0080\u0008\u001a\u0015\u0010$\u001a\u00020%*\u00020\u000c2\u0006\u0010&\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010\'\u001a\u00020\u0007*\u00020\u000cH\u0080\u0008\u001a\r\u0010(\u001a\u00020\u0007*\u00020\u000cH\u0080\u0008\u001a\r\u0010)\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\u001d\u0010*\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010,\u001a\u00020\t*\u00020\u000cH\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a-\u0010.\u001a\u00020 *\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a-\u0010.\u001a\u00020 *\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u00100\u001a\u00020 *\u00020\u000c2\u0006\u00101\u001a\u00020\tH\u0080\u0008\u001a\u0015\u00100\u001a\u00020 *\u00020\u000c2\u0006\u00101\u001a\u00020\u000cH\u0080\u0008\u001a\u001d\u00102\u001a\u00020\u000c*\u00020\u000c2\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00105\u001a\u00020\u000c*\u00020\u000cH\u0080\u0008\u001a\r\u00106\u001a\u00020\u000c*\u00020\u000cH\u0080\u0008\u001a\r\u00107\u001a\u00020\t*\u00020\u000cH\u0080\u0008\u001a\u001d\u00108\u001a\u00020\u000c*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\r\u0010:\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a$\u0010;\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006>"
    }
    d2 = {
        "HEX_DIGIT_CHARS",
        "",
        "getHEX_DIGIT_CHARS$annotations",
        "()V",
        "getHEX_DIGIT_CHARS",
        "()[C",
        "codePointIndexToCharIndex",
        "",
        "s",
        "",
        "codePointCount",
        "commonOf",
        "Lokio/ByteString;",
        "data",
        "decodeHexDigit",
        "c",
        "",
        "commonBase64",
        "",
        "commonBase64Url",
        "commonCompareTo",
        "other",
        "commonCopyInto",
        "",
        "offset",
        "target",
        "targetOffset",
        "byteCount",
        "commonDecodeBase64",
        "commonDecodeHex",
        "commonEncodeUtf8",
        "commonEndsWith",
        "",
        "suffix",
        "commonEquals",
        "",
        "commonGetByte",
        "",
        "pos",
        "commonGetSize",
        "commonHashCode",
        "commonHex",
        "commonIndexOf",
        "fromIndex",
        "commonInternalArray",
        "commonLastIndexOf",
        "commonRangeEquals",
        "otherOffset",
        "commonStartsWith",
        "prefix",
        "commonSubstring",
        "beginIndex",
        "endIndex",
        "commonToAsciiLowercase",
        "commonToAsciiUppercase",
        "commonToByteArray",
        "commonToByteString",
        "commonToString",
        "commonUtf8",
        "commonWrite",
        "buffer",
        "Lokio/Buffer;",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 3
    .param p0, "s"    # [B
    .param p1, "codePointCount"    # I

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 2
    .param p0, "c"    # C

    .line 1
    invoke-static {p0}, Lokio/internal/-ByteString;->decodeHexDigit(C)I

    move-result v0

    return v0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 32
    .param p0, "s"    # [B
    .param p1, "codePointCount"    # I

    .line 346
    move/from16 v0, p1

    const/4 v1, 0x0

    .line 347
    .local v1, "charCount":I
    const/4 v2, 0x0

    .line 348
    .local v2, "j":I
    const/4 v3, 0x0

    move-object/from16 v4, p0

    .local v3, "beginIndex$iv":I
    array-length v5, v4

    .local v5, "endIndex$iv":I
    move-object/from16 v6, p0

    .local v6, "$this$processUtf8CodePoints$iv":[B
    const/4 v7, 0x0

    .line 381
    .local v7, "$i$f$processUtf8CodePoints":I
    move v8, v3

    .line 382
    .local v8, "index$iv":I
    :cond_c
    :goto_c
    if-ge v8, v5, :cond_83e

    .line 383
    aget-byte v9, v6, v8

    .line 384
    .local v9, "b0$iv":B
    nop

    .line 385
    const/16 v10, 0xa0

    const/16 v11, 0x7f

    const/16 v12, 0x20

    const/16 v14, 0xd

    const/16 v13, 0xa

    const/high16 v15, 0x10000

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-ltz v9, :cond_b5

    .line 387
    move/from16 v19, v9

    .local v19, "c":I
    const/16 v20, 0x0

    .line 349
    .local v20, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .local v21, "j":I
    if-ne v2, v0, :cond_2e

    .line 350
    return v1

    .line 353
    :cond_2e
    move/from16 v2, v19

    .end local v19    # "c":I
    .local v2, "c":I
    if-eq v2, v13, :cond_54

    if-eq v2, v14, :cond_54

    const/16 v19, 0x0

    .line 388
    .local v19, "$i$f$isIsoControl":I
    if-ltz v2, :cond_3d

    if-ge v2, v12, :cond_3d

    move/from16 v22, v18

    goto :goto_3f

    :cond_3d
    move/from16 v22, v17

    :goto_3f
    if-nez v22, :cond_50

    if-gt v11, v2, :cond_48

    if-ge v2, v10, :cond_48

    move/from16 v22, v18

    goto :goto_4a

    :cond_48
    move/from16 v22, v17

    :goto_4a
    if-eqz v22, :cond_4d

    goto :goto_50

    :cond_4d
    move/from16 v19, v17

    goto :goto_52

    :cond_50
    :goto_50
    move/from16 v19, v18

    .line 353
    .end local v19    # "$i$f$isIsoControl":I
    :goto_52
    if-nez v19, :cond_59

    .line 354
    :cond_54
    const v10, 0xfffd

    if-ne v2, v10, :cond_5b

    .line 356
    :cond_59
    const/4 v10, -0x1

    return v10

    .line 359
    :cond_5b
    if-ge v2, v15, :cond_60

    move/from16 v10, v18

    goto :goto_62

    :cond_60
    move/from16 v10, v16

    :goto_62
    add-int/2addr v1, v10

    .line 360
    nop

    .line 387
    .end local v2    # "c":I
    .end local v20    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .line 389
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v21

    .line 392
    .end local v21    # "j":I
    .local v2, "j":I
    :goto_69
    if-ge v8, v5, :cond_c

    aget-byte v10, v6, v8

    if-ltz v10, :cond_c

    .line 393
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index$iv":I
    .local v10, "index$iv":I
    aget-byte v8, v6, v8

    .local v8, "c":I
    const/16 v20, 0x0

    .line 349
    .restart local v20    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .restart local v21    # "j":I
    if-ne v2, v0, :cond_7a

    .line 350
    return v1

    .line 353
    :cond_7a
    if-eq v8, v13, :cond_9f

    if-eq v8, v14, :cond_9f

    const/4 v2, 0x0

    .line 394
    .local v2, "$i$f$isIsoControl":I
    if-ltz v8, :cond_86

    if-ge v8, v12, :cond_86

    move/from16 v22, v18

    goto :goto_88

    :cond_86
    move/from16 v22, v17

    :goto_88
    if-nez v22, :cond_9b

    if-gt v11, v8, :cond_93

    const/16 v11, 0xa0

    if-ge v8, v11, :cond_93

    move/from16 v11, v18

    goto :goto_95

    :cond_93
    move/from16 v11, v17

    :goto_95
    if-eqz v11, :cond_98

    goto :goto_9b

    :cond_98
    move/from16 v2, v17

    goto :goto_9d

    :cond_9b
    :goto_9b
    move/from16 v2, v18

    .line 353
    .end local v2    # "$i$f$isIsoControl":I
    :goto_9d
    if-nez v2, :cond_a4

    .line 354
    :cond_9f
    const v2, 0xfffd

    if-ne v8, v2, :cond_a6

    .line 356
    :cond_a4
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_a6
    if-ge v8, v15, :cond_ab

    move/from16 v2, v18

    goto :goto_ad

    :cond_ab
    move/from16 v2, v16

    :goto_ad
    add-int/2addr v1, v2

    .line 360
    nop

    .line 393
    .end local v8    # "c":I
    .end local v20    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    move v8, v10

    move/from16 v2, v21

    const/16 v11, 0x7f

    goto :goto_69

    .line 395
    .end local v10    # "index$iv":I
    .end local v21    # "j":I
    .local v2, "j":I
    .local v8, "index$iv":I
    :cond_b5
    const/4 v10, 0x5

    .local v10, "other$iv$iv":I
    move v11, v9

    .local v11, "$this$shr$iv$iv":B
    const/16 v20, 0x0

    .line 396
    .local v20, "$i$f$shr":I
    shr-int v10, v11, v10

    .line 395
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$shr$iv$iv":B
    .end local v20    # "$i$f$shr":I
    const/4 v11, -0x2

    if-ne v10, v11, :cond_23b

    .line 397
    move-object v10, v6

    .local v10, "$this$process2Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 398
    .local v11, "$i$f$process2Utf8Bytes":I
    add-int/lit8 v15, v8, 0x1

    if-gt v5, v15, :cond_113

    .line 399
    const v15, 0xfffd

    .local v15, "it$iv":I
    const/16 v21, 0x0

    .line 397
    .local v21, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v23, v15

    .local v23, "c":I
    const/16 v24, 0x0

    .line 349
    .local v24, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v25, v2, 0x1

    .end local v2    # "j":I
    .local v25, "j":I
    if-ne v2, v0, :cond_d2

    .line 350
    return v1

    .line 353
    :cond_d2
    move/from16 v2, v23

    .end local v23    # "c":I
    .local v2, "c":I
    if-eq v2, v13, :cond_f7

    if-eq v2, v14, :cond_f7

    const/4 v13, 0x0

    .line 400
    .local v13, "$i$f$isIsoControl":I
    if-ltz v2, :cond_e0

    if-ge v2, v12, :cond_e0

    move/from16 v12, v18

    goto :goto_e2

    :cond_e0
    move/from16 v12, v17

    :goto_e2
    if-nez v12, :cond_f3

    const/16 v12, 0x7f

    if-gt v12, v2, :cond_ef

    const/16 v12, 0xa0

    if-ge v2, v12, :cond_ef

    move/from16 v12, v18

    goto :goto_f1

    :cond_ef
    move/from16 v12, v17

    :goto_f1
    if-eqz v12, :cond_f5

    :cond_f3
    move/from16 v17, v18

    .line 353
    .end local v13    # "$i$f$isIsoControl":I
    :cond_f5
    if-nez v17, :cond_fc

    .line 354
    :cond_f7
    const v12, 0xfffd

    if-ne v2, v12, :cond_fe

    .line 356
    :cond_fc
    const/4 v12, -0x1

    return v12

    .line 359
    :cond_fe
    const/high16 v12, 0x10000

    if-ge v2, v12, :cond_104

    move/from16 v16, v18

    :cond_104
    add-int v1, v1, v16

    .line 360
    nop

    .line 397
    .end local v2    # "c":I
    .end local v24    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v15    # "it$iv":I
    .end local v21    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 399
    nop

    .line 401
    move/from16 v27, v3

    move/from16 v16, v18

    move/from16 v2, v25

    goto/16 :goto_233

    .line 404
    .end local v25    # "j":I
    .local v2, "j":I
    :cond_113
    aget-byte v15, v10, v8

    .line 405
    .local v15, "b0$iv$iv":B
    add-int/lit8 v23, v8, 0x1

    aget-byte v12, v10, v23

    .line 406
    .local v12, "b1$iv$iv":B
    const/16 v23, 0x0

    .line 407
    .local v23, "$i$f$isUtf8Continuation":I
    const/16 v25, 0xc0

    .local v25, "other$iv$iv$iv$iv":I
    move/from16 v26, v12

    .local v26, "$this$and$iv$iv$iv$iv":B
    const/16 v27, 0x0

    .line 408
    .local v27, "$i$f$and":I
    and-int v14, v26, v25

    .line 407
    .end local v25    # "other$iv$iv$iv$iv":I
    .end local v26    # "$this$and$iv$iv$iv$iv":B
    .end local v27    # "$i$f$and":I
    const/16 v13, 0x80

    if-ne v14, v13, :cond_12a

    move/from16 v13, v18

    goto :goto_12c

    :cond_12a
    move/from16 v13, v17

    .line 406
    .end local v23    # "$i$f$isUtf8Continuation":I
    :goto_12c
    if-nez v13, :cond_186

    .line 409
    const v13, 0xfffd

    .local v13, "it$iv":I
    const/4 v14, 0x0

    .line 397
    .local v14, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v21, v13

    .local v21, "c":I
    const/16 v23, 0x0

    .line 349
    .local v23, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .local v26, "j":I
    if-ne v2, v0, :cond_13b

    .line 350
    return v1

    .line 353
    :cond_13b
    move/from16 v27, v3

    move/from16 v2, v21

    const/16 v3, 0xa

    .end local v3    # "beginIndex$iv":I
    .end local v21    # "c":I
    .local v2, "c":I
    .local v27, "beginIndex$iv":I
    if-eq v2, v3, :cond_16c

    const/16 v3, 0xd

    if-eq v2, v3, :cond_16c

    const/4 v3, 0x0

    .line 410
    .local v3, "$i$f$isIsoControl":I
    if-ltz v2, :cond_153

    move/from16 v21, v3

    const/16 v3, 0x20

    .end local v3    # "$i$f$isIsoControl":I
    .local v21, "$i$f$isIsoControl":I
    if-ge v2, v3, :cond_155

    move/from16 v3, v18

    goto :goto_157

    .end local v21    # "$i$f$isIsoControl":I
    .restart local v3    # "$i$f$isIsoControl":I
    :cond_153
    move/from16 v21, v3

    .end local v3    # "$i$f$isIsoControl":I
    .restart local v21    # "$i$f$isIsoControl":I
    :cond_155
    move/from16 v3, v17

    :goto_157
    if-nez v3, :cond_168

    const/16 v3, 0x7f

    if-gt v3, v2, :cond_164

    const/16 v3, 0xa0

    if-ge v2, v3, :cond_164

    move/from16 v3, v18

    goto :goto_166

    :cond_164
    move/from16 v3, v17

    :goto_166
    if-eqz v3, :cond_16a

    :cond_168
    move/from16 v17, v18

    .line 353
    .end local v21    # "$i$f$isIsoControl":I
    :cond_16a
    if-nez v17, :cond_171

    .line 354
    :cond_16c
    const v3, 0xfffd

    if-ne v2, v3, :cond_173

    .line 356
    :cond_171
    const/4 v3, -0x1

    return v3

    .line 359
    :cond_173
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_179

    move/from16 v16, v18

    :cond_179
    add-int v1, v1, v16

    .line 360
    nop

    .line 397
    .end local v2    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 409
    nop

    .line 411
    move/from16 v16, v18

    move/from16 v2, v26

    goto/16 :goto_233

    .line 416
    .end local v26    # "j":I
    .end local v27    # "beginIndex$iv":I
    .local v2, "j":I
    .local v3, "beginIndex$iv":I
    :cond_186
    move/from16 v27, v3

    .line 417
    .end local v3    # "beginIndex$iv":I
    .restart local v27    # "beginIndex$iv":I
    nop

    .line 416
    xor-int/lit16 v3, v12, 0xf80

    .line 418
    shl-int/lit8 v13, v15, 0x6

    .line 416
    xor-int/2addr v3, v13

    .line 414
    nop

    .line 421
    .local v3, "codePoint$iv$iv":I
    nop

    .line 422
    const/16 v13, 0x80

    if-ge v3, v13, :cond_1e5

    .line 423
    const v13, 0xfffd

    .restart local v13    # "it$iv":I
    const/4 v14, 0x0

    .line 397
    .restart local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v21, v13

    .local v21, "c":I
    const/16 v23, 0x0

    .line 349
    .restart local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_1a1

    .line 350
    return v1

    .line 353
    :cond_1a1
    move/from16 v2, v21

    const/16 v4, 0xa

    .end local v21    # "c":I
    .local v2, "c":I
    if-eq v2, v4, :cond_1d0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1d0

    const/4 v4, 0x0

    .line 424
    .local v4, "$i$f$isIsoControl":I
    if-ltz v2, :cond_1b7

    move/from16 v21, v4

    const/16 v4, 0x20

    .end local v4    # "$i$f$isIsoControl":I
    .local v21, "$i$f$isIsoControl":I
    if-ge v2, v4, :cond_1b9

    move/from16 v4, v18

    goto :goto_1bb

    .end local v21    # "$i$f$isIsoControl":I
    .restart local v4    # "$i$f$isIsoControl":I
    :cond_1b7
    move/from16 v21, v4

    .end local v4    # "$i$f$isIsoControl":I
    .restart local v21    # "$i$f$isIsoControl":I
    :cond_1b9
    move/from16 v4, v17

    :goto_1bb
    if-nez v4, :cond_1cc

    const/16 v4, 0x7f

    if-gt v4, v2, :cond_1c8

    const/16 v4, 0xa0

    if-ge v2, v4, :cond_1c8

    move/from16 v4, v18

    goto :goto_1ca

    :cond_1c8
    move/from16 v4, v17

    :goto_1ca
    if-eqz v4, :cond_1ce

    :cond_1cc
    move/from16 v17, v18

    .line 353
    .end local v21    # "$i$f$isIsoControl":I
    :cond_1ce
    if-nez v17, :cond_1d5

    .line 354
    :cond_1d0
    const v4, 0xfffd

    if-ne v2, v4, :cond_1d7

    .line 356
    :cond_1d5
    const/4 v4, -0x1

    return v4

    .line 359
    :cond_1d7
    const/high16 v4, 0x10000

    if-ge v2, v4, :cond_1dc

    goto :goto_1de

    :cond_1dc
    move/from16 v18, v16

    :goto_1de
    add-int v1, v1, v18

    .line 360
    nop

    .line 397
    .end local v2    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 423
    goto :goto_231

    .line 425
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_1e5
    move v4, v3

    .local v4, "it$iv":I
    const/4 v13, 0x0

    .line 397
    .local v13, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move v14, v4

    .local v14, "c":I
    const/16 v21, 0x0

    .line 349
    .local v21, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_1ef

    .line 350
    return v1

    .line 353
    :cond_1ef
    const/16 v2, 0xa

    if-eq v14, v2, :cond_21c

    const/16 v2, 0xd

    if-eq v14, v2, :cond_21c

    const/4 v2, 0x0

    .line 426
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_203

    move/from16 v23, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .local v23, "$i$f$isIsoControl":I
    if-ge v14, v2, :cond_205

    move/from16 v2, v18

    goto :goto_207

    .end local v23    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_203
    move/from16 v23, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v23    # "$i$f$isIsoControl":I
    :cond_205
    move/from16 v2, v17

    :goto_207
    if-nez v2, :cond_218

    const/16 v2, 0x7f

    if-gt v2, v14, :cond_214

    const/16 v2, 0xa0

    if-ge v14, v2, :cond_214

    move/from16 v2, v18

    goto :goto_216

    :cond_214
    move/from16 v2, v17

    :goto_216
    if-eqz v2, :cond_21a

    :cond_218
    move/from16 v17, v18

    .line 353
    .end local v23    # "$i$f$isIsoControl":I
    :cond_21a
    if-nez v17, :cond_221

    .line 354
    :cond_21c
    const v2, 0xfffd

    if-ne v14, v2, :cond_223

    .line 356
    :cond_221
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_223
    const/high16 v2, 0x10000

    if-ge v14, v2, :cond_228

    goto :goto_22a

    :cond_228
    move/from16 v18, v16

    :goto_22a
    add-int v1, v1, v18

    .line 360
    nop

    .line 397
    .end local v14    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v4    # "it$iv":I
    .end local v13    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 425
    nop

    .line 427
    :goto_231
    move/from16 v2, v26

    .line 397
    .end local v3    # "codePoint$iv$iv":I
    .end local v10    # "$this$process2Utf8Bytes$iv$iv":[B
    .end local v11    # "$i$f$process2Utf8Bytes":I
    .end local v12    # "b1$iv$iv":B
    .end local v15    # "b0$iv$iv":B
    .end local v26    # "j":I
    .local v2, "j":I
    :goto_233
    add-int v8, v8, v16

    move-object/from16 v4, p0

    move/from16 v3, v27

    goto/16 :goto_c

    .line 428
    .end local v27    # "beginIndex$iv":I
    .local v3, "beginIndex$iv":I
    :cond_23b
    move/from16 v27, v3

    .end local v3    # "beginIndex$iv":I
    .restart local v27    # "beginIndex$iv":I
    const/4 v3, 0x4

    .local v3, "other$iv$iv":I
    move v4, v9

    .local v4, "$this$shr$iv$iv":B
    const/4 v10, 0x0

    .line 396
    .local v10, "$i$f$shr":I
    shr-int v3, v4, v3

    .line 428
    .end local v3    # "other$iv$iv":I
    .end local v4    # "$this$shr$iv$iv":B
    .end local v10    # "$i$f$shr":I
    if-ne v3, v11, :cond_4a9

    .line 430
    move-object v3, v6

    .local v3, "$this$process3Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 431
    .local v11, "$i$f$process3Utf8Bytes":I
    add-int/lit8 v13, v8, 0x2

    if-gt v5, v13, :cond_2b7

    .line 433
    const v4, 0xfffd

    .local v4, "it$iv":I
    const/4 v10, 0x0

    .line 430
    .local v10, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v12, v4

    .local v12, "c":I
    const/4 v13, 0x0

    .line 349
    .local v13, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "j":I
    .local v14, "j":I
    if-ne v2, v0, :cond_255

    .line 350
    return v1

    .line 353
    :cond_255
    const/16 v2, 0xa

    if-eq v12, v2, :cond_282

    const/16 v2, 0xd

    if-eq v12, v2, :cond_282

    const/4 v2, 0x0

    .line 434
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_267

    const/16 v15, 0x20

    if-ge v12, v15, :cond_267

    move/from16 v15, v18

    goto :goto_269

    :cond_267
    move/from16 v15, v17

    :goto_269
    if-nez v15, :cond_27e

    const/16 v15, 0x7f

    if-gt v15, v12, :cond_276

    const/16 v15, 0xa0

    if-ge v12, v15, :cond_276

    move/from16 v15, v18

    goto :goto_278

    :cond_276
    move/from16 v15, v17

    :goto_278
    if-eqz v15, :cond_27b

    goto :goto_27e

    :cond_27b
    move/from16 v2, v17

    goto :goto_280

    :cond_27e
    :goto_27e
    move/from16 v2, v18

    .line 353
    .end local v2    # "$i$f$isIsoControl":I
    :goto_280
    if-nez v2, :cond_287

    .line 354
    :cond_282
    const v2, 0xfffd

    if-ne v12, v2, :cond_289

    .line 356
    :cond_287
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_289
    const/high16 v2, 0x10000

    if-ge v12, v2, :cond_290

    move/from16 v2, v18

    goto :goto_292

    :cond_290
    move/from16 v2, v16

    :goto_292
    add-int/2addr v1, v2

    .line 360
    nop

    .line 430
    .end local v12    # "c":I
    .end local v13    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v4    # "it$iv":I
    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 433
    nop

    .line 435
    add-int/lit8 v2, v8, 0x1

    if-le v5, v2, :cond_2b2

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v3, v2

    .local v2, "byte$iv$iv$iv":B
    const/4 v4, 0x0

    .line 436
    .local v4, "$i$f$isUtf8Continuation":I
    const/16 v10, 0xc0

    .local v10, "other$iv$iv$iv$iv":I
    move v12, v2

    .local v12, "$this$and$iv$iv$iv$iv":B
    const/4 v13, 0x0

    .line 408
    .local v13, "$i$f$and":I
    and-int/2addr v10, v12

    .line 436
    .end local v10    # "other$iv$iv$iv$iv":I
    .end local v12    # "$this$and$iv$iv$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v10, v12, :cond_2ac

    move/from16 v17, v18

    .line 435
    .end local v2    # "byte$iv$iv$iv":B
    .end local v4    # "$i$f$isUtf8Continuation":I
    :cond_2ac
    if-nez v17, :cond_2af

    goto :goto_2b2

    .line 440
    :cond_2af
    move v2, v14

    goto/16 :goto_4a1

    .line 437
    :cond_2b2
    :goto_2b2
    move v2, v14

    move/from16 v16, v18

    goto/16 :goto_4a1

    .line 444
    .end local v14    # "j":I
    .local v2, "j":I
    :cond_2b7
    aget-byte v13, v3, v8

    .line 445
    .local v13, "b0$iv$iv":B
    add-int/lit8 v14, v8, 0x1

    aget-byte v14, v3, v14

    .line 446
    .local v14, "b1$iv$iv":B
    const/4 v15, 0x0

    .line 447
    .local v15, "$i$f$isUtf8Continuation":I
    const/16 v23, 0xc0

    .local v23, "other$iv$iv$iv$iv":I
    move/from16 v26, v14

    .local v26, "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 408
    .local v28, "$i$f$and":I
    and-int v12, v26, v23

    .line 447
    .end local v23    # "other$iv$iv$iv$iv":I
    .end local v26    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v4, 0x80

    if-ne v12, v4, :cond_2cd

    move/from16 v4, v18

    goto :goto_2cf

    :cond_2cd
    move/from16 v4, v17

    .line 446
    .end local v15    # "$i$f$isUtf8Continuation":I
    :goto_2cf
    if-nez v4, :cond_323

    .line 448
    const v4, 0xfffd

    .local v4, "it$iv":I
    const/4 v10, 0x0

    .line 430
    .local v10, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v12, v4

    .local v12, "c":I
    const/4 v15, 0x0

    .line 349
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .local v21, "j":I
    if-ne v2, v0, :cond_2dc

    .line 350
    return v1

    .line 353
    :cond_2dc
    const/16 v2, 0xa

    if-eq v12, v2, :cond_309

    const/16 v2, 0xd

    if-eq v12, v2, :cond_309

    const/4 v2, 0x0

    .line 449
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_2f0

    move/from16 v23, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .local v23, "$i$f$isIsoControl":I
    if-ge v12, v2, :cond_2f2

    move/from16 v2, v18

    goto :goto_2f4

    .end local v23    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_2f0
    move/from16 v23, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v23    # "$i$f$isIsoControl":I
    :cond_2f2
    move/from16 v2, v17

    :goto_2f4
    if-nez v2, :cond_305

    const/16 v2, 0x7f

    if-gt v2, v12, :cond_301

    const/16 v2, 0xa0

    if-ge v12, v2, :cond_301

    move/from16 v2, v18

    goto :goto_303

    :cond_301
    move/from16 v2, v17

    :goto_303
    if-eqz v2, :cond_307

    :cond_305
    move/from16 v17, v18

    .line 353
    .end local v23    # "$i$f$isIsoControl":I
    :cond_307
    if-nez v17, :cond_30e

    .line 354
    :cond_309
    const v2, 0xfffd

    if-ne v12, v2, :cond_310

    .line 356
    :cond_30e
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_310
    const/high16 v2, 0x10000

    if-ge v12, v2, :cond_316

    move/from16 v16, v18

    :cond_316
    add-int v1, v1, v16

    .line 360
    nop

    .line 430
    .end local v12    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v4    # "it$iv":I
    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 448
    nop

    .line 450
    move/from16 v16, v18

    move/from16 v2, v21

    goto/16 :goto_4a1

    .line 452
    .end local v21    # "j":I
    .local v2, "j":I
    :cond_323
    add-int/lit8 v4, v8, 0x2

    aget-byte v4, v3, v4

    .line 453
    .local v4, "b2$iv$iv":B
    const/4 v12, 0x0

    .line 454
    .local v12, "$i$f$isUtf8Continuation":I
    const/16 v15, 0xc0

    .local v15, "other$iv$iv$iv$iv":I
    move/from16 v26, v4

    .restart local v26    # "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 408
    .restart local v28    # "$i$f$and":I
    and-int v15, v26, v15

    .line 454
    .end local v15    # "other$iv$iv$iv$iv":I
    .end local v26    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v10, 0x80

    if-ne v15, v10, :cond_337

    move/from16 v10, v18

    goto :goto_339

    :cond_337
    move/from16 v10, v17

    .line 453
    .end local v12    # "$i$f$isUtf8Continuation":I
    :goto_339
    if-nez v10, :cond_38d

    .line 455
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v12, 0x0

    .line 430
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v15, v10

    .local v15, "c":I
    const/16 v21, 0x0

    .line 349
    .local v21, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v23, v2, 0x1

    .end local v2    # "j":I
    .local v23, "j":I
    if-ne v2, v0, :cond_347

    .line 350
    return v1

    .line 353
    :cond_347
    const/16 v2, 0xa

    if-eq v15, v2, :cond_374

    const/16 v2, 0xd

    if-eq v15, v2, :cond_374

    const/4 v2, 0x0

    .line 456
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_35b

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .local v25, "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_35d

    move/from16 v2, v18

    goto :goto_35f

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_35b
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_35d
    move/from16 v2, v17

    :goto_35f
    if-nez v2, :cond_370

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_36c

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_36c

    move/from16 v2, v18

    goto :goto_36e

    :cond_36c
    move/from16 v2, v17

    :goto_36e
    if-eqz v2, :cond_372

    :cond_370
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_372
    if-nez v17, :cond_379

    .line 354
    :cond_374
    const v2, 0xfffd

    if-ne v15, v2, :cond_37b

    .line 356
    :cond_379
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_37b
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_380

    goto :goto_382

    :cond_380
    move/from16 v18, v16

    :goto_382
    add-int v1, v1, v18

    .line 360
    nop

    .line 430
    .end local v15    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 455
    nop

    .line 457
    move/from16 v2, v23

    goto/16 :goto_4a1

    .line 462
    .end local v23    # "j":I
    .local v2, "j":I
    :cond_38d
    nop

    .line 463
    nop

    .line 462
    const v10, -0x1e080

    xor-int/2addr v10, v4

    .line 464
    shl-int/lit8 v12, v14, 0x6

    .line 462
    xor-int/2addr v10, v12

    .line 465
    shl-int/lit8 v12, v13, 0xc

    .line 462
    xor-int/2addr v10, v12

    .line 460
    nop

    .line 468
    .local v10, "codePoint$iv$iv":I
    nop

    .line 469
    const/16 v12, 0x800

    if-ge v10, v12, :cond_3f2

    .line 470
    const v12, 0xfffd

    .local v12, "it$iv":I
    const/4 v15, 0x0

    .line 430
    .local v15, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move/from16 v21, v12

    .local v21, "c":I
    const/16 v23, 0x0

    .line 349
    .local v23, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .local v26, "j":I
    if-ne v2, v0, :cond_3ac

    .line 350
    return v1

    .line 353
    :cond_3ac
    move/from16 v2, v21

    move-object/from16 v21, v3

    const/16 v3, 0xa

    .end local v3    # "$this$process3Utf8Bytes$iv$iv":[B
    .local v2, "c":I
    .local v21, "$this$process3Utf8Bytes$iv$iv":[B
    if-eq v2, v3, :cond_3dd

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3dd

    const/4 v3, 0x0

    .line 471
    .local v3, "$i$f$isIsoControl":I
    if-ltz v2, :cond_3c4

    move/from16 v25, v3

    const/16 v3, 0x20

    .end local v3    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v2, v3, :cond_3c6

    move/from16 v3, v18

    goto :goto_3c8

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v3    # "$i$f$isIsoControl":I
    :cond_3c4
    move/from16 v25, v3

    .end local v3    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_3c6
    move/from16 v3, v17

    :goto_3c8
    if-nez v3, :cond_3d9

    const/16 v3, 0x7f

    if-gt v3, v2, :cond_3d5

    const/16 v3, 0xa0

    if-ge v2, v3, :cond_3d5

    move/from16 v3, v18

    goto :goto_3d7

    :cond_3d5
    move/from16 v3, v17

    :goto_3d7
    if-eqz v3, :cond_3db

    :cond_3d9
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_3db
    if-nez v17, :cond_3e2

    .line 354
    :cond_3dd
    const v3, 0xfffd

    if-ne v2, v3, :cond_3e4

    .line 356
    :cond_3e2
    const/4 v3, -0x1

    return v3

    .line 359
    :cond_3e4
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_3ea

    move/from16 v16, v18

    :cond_3ea
    add-int v1, v1, v16

    .line 360
    nop

    .line 430
    .end local v2    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v15    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 470
    goto/16 :goto_49d

    .line 472
    .end local v21    # "$this$process3Utf8Bytes$iv$iv":[B
    .end local v26    # "j":I
    .local v2, "j":I
    .local v3, "$this$process3Utf8Bytes$iv$iv":[B
    :cond_3f2
    move-object/from16 v21, v3

    .end local v3    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v21    # "$this$process3Utf8Bytes$iv$iv":[B
    const v3, 0xd800

    if-gt v3, v10, :cond_401

    const v3, 0xe000

    if-ge v10, v3, :cond_401

    move/from16 v3, v18

    goto :goto_403

    :cond_401
    move/from16 v3, v17

    :goto_403
    if-eqz v3, :cond_452

    .line 473
    const v3, 0xfffd

    .local v3, "it$iv":I
    const/4 v12, 0x0

    .line 430
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v15, v3

    .local v15, "c":I
    const/16 v23, 0x0

    .line 349
    .restart local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_411

    .line 350
    return v1

    .line 353
    :cond_411
    const/16 v2, 0xa

    if-eq v15, v2, :cond_43e

    const/16 v2, 0xd

    if-eq v15, v2, :cond_43e

    const/4 v2, 0x0

    .line 474
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_425

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_427

    move/from16 v2, v18

    goto :goto_429

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_425
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_427
    move/from16 v2, v17

    :goto_429
    if-nez v2, :cond_43a

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_436

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_436

    move/from16 v2, v18

    goto :goto_438

    :cond_436
    move/from16 v2, v17

    :goto_438
    if-eqz v2, :cond_43c

    :cond_43a
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_43c
    if-nez v17, :cond_443

    .line 354
    :cond_43e
    const v2, 0xfffd

    if-ne v15, v2, :cond_445

    .line 356
    :cond_443
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_445
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_44b

    move/from16 v16, v18

    :cond_44b
    add-int v1, v1, v16

    .line 360
    nop

    .line 430
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v3    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 473
    goto :goto_49d

    .line 475
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_452
    move v3, v10

    .restart local v3    # "it$iv":I
    const/4 v12, 0x0

    .line 430
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v15, v3

    .restart local v15    # "c":I
    const/16 v23, 0x0

    .line 349
    .restart local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_45c

    .line 350
    return v1

    .line 353
    :cond_45c
    const/16 v2, 0xa

    if-eq v15, v2, :cond_489

    const/16 v2, 0xd

    if-eq v15, v2, :cond_489

    const/4 v2, 0x0

    .line 476
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_470

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_472

    move/from16 v2, v18

    goto :goto_474

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_470
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_472
    move/from16 v2, v17

    :goto_474
    if-nez v2, :cond_485

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_481

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_481

    move/from16 v2, v18

    goto :goto_483

    :cond_481
    move/from16 v2, v17

    :goto_483
    if-eqz v2, :cond_487

    :cond_485
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_487
    if-nez v17, :cond_48e

    .line 354
    :cond_489
    const v2, 0xfffd

    if-ne v15, v2, :cond_490

    .line 356
    :cond_48e
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_490
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_496

    move/from16 v16, v18

    :cond_496
    add-int v1, v1, v16

    .line 360
    nop

    .line 430
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v3    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 475
    nop

    .line 477
    :goto_49d
    move/from16 v2, v26

    const/16 v16, 0x3

    .line 430
    .end local v4    # "b2$iv$iv":B
    .end local v10    # "codePoint$iv$iv":I
    .end local v11    # "$i$f$process3Utf8Bytes":I
    .end local v13    # "b0$iv$iv":B
    .end local v14    # "b1$iv$iv":B
    .end local v21    # "$this$process3Utf8Bytes$iv$iv":[B
    .end local v26    # "j":I
    .local v2, "j":I
    :goto_4a1
    add-int v8, v8, v16

    move-object/from16 v4, p0

    move/from16 v3, v27

    goto/16 :goto_c

    .line 478
    :cond_4a9
    const/4 v3, 0x3

    .local v3, "other$iv$iv":I
    move v4, v9

    .local v4, "$this$shr$iv$iv":B
    const/4 v10, 0x0

    .line 396
    .local v10, "$i$f$shr":I
    shr-int v3, v4, v3

    .line 478
    .end local v3    # "other$iv$iv":I
    .end local v4    # "$this$shr$iv$iv":B
    .end local v10    # "$i$f$shr":I
    if-ne v3, v11, :cond_7f2

    .line 480
    move-object v3, v6

    .local v3, "$this$process4Utf8Bytes$iv$iv":[B
    const/4 v4, 0x0

    .line 481
    .local v4, "$i$f$process4Utf8Bytes":I
    add-int/lit8 v10, v8, 0x3

    if-gt v5, v10, :cond_542

    .line 483
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v11, 0x0

    .line 480
    .local v11, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v12, v10

    .local v12, "c":I
    const/4 v13, 0x0

    .line 349
    .local v13, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "j":I
    .local v14, "j":I
    if-ne v2, v0, :cond_4c1

    .line 350
    return v1

    .line 353
    :cond_4c1
    const/16 v2, 0xa

    if-eq v12, v2, :cond_4ee

    const/16 v2, 0xd

    if-eq v12, v2, :cond_4ee

    const/4 v2, 0x0

    .line 484
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_4d3

    const/16 v15, 0x20

    if-ge v12, v15, :cond_4d3

    move/from16 v15, v18

    goto :goto_4d5

    :cond_4d3
    move/from16 v15, v17

    :goto_4d5
    if-nez v15, :cond_4ea

    const/16 v15, 0x7f

    if-gt v15, v12, :cond_4e2

    const/16 v15, 0xa0

    if-ge v12, v15, :cond_4e2

    move/from16 v15, v18

    goto :goto_4e4

    :cond_4e2
    move/from16 v15, v17

    :goto_4e4
    if-eqz v15, :cond_4e7

    goto :goto_4ea

    :cond_4e7
    move/from16 v2, v17

    goto :goto_4ec

    :cond_4ea
    :goto_4ea
    move/from16 v2, v18

    .line 353
    .end local v2    # "$i$f$isIsoControl":I
    :goto_4ec
    if-nez v2, :cond_4f3

    .line 354
    :cond_4ee
    const v2, 0xfffd

    if-ne v12, v2, :cond_4f5

    .line 356
    :cond_4f3
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_4f5
    const/high16 v2, 0x10000

    if-ge v12, v2, :cond_4fc

    move/from16 v2, v18

    goto :goto_4fe

    :cond_4fc
    move/from16 v2, v16

    :goto_4fe
    add-int/2addr v1, v2

    .line 360
    nop

    .line 480
    .end local v12    # "c":I
    .end local v13    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v11    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 483
    nop

    .line 485
    add-int/lit8 v2, v8, 0x1

    if-le v5, v2, :cond_53d

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v3, v2

    .local v2, "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 486
    .local v10, "$i$f$isUtf8Continuation":I
    const/16 v11, 0xc0

    .local v11, "other$iv$iv$iv$iv":I
    move v12, v2

    .local v12, "$this$and$iv$iv$iv$iv":B
    const/4 v13, 0x0

    .line 408
    .local v13, "$i$f$and":I
    and-int/2addr v11, v12

    .line 486
    .end local v11    # "other$iv$iv$iv$iv":I
    .end local v12    # "$this$and$iv$iv$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v11, v12, :cond_519

    move/from16 v2, v18

    goto :goto_51b

    :cond_519
    move/from16 v2, v17

    .line 485
    .end local v2    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :goto_51b
    if-nez v2, :cond_51e

    goto :goto_53d

    .line 488
    :cond_51e
    add-int/lit8 v2, v8, 0x2

    if-le v5, v2, :cond_53a

    add-int/lit8 v2, v8, 0x2

    aget-byte v2, v3, v2

    .restart local v2    # "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 489
    .restart local v10    # "$i$f$isUtf8Continuation":I
    const/16 v11, 0xc0

    .restart local v11    # "other$iv$iv$iv$iv":I
    move v12, v2

    .restart local v12    # "$this$and$iv$iv$iv$iv":B
    const/4 v13, 0x0

    .line 408
    .restart local v13    # "$i$f$and":I
    and-int/2addr v11, v12

    .line 489
    .end local v11    # "other$iv$iv$iv$iv":I
    .end local v12    # "$this$and$iv$iv$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v11, v12, :cond_532

    move/from16 v17, v18

    .line 488
    .end local v2    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :cond_532
    if-nez v17, :cond_535

    goto :goto_53a

    .line 493
    :cond_535
    move v2, v14

    const/16 v16, 0x3

    goto/16 :goto_7ea

    .line 490
    :cond_53a
    :goto_53a
    move v2, v14

    goto/16 :goto_7ea

    .line 487
    :cond_53d
    :goto_53d
    move v2, v14

    move/from16 v16, v18

    goto/16 :goto_7ea

    .line 497
    .end local v14    # "j":I
    .local v2, "j":I
    :cond_542
    aget-byte v10, v3, v8

    .line 498
    .local v10, "b0$iv$iv":B
    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v3, v11

    .line 499
    .local v11, "b1$iv$iv":B
    const/4 v12, 0x0

    .line 500
    .local v12, "$i$f$isUtf8Continuation":I
    const/16 v13, 0xc0

    .local v13, "other$iv$iv$iv$iv":I
    move v14, v11

    .local v14, "$this$and$iv$iv$iv$iv":B
    const/4 v15, 0x0

    .line 408
    .local v15, "$i$f$and":I
    and-int/2addr v13, v14

    .line 500
    .end local v13    # "other$iv$iv$iv$iv":I
    .end local v14    # "$this$and$iv$iv$iv$iv":B
    .end local v15    # "$i$f$and":I
    const/16 v14, 0x80

    if-ne v13, v14, :cond_555

    move/from16 v12, v18

    goto :goto_557

    :cond_555
    move/from16 v12, v17

    .line 499
    .end local v12    # "$i$f$isUtf8Continuation":I
    :goto_557
    if-nez v12, :cond_5ab

    .line 501
    const v12, 0xfffd

    .local v12, "it$iv":I
    const/4 v13, 0x0

    .line 480
    .local v13, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .local v14, "c":I
    const/4 v15, 0x0

    .line 349
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .local v21, "j":I
    if-ne v2, v0, :cond_564

    .line 350
    return v1

    .line 353
    :cond_564
    const/16 v2, 0xa

    if-eq v14, v2, :cond_591

    const/16 v2, 0xd

    if-eq v14, v2, :cond_591

    const/4 v2, 0x0

    .line 502
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_578

    move/from16 v23, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .local v23, "$i$f$isIsoControl":I
    if-ge v14, v2, :cond_57a

    move/from16 v2, v18

    goto :goto_57c

    .end local v23    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_578
    move/from16 v23, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v23    # "$i$f$isIsoControl":I
    :cond_57a
    move/from16 v2, v17

    :goto_57c
    if-nez v2, :cond_58d

    const/16 v2, 0x7f

    if-gt v2, v14, :cond_589

    const/16 v2, 0xa0

    if-ge v14, v2, :cond_589

    move/from16 v2, v18

    goto :goto_58b

    :cond_589
    move/from16 v2, v17

    :goto_58b
    if-eqz v2, :cond_58f

    :cond_58d
    move/from16 v17, v18

    .line 353
    .end local v23    # "$i$f$isIsoControl":I
    :cond_58f
    if-nez v17, :cond_596

    .line 354
    :cond_591
    const v2, 0xfffd

    if-ne v14, v2, :cond_598

    .line 356
    :cond_596
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_598
    const/high16 v2, 0x10000

    if-ge v14, v2, :cond_59e

    move/from16 v16, v18

    :cond_59e
    add-int v1, v1, v16

    .line 360
    nop

    .line 480
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 501
    nop

    .line 503
    move/from16 v16, v18

    move/from16 v2, v21

    goto/16 :goto_7ea

    .line 505
    .end local v21    # "j":I
    .local v2, "j":I
    :cond_5ab
    add-int/lit8 v12, v8, 0x2

    aget-byte v12, v3, v12

    .line 506
    .local v12, "b2$iv$iv":B
    const/4 v13, 0x0

    .line 507
    .local v13, "$i$f$isUtf8Continuation":I
    const/16 v14, 0xc0

    .local v14, "other$iv$iv$iv$iv":I
    move v15, v12

    .local v15, "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 408
    .restart local v28    # "$i$f$and":I
    and-int/2addr v14, v15

    .line 507
    .end local v14    # "other$iv$iv$iv$iv":I
    .end local v15    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_5bd

    move/from16 v13, v18

    goto :goto_5bf

    :cond_5bd
    move/from16 v13, v17

    .line 506
    .end local v13    # "$i$f$isUtf8Continuation":I
    :goto_5bf
    if-nez v13, :cond_613

    .line 508
    const v13, 0xfffd

    .local v13, "it$iv":I
    const/4 v14, 0x0

    .line 480
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v13

    .local v15, "c":I
    const/16 v21, 0x0

    .line 349
    .local v21, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v23, v2, 0x1

    .end local v2    # "j":I
    .local v23, "j":I
    if-ne v2, v0, :cond_5cd

    .line 350
    return v1

    .line 353
    :cond_5cd
    const/16 v2, 0xa

    if-eq v15, v2, :cond_5fa

    const/16 v2, 0xd

    if-eq v15, v2, :cond_5fa

    const/4 v2, 0x0

    .line 509
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_5e1

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_5e3

    move/from16 v2, v18

    goto :goto_5e5

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_5e1
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_5e3
    move/from16 v2, v17

    :goto_5e5
    if-nez v2, :cond_5f6

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_5f2

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_5f2

    move/from16 v2, v18

    goto :goto_5f4

    :cond_5f2
    move/from16 v2, v17

    :goto_5f4
    if-eqz v2, :cond_5f8

    :cond_5f6
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_5f8
    if-nez v17, :cond_5ff

    .line 354
    :cond_5fa
    const v2, 0xfffd

    if-ne v15, v2, :cond_601

    .line 356
    :cond_5ff
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_601
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_606

    goto :goto_608

    :cond_606
    move/from16 v18, v16

    :goto_608
    add-int v1, v1, v18

    .line 360
    nop

    .line 480
    .end local v15    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 508
    nop

    .line 510
    move/from16 v2, v23

    goto/16 :goto_7ea

    .line 512
    .end local v23    # "j":I
    .local v2, "j":I
    :cond_613
    add-int/lit8 v13, v8, 0x3

    aget-byte v13, v3, v13

    .line 513
    .local v13, "b3$iv$iv":B
    const/4 v14, 0x0

    .line 514
    .local v14, "$i$f$isUtf8Continuation":I
    const/16 v15, 0xc0

    .local v15, "other$iv$iv$iv$iv":I
    move/from16 v28, v13

    .local v28, "$this$and$iv$iv$iv$iv":B
    const/16 v29, 0x0

    .line 408
    .local v29, "$i$f$and":I
    and-int v15, v28, v15

    .line 514
    .end local v15    # "other$iv$iv$iv$iv":I
    .end local v28    # "$this$and$iv$iv$iv$iv":B
    .end local v29    # "$i$f$and":I
    move-object/from16 v28, v3

    const/16 v3, 0x80

    .end local v3    # "$this$process4Utf8Bytes$iv$iv":[B
    .local v28, "$this$process4Utf8Bytes$iv$iv":[B
    if-ne v15, v3, :cond_629

    move/from16 v3, v18

    goto :goto_62b

    :cond_629
    move/from16 v3, v17

    .line 513
    .end local v14    # "$i$f$isUtf8Continuation":I
    :goto_62b
    if-nez v3, :cond_680

    .line 515
    const v3, 0xfffd

    .local v3, "it$iv":I
    const/4 v14, 0x0

    .line 480
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v3

    .local v15, "c":I
    const/16 v21, 0x0

    .line 349
    .restart local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v23, v2, 0x1

    .end local v2    # "j":I
    .restart local v23    # "j":I
    if-ne v2, v0, :cond_639

    .line 350
    return v1

    .line 353
    :cond_639
    const/16 v2, 0xa

    if-eq v15, v2, :cond_666

    const/16 v2, 0xd

    if-eq v15, v2, :cond_666

    const/4 v2, 0x0

    .line 516
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_64d

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_64f

    move/from16 v2, v18

    goto :goto_651

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_64d
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_64f
    move/from16 v2, v17

    :goto_651
    if-nez v2, :cond_662

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_65e

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_65e

    move/from16 v2, v18

    goto :goto_660

    :cond_65e
    move/from16 v2, v17

    :goto_660
    if-eqz v2, :cond_664

    :cond_662
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_664
    if-nez v17, :cond_66b

    .line 354
    :cond_666
    const v2, 0xfffd

    if-ne v15, v2, :cond_66d

    .line 356
    :cond_66b
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_66d
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_673

    move/from16 v16, v18

    :cond_673
    add-int v1, v1, v16

    .line 360
    nop

    .line 480
    .end local v15    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v3    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 515
    nop

    .line 517
    move/from16 v2, v23

    const/16 v16, 0x3

    goto/16 :goto_7ea

    .line 522
    .end local v23    # "j":I
    .local v2, "j":I
    :cond_680
    nop

    .line 523
    nop

    .line 522
    const v3, 0x381f80

    xor-int/2addr v3, v13

    .line 524
    shl-int/lit8 v14, v12, 0x6

    .line 522
    xor-int/2addr v3, v14

    .line 525
    shl-int/lit8 v14, v11, 0xc

    .line 522
    xor-int/2addr v3, v14

    .line 526
    shl-int/lit8 v14, v10, 0x12

    .line 522
    xor-int/2addr v3, v14

    .line 520
    nop

    .line 529
    .local v3, "codePoint$iv$iv":I
    nop

    .line 530
    const v14, 0x10ffff

    if-le v3, v14, :cond_6e9

    .line 531
    const v14, 0xfffd

    .local v14, "it$iv":I
    const/4 v15, 0x0

    .line 480
    .local v15, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move/from16 v21, v14

    .local v21, "c":I
    const/16 v23, 0x0

    .line 349
    .local v23, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_6a3

    .line 350
    return v1

    .line 353
    :cond_6a3
    move/from16 v2, v21

    move/from16 v21, v4

    const/16 v4, 0xa

    .end local v4    # "$i$f$process4Utf8Bytes":I
    .local v2, "c":I
    .local v21, "$i$f$process4Utf8Bytes":I
    if-eq v2, v4, :cond_6d4

    const/16 v4, 0xd

    if-eq v2, v4, :cond_6d4

    const/4 v4, 0x0

    .line 532
    .local v4, "$i$f$isIsoControl":I
    if-ltz v2, :cond_6bb

    move/from16 v25, v4

    const/16 v4, 0x20

    .end local v4    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v2, v4, :cond_6bd

    move/from16 v4, v18

    goto :goto_6bf

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v4    # "$i$f$isIsoControl":I
    :cond_6bb
    move/from16 v25, v4

    .end local v4    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_6bd
    move/from16 v4, v17

    :goto_6bf
    if-nez v4, :cond_6d0

    const/16 v4, 0x7f

    if-gt v4, v2, :cond_6cc

    const/16 v4, 0xa0

    if-ge v2, v4, :cond_6cc

    move/from16 v4, v18

    goto :goto_6ce

    :cond_6cc
    move/from16 v4, v17

    :goto_6ce
    if-eqz v4, :cond_6d2

    :cond_6d0
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_6d2
    if-nez v17, :cond_6d9

    .line 354
    :cond_6d4
    const v4, 0xfffd

    if-ne v2, v4, :cond_6db

    .line 356
    :cond_6d9
    const/4 v4, -0x1

    return v4

    .line 359
    :cond_6db
    const/high16 v4, 0x10000

    if-ge v2, v4, :cond_6e1

    move/from16 v16, v18

    :cond_6e1
    add-int v1, v1, v16

    .line 360
    nop

    .line 480
    .end local v2    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v14    # "it$iv":I
    .end local v15    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 531
    goto/16 :goto_7e6

    .line 533
    .end local v21    # "$i$f$process4Utf8Bytes":I
    .end local v26    # "j":I
    .local v2, "j":I
    .local v4, "$i$f$process4Utf8Bytes":I
    :cond_6e9
    move/from16 v21, v4

    .end local v4    # "$i$f$process4Utf8Bytes":I
    .restart local v21    # "$i$f$process4Utf8Bytes":I
    const v4, 0xd800

    if-gt v4, v3, :cond_6f8

    const v4, 0xe000

    if-ge v3, v4, :cond_6f8

    move/from16 v4, v18

    goto :goto_6fa

    :cond_6f8
    move/from16 v4, v17

    :goto_6fa
    if-eqz v4, :cond_74a

    .line 534
    const v4, 0xfffd

    .local v4, "it$iv":I
    const/4 v14, 0x0

    .line 480
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v4

    .local v15, "c":I
    const/16 v23, 0x0

    .line 349
    .restart local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_708

    .line 350
    return v1

    .line 353
    :cond_708
    const/16 v2, 0xa

    if-eq v15, v2, :cond_735

    const/16 v2, 0xd

    if-eq v15, v2, :cond_735

    const/4 v2, 0x0

    .line 535
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_71c

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_71e

    move/from16 v2, v18

    goto :goto_720

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_71c
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_71e
    move/from16 v2, v17

    :goto_720
    if-nez v2, :cond_731

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_72d

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_72d

    move/from16 v2, v18

    goto :goto_72f

    :cond_72d
    move/from16 v2, v17

    :goto_72f
    if-eqz v2, :cond_733

    :cond_731
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_733
    if-nez v17, :cond_73a

    .line 354
    :cond_735
    const v2, 0xfffd

    if-ne v15, v2, :cond_73c

    .line 356
    :cond_73a
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_73c
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_742

    move/from16 v16, v18

    :cond_742
    add-int v1, v1, v16

    .line 360
    nop

    .line 480
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v4    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 534
    goto/16 :goto_7e6

    .line 536
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_74a
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_79b

    .line 537
    const v4, 0xfffd

    .restart local v4    # "it$iv":I
    const/4 v14, 0x0

    .line 480
    .restart local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v4

    .restart local v15    # "c":I
    const/16 v23, 0x0

    .line 349
    .restart local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_75a

    .line 350
    return v1

    .line 353
    :cond_75a
    const/16 v2, 0xa

    if-eq v15, v2, :cond_787

    const/16 v2, 0xd

    if-eq v15, v2, :cond_787

    const/4 v2, 0x0

    .line 538
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_76e

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_770

    move/from16 v2, v18

    goto :goto_772

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_76e
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_770
    move/from16 v2, v17

    :goto_772
    if-nez v2, :cond_783

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_77f

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_77f

    move/from16 v2, v18

    goto :goto_781

    :cond_77f
    move/from16 v2, v17

    :goto_781
    if-eqz v2, :cond_785

    :cond_783
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_785
    if-nez v17, :cond_78c

    .line 354
    :cond_787
    const v2, 0xfffd

    if-ne v15, v2, :cond_78e

    .line 356
    :cond_78c
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_78e
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_794

    move/from16 v16, v18

    :cond_794
    add-int v1, v1, v16

    .line 360
    nop

    .line 480
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v4    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 537
    goto :goto_7e6

    .line 539
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_79b
    move v4, v3

    .restart local v4    # "it$iv":I
    const/4 v14, 0x0

    .line 480
    .restart local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v4

    .restart local v15    # "c":I
    const/16 v23, 0x0

    .line 349
    .restart local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_7a5

    .line 350
    return v1

    .line 353
    :cond_7a5
    const/16 v2, 0xa

    if-eq v15, v2, :cond_7d2

    const/16 v2, 0xd

    if-eq v15, v2, :cond_7d2

    const/4 v2, 0x0

    .line 540
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_7b9

    move/from16 v25, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-ge v15, v2, :cond_7bb

    move/from16 v2, v18

    goto :goto_7bd

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_7b9
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_7bb
    move/from16 v2, v17

    :goto_7bd
    if-nez v2, :cond_7ce

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_7ca

    const/16 v2, 0xa0

    if-ge v15, v2, :cond_7ca

    move/from16 v2, v18

    goto :goto_7cc

    :cond_7ca
    move/from16 v2, v17

    :goto_7cc
    if-eqz v2, :cond_7d0

    :cond_7ce
    move/from16 v17, v18

    .line 353
    .end local v25    # "$i$f$isIsoControl":I
    :cond_7d0
    if-nez v17, :cond_7d7

    .line 354
    :cond_7d2
    const v2, 0xfffd

    if-ne v15, v2, :cond_7d9

    .line 356
    :cond_7d7
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_7d9
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_7df

    move/from16 v16, v18

    :cond_7df
    add-int v1, v1, v16

    .line 360
    nop

    .line 480
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v4    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 539
    nop

    .line 541
    :goto_7e6
    const/16 v16, 0x4

    move/from16 v2, v26

    .line 480
    .end local v3    # "codePoint$iv$iv":I
    .end local v10    # "b0$iv$iv":B
    .end local v11    # "b1$iv$iv":B
    .end local v12    # "b2$iv$iv":B
    .end local v13    # "b3$iv$iv":B
    .end local v21    # "$i$f$process4Utf8Bytes":I
    .end local v26    # "j":I
    .end local v28    # "$this$process4Utf8Bytes$iv$iv":[B
    .local v2, "j":I
    :goto_7ea
    add-int v8, v8, v16

    move-object/from16 v4, p0

    move/from16 v3, v27

    goto/16 :goto_c

    .line 542
    :cond_7f2
    const v3, 0xfffd

    .local v3, "c":I
    const/4 v4, 0x0

    .line 349
    .local v4, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "j":I
    .local v10, "j":I
    if-ne v2, v0, :cond_7fb

    .line 350
    return v1

    .line 353
    :cond_7fb
    const/16 v2, 0xa

    if-eq v3, v2, :cond_824

    const/16 v2, 0xd

    if-eq v3, v2, :cond_824

    const/4 v2, 0x0

    .line 543
    .local v2, "$i$f$isIsoControl":I
    if-ltz v3, :cond_80d

    const/16 v11, 0x20

    if-ge v3, v11, :cond_80d

    move/from16 v11, v18

    goto :goto_80f

    :cond_80d
    move/from16 v11, v17

    :goto_80f
    if-nez v11, :cond_820

    const/16 v11, 0x7f

    if-gt v11, v3, :cond_81c

    const/16 v11, 0xa0

    if-ge v3, v11, :cond_81c

    move/from16 v11, v18

    goto :goto_81e

    :cond_81c
    move/from16 v11, v17

    :goto_81e
    if-eqz v11, :cond_822

    :cond_820
    move/from16 v17, v18

    .line 353
    .end local v2    # "$i$f$isIsoControl":I
    :cond_822
    if-nez v17, :cond_829

    .line 354
    :cond_824
    const v2, 0xfffd

    if-ne v3, v2, :cond_82b

    .line 356
    :cond_829
    const/4 v2, -0x1

    return v2

    .line 359
    :cond_82b
    const/high16 v2, 0x10000

    if-ge v3, v2, :cond_831

    move/from16 v16, v18

    :cond_831
    add-int v1, v1, v16

    .line 360
    nop

    .line 542
    .end local v3    # "c":I
    .end local v4    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .line 544
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p0

    move v2, v10

    move/from16 v3, v27

    goto/16 :goto_c

    .line 548
    .end local v9    # "b0$iv":B
    .end local v10    # "j":I
    .end local v27    # "beginIndex$iv":I
    .local v2, "j":I
    .local v3, "beginIndex$iv":I
    :cond_83e
    nop

    .line 361
    .end local v3    # "beginIndex$iv":I
    .end local v5    # "endIndex$iv":I
    .end local v6    # "$this$processUtf8CodePoints$iv":[B
    .end local v7    # "$i$f$processUtf8CodePoints":I
    .end local v8    # "index$iv":I
    return v1
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 5
    .param p0, "$this$commonBase64"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$commonBase64":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .registers 4
    .param p0, "$this$commonBase64Url"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    .local v0, "$i$f$commonBase64Url":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v2

    invoke-static {v1, v2}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 13
    .param p0, "$this$commonCompareTo"    # Lokio/ByteString;
    .param p1, "other"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 253
    .local v0, "$i$f$commonCompareTo":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    .line 254
    .local v1, "sizeA":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    .line 255
    .local v2, "sizeB":I
    const/4 v3, 0x0

    .line 256
    .local v3, "i":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 257
    .local v4, "size":I
    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_38

    .line 258
    invoke-virtual {p0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v7

    .local v7, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 367
    .local v9, "$i$f$and":I
    and-int/2addr v7, v8

    .line 258
    .end local v7    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    nop

    .line 259
    .local v7, "byteA":I
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .local v8, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 368
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 259
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    nop

    .line 260
    .local v8, "byteB":I
    if-ne v7, v8, :cond_33

    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 262
    goto :goto_18

    .line 264
    :cond_33
    if-ge v7, v8, :cond_36

    goto :goto_37

    :cond_36
    move v5, v6

    :goto_37
    return v5

    .line 266
    .end local v7    # "byteA":I
    .end local v8    # "byteB":I
    :cond_38
    if-ne v1, v2, :cond_3c

    const/4 v5, 0x0

    return v5

    .line 267
    :cond_3c
    if-ge v1, v2, :cond_3f

    goto :goto_40

    :cond_3f
    move v5, v6

    :goto_40
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .registers 8
    .param p0, "$this$commonCopyInto"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "target"    # [B
    .param p3, "targetOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 185
    .local v0, "$i$f$commonCopyInto":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    add-int v2, p1, p4

    invoke-static {v1, p2, p3, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 186
    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 4
    .param p0, "$this$commonDecodeBase64"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 289
    .local v0, "$i$f$commonDecodeBase64":I
    invoke-static {p0}, Lokio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 290
    .local v1, "decoded":[B
    if-eqz v1, :cond_12

    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v1}, Lokio/ByteString;-><init>([B)V

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return-object v2
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 9
    .param p0, "$this$commonDecodeHex"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 295
    .local v0, "$i$f$commonDecodeHex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_45

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 298
    .local v1, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    :goto_1e
    if-ge v3, v4, :cond_3f

    .line 299
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    # invokes: Lokio/internal/-ByteString;->decodeHexDigit(C)I
    invoke-static {v5}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    .line 300
    .local v5, "d1":I
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    # invokes: Lokio/internal/-ByteString;->decodeHexDigit(C)I
    invoke-static {v6}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v6

    .line 301
    .local v6, "d2":I
    add-int v7, v5, v6

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 298
    .end local v5    # "d1":I
    .end local v6    # "d2":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 303
    .end local v3    # "i":I
    :cond_3f
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v1}, Lokio/ByteString;-><init>([B)V

    return-object v2

    .line 366
    .end local v1    # "result":[B
    :cond_45
    const/4 v1, 0x0

    .line 295
    .local v1, "$i$a$-require--ByteString$commonDecodeHex$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected hex string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--ByteString$commonDecodeHex$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 4
    .param p0, "$this$commonEncodeUtf8"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    .local v0, "$i$f$commonEncodeUtf8":I
    new-instance v1, Lokio/ByteString;

    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    .line 283
    .local v1, "byteString":Lokio/ByteString;
    invoke-virtual {v1, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 284
    return-object v1
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 6
    .param p0, "$this$commonEndsWith"    # Lokio/ByteString;
    .param p1, "suffix"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 198
    .local v0, "$i$f$commonEndsWith":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {p0, v1, p1, v2, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    return v1
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .registers 6
    .param p0, "$this$commonEndsWith"    # Lokio/ByteString;
    .param p1, "suffix"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 202
    .local v0, "$i$f$commonEndsWith":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    array-length v2, p1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v1, p1, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 8
    .param p0, "$this$commonEquals"    # Lokio/ByteString;
    .param p1, "other"    # Ljava/lang/Object;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 235
    .local v0, "$i$f$commonEquals":I
    nop

    .line 236
    const/4 v1, 0x1

    if-ne p1, p0, :cond_b

    goto :goto_34

    .line 237
    :cond_b
    instance-of v2, p1, Lokio/ByteString;

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    move-object v2, p1

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    if-ne v2, v4, :cond_31

    move-object v2, p1

    check-cast v2, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v3, v5}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_34

    :cond_31
    move v1, v3

    goto :goto_34

    .line 238
    :cond_33
    move v1, v3

    .line 235
    :goto_34
    return v1
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 4
    .param p0, "$this$commonGetByte"    # Lokio/ByteString;
    .param p1, "pos"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    .local v0, "$i$f$commonGetByte":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, p1

    return v1
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 3
    .param p0, "$this$commonGetSize"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    .local v0, "$i$f$commonGetSize":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 6
    .param p0, "$this$commonHashCode"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 244
    .local v0, "$i$f$commonHashCode":I
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v1

    .line 245
    .local v1, "result":I
    if-eqz v1, :cond_d

    return v1

    .line 246
    :cond_d
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$a$-also--ByteString$commonHashCode$1":I
    invoke-virtual {p0, v3}, Lokio/ByteString;->setHashCode$okio(I)V

    .line 248
    nop

    .line 246
    .end local v3    # "it":I
    .end local v4    # "$i$a$-also--ByteString$commonHashCode$1":I
    return v2
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 13
    .param p0, "$this$commonHex"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 64
    .local v0, "$i$f$commonHex":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 65
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 66
    .local v2, "c":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_3c

    aget-byte v6, v3, v5

    .line 67
    .local v6, "b":B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "c":I
    .local v7, "c":I
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    const/4 v9, 0x4

    .local v9, "other$iv":I
    move v10, v6

    .local v10, "$this$shr$iv":B
    const/4 v11, 0x0

    .line 364
    .local v11, "$i$f$shr":I
    shr-int v9, v10, v9

    .line 67
    .end local v9    # "other$iv":I
    .end local v10    # "$this$shr$iv":B
    .end local v11    # "$i$f$shr":I
    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v2

    .line 68
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "c":I
    .restart local v2    # "c":I
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    const/16 v9, 0xf

    .restart local v9    # "other$iv":I
    .local v10, "$this$and$iv":B
    const/4 v11, 0x0

    .line 365
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .end local v9    # "other$iv":I
    .end local v10    # "$this$and$iv":B
    .end local v11    # "$i$f$and":I
    aget-char v8, v8, v9

    aput-char v8, v1, v7

    .line 66
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 70
    :cond_3c
    invoke-static {v1}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .registers 9
    .param p0, "$this$commonIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    .local v0, "$i$f$commonIndexOf":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    .line 207
    .local v1, "limit":I
    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "i":I
    if-gt v3, v1, :cond_2a

    .line 208
    :goto_19
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v5, p1

    invoke-static {v4, v3, p1, v2, v5}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 209
    return v3

    .line 207
    :cond_25
    if-eq v3, v1, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 212
    .end local v3    # "i":I
    :cond_2a
    const/4 v2, -0x1

    return v2
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 3
    .param p0, "$this$commonInternalArray"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    .local v0, "$i$f$commonInternalArray":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .registers 5
    .param p0, "$this$commonLastIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    .local v0, "$i$f$commonLastIndexOf":I
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v1

    return v1
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .registers 10
    .param p0, "$this$commonLastIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 223
    .local v0, "$i$f$commonLastIndexOf":I
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 224
    .local v1, "fromIndex":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 225
    .local v2, "limit":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "i":I
    :goto_1a
    const/4 v4, -0x1

    if-ge v4, v3, :cond_2d

    .line 226
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v4, v3, p1, v5, v6}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 227
    return v3

    .line 225
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 230
    .end local v3    # "i":I
    :cond_2d
    return v4
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 5
    .param p0, "data"    # [B

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    .local v0, "$i$f$commonOf":I
    new-instance v1, Lokio/ByteString;

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(this, size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 7
    .param p0, "$this$commonRangeEquals"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    .local v0, "$i$f$commonRangeEquals":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-virtual {p2, p3, v1, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 7
    .param p0, "$this$commonRangeEquals"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    .local v0, "$i$f$commonRangeEquals":I
    if-ltz p1, :cond_27

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_27

    .line 173
    if-ltz p3, :cond_27

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_27

    .line 174
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 171
    :goto_28
    return v1
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 5
    .param p0, "$this$commonStartsWith"    # Lokio/ByteString;
    .param p1, "prefix"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    .local v0, "$i$f$commonStartsWith":I
    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    return v1
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .registers 5
    .param p0, "$this$commonStartsWith"    # Lokio/ByteString;
    .param p1, "prefix"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 194
    .local v0, "$i$f$commonStartsWith":I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 8
    .param p0, "$this$commonSubstring"    # Lokio/ByteString;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$commonSubstring":I
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 132
    .local v1, "endIndex":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v3

    :goto_11
    if-eqz v4, :cond_76

    .line 133
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    if-gt v1, v4, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v3

    :goto_1d
    if-eqz v4, :cond_4d

    .line 135
    sub-int v4, v1, p1

    .line 136
    .local v4, "subLen":I
    if-ltz v4, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    if-eqz v2, :cond_3f

    .line 138
    if-nez p1, :cond_31

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_31

    .line 139
    return-object p0

    .line 141
    :cond_31
    new-instance v2, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    invoke-static {v3, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    return-object v2

    .line 366
    :cond_3f
    const/4 v2, 0x0

    .line 136
    .local v2, "$i$a$-require--ByteString$commonSubstring$3":I
    nop

    .end local v2    # "$i$a$-require--ByteString$commonSubstring$3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endIndex < beginIndex"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    .end local v4    # "subLen":I
    :cond_4d
    const/4 v2, 0x0

    .line 133
    .local v2, "$i$a$-require--ByteString$commonSubstring$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require--ByteString$commonSubstring$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_76
    const/4 v2, 0x0

    .line 132
    .local v2, "$i$a$-require--ByteString$commonSubstring$1":I
    nop

    .end local v2    # "$i$a$-require--ByteString$commonSubstring$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "beginIndex < 0"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 9
    .param p0, "$this$commonToAsciiLowercase"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$commonToAsciiLowercase":I
    const/4 v1, 0x0

    .line 77
    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 78
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 79
    .local v2, "c":B
    const/16 v3, 0x41

    if-lt v2, v3, :cond_4d

    const/16 v4, 0x5a

    if-le v2, v4, :cond_1d

    goto :goto_4d

    .line 85
    :cond_1d
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "copyOf(this, size)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .local v5, "lowercase":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v2, 0x20

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 87
    :goto_32
    array-length v1, v5

    if-ge v6, v1, :cond_47

    .line 88
    aget-byte v2, v5, v6

    .line 89
    if-lt v2, v3, :cond_44

    if-le v2, v4, :cond_3c

    goto :goto_44

    .line 93
    :cond_3c
    add-int/lit8 v1, v2, 0x20

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 90
    :cond_44
    :goto_44
    add-int/lit8 v6, v6, 0x1

    .line 91
    goto :goto_32

    .line 96
    :cond_47
    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v5}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 80
    .end local v5    # "lowercase":[B
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_7

    .line 98
    .end local v2    # "c":B
    :cond_50
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 9
    .param p0, "$this$commonToAsciiUppercase"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$commonToAsciiUppercase":I
    const/4 v1, 0x0

    .line 105
    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 106
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 107
    .local v2, "c":B
    const/16 v3, 0x61

    if-lt v2, v3, :cond_4d

    const/16 v4, 0x7a

    if-le v2, v4, :cond_1d

    goto :goto_4d

    .line 113
    :cond_1d
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "copyOf(this, size)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .local v5, "lowercase":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v2, -0x20

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 115
    :goto_32
    array-length v1, v5

    if-ge v6, v1, :cond_47

    .line 116
    aget-byte v2, v5, v6

    .line 117
    if-lt v2, v3, :cond_44

    if-le v2, v4, :cond_3c

    goto :goto_44

    .line 121
    :cond_3c
    add-int/lit8 v1, v2, -0x20

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 118
    :cond_44
    :goto_44
    add-int/lit8 v6, v6, 0x1

    .line 119
    goto :goto_32

    .line 124
    :cond_47
    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v5}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 108
    .end local v5    # "lowercase":[B
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_7

    .line 126
    .end local v2    # "c":B
    :cond_50
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 4
    .param p0, "$this$commonToByteArray"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    .local v0, "$i$f$commonToByteArray":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(this, size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .registers 12
    .param p0, "$this$commonToByteString"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$commonToByteString":I
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter([BI)I

    move-result v1

    .line 276
    .local v1, "byteCount":I
    array-length v2, p0

    int-to-long v3, v2

    int-to-long v5, p1

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 277
    new-instance v2, Lokio/ByteString;

    add-int v3, p1, v1

    invoke-static {p0, p1, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    return-object v2
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 23
    .param p0, "$this$commonToString"    # Lokio/ByteString;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 322
    .local v0, "$i$f$commonToString":I
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v4

    :goto_14
    if-eqz v2, :cond_19

    const-string v2, "[size=0]"

    return-object v2

    .line 324
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    const/16 v5, 0x40

    # invokes: Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I
    invoke-static {v2, v5}, Lokio/internal/-ByteString;->access$codePointIndexToCharIndex([BI)I

    move-result v2

    .line 325
    .local v2, "i":I
    const/4 v6, -0x1

    const-string/jumbo v7, "\u2026]"

    const-string v8, "[size="

    const/16 v9, 0x5d

    if-ne v2, v6, :cond_e5

    .line 326
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    if-gt v6, v5, :cond_50

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ad

    .line 329
    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "beginIndex$iv":I
    const/16 v8, 0x40

    .local v8, "endIndex$iv":I
    move-object/from16 v9, p0

    .local v9, "$this$commonSubstring$iv":Lokio/ByteString;
    const/4 v10, 0x0

    .line 369
    .local v10, "$i$f$commonSubstring":I
    invoke-static {v9, v8}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v11

    .line 370
    .local v11, "endIndex$iv":I
    nop

    .line 372
    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v12

    array-length v12, v12

    if-gt v11, v12, :cond_7c

    move v12, v3

    goto :goto_7d

    :cond_7c
    move v12, v4

    :goto_7d
    if-eqz v12, :cond_bc

    .line 374
    sub-int v12, v11, v6

    .line 375
    .local v12, "subLen$iv":I
    if-ltz v12, :cond_84

    goto :goto_85

    :cond_84
    move v3, v4

    :goto_85
    if-eqz v3, :cond_ae

    .line 377
    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v11, v3, :cond_8f

    .line 378
    goto :goto_9d

    .line 380
    :cond_8f
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    invoke-static {v4, v6, v11}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v9, v3

    .line 329
    .end local v6    # "beginIndex$iv":I
    .end local v8    # "endIndex$iv":I
    .end local v9    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "endIndex$iv":I
    .end local v12    # "subLen$iv":I
    :goto_9d
    invoke-virtual {v9}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    :goto_ad
    return-object v3

    .line 371
    .restart local v6    # "beginIndex$iv":I
    .restart local v8    # "endIndex$iv":I
    .restart local v9    # "$this$commonSubstring$iv":Lokio/ByteString;
    .restart local v10    # "$i$f$commonSubstring":I
    .restart local v11    # "endIndex$iv":I
    .restart local v12    # "subLen$iv":I
    :cond_ae
    const/4 v3, 0x0

    .line 375
    .local v3, "$i$a$-require--ByteString$commonSubstring$3$iv":I
    nop

    .end local v3    # "$i$a$-require--ByteString$commonSubstring$3$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endIndex < beginIndex"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    .end local v12    # "subLen$iv":I
    :cond_bc
    const/4 v3, 0x0

    .line 372
    .local v3, "$i$a$-require--ByteString$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex > length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require--ByteString$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 333
    .end local v6    # "beginIndex$iv":I
    .end local v8    # "endIndex$iv":I
    .end local v9    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "endIndex$iv":I
    :cond_e5
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    const-string v11, "\\"

    const-string v12, "\\\\"

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 336
    const-string v17, "\n"

    const-string v18, "\\n"

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 337
    const-string v11, "\r"

    const-string v12, "\\r"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 334
    nop

    .line 338
    .local v4, "safeText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_140

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_157

    .line 341
    :cond_140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    :goto_157
    return-object v5
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 4
    .param p0, "$this$commonUtf8"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$commonUtf8":I
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 46
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v2

    invoke-static {v2}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 49
    :cond_17
    return-object v1
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5
    .param p0, "$this$commonWrite"    # Lokio/ByteString;
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 309
    return-void
.end method

.method private static final decodeHexDigit(C)I
    .registers 4
    .param p0, "c"    # C

    .line 312
    nop

    .line 313
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_d

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-eqz v0, :cond_13

    add-int/lit8 v0, p0, -0x30

    goto :goto_35

    .line 314
    :cond_13
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1d

    const/16 v0, 0x67

    if-ge p0, v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    if-eqz v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_35

    .line 315
    :cond_25
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2e

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    if-eqz v1, :cond_36

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 312
    :goto_35
    return v0

    .line 316
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    .line 59
    sget-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .registers 0

    return-void
.end method
