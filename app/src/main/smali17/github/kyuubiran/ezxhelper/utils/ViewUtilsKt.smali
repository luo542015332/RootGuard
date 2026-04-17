.class public final Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewUtils.kt\ncom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt\n*L\n1#1,121:1\n21#1:122\n21#1:123\n27#1:124\n21#1,10:125\n27#1:135\n21#1,10:136\n*S KotlinDebug\n*F\n+ 1 ViewUtils.kt\ncom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt\n*L\n27#1:122\n36#1:123\n59#1:124\n59#1:125,10\n76#1:135\n76#1:136,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u001a3\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c*\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000f\u001a/\u0010\u0013\u001a\u0004\u0018\u00010\r*\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000f\u001a>\u0010\u0014\u001a\u0004\u0018\u0001H\u0015\"\u0008\u0008\u0000\u0010\u0015*\u00020\r*\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000f\u00a2\u0006\u0002\u0010\u0016\u001a\u0014\u0010\u0017\u001a\u0004\u0018\u00010\r*\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u0014\u0010\u0017\u001a\u0004\u0018\u00010\r*\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0008\u001a3\u0010\u0019\u001a\u00020\u001a*\u00020\u00022!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u001a0\u000fH\u0086\u0008\u00f8\u0001\u0000\u001aH\u0010\u001c\u001a\u00020\u001a*\u00020\u000226\u0010\u001b\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u001e\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u001a0\u001dH\u0086\u0008\u00f8\u0001\u0000\u001a\n\u0010\u001f\u001a\u00020\u0012*\u00020\u0002\u001a\n\u0010 \u001a\u00020\u0012*\u00020\u0002\u001a\n\u0010!\u001a\u00020\u001a*\u00020\r\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "indices",
        "Lkotlin/ranges/IntRange;",
        "Landroid/view/ViewGroup;",
        "getIndices",
        "(Landroid/view/ViewGroup;)Lkotlin/ranges/IntRange;",
        "getIdByName",
        "",
        "name",
        "",
        "ctx",
        "Landroid/content/Context;",
        "findAllViewsByCondition",
        "",
        "Landroid/view/View;",
        "condition",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "view",
        "",
        "findViewByCondition",
        "findViewByConditionAs",
        "T",
        "(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Landroid/view/View;",
        "findViewByIdName",
        "Landroid/app/Activity;",
        "forEach",
        "",
        "action",
        "forEachIndexed",
        "Lkotlin/Function2;",
        "index",
        "isEmpty",
        "isNotEmpty",
        "setViewZeroSize",
        "EzXHelper_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final findAllViewsByCondition(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .registers 11
    .param p0, "$this$findAllViewsByCondition"    # Landroid/view/ViewGroup;
    .param p1, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 76
    .local v0, "list":Ljava/util/List;
    move-object v1, p0

    .local v1, "$this$forEach$iv":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 135
    .local v2, "$i$f$forEach":I
    move-object v3, v1

    .local v3, "$this$indices$iv$iv":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 136
    .local v4, "$i$f$getIndices":I
    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    .line 135
    .end local v3    # "$this$indices$iv$iv":Landroid/view/ViewGroup;
    .end local v4    # "$i$f$getIndices":I
    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v4

    .local v4, "index$iv":I
    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v3

    if-gt v4, v3, :cond_64

    .line 143
    :goto_28
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "getChildAt(index)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v5, "it":Landroid/view/View;
    const/4 v6, 0x0

    .line 77
    .local v6, "$i$a$-forEach-ViewUtilsKt$findAllViewsByCondition$1":I
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 78
    :cond_42
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5e

    .line 79
    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v7, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;->findAllViewsByCondition(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v7

    .line 80
    .local v7, "v":Ljava/util/List;
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5e

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .end local v7    # "v":Ljava/util/List;
    :cond_5e
    :goto_5e
    nop

    .line 135
    .end local v5    # "it":Landroid/view/View;
    .end local v6    # "$i$a$-forEach-ViewUtilsKt$findAllViewsByCondition$1":I
    if-eq v4, v3, :cond_64

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 145
    .end local v4    # "index$iv":I
    :cond_64
    nop

    .line 83
    .end local v1    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v2    # "$i$f$forEach":I
    return-object v0
.end method

.method public static final findViewByCondition(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
    .registers 9
    .param p0, "$this$findViewByCondition"    # Landroid/view/ViewGroup;
    .param p1, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v0, p0

    .local v0, "$this$forEach$iv":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$forEach":I
    move-object v2, v0

    .local v2, "$this$indices$iv$iv":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 125
    .local v3, "$i$f$getIndices":I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 124
    .end local v2    # "$this$indices$iv$iv":Landroid/view/ViewGroup;
    .end local v3    # "$i$f$getIndices":I
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v3

    .local v3, "index$iv":I
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    if-gt v3, v2, :cond_4c

    .line 132
    :goto_21
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "it":Landroid/view/View;
    const/4 v5, 0x0

    .line 60
    .local v5, "$i$a$-forEach-ViewUtilsKt$findViewByCondition$1":I
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_38

    return-object v4

    .line 61
    :cond_38
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_46

    .line 62
    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v6, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;->findViewByCondition(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object v6

    .line 63
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_46

    return-object v6

    .line 65
    .end local v6    # "v":Landroid/view/View;
    :cond_46
    nop

    .line 124
    .end local v4    # "it":Landroid/view/View;
    .end local v5    # "$i$a$-forEach-ViewUtilsKt$findViewByCondition$1":I
    if-eq v3, v2, :cond_4c

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 134
    .end local v3    # "index$iv":I
    :cond_4c
    nop

    .line 66
    .end local v0    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v1    # "$i$f$forEach":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final findViewByConditionAs(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
    .registers 3
    .param p0, "$this$findViewByConditionAs"    # Landroid/view/ViewGroup;
    .param p1, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;->findViewByCondition(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static final findViewByIdName(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .registers 4
    .param p0, "$this$findViewByIdName"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;->getIdByName(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 118
    .local v0, "id":I
    if-nez v0, :cond_15

    const/4 v1, 0x0

    return-object v1

    .line 119
    :cond_15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static final findViewByIdName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4
    .param p0, "$this$findViewByIdName"    # Landroid/view/View;
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "this.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;->getIdByName(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 112
    .local v0, "id":I
    if-nez v0, :cond_1c

    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static final forEach(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .param p0, "$this$forEach"    # Landroid/view/ViewGroup;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$forEach":I
    move-object v1, p0

    .local v1, "$this$indices$iv":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$getIndices":I
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 27
    .end local v1    # "$this$indices$iv":Landroid/view/ViewGroup;
    .end local v2    # "$i$f$getIndices":I
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    if-gt v2, v1, :cond_31

    .line 28
    :goto_20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(index)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    if-eq v2, v1, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 30
    .end local v2    # "index":I
    :cond_31
    return-void
.end method

.method public static final forEachIndexed(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function2;)V
    .registers 8
    .param p0, "$this$forEachIndexed"    # Landroid/view/ViewGroup;
    .param p1, "action"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$forEachIndexed":I
    move-object v1, p0

    .local v1, "$this$indices$iv":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 123
    .local v2, "$i$f$getIndices":I
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 36
    .end local v1    # "$this$indices$iv":Landroid/view/ViewGroup;
    .end local v2    # "$i$f$getIndices":I
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    if-gt v2, v1, :cond_35

    .line 37
    :goto_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    if-eq v2, v1, :cond_35

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 39
    .end local v2    # "index":I
    :cond_35
    return-void
.end method

.method public static final getIdByName(Ljava/lang/String;Landroid/content/Context;)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic getIdByName$default(Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I
    .registers 4

    .line 101
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getAppContext()Landroid/content/Context;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ViewUtilsKt;->getIdByName(Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getIndices(Landroid/view/ViewGroup;)Lkotlin/ranges/IntRange;
    .registers 4
    .param p0, "$this$indices"    # Landroid/view/ViewGroup;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$getIndices":I
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    return-object v1
.end method

.method public static final isEmpty(Landroid/view/ViewGroup;)Z
    .registers 2
    .param p0, "$this$isEmpty"    # Landroid/view/ViewGroup;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static final isNotEmpty(Landroid/view/ViewGroup;)Z
    .registers 2
    .param p0, "$this$isNotEmpty"    # Landroid/view/ViewGroup;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static final setViewZeroSize(Landroid/view/View;)V
    .registers 3
    .param p0, "$this$setViewZeroSize"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    return-void
.end method
