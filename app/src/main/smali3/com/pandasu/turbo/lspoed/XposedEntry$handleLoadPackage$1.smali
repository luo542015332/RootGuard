.class final Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "XposedEntry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/XposedEntry;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

.field final synthetic $pms:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;->$pms:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;->$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 63
    sget-object v0, Lcom/pandasu/turbo/lspoed/HMAService;->Companion:Lcom/pandasu/turbo/lspoed/HMAService$Companion;

    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;->$pms:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$handleLoadPackage$1;->$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v2, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/pandasu/turbo/lspoed/HMAService$Companion;->register(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    .line 64
    const-string v0, "HMAService started from direct PMS"

    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V

    .line 65
    return-void
.end method
