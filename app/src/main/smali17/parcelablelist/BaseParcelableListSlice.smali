.class public abstract Lrikka/parcelablelist/BaseParcelableListSlice;
.super Ljava/lang/Object;
.source "BaseParcelableListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ParcelableListSlice"


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice;, "Lrikka/parcelablelist/BaseParcelableListSlice<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    .line 38
    return-void

    .line 40
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    .line 42
    invoke-direct {p0, v1, p1}, Lrikka/parcelablelist/BaseParcelableListSlice;->readSliceFromParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_1f

    .line 46
    return-void

    .line 49
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 51
    .local v1, "binder":Landroid/os/IBinder;
    :cond_23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 52
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 54
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2d
    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 55
    iget-object v4, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lrikka/parcelablelist/BaseParcelableListSlice;->readSliceFromParcel(Ljava/util/List;Landroid/os/Parcel;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_35} :catch_47
    .catchall {:try_start_2d .. :try_end_35} :catchall_45

    .line 62
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 64
    nop

    .line 65
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    iget-object v2, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_23

    .line 66
    return-void

    .line 62
    .restart local v2    # "data":Landroid/os/Parcel;
    .restart local v3    # "reply":Landroid/os/Parcel;
    :catchall_45
    move-exception v4

    goto :goto_77

    .line 58
    :catch_47
    move-exception v4

    .line 59
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_48
    const-string v5, "ParcelableListSlice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving array; only received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_45

    .line 62
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 60
    return-void

    .line 62
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_77
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 64
    throw v4
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice;, "Lrikka/parcelablelist/BaseParcelableListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lrikka/parcelablelist/BaseParcelableListSlice;Ljava/util/Iterator;Landroid/os/Parcel;I)V
    .registers 4
    .param p0, "x0"    # Lrikka/parcelablelist/BaseParcelableListSlice;
    .param p1, "x1"    # Ljava/util/Iterator;
    .param p2, "x2"    # Landroid/os/Parcel;
    .param p3, "x3"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lrikka/parcelablelist/BaseParcelableListSlice;->writeSliceToParcel(Ljava/util/Iterator;Landroid/os/Parcel;I)V

    return-void
.end method

.method private readSliceFromParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 6
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice;, "Lrikka/parcelablelist/BaseParcelableListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 71
    invoke-virtual {p0, p2}, Lrikka/parcelablelist/BaseParcelableListSlice;->readElement(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 73
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method private writeSliceToParcel(Ljava/util/Iterator;Landroid/os/Parcel;I)V
    .registers 8
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice;, "Lrikka/parcelablelist/BaseParcelableListSlice<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 108
    .local v0, "startPosition":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v1, 0x0

    .line 118
    .local v1, "size":I
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_21

    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lrikka/parcelablelist/BaseParcelableListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 122
    :cond_21
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 123
    .local v2, "position":I
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice;, "Lrikka/parcelablelist/BaseParcelableListSlice<TT;>;"
    iget-object v0, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method public abstract readElement(Landroid/os/Parcel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice;, "Lrikka/parcelablelist/BaseParcelableListSlice<TT;>;"
    iget-object v0, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    if-nez v0, :cond_9

    .line 78
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void

    .line 82
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 83
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v1, p0, Lrikka/parcelablelist/BaseParcelableListSlice;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0, v1, p1, p2}, Lrikka/parcelablelist/BaseParcelableListSlice;->writeSliceToParcel(Ljava/util/Iterator;Landroid/os/Parcel;I)V

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_20

    .line 89
    return-void

    .line 92
    :cond_20
    move v2, p2

    .line 93
    .local v2, "writeFlags":I
    new-instance v3, Lrikka/parcelablelist/BaseParcelableListSlice$1;

    invoke-direct {v3, p0, v1, v2}, Lrikka/parcelablelist/BaseParcelableListSlice$1;-><init>(Lrikka/parcelablelist/BaseParcelableListSlice;Ljava/util/Iterator;I)V

    .line 103
    .local v3, "binder":Landroid/os/IBinder;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 104
    return-void
.end method
