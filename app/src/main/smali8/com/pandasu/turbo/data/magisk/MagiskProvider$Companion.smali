.class public final Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;
.super Ljava/lang/Object;
.source "MagiskProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;",
        "",
        "()V",
        "KERNELSU_DB_TIANN",
        "",
        "KERNELSU_DB_WEISHU",
        "KERNELSU_PACKAGE_TIANN",
        "KERNELSU_PACKAGE_WEISHU",
        "KERNELSU_PATHS",
        "",
        "MAGISK_AUTHORITY",
        "MAGISK_DB",
        "MAGISK_FILE_URI",
        "Landroid/net/Uri;",
        "getMAGISK_FILE_URI",
        "()Landroid/net/Uri;",
        "MAGISK_PACKAGE",
        "MAGISK_URI",
        "getMAGISK_URI",
        "MODULES_PATH",
        "ROOT_TYPE_KERNELSU",
        "ROOT_TYPE_MAGISK",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "app_debug"
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
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAGISK_FILE_URI()Landroid/net/Uri;
    .locals 1

    .line 46
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$getMAGISK_FILE_URI$cp()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getMAGISK_URI()Landroid/net/Uri;
    .locals 1

    .line 45
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$getMAGISK_URI$cp()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
