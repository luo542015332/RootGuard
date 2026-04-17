.class Lrikka/hidden/compat/ActivityManagerApis$1;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerApis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/hidden/compat/ActivityManagerApis;->registerReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lrikka/hidden/compat/ActivityManagerApis$1;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lrikka/hidden/compat/ActivityManagerApis$1;->val$receiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 195
    return-void
.end method
