.class public final Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/github/kyuubiran/ezxhelper/utils/UtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,225:1\n71#1:231\n72#1:237\n89#1:243\n90#1:249\n107#1:259\n108#1:269\n125#1:279\n126#1:289\n146#1,6:290\n766#2:226\n857#2,2:227\n1851#2,2:229\n766#2:232\n857#2,2:233\n1851#2,2:235\n766#2:238\n857#2,2:239\n1851#2,2:241\n766#2:244\n857#2,2:245\n1851#2,2:247\n511#3:250\n496#3,6:251\n511#3:260\n496#3,6:261\n511#3:270\n496#3,6:271\n511#3:280\n496#3,6:281\n211#4,2:257\n211#4,2:267\n211#4,2:277\n211#4,2:287\n10242#5:296\n10664#5,5:297\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/github/kyuubiran/ezxhelper/utils/UtilsKt\n*L\n80#1:231\n80#1:237\n98#1:243\n98#1:249\n116#1:259\n116#1:269\n136#1:279\n136#1:289\n160#1:290,6\n71#1:226\n71#1:227,2\n71#1:229,2\n80#1:232\n80#1:233,2\n80#1:235,2\n89#1:238\n89#1:239,2\n89#1:241,2\n98#1:244\n98#1:245,2\n98#1:247,2\n107#1:250\n107#1:251,6\n116#1:260\n116#1:261,6\n125#1:270\n125#1:271,6\n136#1:280\n136#1:281,6\n107#1:257,2\n116#1:267,2\n125#1:277,2\n136#1:287,2\n162#1:296\n162#1:297,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a\u001a\u0010\u0008\u001a\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a\u001a\u0010\t\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010\n\u001a\u0004\u0018\u0001H\u000b\"\u0004\u0008\u0000\u0010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000b0\u0007H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a)\u0010\r\u001a\u0004\u0018\u0001H\u000b\"\u0004\u0008\u0000\u0010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000b0\u0007H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001aN\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u0004\u0008\u0000\u0010\u0010\"\u0004\u0008\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\u0008\u00f8\u0001\u0000\u001a6\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0015\"\u0004\u0008\u0000\u0010\u0016*\u0008\u0012\u0004\u0012\u0002H\u00160\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\u0008\u00f8\u0001\u0000\u001aN\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u0004\u0008\u0000\u0010\u0010\"\u0004\u0008\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\u0008\u00f8\u0001\u0000\u001a6\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018\"\u0004\u0008\u0000\u0010\u0016*\u0008\u0012\u0004\u0012\u0002H\u00160\u00182\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\u0008\u00f8\u0001\u0000\u001a(\u0010\u0019\u001a\u0004\u0018\u00010\u001a*\u00020\u001b2\u0014\u0008\u0006\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u0017H\u0086\u0008\u00f8\u0001\u0000\u001a&\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e*\u00020\u001b2\u0014\u0008\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u0017\u001aB\u0010 \u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0010\"\u0004\u0008\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\u0008\u00f8\u0001\u0000\u001a0\u0010!\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0016*\u0008\u0012\u0004\u0012\u0002H\u00160\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\u0008\u00f8\u0001\u0000\u001aB\u0010!\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0010\"\u0004\u0008\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\u0008\u00f8\u0001\u0000\u001a0\u0010!\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0016*\u0008\u0012\u0004\u0012\u0002H\u00160\u00182\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\u0008\u00f8\u0001\u0000\u001a-\u0010\"\u001a\u00020\u0005*\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030$0#2\u0012\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020&0#\"\u00020&\u00a2\u0006\u0002\u0010\'\u001a-\u0010\"\u001a\u00020\u0005*\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030$0\u001e2\u0012\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020&0#\"\u00020&\u00a2\u0006\u0002\u0010(\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006)"
    }
    d2 = {
        "restartHostApp",
        "",
        "activity",
        "Landroid/app/Activity;",
        "tryOrFalse",
        "",
        "block",
        "Lkotlin/Function0;",
        "tryOrLog",
        "tryOrLogFalse",
        "tryOrLogNull",
        "T",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "tryOrNull",
        "applyRemoveIf",
        "",
        "K",
        "V",
        "predicate",
        "Lkotlin/Function2;",
        "applyRetainIf",
        "",
        "E",
        "Lkotlin/Function1;",
        "",
        "findDexClassLoader",
        "Ldalvik/system/BaseDexClassLoader;",
        "Ljava/lang/ClassLoader;",
        "delegator",
        "getAllClassesList",
        "",
        "",
        "removeIf",
        "retainIf",
        "sameAs",
        "",
        "Ljava/lang/Class;",
        "other",
        "",
        "([Ljava/lang/Class;[Ljava/lang/Object;)Z",
        "(Ljava/util/List;[Ljava/lang/Object;)Z",
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
.method public static final applyRemoveIf(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;
    .locals 14
    .param p0, "$this$applyRemoveIf"    # Ljava/util/Map;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    .local v0, "$i$f$applyRemoveIf":I
    move-object v1, p0

    .local v1, "$this$removeIf$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 279
    .local v2, "$i$f$removeIf":I
    move-object v3, v1

    .local v3, "$this$filter$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 280
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv$iv":Ljava/util/Map;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 281
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 282
    .local v9, "element$iv$iv$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 279
    .local v10, "$i$a$-filter-UtilsKt$removeIf$1$iv":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .local v11, "key$iv":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {p1, v11, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .end local v10    # "$i$a$-filter-UtilsKt$removeIf$1$iv":I
    .end local v11    # "key$iv":Ljava/lang/Object;
    .end local v12    # "value$iv":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 283
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v9    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 280
    .end local v5    # "destination$iv$iv$iv":Ljava/util/Map;
    .end local v6    # "$this$filterTo$iv$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$filterTo":I
    nop

    .line 279
    .end local v3    # "$this$filter$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$filter":I
    move-object v3, v5

    .local v3, "$this$forEach$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v7, v6

    .local v7, "it$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 279
    .local v8, "$i$a$-forEach-UtilsKt$removeIf$2$iv":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 288
    .end local v6    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v7    # "it$iv":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-forEach-UtilsKt$removeIf$2$iv":I
    :cond_2
    nop

    .line 289
    .end local v3    # "$this$forEach$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 137
    .end local v1    # "$this$removeIf$iv":Ljava/util/Map;
    .end local v2    # "$i$f$removeIf":I
    return-object p0
.end method

.method public static final applyRetainIf(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 13
    .param p0, "$this$applyRetainIf"    # Ljava/util/List;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$f$applyRetainIf":I
    move-object v1, p0

    .local v1, "$this$retainIf$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 231
    .local v2, "$i$f$retainIf":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 232
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 233
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "elem$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 231
    .local v11, "$i$a$-filter-UtilsKt$retainIf$1$iv":I
    invoke-interface {p1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .end local v10    # "elem$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-filter-UtilsKt$retainIf$1$iv":I
    if-eqz v10, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v5    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 232
    nop

    .end local v3    # "$this$filter$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 231
    move-object v3, v5

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 235
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 231
    .local v8, "$i$a$-forEach-UtilsKt$retainIf$2$iv":I
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-forEach-UtilsKt$retainIf$2$iv":I
    :cond_2
    nop

    .line 237
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 81
    .end local v1    # "$this$retainIf$iv":Ljava/util/List;
    .end local v2    # "$i$f$retainIf":I
    return-object p0
.end method

.method public static final applyRetainIf(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;
    .locals 14
    .param p0, "$this$applyRetainIf"    # Ljava/util/Map;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    .local v0, "$i$f$applyRetainIf":I
    move-object v1, p0

    .local v1, "$this$retainIf$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$f$retainIf":I
    move-object v3, v1

    .local v3, "$this$filter$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 260
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv$iv":Ljava/util/Map;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 261
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 262
    .local v9, "element$iv$iv$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 259
    .local v10, "$i$a$-filter-UtilsKt$retainIf$5$iv":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .local v11, "key$iv":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {p1, v11, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .end local v10    # "$i$a$-filter-UtilsKt$retainIf$5$iv":I
    .end local v11    # "key$iv":Ljava/lang/Object;
    .end local v12    # "value$iv":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 263
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    .end local v9    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 260
    .end local v5    # "destination$iv$iv$iv":Ljava/util/Map;
    .end local v6    # "$this$filterTo$iv$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$filterTo":I
    nop

    .line 259
    .end local v3    # "$this$filter$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$filter":I
    move-object v3, v5

    .local v3, "$this$forEach$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v7, v6

    .local v7, "it$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 259
    .local v8, "$i$a$-forEach-UtilsKt$retainIf$6$iv":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    .end local v6    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v7    # "it$iv":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-forEach-UtilsKt$retainIf$6$iv":I
    :cond_2
    nop

    .line 269
    .end local v3    # "$this$forEach$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 117
    .end local v1    # "$this$retainIf$iv":Ljava/util/Map;
    .end local v2    # "$i$f$retainIf":I
    return-object p0
.end method

.method public static final applyRetainIf(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 13
    .param p0, "$this$applyRetainIf"    # Ljava/util/Set;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    .local v0, "$i$f$applyRetainIf":I
    move-object v1, p0

    .local v1, "$this$retainIf$iv":Ljava/util/Set;
    const/4 v2, 0x0

    .line 243
    .local v2, "$i$f$retainIf":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 244
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 245
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "elem$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 243
    .local v11, "$i$a$-filter-UtilsKt$retainIf$3$iv":I
    invoke-interface {p1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .end local v10    # "elem$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-filter-UtilsKt$retainIf$3$iv":I
    if-eqz v10, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v5    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 244
    nop

    .end local v3    # "$this$filter$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 243
    move-object v3, v5

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 243
    .local v8, "$i$a$-forEach-UtilsKt$retainIf$4$iv":I
    invoke-interface {v1, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-forEach-UtilsKt$retainIf$4$iv":I
    :cond_2
    nop

    .line 249
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 99
    .end local v1    # "$this$retainIf$iv":Ljava/util/Set;
    .end local v2    # "$i$f$retainIf":I
    return-object p0
.end method

.method public static final findDexClassLoader(Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Ldalvik/system/BaseDexClassLoader;
    .locals 4
    .param p0, "$this$findDexClassLoader"    # Ljava/lang/ClassLoader;
    .param p1, "delegator"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ldalvik/system/BaseDexClassLoader;",
            "+",
            "Ldalvik/system/BaseDexClassLoader;",
            ">;)",
            "Ldalvik/system/BaseDexClassLoader;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    .local v0, "$i$f$findDexClassLoader":I
    move-object v1, p0

    .line 147
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    instance-of v2, v1, Ldalvik/system/BaseDexClassLoader;

    if-nez v2, :cond_1

    .line 148
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "classLoader.parent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 149
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 151
    :cond_1
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/BaseDexClassLoader;

    return-object v2
.end method

.method public static synthetic findDexClassLoader$default(Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ldalvik/system/BaseDexClassLoader;
    .locals 2
    .param p0, "$this$findDexClassLoader_u24default"    # Ljava/lang/ClassLoader;
    .param p1, "delegator"    # Lkotlin/jvm/functions/Function1;

    .line 145
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;

    move-object p1, p2

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "delegator"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 146
    .local p2, "$i$f$findDexClassLoader":I
    move-object p3, p0

    .line 147
    .local p3, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    instance-of v0, p3, Ldalvik/system/BaseDexClassLoader;

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "classLoader.parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_2
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    return-object v0
.end method

.method public static final getAllClassesList(Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 16
    .param p0, "$this$getAllClassesList"    # Ljava/lang/ClassLoader;
    .param p1, "delegator"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ldalvik/system/BaseDexClassLoader;",
            "+",
            "Ldalvik/system/BaseDexClassLoader;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "delegator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    move-object/from16 v1, p0

    .local v1, "$this$findDexClassLoader$iv":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    .line 290
    .local v3, "$i$f$findDexClassLoader":I
    move-object v4, v1

    .line 291
    .local v4, "classLoader$iv":Ljava/lang/ClassLoader;
    :goto_0
    instance-of v5, v4, Ldalvik/system/BaseDexClassLoader;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 292
    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "classLoader.parent"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    .line 293
    :cond_0
    move-object v5, v6

    goto :goto_1

    .line 295
    :cond_1
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldalvik/system/BaseDexClassLoader;

    .line 160
    .end local v1    # "$this$findDexClassLoader$iv":Ljava/lang/ClassLoader;
    .end local v3    # "$i$f$findDexClassLoader":I
    .end local v4    # "classLoader$iv":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v5, :cond_5

    const-string v1, "pathList"

    const/4 v3, 0x2

    invoke-static {v5, v1, v6, v3, v6}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->getObjectOrNull$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_5

    .line 160
    nop

    .line 161
    const-string v4, "dexElements"

    invoke-static {v1, v4, v6, v3, v6}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->getObjectOrNullAs$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 162
    if-eqz v1, :cond_5

    .line 161
    nop

    .line 162
    nop

    .local v1, "$this$flatMap$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 296
    .local v4, "$i$f$flatMap":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v1

    .local v7, "$this$flatMapTo$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 297
    .local v8, "$i$f$flatMapTo":I
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v9, :cond_4

    aget-object v12, v7, v11

    .line 298
    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 163
    .local v14, "$i$a$-flatMap-UtilsKt$getAllClassesList$2":I
    const-string v15, "dexFile"

    invoke-static {v13, v15, v6, v3, v6}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->getObjectOrNull$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v3, "entries"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v15, v3, v6}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->invokeMethodAutoAs(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Enumeration;

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v6, "list(this)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 164
    :goto_3
    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .end local v13    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-flatMap-UtilsKt$getAllClassesList$2":I
    :cond_3
    check-cast v3, Ljava/lang/Iterable;

    .line 299
    .local v3, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 297
    .end local v3    # "list$iv$iv":Ljava/lang/Iterable;
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    const/4 v6, 0x0

    goto :goto_2

    .line 301
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$flatMapTo$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$flatMapTo":I
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .line 296
    nop

    .end local v1    # "$this$flatMap$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$flatMap":I
    goto :goto_4

    .line 160
    :cond_5
    const/4 v6, 0x0

    .line 165
    :goto_4
    if-nez v6, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    :cond_6
    return-object v6
.end method

.method public static synthetic getAllClassesList$default(Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 159
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$getAllClassesList$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$getAllClassesList$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt;->getAllClassesList(Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final removeIf(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 12
    .param p0, "$this$removeIf"    # Ljava/util/Map;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 125
    .local v0, "$i$f$removeIf":I
    move-object v1, p0

    .local v1, "$this$filter$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 270
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 271
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 272
    .local v7, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 125
    .local v8, "$i$a$-filter-UtilsKt$removeIf$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .local v9, "key":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "value":Ljava/lang/Object;
    invoke-interface {p1, v9, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .end local v8    # "$i$a$-filter-UtilsKt$removeIf$1":I
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 273
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v7    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 270
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$filterTo":I
    nop

    .line 125
    .end local v1    # "$this$filter$iv":Ljava/util/Map;
    .end local v2    # "$i$f$filter":I
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 277
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    move-object v5, v4

    .local v5, "it":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 125
    .local v6, "$i$a$-forEach-UtilsKt$removeIf$2":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 278
    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    .end local v5    # "it":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-forEach-UtilsKt$removeIf$2":I
    :cond_2
    nop

    .line 126
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public static final restartHostApp(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 172
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 174
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final retainIf(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p0, "$this$retainIf"    # Ljava/util/List;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$retainIf":I
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 227
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "elem":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 71
    .local v9, "$i$a$-filter-UtilsKt$retainIf$1":I
    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .end local v8    # "elem":Ljava/lang/Object;
    .end local v9    # "$i$a$-filter-UtilsKt$retainIf$1":I
    if-eqz v8, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 226
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 71
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 229
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 71
    .local v6, "$i$a$-forEach-UtilsKt$retainIf$2":I
    invoke-interface {p0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/Object;
    .end local v6    # "$i$a$-forEach-UtilsKt$retainIf$2":I
    :cond_2
    nop

    .line 72
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public static final retainIf(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 12
    .param p0, "$this$retainIf"    # Ljava/util/Map;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$retainIf":I
    move-object v1, p0

    .local v1, "$this$filter$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 250
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 251
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 252
    .local v7, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 107
    .local v8, "$i$a$-filter-UtilsKt$retainIf$5":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .local v9, "key":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "value":Ljava/lang/Object;
    invoke-interface {p1, v9, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .end local v8    # "$i$a$-filter-UtilsKt$retainIf$5":I
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 253
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    .end local v7    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 250
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$filterTo":I
    nop

    .line 107
    .end local v1    # "$this$filter$iv":Ljava/util/Map;
    .end local v2    # "$i$f$filter":I
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 257
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    move-object v5, v4

    .local v5, "it":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 107
    .local v6, "$i$a$-forEach-UtilsKt$retainIf$6":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    .end local v5    # "it":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-forEach-UtilsKt$retainIf$6":I
    :cond_2
    nop

    .line 108
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public static final retainIf(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p0, "$this$retainIf"    # Ljava/util/Set;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$retainIf":I
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 238
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 239
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "elem":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 89
    .local v9, "$i$a$-filter-UtilsKt$retainIf$3":I
    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .end local v8    # "elem":Ljava/lang/Object;
    .end local v9    # "$i$a$-filter-UtilsKt$retainIf$3":I
    if-eqz v8, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 238
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 89
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 241
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 89
    .local v6, "$i$a$-forEach-UtilsKt$retainIf$4":I
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/Object;
    .end local v6    # "$i$a$-forEach-UtilsKt$retainIf$4":I
    :cond_2
    nop

    .line 90
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public static final varargs sameAs(Ljava/util/List;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "$this$sameAs"    # Ljava/util/List;
    .param p1, "other"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 210
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 211
    aget-object v3, p1, v0

    .line 212
    .local v3, "otherClazz":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 213
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 215
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 216
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 210
    .end local v3    # "otherClazz":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .restart local v3    # "otherClazz":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only support Class<*> or String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    .end local v0    # "i":I
    .end local v3    # "otherClazz":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static final varargs sameAs([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "$this$sameAs"    # [Ljava/lang/Class;
    .param p1, "other"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 192
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 193
    aget-object v3, p1, v0

    .line 194
    .local v3, "otherClazz":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 195
    aget-object v4, p0, v0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 197
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 198
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 192
    .end local v3    # "otherClazz":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .restart local v3    # "otherClazz":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only support Class<*> or String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v0    # "i":I
    .end local v3    # "otherClazz":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static final tryOrFalse(Lkotlin/jvm/functions/Function0;)Z
    .locals 3
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    .local v0, "$i$f$tryOrFalse":I
    nop

    .line 14
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v1, 0x1

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    .local v1, "thr":Ljava/lang/Throwable;
    const/4 v2, 0x0

    move v1, v2

    .line 18
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method public static final tryOrLog(Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    .local v0, "$i$f$tryOrLog":I
    nop

    .line 25
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    .local v1, "thr":Ljava/lang/Throwable;
    sget-object v2, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static final tryOrLogFalse(Lkotlin/jvm/functions/Function0;)Z
    .locals 5
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$tryOrLogFalse":I
    nop

    .line 36
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const/4 v1, 0x1

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    .local v1, "thr":Ljava/lang/Throwable;
    sget-object v2, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    const/4 v2, 0x0

    move v1, v2

    .line 41
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method public static final tryOrLogNull(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$tryOrLogNull":I
    nop

    .line 60
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "thr":Ljava/lang/Throwable;
    sget-object v2, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 63
    move-object v1, v4

    .line 64
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public static final tryOrNull(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$tryOrNull":I
    nop

    .line 49
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "thr":Ljava/lang/Throwable;
    const/4 v2, 0x0

    move-object v1, v2

    .line 52
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method
