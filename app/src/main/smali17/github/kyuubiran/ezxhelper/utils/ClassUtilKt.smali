.class public final Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;
.super Ljava/lang/Object;
.source "ClassUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassUtil.kt\ncom/github/kyuubiran/ezxhelper/utils/ClassUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,113:1\n1#2:114\n1#2:129\n1#2:146\n1549#3:115\n1620#3,3:116\n1603#3,9:136\n1851#3:145\n1852#3:147\n1612#3:148\n11653#4,9:119\n13543#4:128\n13544#4:130\n11662#4:131\n37#5:132\n36#5,3:133\n*S KotlinDebug\n*F\n+ 1 ClassUtil.kt\ncom/github/kyuubiran/ezxhelper/utils/ClassUtilKt\n*L\n75#1:129\n79#1:146\n66#1:115\n66#1:116,3\n79#1:136,9\n79#1:145\n79#1:147\n79#1:148\n75#1:119,9\n75#1:128\n75#1:130\n75#1:131\n75#1:132\n75#1:133,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u001c\n\u0002\u0008\u0004\u001a\u001c\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u001a-\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0007\"\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008\u001a/\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0007\"\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008\u001a\u001e\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u001a \u0010\u000b\u001a\u00020\u000c*\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u001a)\u0010\r\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u0007*\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000e\u001a$\u0010\r\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u000f*\u0008\u0012\u0004\u0012\u00020\u00030\u00102\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u001a\'\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0008\u001a\u001e\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00102\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u001a)\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0008\u001a \u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00102\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u001a)\u0010\u0013\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u0007*\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000e\u001a$\u0010\u0013\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u000f*\u0008\u0012\u0004\u0012\u00020\u00030\u00102\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0014"
    }
    d2 = {
        "loadClass",
        "Ljava/lang/Class;",
        "clzName",
        "",
        "clzLoader",
        "Ljava/lang/ClassLoader;",
        "loadClassAny",
        "",
        "([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;",
        "loadClassAnyOrNull",
        "loadClassOrNull",
        "isChildClassOf",
        "",
        "loadAllClasses",
        "([Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/Class;",
        "",
        "",
        "loadClassAnyFromArray",
        "loadClassAnyOrFromList",
        "loadClassesIfExists",
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
.method public static final isChildClassOf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .registers 4
    .param p0, "$this$isChildClassOf"    # Ljava/lang/Class;
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static synthetic isChildClassOf$default(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Z
    .registers 5

    .line 112
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    sget-object p2, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p2}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->isChildClassOf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method public static final loadAllClasses(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 11
    .param p0, "$this$loadAllClasses"    # Ljava/lang/Iterable;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v0, p0

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 116
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 117
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 66
    .local v8, "$i$a$-map-ClassUtilKt$loadAllClasses$2":I
    invoke-static {v7, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-map-ClassUtilKt$loadAllClasses$2":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 118
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_35
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 115
    nop

    .line 66
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method public static final loadAllClasses([Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/Class;
    .registers 6
    .param p0, "$this$loadAllClasses"    # [Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1b

    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return-object v1
.end method

.method public static synthetic loadAllClasses$default(Ljava/lang/Iterable;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/util/List;
    .registers 4

    .line 65
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadAllClasses(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadAllClasses$default([Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)[Ljava/lang/Class;
    .registers 4

    .line 61
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadAllClasses([Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 4
    .param p0, "clzName"    # Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "clzName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clzLoader.loadClass(clzName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 15
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class name must not be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic loadClass$default(Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 14
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClassAny(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .param p0, "$this$loadClassAny"    # Ljava/lang/Iterable;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 92
    .local v2, "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAny$3":I
    invoke-static {v1, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAny$3":I
    if-eqz v1, :cond_e

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_26

    return-object v1

    :cond_26
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v0
.end method

.method public static final loadClassAny([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "clzName"    # [Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "clzName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 114
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 28
    .local v3, "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAny$1":I
    invoke-static {v2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAny$1":I
    if-nez v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    if-eqz v2, :cond_1e

    .line 29
    return-object v2

    :cond_1e
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v0
.end method

.method public static synthetic loadClassAny$default(Ljava/lang/Iterable;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 91
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassAny(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadClassAny$default([Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 25
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_a

    .line 27
    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 25
    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassAny([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClassAnyFromArray([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "$this$loadClassAny"    # [Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 114
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAny$2":I
    invoke-static {v2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAny$2":I
    if-nez v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    if-eqz v2, :cond_1e

    return-object v2

    :cond_1e
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v0
.end method

.method public static synthetic loadClassAnyFromArray$default([Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 88
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassAnyFromArray([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClassAnyOrFromList([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "$this$loadClassAnyOrNull"    # [Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 114
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAnyOrNull$2":I
    invoke-static {v2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAnyOrNull$2":I
    if-nez v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    return-object v2
.end method

.method public static synthetic loadClassAnyOrFromList$default([Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 100
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassAnyOrFromList([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClassAnyOrNull(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .param p0, "$this$loadClassAnyOrNull"    # Ljava/lang/Iterable;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAnyOrNull$3":I
    invoke-static {v1, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAnyOrNull$3":I
    if-eqz v1, :cond_e

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return-object v1
.end method

.method public static final loadClassAnyOrNull([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "clzName"    # [Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "clzName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 114
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40
    .local v3, "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAnyOrNull$1":I
    invoke-static {v2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-ClassUtilKt$loadClassAnyOrNull$1":I
    if-nez v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    return-object v2
.end method

.method public static synthetic loadClassAnyOrNull$default(Ljava/lang/Iterable;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 103
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassAnyOrNull(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadClassAnyOrNull$default([Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 37
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_a

    .line 39
    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 37
    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassAnyOrNull([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 4
    .param p0, "clzName"    # Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "clzName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 53
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 52
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class name must not be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic loadClassOrNull$default(Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/lang/Class;
    .registers 4

    .line 48
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_a

    .line 50
    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 48
    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final loadClassesIfExists(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 15
    .param p0, "$this$loadClassesIfExists"    # Ljava/lang/Iterable;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clzLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    move-object v0, p0

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 136
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 144
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 145
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 144
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 79
    .local v12, "$i$a$-mapNotNull-ClassUtilKt$loadClassesIfExists$2":I
    invoke-static {v11, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-mapNotNull-ClassUtilKt$loadClassesIfExists$2":I
    if-eqz v11, :cond_36

    .line 146
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 144
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1b

    :cond_36
    goto :goto_1b

    .line 147
    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_37
    nop

    .line 148
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 136
    nop

    .line 79
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    return-object v2
.end method

.method public static final loadClassesIfExists([Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/Class;
    .registers 19
    .param p0, "$this$loadClassesIfExists"    # [Ljava/lang/String;
    .param p1, "clzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clzLoader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object/from16 v1, p0

    .local v1, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 119
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 128
    .local v8, "$i$f$forEach":I
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_1f
    if-ge v11, v9, :cond_38

    aget-object v12, v7, v11

    .local v12, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 127
    .local v14, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v13

    .local v15, "it":Ljava/lang/String;
    const/16 v16, 0x0

    .line 75
    .local v16, "$i$a$-mapNotNull-ClassUtilKt$loadClassesIfExists$1":I
    invoke-static {v15, v0}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    .end local v15    # "it":Ljava/lang/String;
    .end local v16    # "$i$a$-mapNotNull-ClassUtilKt$loadClassesIfExists$1":I
    if-eqz v15, :cond_34

    .line 129
    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 127
    .local v16, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_35

    :cond_34
    nop

    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    :goto_35
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 130
    .end local v12    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_38
    nop

    .line 131
    .end local v7    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 119
    nop

    .end local v1    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v4, Ljava/util/Collection;

    .line 75
    move-object v1, v4

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 132
    .local v3, "$i$f$toTypedArray":I
    nop

    .line 133
    nop

    .line 135
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v10, [Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v5, [Ljava/lang/Class;

    .line 75
    return-object v5
.end method

.method public static synthetic loadClassesIfExists$default(Ljava/lang/Iterable;Ljava/lang/ClassLoader;ILjava/lang/Object;)Ljava/util/List;
    .registers 4

    .line 78
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassesIfExists(Ljava/lang/Iterable;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadClassesIfExists$default([Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/lang/Object;)[Ljava/lang/Class;
    .registers 4

    .line 74
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    sget-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getEzXClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/ClassUtilKt;->loadClassesIfExists([Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
