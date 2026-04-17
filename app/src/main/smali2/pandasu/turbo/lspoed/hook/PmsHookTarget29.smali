.class public Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;
.super Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;
.source "PmsHookTarget29.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPmsHookTarget29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PmsHookTarget29.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget29\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,62:1\n1282#2,2:63\n*S KotlinDebug\n*F\n+ 1 PmsHookTarget29.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget29\n*L\n22#1:63,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;",
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "load",
        "",
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


# virtual methods
.method public load()V
    .registers 12

    .line 17
    const-string v0, "Loading Android 10 hooks"

    const-string v1, "PandaSU-PmsHook29"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    nop

    .line 21
    :try_start_8
    const-string v0, "com.android.server.pm.AppsFilter"

    invoke-virtual {p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getDeclaredMethods(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .local v2, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$f$firstOrNull":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_40

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Method;

    .local v7, "it":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 22
    .local v8, "$i$a$-firstOrNull-PmsHookTarget29$load$method$1":I
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "shouldFilterApplication"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 63
    .end local v7    # "it":Ljava/lang/reflect/Method;
    .end local v8    # "$i$a$-firstOrNull-PmsHookTarget29$load$method$1":I
    if-eqz v9, :cond_3d

    goto :goto_41

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 64
    :cond_40
    const/4 v6, 0x0

    .line 22
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_41
    check-cast v6, Ljava/lang/reflect/Method;

    move-object v2, v6

    .line 24
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_4c

    .line 25
    const-string v3, "shouldFilterApplication not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_4c
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Member;

    new-instance v4, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;

    invoke-direct {v4, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;-><init>(Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;)V

    check-cast v4, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    .line 54
    .local v3, "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-virtual {p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;->getHooks()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v4, "Android 10 hooks loaded"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_8 .. :try_end_69} :catchall_6a

    goto :goto_70

    .line 57
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :catchall_6a
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Failed to load Android 10 hooks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_70
    return-void
.end method
