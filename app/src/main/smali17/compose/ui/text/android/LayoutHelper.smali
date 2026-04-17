.class public final Landroidx/compose/ui/text/android/LayoutHelper;
.super Ljava/lang/Object;
.source "LayoutHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutHelper.kt\nandroidx/compose/ui/text/android/LayoutHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,377:1\n1#2:378\n1627#3,6:379\n1627#3,6:385\n*S KotlinDebug\n*F\n+ 1 LayoutHelper.kt\nandroidx/compose/ui/text/android/LayoutHelper\n*L\n283#1:379,6\n322#1:385,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000c\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\'B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0015\u001a\u00020\rJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u001e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aJ\u0010\u0010\u001e\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\rJ\u001a\u0010\u001f\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001aJ\u0010\u0010 \u001a\u00020\r2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\rJ\u000e\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020\u001a2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\rJ\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/ui/text/android/LayoutHelper;",
        "",
        "layout",
        "Landroid/text/Layout;",
        "(Landroid/text/Layout;)V",
        "bidiProcessedParagraphs",
        "",
        "getLayout",
        "()Landroid/text/Layout;",
        "paragraphBidi",
        "",
        "Ljava/text/Bidi;",
        "paragraphCount",
        "",
        "getParagraphCount",
        "()I",
        "paragraphEnds",
        "",
        "tmpBuffer",
        "",
        "analyzeBidi",
        "paragraphIndex",
        "getDownstreamHorizontal",
        "",
        "offset",
        "primary",
        "",
        "getHorizontalPosition",
        "usePrimaryDirection",
        "upstream",
        "getParagraphEnd",
        "getParagraphForOffset",
        "getParagraphStart",
        "isLineEndSpace",
        "c",
        "",
        "isRtlParagraph",
        "lineEndToVisibleEnd",
        "lineEnd",
        "BidiRun",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bidiProcessedParagraphs:[Z

.field private final layout:Landroid/text/Layout;

.field private final paragraphBidi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/Bidi;",
            ">;"
        }
    .end annotation
.end field

.field private final paragraphCount:I

