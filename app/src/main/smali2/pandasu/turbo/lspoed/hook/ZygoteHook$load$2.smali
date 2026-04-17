.class final Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ZygoteHook.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZygoteHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZygoteHook.kt\ncom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,61:1\n2298#2,5:62\n1627#2,6:67\n3819#2:73\n4337#2,2:74\n*S KotlinDebug\n*F\n+ 1 ZygoteHook.kt\ncom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2\n*L\n30#1:62,5\n33#1:67,6\n47#1:73\n47#1:74,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;)V
    .registers 3

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2;->this$0:Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 26
    move-object v0, p1

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2;->invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 20
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    move-object/from16 v0, p1

    const-string v1, "param"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 30
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    .local v2, "$this$lastOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 62
    .local v3, "$i$f$lastOrNull":I
    array-length v4, v2

    const/4 v5, -0x1

    add-int/2addr v4, v5

    const/4 v6, 0x0

    if-ltz v4, :cond_21

    :cond_14
    move v7, v4

    .local v7, "index$iv":I
    add-int/2addr v4, v5

    .line 63
    aget-object v8, v2, v7

    .line 64
    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 30
    .local v10, "$i$a$-lastOrNull-ZygoteHook$load$2$caller$1":I
    instance-of v9, v9, Ljava/lang/String;

    .line 64
    .end local v9    # "it":Ljava/lang/Object;
    .end local v10    # "$i$a$-lastOrNull-ZygoteHook$load$2$caller$1":I
    if-eqz v9, :cond_1f

    goto :goto_22

    .line 62
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_1f
    if-gez v4, :cond_14

    .line 66
    .end local v7    # "index$iv":I
    :cond_21
    move-object v8, v6

    .line 30
    .end local v2    # "$this$lastOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$lastOrNull":I
    :goto_22
    instance-of v2, v8, Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object v6, v8

    check-cast v6, Ljava/lang/String;

    :cond_29
    if-nez v6, :cond_2c

    return-void

    :cond_2c
    move-object v2, v6

    .line 33
    .local v2, "caller":Ljava/lang/String;
    move-object v3, v1

    .local v3, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$indexOfFirst":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    array-length v7, v3

    :goto_31
    if-ge v6, v7, :cond_3f

    .line 68
    aget-object v8, v3, v6

    .local v8, "it":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 33
    .local v9, "$i$a$-indexOfFirst-ZygoteHook$load$2$gIDsIndex$1":I
    instance-of v8, v8, [I

    .line 68
    .end local v8    # "it":Ljava/lang/Object;
    .end local v9    # "$i$a$-indexOfFirst-ZygoteHook$load$2$gIDsIndex$1":I
    if-eqz v8, :cond_3c

    .line 69
    move v5, v6

    goto :goto_40

    .line 67
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 72
    .end local v6    # "index$iv":I
    :cond_3f
    nop

    .line 33
    .end local v3    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$indexOfFirst":I
    :goto_40
    move v3, v5

    .line 34
    .local v3, "gIDsIndex":I
    if-gez v3, :cond_44

    return-void

    .line 37
    :cond_44
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2;->this$0:Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;

    # getter for: Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;
    invoke-static {v5}, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->access$getService$p(Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;)Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pandasu/turbo/lspoed/HMAService;->getDetectorApps()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 38
    aget-object v5, v1, v3

    const-string v6, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [I

    .line 42
    .local v5, "gIDs":[I
    nop

    .line 43
    nop

    .line 42
    nop

    .line 44
    const/16 v6, 0xbbd

    const/16 v7, 0xbbb

    const/16 v8, 0xbbc

    filled-new-array {v7, v8, v6}, [I

    move-result-object v6

    .line 42
    nop

    .line 41
    nop

    .line 47
    .local v6, "restrictedGids":[I
    move-object v7, v5

    .local v7, "$this$filter$iv":[I
    const/4 v8, 0x0

    .line 73
    .local v8, "$i$f$filter":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$filterTo$iv$iv":[I
    const/4 v11, 0x0

    .line 74
    .local v11, "$i$f$filterTo":I
    array-length v12, v10

    const/4 v13, 0x0

    :goto_7b
    if-ge v13, v12, :cond_94

    aget v14, v10, v13

    .local v14, "element$iv$iv":I
    move v15, v14

    .local v15, "it":I
    const/16 v16, 0x0

    .line 47
    .local v16, "$i$a$-filter-ZygoteHook$load$2$filteredGids$1":I
    invoke-static {v6, v15}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v17

    .line 74
    .end local v15    # "it":I
    .end local v16    # "$i$a$-filter-ZygoteHook$load$2$filteredGids$1":I
    xor-int/lit8 v15, v17, 0x1

    if-eqz v15, :cond_91

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v14    # "element$iv$iv":I
    :cond_91
    add-int/lit8 v13, v13, 0x1

    goto :goto_7b

    .line 75
    :cond_94
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$filterTo$iv$iv":[I
    .end local v11    # "$i$f$filterTo":I
    check-cast v9, Ljava/util/List;

    .line 73
    nop

    .end local v7    # "$this$filter$iv":[I
    .end local v8    # "$i$f$filter":I
    check-cast v9, Ljava/util/Collection;

    .line 47
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v7

    .line 48
    .local v7, "filteredGids":[I
    aput-object v7, v1, v3

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restricted GIDs for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PandaSU-ZygoteHook"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v5    # "gIDs":[I
    .end local v6    # "restrictedGids":[I
    .end local v7    # "filteredGids":[I
    :cond_b8
    return-void
.end method
