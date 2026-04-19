.class public Lrikka/hidden/compat/adapter/TaskStackListenerAdapter;
.super Landroid/app/ITaskStackListener$Stub;
.source "TaskStackListenerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 0

    .line 14
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ITaskStackListener$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    .local v0, "tr":Ljava/lang/Throwable;
    const/4 v1, 0x1

    return v1
.end method
