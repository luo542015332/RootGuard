.class public final Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;
.super Ljava/lang/Object;
.source "SettingsDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/data/local/SettingsDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0007R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0007R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0007R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0007R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;",
        "",
        "()V",
        "AUTO_DENY_UNKNOWN",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "getAUTO_DENY_UNKNOWN",
        "()Landroidx/datastore/preferences/core/Preferences$Key;",
        "CHECK_MODULE_UPDATES",
        "getCHECK_MODULE_UPDATES",
        "CURRENT_THEME",
        "",
        "getCURRENT_THEME",
        "DARK_MODE",
        "getDARK_MODE",
        "DEFAULT_UNMOUNT_MODULES",
        "getDEFAULT_UNMOUNT_MODULES",
        "DYNAMIC_COLORS",
        "getDYNAMIC_COLORS",
        "KERNEL_UNMOUNT_MODULES",
        "getKERNEL_UNMOUNT_MODULES",
        "SHOW_FLOATING_DIALOG",
        "getSHOW_FLOATING_DIALOG",
        "SHOW_NOTIFICATIONS",
        "getSHOW_NOTIFICATIONS",
        "TRADITIONAL_SU_SUPPORT",
        "getTRADITIONAL_SU_SUPPORT",
        "WEBVIEW_DEBUGGING",
        "getWEBVIEW_DEBUGGING",
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
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAUTO_DENY_UNKNOWN()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->AUTO_DENY_UNKNOWN:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getAUTO_DENY_UNKNOWN$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getCHECK_MODULE_UPDATES()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 30
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->CHECK_MODULE_UPDATES:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getCHECK_MODULE_UPDATES$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getCURRENT_THEME()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->CURRENT_THEME:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getCURRENT_THEME$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getDARK_MODE()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 24
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->DARK_MODE:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getDARK_MODE$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getDEFAULT_UNMOUNT_MODULES()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 33
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->DEFAULT_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getDEFAULT_UNMOUNT_MODULES$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getDYNAMIC_COLORS()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->DYNAMIC_COLORS:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getDYNAMIC_COLORS$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getKERNEL_UNMOUNT_MODULES()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 32
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->KERNEL_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getKERNEL_UNMOUNT_MODULES$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getSHOW_FLOATING_DIALOG()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 28
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->SHOW_FLOATING_DIALOG:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getSHOW_FLOATING_DIALOG$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getSHOW_NOTIFICATIONS()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->SHOW_NOTIFICATIONS:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getSHOW_NOTIFICATIONS$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getTRADITIONAL_SU_SUPPORT()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->TRADITIONAL_SU_SUPPORT:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getTRADITIONAL_SU_SUPPORT$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getWEBVIEW_DEBUGGING()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    # getter for: Lcom/pandasu/turbo/data/local/SettingsDataStore;->WEBVIEW_DEBUGGING:Landroidx/datastore/preferences/core/Preferences$Key;
    invoke-static {}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->access$getWEBVIEW_DEBUGGING$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method
