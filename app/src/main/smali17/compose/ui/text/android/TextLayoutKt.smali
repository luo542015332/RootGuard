.class public final Landroidx/compose/ui/text/android/TextLayoutKt;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n+ 2 InlineClassUtils.kt\nandroidx/compose/ui/text/android/InlineClassUtilsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,1033:1\n25#2:1034\n26#3:1035\n26#3:1036\n*S KotlinDebug\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n*L\n886#1:1034\n1024#1:1035\n1028#1:1036\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0000\u001a1\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00a2\u0006\u0002\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u0003*\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u000fH\u0002\u00a2\u0006\u0002\u0010\u001a\u001a\u0014\u0010\u001b\u001a\u00020\u0003*\u00020\u000fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u0014\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "SharedTextAndroidCanvas",
        "Landroidx/compose/ui/text/android/TextAndroidCanvas;",
        "ZeroVerticalPadding",
        "Landroidx/compose/ui/text/android/VerticalPaddings;",
        "J",
        "VerticalPaddings",
        "topPadding",
        "",
        "bottomPadding",
        "(II)J",
        "getTextDirectionHeuristic",
        "Landroid/text/TextDirectionHeuristic;",
        "textDirectionHeuristic",
        "getLastLineMetrics",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "Landroidx/compose/ui/text/android/TextLayout;",
        "textPaint",
        "Landroid/text/TextPaint;",
        "frameworkTextDir",
        "lineHeightSpans",
        "",
        "Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;",
        "getLineHeightPaddings",
        "(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J",
        "getLineHeightSpans",
        "(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "getVerticalPaddings",
        "(Landroidx/compose/ui/text/android/TextLayout;)J",
        "isLineEllipsized",
        "",
        "Landroid/text/Layout;",
        "lineIndex",
        "ui-text_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

.field private static final ZeroVerticalPadding:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    .line 944
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    return-void
.end method

.method public static final VerticalPaddings(II)J
    .registers 9
    .param p0, "topPadding"    # I
    .param p1, "bottomPadding"    # I

    .line 886
    const/4 v0, 0x0

    .line 1034
    .local v0, "$i$f$packInts":I
    int-to-long v1, p0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    .line 886
    .end local v0    # "$i$f$packInts":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/VerticalPaddings;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 5
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "frameworkTextDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .registers 4
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .registers 2
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSharedTextAndroidCanvas$p()Landroidx/compose/ui/text/android/TextAndroidCanvas;
    .registers 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    return-object v0
.end method

.method public static final synthetic access$getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .registers 3
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 36
    .param p0, "$this$getLastLineMetrics"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "frameworkTextDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 977
    .local v0, "lastLine":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-ne v2, v3, :cond_bc

    .line 978
    move-object/from16 v2, p3

    array-length v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    xor-int/2addr v1, v3

    if-eqz v1, :cond_be

    .line 980
    new-instance v1, Landroid/text/SpannableString;

    const-string/jumbo v3, "\u200b"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 981
    .local v1, "emptyText":Landroid/text/SpannableString;
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 982
    .local v3, "lineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    nop

    .line 983
    nop

    .line 984
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 985
    if-eqz v0, :cond_44

    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 986
    move v6, v4

    goto :goto_48

    .line 988
    :cond_44
    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v6

    .line 982
    :goto_48
    invoke-virtual {v3, v4, v5, v6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->copy$ui_text_release(IIZ)Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object v5

    .line 992
    .local v5, "newLineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    nop

    .line 993
    nop

    .line 994
    nop

    .line 995
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 996
    nop

    .line 992
    const/16 v7, 0x21

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 999
    sget-object v8, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 1002
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v11

    .line 1006
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v22

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getFallbackLineSpacing()Z

    move-result v23

    .line 999
    nop

    .line 1000
    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    .line 1001
    const/4 v10, 0x0

    .line 1002
    nop

    .line 1004
    nop

    .line 1003
    const v13, 0x7fffffff

    .line 1005
    nop

    .line 999
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1006
    nop

    .line 1007
    nop

    .line 999
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x1f9fc0

    const/16 v31, 0x0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v31}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create$default(Landroidx/compose/ui/text/android/StaticLayoutFactory;Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[IILjava/lang/Object;)Landroid/text/StaticLayout;

    move-result-object v6

    .line 1010
    .local v6, "tmpLayout":Landroid/text/StaticLayout;
    new-instance v7, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v7}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v8, v7

    .local v8, "$this$getLastLineMetrics_u24lambda_u240":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v9, 0x0

    .line 1011
    .local v9, "$i$a$-apply-TextLayoutKt$getLastLineMetrics$lastLineFontMetrics$1":I
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1012
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1013
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1014
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    iput v4, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1015
    nop

    .line 1010
    .end local v8    # "$this$getLastLineMetrics_u24lambda_u240":Landroid/graphics/Paint$FontMetricsInt;
    .end local v9    # "$i$a$-apply-TextLayoutKt$getLastLineMetrics$lastLineFontMetrics$1":I
    move-object v4, v7

    .line 1017
    .local v4, "lastLineFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    return-object v4

    .line 977
    .end local v1    # "emptyText":Landroid/text/SpannableString;
    .end local v3    # "lineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .end local v4    # "lastLineFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "newLineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .end local v6    # "tmpLayout":Landroid/text/StaticLayout;
    :cond_bc
    move-object/from16 v2, p3

    .line 1019
    :cond_be
    const/4 v1, 0x0

    return-object v1
