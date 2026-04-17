.class public final Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;
.super Ljava/lang/Object;
.source "ZygoteHook.kt"

# interfaces
.implements Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZygoteHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZygoteHook.kt\ncom/pandasu/turbo/lspoed/hook/ZygoteHook\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1855#2,2:62\n*S KotlinDebug\n*F\n+ 1 ZygoteHook.kt\ncom/pandasu/turbo/lspoed/hook/ZygoteHook\n*L\n58#1:62,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0018\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u00060\u0007R\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;",
        "Lcom/pandasu/turbo/lspoed/hook/IFrameworkHook;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "hooks",
        "",
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
.field public static final Companion:Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$Companion;

.field private static final ZYGOTE_PROCESS_CLASS:Ljava/lang/String; = "com.android.internal.os.ZygoteProcess"


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
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->Companion:Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .registers 3
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->hooks:Ljava/util/List;

    .line 14
    return-void
.end method

.method public static final synthetic access$getService$p(Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;)Lcom/pandasu/turbo/lspoed/HMAService;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;

    .line 14
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;

    return-object v0
.end method


# virtual methods
.method public load()V
    .registers 7

    .line 26
    nop

    .line 24
    const-string v0, "com.android.internal.os.ZygoteProcess"

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->findMethodOrNull$default(Ljava/lang/String;Ljava/lang/ClassLoader;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_28

    .line 24
    nop

    .line 26
    new-instance v1, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2;

    invoke-direct {v1, p0}, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook$load$2;-><init>(Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt;->hookBefore(Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_28

    .line 26
    nop

    .line 52
    nop

    .local v0, "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-let-ZygoteHook$load$3":I
    iget-object v2, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->hooks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v0    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .end local v1    # "$i$a$-let-ZygoteHook$load$3":I
    goto :goto_29

    .line 26
    :cond_28
    nop

    .line 55
    :goto_29
    return-void
.end method

.method public unload()V
    .registers 7

    .line 58
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->hooks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 62
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

    .line 58
    .local v5, "$i$a$-forEach-ZygoteHook$unload$1":I
    invoke-virtual {v4}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 62
    .end local v4    # "it":Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .end local v5    # "$i$a$-forEach-ZygoteHook$unload$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_9

    .line 63
    :cond_1c
    nop

    .line 59
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/ZygoteHook;->hooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method
