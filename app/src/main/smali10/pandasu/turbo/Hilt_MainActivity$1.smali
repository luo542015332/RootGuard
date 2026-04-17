.class Lcom/pandasu/turbo/Hilt_MainActivity$1;
.super Ljava/lang/Object;
.source "Hilt_MainActivity.java"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/Hilt_MainActivity;->_initHiltInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandasu/turbo/Hilt_MainActivity;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/Hilt_MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pandasu/turbo/Hilt_MainActivity;

    .line 37
    iput-object p1, p0, Lcom/pandasu/turbo/Hilt_MainActivity$1;->this$0:Lcom/pandasu/turbo/Hilt_MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/pandasu/turbo/Hilt_MainActivity$1;->this$0:Lcom/pandasu/turbo/Hilt_MainActivity;

    invoke-virtual {v0}, Lcom/pandasu/turbo/Hilt_MainActivity;->inject()V

    .line 41
    return-void
.end method