.end method

.method private static final getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .registers 8
    .param p0, "$this$getLineHeightPaddings"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, "firstAscentDiff":I
    const/4 v1, 0x0

    .line 953
    .local v1, "lastDescentDiff":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_2f

    aget-object v4, p1, v3

    .line 954
    .local v4, "span":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v5

    if-gez v5, :cond_1a

    .line 955
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 957
    :cond_1a
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v5

    if-gez v5, :cond_2c

    .line 958
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 953
    .end local v4    # "span":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 962
    :cond_2f
    if-nez v0, :cond_36

    if-nez v1, :cond_36

    .line 963
    sget-wide v2, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    goto :goto_3a

    .line 965
    :cond_36
    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v2

    .line 962
    :goto_3a
    return-wide v2
.end method

.method private static final getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .registers 5
    .param p0, "$this$getLineHeightSpans"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 1024
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 1035
    .local v0, "$i$f$emptyArray":I
    new-array v0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1024
    .end local v0    # "$i$f$emptyArray":I
    return-object v0

    .line 1025
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    .line 1026
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1025
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1028
    .local v0, "lineHeightStyleSpans":[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    const-string v2, "lineHeightStyleSpans"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    if-nez v2, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    if-eqz v2, :cond_39

    const/4 v2, 0x0

    .line 1036
    .local v2, "$i$f$emptyArray":I
    new-array v1, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1028
    .end local v2    # "$i$f$emptyArray":I
    return-object v1

    .line 1029
    :cond_39
    return-object v0
.end method

.method public static final getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;
    .registers 3
    .param p0, "textDirectionHeuristic"    # I

    .line 835
    const-string v0, "FIRSTSTRONG_LTR"

    packed-switch p0, :pswitch_data_3c

    .line 842
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3a

    .line 837
    :pswitch_c
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    const-string v1, "LOCALE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3a

    .line 840
    :pswitch_14
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v1, "ANYRTL_LTR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3a

    .line 839
    :pswitch_1c
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const-string v1, "FIRSTSTRONG_RTL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3a

    .line 841
    :pswitch_24
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3a

    .line 838
    :pswitch_2b
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    const-string v1, "RTL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3a

    .line 836
    :pswitch_33
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const-string v1, "LTR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    :goto_3a
    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method

.method private static final getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .registers 11
    .param p0, "$this$getVerticalPaddings"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 900
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->isFallbackLinespacingApplied$ui_text_release()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_a5

    .line 902
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 903
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 905
    .local v1, "text":Ljava/lang/CharSequence;
    const-string v2, "paint"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    const-string/jumbo v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 908
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 905
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 910
    .local v2, "firstLineTextBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    .line 914
    .local v3, "ascent":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v4, v3, :cond_4f

    .line 915
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v4

    goto :goto_57

    .line 917
    :cond_4f
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getTopPadding()I

    move-result v4

    .line 914
    :goto_57
    nop

    .line 920
    .local v4, "topPadding":I
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_61

    .line 922
    move-object v7, v2

    goto :goto_7a

    .line 924
    :cond_61
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v6

    .line 925
    .local v5, "line":I
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v7

    .line 920
    .end local v5    # "line":I
    :goto_7a
    move-object v5, v7

    .line 927
    .local v5, "lastLineTextBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v6

    .line 931
    .local v6, "descent":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v7, v6, :cond_90

    .line 932
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    goto :goto_98

    .line 934
    :cond_90
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/Layout;->getBottomPadding()I

    move-result v7

    .line 931
    :goto_98
    nop

    .line 937
    .local v7, "bottomPadding":I
    if-nez v4, :cond_a0

    if-nez v7, :cond_a0

    .line 938
    sget-wide v8, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    goto :goto_a4

    .line 940
    :cond_a0
    invoke-static {v4, v7}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v8

    .line 937
    :goto_a4
    return-wide v8

    .line 900
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "firstLineTextBounds":Landroid/graphics/Rect;
    .end local v3    # "ascent":I
    .end local v4    # "topPadding":I
    .end local v5    # "lastLineTextBounds":Landroid/graphics/Rect;
    .end local v6    # "descent":I
    .end local v7    # "bottomPadding":I
    :cond_a5
    :goto_a5
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    return-wide v0
.end method

.method public static final isLineEllipsized(Landroid/text/Layout;I)Z
    .registers 3
    .param p0, "$this$isLineEllipsized"    # Landroid/text/Layout;
    .param p1, "lineIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
