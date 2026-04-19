.class public final Lcom/pandasu/turbo/lspoed/HMAService$Config;
.super Ljava/lang/Object;
.source "HMAService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/lspoed/HMAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/HMAService$Config;",
        "",
        "()V",
        "altAppDataIsolation",
        "",
        "getAltAppDataIsolation",
        "()Z",
        "setAltAppDataIsolation",
        "(Z)V",
        "altVoldAppDataIsolation",
        "getAltVoldAppDataIsolation",
        "setAltVoldAppDataIsolation",
        "forceMountData",
        "getForceMountData",
        "setForceMountData",
        "skipSystemAppDataIsolation",
        "getSkipSystemAppDataIsolation",
        "setSkipSystemAppDataIsolation",
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
.field private altAppDataIsolation:Z

.field private altVoldAppDataIsolation:Z

.field private forceMountData:Z

.field private skipSystemAppDataIsolation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->altAppDataIsolation:Z

    .line 115
    iput-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->altVoldAppDataIsolation:Z

    .line 117
    iput-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->skipSystemAppDataIsolation:Z

    .line 119
    iput-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->forceMountData:Z

    .line 111
    return-void
.end method


# virtual methods
.method public final getAltAppDataIsolation()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->altAppDataIsolation:Z

    return v0
.end method

.method public final getAltVoldAppDataIsolation()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->altVoldAppDataIsolation:Z

    return v0
.end method

.method public final getForceMountData()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->forceMountData:Z

    return v0
.end method

.method public final getSkipSystemAppDataIsolation()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->skipSystemAppDataIsolation:Z

    return v0
.end method

.method public final setAltAppDataIsolation(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->altAppDataIsolation:Z

    return-void
.end method

.method public final setAltVoldAppDataIsolation(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->altVoldAppDataIsolation:Z

    return-void
.end method

.method public final setForceMountData(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->forceMountData:Z

    return-void
.end method

.method public final setSkipSystemAppDataIsolation(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/pandasu/turbo/lspoed/HMAService$Config;->skipSystemAppDataIsolation:Z

    return-void
.end method
