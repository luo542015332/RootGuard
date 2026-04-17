.class public final Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;
.super Ljava/lang/Object;
.source "PlatformCompatHook.kt"

# interfaces
.implements Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\u0005\u001a\u0008\u0018\u00010\u0006R\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;",
        "Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "hook",
        "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "load",
        "",
        "unload",
        "Companion",
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


# static fields
.field private static final APP_DATA_ISOLATION_CHANGE_ID:J = 0x89450c5L

.field public static final Companion:Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$Companion;

.field private static final PLATFORM_COMPAT_CLASS:Ljava/lang/String; = "com.android.server.compat.PlatformCompat"


# instance fields
.field private hook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private final service:Lcom/pandasu/turbo/lspoed/HMAService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->Companion:Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .registers 3
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    return-void
.end method

.method public static final synthetic access$getService$p(Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;)Lcom/pandasu/turbo/lspoed/HMAService;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;

    .line 26
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    return-object v0
.end method


# virtual methods
.method public load()V
    .registers 9

    .line 38
    const-string v0, "PandaSU-PlatformCompatHook"

    .line 39
    :try_start_2
    const-string v1, "Loading PlatformCompatHook..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v1, "[PandaSU] Loading PlatformCompatHook..."

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 42
    const-string v2, "com.android.server.compat.PlatformCompat"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$1;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->findMethod$default(Ljava/lang/String;Ljava/lang/ClassLoader;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$2;

    invoke-direct {v2, p0}, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook$load$2;-><init>(Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt;->hookBefore(Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->hook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 66
    const-string v1, "PlatformCompatHook loaded successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "[PandaSU] PlatformCompatHook loaded"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_33

    goto :goto_68

    .line 69
    :catchall_33
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load PlatformCompatHook: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PandaSU] PlatformCompatHook failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_68
    return-void
.end method

.method public unload()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->hook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 77
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/PlatformCompatHook;->hook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 78
    return-void
.end method
