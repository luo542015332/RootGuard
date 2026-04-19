.class public final Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;
.super Ljava/lang/Object;
.source "XposedBridgeHook.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXposedBridgeHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XposedBridgeHook.kt\ncom/pandasu/turbo/lspoed/hook/XposedBridgeHook\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,45:1\n12474#2,2:46\n*S KotlinDebug\n*F\n+ 1 XposedBridgeHook.kt\ncom/pandasu/turbo/lspoed/hook/XposedBridgeHook\n*L\n39#1:46,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;",
        "",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "isDetectorCalling",
        "",
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


# instance fields
.field private final service:Lcom/pandasu/turbo/lspoed/HMAService;


# direct methods
.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .locals 1
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    return-void
.end method

.method public static final synthetic access$isDetectorCalling(Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;)Z
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;->isDetectorCalling()Z

    move-result v0

    return v0
.end method

.method private final isDetectorCalling()Z
    .locals 13

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 39
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    .local v1, "$this$any$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$f$any":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .line 40
    .local v8, "$i$a$-any-XposedBridgeHook$isDetectorCalling$1":I
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getClassName(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    const-string v11, "applistdetector"

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 41
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    const-string v11, "hunter"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v9, v11, v12}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 42
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "apecheck"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v12}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move v9, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v12

    .line 40
    :goto_2
    nop

    .line 46
    .end local v7    # "it":Ljava/lang/StackTraceElement;
    .end local v8    # "$i$a$-any-XposedBridgeHook$isDetectorCalling$1":I
    if-eqz v9, :cond_2

    move v4, v12

    goto :goto_3

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    :cond_3
    nop

    .line 39
    .end local v1    # "$this$any$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$any":I
    :goto_3
    return v4
.end method


# virtual methods
.method public final load()V
    .locals 4

    .line 18
    const-string v0, "Loading XposedBridgeHook (backup in system_server)"

    const-string v1, "PandaSU-XposedBridgeHook"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_0
    const-class v0, Lde/robv/android/xposed/XposedBridge;

    .line 22
    const-string v2, "getModules"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    .local v0, "getModulesMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Member;

    new-instance v3, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook$load$1;

    invoke-direct {v3, p0}, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook$load$1;-><init>(Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;)V

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook;

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 31
    const-string v2, "Backup hook: XposedBridge.getModules"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "getModulesMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Failed to hook XposedBridge.getModules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
