.class public Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;
.super Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;
.source "PmsHookTarget33.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPmsHookTarget33.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PmsHookTarget33.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget33\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n3792#2:186\n4307#2,2:187\n1282#2,2:191\n3792#2:193\n4307#2:194\n12474#2,2:195\n4308#2:197\n3792#2:198\n4307#2,2:199\n1855#3,2:189\n1855#3,2:201\n*S KotlinDebug\n*F\n+ 1 PmsHookTarget33.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget33\n*L\n37#1:186\n37#1:187,2\n46#1:191,2\n108#1:193\n108#1:194\n110#1:195,2\n108#1:197\n176#1:198\n176#1:199,2\n41#1:189,2\n177#1:201,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\'\u0010\u0008\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;",
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "load",
        "",
        "tryHookAlternativeClasses",
        "tryHookFilterMethods",
        "clazz",
        "Ljava/lang/Class;",
        "methods",
        "",
        "Ljava/lang/reflect/Method;",
        "(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V",
        "PandaSU-LSPosed_debug"
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
.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .registers 3
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    return-void
.end method

.method private final tryHookAlternativeClasses()V
    .registers 22

    .line 165
    const-string v0, "Trying alternative classes..."

    const-string v1, "PandaSU-PmsHook33"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    nop

    .line 170
    :try_start_8
    const-string v0, "com.android.server.pm.PackageManagerServiceUtils"

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 169
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 173
    .local v0, "pmsClass":Ljava/lang/Class;
    const-string v2, "Found PackageManagerServiceUtils"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 176
    .local v2, "methods":[Ljava/lang/reflect/Method;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .local v3, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 198
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 199
    .local v7, "$i$f$filterTo":I
    array-length v8, v6

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v8, :cond_55

    aget-object v10, v6, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    .line 176
    .local v12, "$i$a$-filter-PmsHookTarget33$tryHookAlternativeClasses$1":I
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "getName(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "filter"

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    .line 199
    .end local v11    # "it":Ljava/lang/reflect/Method;
    .end local v12    # "$i$a$-filter-PmsHookTarget33$tryHookAlternativeClasses$1":I
    if-eqz v13, :cond_52

    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_52
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 200
    :cond_55
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 198
    nop

    .end local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 177
    move-object v3, v5

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 201
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Method;

    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 178
    .local v8, "$i$a$-forEach-PmsHookTarget33$tryHookAlternativeClasses$2":I
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getParameterTypes(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v10

    check-cast v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v10, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookAlternativeClasses$2$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookAlternativeClasses$2$1;

    move-object/from16 v18, v10

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/16 v19, 0x1f

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Method: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_8 .. :try_end_b4} :catchall_b9

    .line 179
    nop

    .line 201
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "$i$a$-forEach-PmsHookTarget33$tryHookAlternativeClasses$2":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_61

    .line 202
    :cond_b7
    nop

    .end local v0    # "pmsClass":Ljava/lang/Class;
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    goto :goto_d4

    .line 180
    :catchall_b9
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManagerServiceUtils not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d4
    return-void
.end method

.method private final tryHookFilterMethods(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V
    .registers 26
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 105
    const-string v0, "Trying to hook alternative filter methods..."

    const-string v1, "PandaSU-PmsHook33"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p2

    .local v0, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 193
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 194
    .local v5, "$i$f$filterTo":I
    array-length v6, v4

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v6, :cond_a1

    aget-object v9, v4, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    .line 109
    .local v11, "$i$a$-filter-PmsHookTarget33$tryHookFilterMethods$filterMethods$1":I
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "getName(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    const-string v13, "filter"

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-nez v12, :cond_85

    .line 110
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getParameterTypes(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, [Ljava/lang/Object;

    .local v12, "$this$any$iv":[Ljava/lang/Object;
    const/4 v13, 0x0

    .line 195
    .local v13, "$i$f$any":I
    array-length v15, v12

    const/4 v14, 0x0

    :goto_3f
    if-ge v14, v15, :cond_76

    aget-object v16, v12, v14

    .local v16, "element$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Ljava/lang/Class;

    .local v17, "t":Ljava/lang/Class;
    const/16 v18, 0x0

    .line 110
    .local v18, "$i$a$-any-PmsHookTarget33$tryHookFilterMethods$filterMethods$1$1":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v0

    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .local v19, "$this$filter$iv":[Ljava/lang/Object;
    const-string v0, "getSimpleName(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    const-string v0, "Computer"

    check-cast v0, Ljava/lang/CharSequence;

    move/from16 v20, v2

    .end local v2    # "$i$f$filter":I
    .local v20, "$i$f$filter":I
    const/4 v2, 0x2

    move-object/from16 v21, v4

    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .local v21, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    move/from16 v22, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$filterTo":I
    .local v22, "$i$f$filterTo":I
    invoke-static {v7, v0, v5, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 195
    .end local v17    # "t":Ljava/lang/Class;
    .end local v18    # "$i$a$-any-PmsHookTarget33$tryHookFilterMethods$filterMethods$1$1":I
    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    goto :goto_80

    .end local v16    # "element$iv":Ljava/lang/Object;
    :cond_6b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v19

    move/from16 v2, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    goto :goto_3f

    .line 196
    .end local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v20    # "$i$f$filter":I
    .end local v21    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v22    # "$i$f$filterTo":I
    .restart local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$filter":I
    .restart local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .restart local v5    # "$i$f$filterTo":I
    :cond_76
    move-object/from16 v19, v0

    move/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    const/4 v5, 0x0

    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter":I
    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterTo":I
    .restart local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v20    # "$i$f$filter":I
    .restart local v21    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .restart local v22    # "$i$f$filterTo":I
    move v0, v5

    .end local v12    # "$this$any$iv":[Ljava/lang/Object;
    .end local v13    # "$i$f$any":I
    :goto_80
    if-eqz v0, :cond_83

    goto :goto_8e

    :cond_83
    move v14, v5

    goto :goto_8f

    .line 109
    .end local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v20    # "$i$f$filter":I
    .end local v21    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v22    # "$i$f$filterTo":I
    .restart local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$filter":I
    .restart local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .restart local v5    # "$i$f$filterTo":I
    :cond_85
    move-object/from16 v19, v0

    move/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    const/4 v5, 0x0

    .line 196
    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter":I
    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterTo":I
    .restart local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v20    # "$i$f$filter":I
    .restart local v21    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .restart local v22    # "$i$f$filterTo":I
    :goto_8e
    const/4 v14, 0x1

    .line 109
    :goto_8f
    nop

    .line 194
    .end local v10    # "it":Ljava/lang/reflect/Method;
    .end local v11    # "$i$a$-filter-PmsHookTarget33$tryHookFilterMethods$filterMethods$1":I
    if-eqz v14, :cond_95

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_95
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v19

    move/from16 v2, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    goto/16 :goto_15

    .line 197
    .end local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v20    # "$i$f$filter":I
    .end local v21    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v22    # "$i$f$filterTo":I
    .restart local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$filter":I
    .restart local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .restart local v5    # "$i$f$filterTo":I
    :cond_a1
    move-object/from16 v19, v0

    move/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter":I
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterTo":I
    .restart local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v20    # "$i$f$filter":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 193
    nop

    .line 108
    .end local v19    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v20    # "$i$f$filter":I
    move-object v2, v0

    .line 113
    .local v2, "filterMethods":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 114
    const-string v0, "No filter methods found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_ba
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/reflect/Method;

    .line 119
    .local v4, "method":Ljava/lang/reflect/Method;
    nop

    .line 120
    :try_start_cc
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to hook: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object v0, v4

    check-cast v0, Ljava/lang/reflect/Member;

    new-instance v5, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;
    :try_end_eb
    .catchall {:try_start_cc .. :try_end_eb} :catchall_11d

    move-object/from16 v6, p0

    :try_start_ed
    invoke-direct {v5, v4, v6}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;-><init>(Ljava/lang/reflect/Method;Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;)V

    check-cast v5, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v0, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    .line 155
    .local v0, "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getHooks()Ljava/util/List;

    move-result-object v5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully hooked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_ed .. :try_end_11a} :catchall_11b

    goto :goto_be

    .line 158
    .end local v0    # "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :catchall_11b
    move-exception v0

    goto :goto_120

    :catchall_11d
    move-exception v0

    move-object/from16 v6, p0

    .line 159
    .local v0, "e":Ljava/lang/Throwable;
    :goto_120
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to hook "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    .line 162
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_14a
    move-object/from16 v6, p0

    return-void
.end method


# virtual methods
.method public load()V
    .registers 29

    .line 17
    move-object/from16 v1, p0

    const-string v0, "getName(...)"

    const-string v2, "Loading Android 13+ hooks"

    const-string v3, "PandaSU-PmsHook33"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v2, "[PandaSU] PmsHookTarget33.load() called"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 20
    nop

    .line 22
    :try_start_11
    const-string v2, "com.android.server.pm.AppsFilterImpl"

    .line 23
    .local v2, "className":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_1ce

    .line 24
    nop

    .line 25
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_1a8

    .line 24
    nop

    .line 35
    .local v4, "clazz":Ljava/lang/Class;
    :try_start_3b
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 36
    .local v5, "methods":[Ljava/lang/reflect/Method;
    array-length v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppsFilterImpl has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " declared methods"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v5

    .local v6, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 186
    .local v7, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 187
    .local v10, "$i$f$filterTo":I
    array-length v11, v9

    const/4 v13, 0x0

    :goto_6c
    if-ge v13, v11, :cond_d7

    aget-object v14, v9, v13

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .line 37
    .local v16, "$i$a$-filter-PmsHookTarget33$load$1":I
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    const-string v17, "filter"

    move-object/from16 v18, v2

    .end local v2    # "className":Ljava/lang/String;
    .local v18, "className":Ljava/lang/String;
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v17, v6

    .end local v6    # "$this$filter$iv":[Ljava/lang/Object;
    .local v17, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v6, 0x1

    invoke-static {v12, v2, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 38
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v12, "app"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v2, v12, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 39
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v12, "hide"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v2, v12, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 40
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v12, "show"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v2, v12, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_c7

    goto :goto_c9

    :cond_c7
    const/4 v6, 0x0

    goto :goto_ca

    :cond_c9
    :goto_c9
    nop

    .line 37
    :goto_ca
    nop

    .line 187
    .end local v15    # "it":Ljava/lang/reflect/Method;
    .end local v16    # "$i$a$-filter-PmsHookTarget33$load$1":I
    if-eqz v6, :cond_d0

    invoke-interface {v8, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    :cond_d0
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto :goto_6c

    .line 188
    .end local v17    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v18    # "className":Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v6    # "$this$filter$iv":[Ljava/lang/Object;
    :cond_d7
    move-object/from16 v18, v2

    move-object/from16 v17, v6

    .end local v2    # "className":Ljava/lang/String;
    .end local v6    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$filterTo":I
    .restart local v17    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v18    # "className":Ljava/lang/String;
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 186
    nop

    .end local v7    # "$i$f$filter":I
    .end local v17    # "$this$filter$iv":[Ljava/lang/Object;
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    nop

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 189
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_141

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/Method;

    .local v8, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 42
    .local v9, "$i$a$-forEach-PmsHookTarget33$load$2":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getParameterTypes(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v11

    check-cast v19, [Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget-object v11, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$2$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$2$1;

    move-object/from16 v25, v11

    check-cast v25, Lkotlin/jvm/functions/Function1;

    const/16 v26, 0x1f

    const/16 v27, 0x0

    invoke-static/range {v19 .. v27}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Relevant method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    nop

    .line 189
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "$i$a$-forEach-PmsHookTarget33$load$2":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_e7

    .line 190
    :cond_141
    nop

    .line 46
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    move-object v0, v5

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 191
    .local v2, "$i$f$firstOrNull":I
    array-length v6, v0

    const/4 v12, 0x0

    :goto_146
    if-ge v12, v6, :cond_15c

    aget-object v7, v0, v12

    .restart local v7    # "element$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 46
    .local v9, "$i$a$-firstOrNull-PmsHookTarget33$load$method$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "shouldFilterApplication"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 191
    .end local v8    # "it":Ljava/lang/reflect/Method;
    .end local v9    # "$i$a$-firstOrNull-PmsHookTarget33$load$method$1":I
    if-eqz v10, :cond_159

    goto :goto_15d

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_159
    add-int/lit8 v12, v12, 0x1

    goto :goto_146

    .line 192
    :cond_15c
    const/4 v7, 0x0

    .line 46
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_15d
    move-object v0, v7

    .line 48
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_16c

    .line 49
    const-string v2, "shouldFilterApplication not found in AppsFilterImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4, v5}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->tryHookFilterMethods(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V

    .line 52
    return-void

    .line 55
    :cond_16c
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->contentDeepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found shouldFilterApplication: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Member;

    new-instance v6, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;

    invoke-direct {v6, v1}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;-><init>(Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;)V

    check-cast v6, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v2, v6}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v2

    .line 96
    .local v2, "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getHooks()Ljava/util/List;

    move-result-object v6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v6, "shouldFilterApplication hooked successfully"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4

    .line 26
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "className":Ljava/lang/String;
    .local v2, "className":Ljava/lang/String;
    :catchall_1a8
    move-exception v0

    move-object/from16 v18, v2

    .line 27
    .end local v2    # "className":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v18    # "className":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppsFilterImpl class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v2, "[PandaSU] AppsFilterImpl not found, trying alternatives"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->tryHookAlternativeClasses()V
    :try_end_1cd
    .catchall {:try_start_3b .. :try_end_1cd} :catchall_1ce

    .line 31
    return-void

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v18    # "className":Ljava/lang/String;
    :catchall_1ce
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Failed to load Android 13+ hooks"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1d4
    return-void
.end method