.field private final paragraphEnds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tmpBuffer:[C


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .registers 10
    .param p1, "layout"    # Landroid/text/Layout;

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 50
    nop

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "paragraphEnd":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 54
    .local v1, "lineFeeds":Ljava/util/List;
    :cond_13
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "layout.text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v4, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 55
    if-gez v0, :cond_35

    .line 57
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_37

    .line 60
    :cond_35
    add-int/lit8 v0, v0, 0x1

    .line 62
    :goto_37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_13

    .line 64
    iput-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_56
    if-ge v4, v2, :cond_61

    .line 378
    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .line 65
    .local v6, "$i$a$-MutableList-LayoutHelper$1":I
    const/4 v5, 0x0

    .end local v5    # "it":I
    .end local v6    # "$i$a$-MutableList-LayoutHelper$1":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    :cond_61
    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    .line 66
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    .line 67
    .end local v0    # "paragraphEnd":I
    .end local v1    # "lineFeeds":Ljava/util/List;
    nop

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphCount:I

    .line 34
    return-void
.end method

.method private final getDownstreamHorizontal(IZ)F
    .registers 4
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 352
    if-eqz p2, :cond_9

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_f

    .line 355
    :cond_9
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    .line 356
    :goto_f
    return v0
.end method

.method public static synthetic getParagraphForOffset$default(Landroidx/compose/ui/text/android/LayoutHelper;IZILjava/lang/Object;)I
    .registers 5

    .line 156
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphForOffset(IZ)I

    move-result p0

    return p0
.end method

.method private final lineEndToVisibleEnd(I)I
    .registers 5
    .param p1, "lineEnd"    # I

    .line 362
    move v0, p1

    .line 363
    .local v0, "visibleEnd":I
    :goto_1
    if-lez v0, :cond_19

    .line 364
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/android/LayoutHelper;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 367
    :cond_18
    nop

    .line 370
    :cond_19
    return v0
.end method


# virtual methods
.method public final analyzeBidi(I)Ljava/text/Bidi;
    .registers 16
    .param p1, "paragraphIndex"    # I

    .line 82
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_f

    .line 83
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Bidi;

    return-object v0

    .line 86
    :cond_f
    const/4 v0, 0x0

    if-nez p1, :cond_14

    move v1, v0

    goto :goto_22

    :cond_14
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 87
    .local v1, "paragraphStart":I
    :goto_22
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 88
    .local v2, "paragraphEnd":I
    sub-int v10, v2, v1

    .line 99
    .local v10, "paragraphLength":I
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 100
    .local v3, "buffer":[C
    if-eqz v3, :cond_3a

    array-length v4, v3

    if-ge v4, v10, :cond_38

    goto :goto_3a

    .line 103
    :cond_38
    move-object v4, v3

    goto :goto_3c

    .line 101
    :cond_3a
    :goto_3a
    new-array v4, v10, [C

    .line 100
    :goto_3c
    move-object v11, v4

    .line 105
    .end local v3    # "buffer":[C
    .local v11, "buffer":[C
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v1, v2, v11, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 107
    invoke-static {v11, v0, v10}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_6d

    .line 108
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->isRtlParagraph(I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 109
    move v9, v13

    goto :goto_57

    .line 111
    :cond_56
    move v9, v0

    .line 108
    :goto_57
    nop

    .line 113
    .local v9, "flag":I
    new-instance v0, Ljava/text/Bidi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, v11

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 115
    .local v0, "bidi":Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->getRunCount()I

    move-result v3

    if-ne v3, v13, :cond_6b

    .line 118
    move-object v0, v12

    goto :goto_6e

    .line 120
    :cond_6b
    nop

    .end local v0    # "bidi":Ljava/text/Bidi;
    .end local v9    # "flag":I
    goto :goto_6e

    .line 123
    :cond_6d
    move-object v0, v12

    .line 107
    :goto_6e
    nop

    .line 126
    .local v0, "result":Ljava/text/Bidi;
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    aput-boolean v13, v3, p1

    .line 129
    if-eqz v0, :cond_81

    .line 132
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    if-ne v11, v3, :cond_7f

    goto :goto_82

    :cond_7f
    move-object v12, v3

    goto :goto_82

    .line 136
    :cond_81
    move-object v12, v11

    .line 129
    :goto_82
    iput-object v12, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 138
    return-object v0
.end method

.method public final getHorizontalPosition(IZZ)F
    .registers 26
    .param p1, "offset"    # I
    .param p2, "usePrimaryDirection"    # Z
    .param p3, "upstream"    # Z

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    if-nez v2, :cond_d

    .line 226
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v3

    return v3

    .line 229
    :cond_d
    iget-object v3, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v3

    .line 230
    .local v3, "lineNo":I
    iget-object v4, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 231
    .local v4, "lineStart":I
    iget-object v5, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 235
    .local v5, "lineEnd":I
    if-eq v1, v4, :cond_28

    if-eq v1, v5, :cond_28

    .line 236
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v6

    return v6

    .line 241
    :cond_28
    if-eqz v1, :cond_1de

    iget-object v6, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v1, v6, :cond_3a

    move/from16 v18, v5

    goto/16 :goto_1e0

    .line 245
    :cond_3a
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphForOffset(IZ)I

    move-result v6

    .line 246
    .local v6, "paraNo":I
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->isRtlParagraph(I)Z

    move-result v7

    .line 250
    .local v7, "isParaRtl":Z
    invoke-direct {v0, v5}, Landroidx/compose/ui/text/android/LayoutHelper;->lineEndToVisibleEnd(I)I

    move-result v8

    .line 251
    .local v8, "lineVisibleEnd":I
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v9

    .line 252
    .local v9, "paragraphStart":I
    sub-int v10, v4, v9

    .line 253
    .local v10, "bidiStart":I
    sub-int v11, v8, v9

    .line 254
    .local v11, "bidiEnd":I
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->analyzeBidi(I)Ljava/text/Bidi;

    move-result-object v12

    if-eqz v12, :cond_59

    invoke-virtual {v12, v10, v11}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v12

    goto :goto_5a

    :cond_59
    const/4 v12, 0x0

    .line 255
    .local v12, "lineBidi":Ljava/text/Bidi;
    :goto_5a
    const/4 v14, 0x1

    if-eqz v12, :cond_1ab

    invoke-virtual {v12}, Ljava/text/Bidi;->getRunCount()I

    move-result v15

    if-ne v15, v14, :cond_6d

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v17, v10

    goto/16 :goto_1b3

    .line 267
    :cond_6d
    invoke-virtual {v12}, Ljava/text/Bidi;->getRunCount()I

    move-result v15

    new-array v13, v15, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    const/4 v14, 0x0

    :goto_74
    if-ge v14, v15, :cond_aa

    .line 272
    new-instance v2, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 273
    invoke-virtual {v12, v14}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v17

    move/from16 v18, v5

    .end local v5    # "lineEnd":I
    .local v18, "lineEnd":I
    add-int v5, v4, v17

    .line 274
    invoke-virtual {v12, v14}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v17

    move/from16 v19, v6

    .end local v6    # "paraNo":I
    .local v19, "paraNo":I
    add-int v6, v4, v17

    .line 275
    invoke-virtual {v12, v14}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v17

    move/from16 v20, v9

    .end local v9    # "paragraphStart":I
    .local v20, "paragraphStart":I
    rem-int/lit8 v9, v17, 0x2

    move/from16 v17, v10

    const/4 v10, 0x1

    .end local v10    # "bidiStart":I
    .local v17, "bidiStart":I
    if-ne v9, v10, :cond_97

    move v9, v10

    goto :goto_98

    :cond_97
    const/4 v9, 0x0

    .line 272
    :goto_98
    invoke-direct {v2, v5, v6, v9}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    aput-object v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    .line 267
    move/from16 v2, p3

    move/from16 v10, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v9, v20

    goto :goto_74

    .end local v17    # "bidiStart":I
    .end local v18    # "lineEnd":I
    .end local v19    # "paraNo":I
    .end local v20    # "paragraphStart":I
    .restart local v5    # "lineEnd":I
    .restart local v6    # "paraNo":I
    .restart local v9    # "paragraphStart":I
    .restart local v10    # "bidiStart":I
    :cond_aa
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v17, v10

    const/4 v10, 0x1

    .end local v5    # "lineEnd":I
    .end local v6    # "paraNo":I
    .end local v9    # "paragraphStart":I
    .end local v10    # "bidiStart":I
    .restart local v17    # "bidiStart":I
    .restart local v18    # "lineEnd":I
    .restart local v19    # "paraNo":I
    .restart local v20    # "paragraphStart":I
    move-object v2, v13

    .line 278
    .local v2, "runs":[Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    invoke-virtual {v12}, Ljava/text/Bidi;->getRunCount()I

    move-result v5

    new-array v6, v5, [B

    const/4 v9, 0x0

    :goto_bb
    if-ge v9, v5, :cond_c7

    invoke-virtual {v12, v9}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_bb

    :cond_c7
    move-object v5, v6

    .line 279
    .local v5, "levels":[B
    array-length v6, v2

    const/4 v9, 0x0

    invoke-static {v5, v9, v2, v9, v6}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 281
    if-ne v1, v4, :cond_139

    .line 283
    move-object v13, v2

    .local v13, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 379
    .local v14, "$i$f$indexOfFirst":I
    const/4 v15, 0x0

    .local v15, "index$iv":I
    array-length v6, v13

    :goto_d3
    if-ge v15, v6, :cond_ea

    .line 380
    aget-object v16, v13, v15

    .local v16, "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    const/16 v21, 0x0

    .line 283
    .local v21, "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    move-result v9

    if-ne v9, v1, :cond_e1

    move v9, v10

    goto :goto_e2

    :cond_e1
    const/4 v9, 0x0

    .line 380
    .end local v16    # "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v21    # "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$1":I
    :goto_e2
    if-eqz v9, :cond_e6

    .line 381
    move v6, v15

    goto :goto_eb

    .line 379
    :cond_e6
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_d3

    .line 384
    .end local v15    # "index$iv":I
    :cond_ea
    const/4 v6, -0x1

    .line 283
    .end local v13    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v14    # "$i$f$indexOfFirst":I
    :goto_eb
    nop

    .line 284
    .local v6, "index":I
    aget-object v9, v2, v6

    .line 286
    .local v9, "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    if-nez p2, :cond_f9

    invoke-virtual {v9}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl()Z

    move-result v13

    if-ne v7, v13, :cond_f7

    goto :goto_f9

    .line 289
    :cond_f7
    move v13, v7

    goto :goto_fe

    .line 287
    :cond_f9
    :goto_f9
    if-nez v7, :cond_fd

    move v13, v10

    goto :goto_fe

    :cond_fd
    const/4 v13, 0x0

    .line 286
    :goto_fe
    move v10, v13

    .line 292
    .local v10, "isLeftRequested":Z
    if-nez v6, :cond_10a

    if-eqz v10, :cond_10a

    .line 294
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v13

    return v13

    .line 295
    :cond_10a
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v13

    if-ne v6, v13, :cond_119

    if-nez v10, :cond_119

    .line 297
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    return v13

    .line 298
    :cond_119
    if-eqz v10, :cond_12a

    .line 303
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v14, v6, -0x1

    aget-object v14, v2, v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    return v13

    .line 309
    :cond_12a
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v14, v6, 0x1

    aget-object v14, v2, v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    return v13

    .line 316
    .end local v6    # "index":I
    .end local v9    # "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v10    # "isLeftRequested":Z
    :cond_139
    if-le v1, v8, :cond_140

    .line 317
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/text/android/LayoutHelper;->lineEndToVisibleEnd(I)I

    move-result v6

    goto :goto_141

    .line 319
    :cond_140
    move v6, v1

    .line 316
    :goto_141
    nop

    .line 322
    .local v6, "lineEndAdjustedOffset":I
    move-object v9, v2

    .local v9, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v13, 0x0

    .line 385
    .local v13, "$i$f$indexOfFirst":I
    const/4 v14, 0x0

    .local v14, "index$iv":I
    array-length v15, v9

    :goto_146
    if-ge v14, v15, :cond_15c

    .line 386
    aget-object v16, v9, v14

    .restart local v16    # "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    const/16 v21, 0x0

    .line 322
    .local v21, "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$2":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    move-result v10

    if-ne v10, v6, :cond_154

    const/4 v10, 0x1

    goto :goto_155

    :cond_154
    const/4 v10, 0x0

    .line 386
    .end local v16    # "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v21    # "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$2":I
    :goto_155
    if-eqz v10, :cond_158

    .line 387
    goto :goto_15d

    .line 385
    :cond_158
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto :goto_146

    .line 390
    .end local v14    # "index$iv":I
    :cond_15c
    const/4 v14, -0x1

    .line 322
    .end local v9    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v13    # "$i$f$indexOfFirst":I
    :goto_15d
    move v9, v14

    .line 323
    .local v9, "index":I
    aget-object v10, v2, v9

    .line 325
    .local v10, "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    if-nez p2, :cond_16f

    invoke-virtual {v10}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl()Z

    move-result v13

    if-ne v7, v13, :cond_169

    goto :goto_16f

    .line 328
    :cond_169
    if-nez v7, :cond_16d

    const/4 v13, 0x1

    goto :goto_170

    :cond_16d
    const/4 v13, 0x0

    goto :goto_170

    .line 326
    :cond_16f
    :goto_16f
    move v13, v7

    .line 325
    :goto_170
    nop

    .line 330
    .local v13, "isLeftRequested":Z
    if-nez v9, :cond_17c

    if-eqz v13, :cond_17c

    .line 332
    iget-object v14, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v14, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v14

    return v14

    .line 333
    :cond_17c
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v14

    if-ne v9, v14, :cond_18b

    if-nez v13, :cond_18b

    .line 335
    iget-object v14, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v14, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v14

    return v14

    .line 336
    :cond_18b
    if-eqz v13, :cond_19c

    .line 341
    iget-object v14, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v15, v9, -0x1

    aget-object v15, v2, v15

    invoke-virtual {v15}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v14

    return v14

    .line 347
    :cond_19c
    iget-object v14, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v15, v9, 0x1

    aget-object v15, v2, v15

    invoke-virtual {v15}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v14

    return v14

    .line 255
    .end local v2    # "runs":[Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v13    # "isLeftRequested":Z
    .end local v17    # "bidiStart":I
    .end local v18    # "lineEnd":I
    .end local v19    # "paraNo":I
    .end local v20    # "paragraphStart":I
    .local v5, "lineEnd":I
    .local v6, "paraNo":I
    .local v9, "paragraphStart":I
    .local v10, "bidiStart":I
    :cond_1ab
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v17, v10

    .line 256
    .end local v5    # "lineEnd":I
    .end local v6    # "paraNo":I
    .end local v9    # "paragraphStart":I
    .end local v10    # "bidiStart":I
    .restart local v17    # "bidiStart":I
    .restart local v18    # "lineEnd":I
    .restart local v19    # "paraNo":I
    .restart local v20    # "paragraphStart":I
    :goto_1b3
    iget-object v2, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    .line 257
    .local v2, "runDirection":Z
    if-nez p2, :cond_1c0

    if-ne v7, v2, :cond_1be

    goto :goto_1c0

    .line 260
    :cond_1be
    move v5, v7

    goto :goto_1c5

    .line 258
    :cond_1c0
    :goto_1c0
    if-nez v7, :cond_1c4

    const/4 v5, 0x1

    goto :goto_1c5

    :cond_1c4
    const/4 v5, 0x0

    .line 257
    :goto_1c5
    nop

    .line 262
    .local v5, "isStartLeft":Z
    if-ne v1, v4, :cond_1ca

    move v13, v5

    goto :goto_1cf

    :cond_1ca
    if-nez v5, :cond_1ce

    const/4 v13, 0x1

    goto :goto_1cf

    :cond_1ce
    const/4 v13, 0x0

    :goto_1cf
    move v6, v13

    .line 263
    .local v6, "isOffsetLeft":Z
    iget-object v9, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    if-eqz v6, :cond_1d9

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    goto :goto_1dd

    :cond_1d9
    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    :goto_1dd
    return v9

    .line 241
    .end local v2    # "runDirection":Z
    .end local v6    # "isOffsetLeft":Z
    .end local v7    # "isParaRtl":Z
    .end local v8    # "lineVisibleEnd":I
    .end local v11    # "bidiEnd":I
    .end local v12    # "lineBidi":Ljava/text/Bidi;
    .end local v17    # "bidiStart":I
    .end local v18    # "lineEnd":I
    .end local v19    # "paraNo":I
    .end local v20    # "paragraphStart":I
    .local v5, "lineEnd":I
    :cond_1de
    move/from16 v18, v5

    .line 242
    .end local v5    # "lineEnd":I
    .restart local v18    # "lineEnd":I
    :goto_1e0
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v2

    return v2
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .line 34
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getParagraphCount()I
    .registers 2

    .line 144
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphCount:I

    return v0
.end method

.method public final getParagraphEnd(I)I
    .registers 3
    .param p1, "paragraphIndex"    # I

    .line 183
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getParagraphForOffset(IZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "upstream"    # Z

    .line 157
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$a$-let-LayoutHelper$getParagraphForOffset$paragraphIndex$1":I
    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_16

    neg-int v2, v2

    .line 157
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-LayoutHelper$getParagraphForOffset$paragraphIndex$1":I
    :cond_16
    move v0, v2

    .line 161
    .local v0, "paragraphIndex":I
    if-eqz p2, :cond_2e

    if-lez v0, :cond_2e

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2e

    .line 162
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 165
    :cond_2e
    return v0
.end method

.method public final getParagraphStart(I)I
    .registers 4
    .param p1, "paragraphIndex"    # I

    .line 175
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_12

    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_12
    return v0
.end method

.method public final isLineEndSpace(C)Z
    .registers 5
    .param p1, "c"    # C

    .line 375
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2a

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_2a

    .line 376
    const/16 v0, 0x2000

    const/4 v2, 0x0

    if-gt v0, p1, :cond_18

    const/16 v0, 0x200b

    if-ge p1, v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    if-eqz v0, :cond_1f

    const/16 v0, 0x2007

    if-ne p1, v0, :cond_2a

    :cond_1f
    const/16 v0, 0x205f

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_28

    goto :goto_2a

    :cond_28
    move v1, v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    :goto_2b
    return v1
.end method

.method public final isRtlParagraph(I)Z
    .registers 5
    .param p1, "paragraphIndex"    # I

    .line 192
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 193
    .local v0, "lineNumber":I
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method
