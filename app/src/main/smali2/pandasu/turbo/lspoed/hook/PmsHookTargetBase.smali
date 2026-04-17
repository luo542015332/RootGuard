.class public Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;
.super Ljava/lang/Object;
.source "PmsHookTargetBase.kt"

# interfaces
.implements Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPmsHookTargetBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PmsHookTargetBase.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTargetBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n1855#2,2:128\n1282#3,2:130\n*S KotlinDebug\n*F\n+ 1 PmsHookTargetBase.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTargetBase\n*L\n20#1:128,2\n88#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0004J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0004J\u001d\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004\u00a2\u0006\u0002\u0010\u0017J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0016H\u0004J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016J\u0008\u0010\u001e\u001a\u00020\u0019H\u0016R\u001e\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u00060\u0007R\u00020\u00080\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;",
        "Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "hooks",
        "",
        "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "getHooks",
        "()Ljava/util/List;",
        "getService",
        "()Lcom/pandasu/turbo/lspoed/HMAService;",
        "getPackageNameFromPackageState",
        "",
        "ps",
        "",
        "getPackageNameFromSettings",
        "packageSettings",
        "getPackagesForUid",
        "",
        "uid",
        "",
        "(I)[Ljava/lang/String;",
        "hookShouldFilterApplication",
        "",
        "className",
        "callingUidIndex",
        "targetIndex",
        "load",
        "unload",
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


# instance fields
.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lcom/pandasu/turbo/lspoed/HMAService;


# direct methods
.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .registers 3
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->hooks:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method protected final getHooks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->hooks:Ljava/util/List;

    return-object v0
.end method

.method protected final getPackageNameFromPackageState(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "ps"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 52
    :cond_4
    nop

    .line 54
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_57

    check-cast v2, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_20

    move-object v0, v2

    goto :goto_57

    .line 56
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catchall_20
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    nop

    .line 59
    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 60
    .local v2, "nameField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_56

    check-cast v3, Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_3c

    move-object v0, v3

    goto :goto_56

    .line 62
    .end local v2    # "nameField":Ljava/lang/reflect/Field;
    :catchall_3c
    move-exception v2

    .line 63
    .local v2, "e2":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name from PackageStateInternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PandaSU-PmsHookBase"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    nop

    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_56
    :goto_56
    nop

    .line 52
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_57
    :goto_57
    return-object v0
.end method

.method protected final getPackageNameFromSettings(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "packageSettings"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 30
    :cond_4
    nop

    .line 31
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 32
    .local v1, "nameField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_41

    check-cast v2, Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_1d} :catch_21
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    move-object v0, v2

    goto :goto_41

    .line 41
    .end local v1    # "nameField":Ljava/lang/reflect/Field;
    :catchall_1f
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Throwable;
    goto :goto_41

    .line 34
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 36
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPackageName"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 37
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_40

    check-cast v3, Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3e

    move-object v0, v3

    goto :goto_40

    .line 38
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catchall_3e
    move-exception v2

    .line 39
    .local v2, "e2":Ljava/lang/Throwable;
    nop

    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_40
    :goto_40
    nop

    .line 30
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_41
    :goto_41
    return-object v0
.end method

.method protected final getPackagesForUid(I)[Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 73
    nop

    .line 74
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    invoke-virtual {v1}, Lcom/pandasu/turbo/lspoed/HMAService;->getPms()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v4, "getPackagesForUid"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_20

    :cond_1f
    move-object v1, v0

    .line 75
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_20
    if-eqz v1, :cond_35

    iget-object v4, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    invoke-virtual {v4}, Lcom/pandasu/turbo/lspoed/HMAService;->getPms()Ljava/lang/Object;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_36

    :cond_35
    move-object v2, v0

    :goto_36
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_47

    check-cast v2, [Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3e

    move-object v0, v2

    goto :goto_47

    .line 76
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catchall_3e
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PandaSU-PmsHookBase"

    const-string v3, "getPackagesForUid failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    nop

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_47
    :goto_47
    return-object v0
.end method

.method protected final getService()Lcom/pandasu/turbo/lspoed/HMAService;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    return-object v0
.end method

.method protected final hookShouldFilterApplication(Ljava/lang/String;II)V
    .registers 15
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "callingUidIndex"    # I
    .param p3, "targetIndex"    # I

    const-string v0, "PandaSU-PmsHookBase"

    const-string v1, "className"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    :try_start_8
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getDeclaredMethods(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .local v2, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$f$firstOrNull":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_3c

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Method;

    .local v7, "it":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 88
    .local v8, "$i$a$-firstOrNull-PmsHookTargetBase$hookShouldFilterApplication$method$1":I
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "shouldFilterApplication"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 130
    .end local v7    # "it":Ljava/lang/reflect/Method;
    .end local v8    # "$i$a$-firstOrNull-PmsHookTargetBase$hookShouldFilterApplication$method$1":I
    if-eqz v9, :cond_39

    goto :goto_3d

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 131
    :cond_3c
    const/4 v6, 0x0

    .line 88
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_3d
    check-cast v6, Ljava/lang/reflect/Method;

    move-object v2, v6

    .line 90
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_59

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldFilterApplication method not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
    :cond_59
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Member;

    new-instance v4, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;

    invoke-direct {v4, p2, p3, p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;-><init>(IILcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;)V

    check-cast v4, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    .line 119
    .local v3, "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    iget-object v4, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->hooks:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hooked shouldFilterApplication in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_8 .. :try_end_85} :catchall_86

    goto :goto_8c

    .line 122
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "unhook":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :catchall_86
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Failed to hook shouldFilterApplication"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_8c
    return-void
.end method

.method public load()V
    .registers 3

    .line 16
    const-string v0, "PandaSU-PmsHookBase"

    const-string v1, "Loading base hooks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public unload()V
    .registers 7

    .line 20
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->hooks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .local v4, "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    const/4 v5, 0x0

    .line 20
    .local v5, "$i$a$-forEach-PmsHookTargetBase$unload$1":I
    invoke-virtual {v4}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 128
    .end local v4    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .end local v5    # "$i$a$-forEach-PmsHookTargetBase$unload$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_9

    .line 129
    :cond_1c
    nop

    .line 21
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->hooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    return-void
.end method
