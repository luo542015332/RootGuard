.class public Lrikka/parcelablelist/ParcelableListSlice;
.super Lrikka/parcelablelist/BaseParcelableListSlice;
.source "ParcelableListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lrikka/parcelablelist/BaseParcelableListSlice<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lrikka/parcelablelist/ParcelableListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lrikka/parcelablelist/ParcelableListSlice$1;

    invoke-direct {v0}, Lrikka/parcelablelist/ParcelableListSlice$1;-><init>()V

    sput-object v0, Lrikka/parcelablelist/ParcelableListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    invoke-direct {p0, p1}, Lrikka/parcelablelist/BaseParcelableListSlice;-><init>(Landroid/os/Parcel;)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lrikka/parcelablelist/ParcelableListSlice$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lrikka/parcelablelist/ParcelableListSlice$1;

    .line 11
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    invoke-direct {p0, p1}, Lrikka/parcelablelist/ParcelableListSlice;-><init>(Landroid/os/Parcel;)V

    return-void
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

    .line 18
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lrikka/parcelablelist/BaseParcelableListSlice;-><init>(Ljava/util/List;)V

    .line 19
    return-void
.end method

.method public static emptyList()Lrikka/parcelablelist/ParcelableListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Lrikka/parcelablelist/ParcelableListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lrikka/parcelablelist/ParcelableListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lrikka/parcelablelist/ParcelableListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    .line 37
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    const/4 v0, 0x0

    .line 38
    .local v0, "contents":I
    invoke-virtual {p0}, Lrikka/parcelablelist/ParcelableListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-interface {v3}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    or-int/2addr v0, v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 42
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method public readElement(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    const-class v0, Lrikka/parcelablelist/ParcelableListSlice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readElement(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    invoke-virtual {p0, p1}, Lrikka/parcelablelist/ParcelableListSlice;->readElement(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .registers 4
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "writeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p2, p1, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    return-void
.end method

.method public bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4

    .line 11
    .local p0, "this":Lrikka/parcelablelist/ParcelableListSlice;, "Lrikka/parcelablelist/ParcelableListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Lrikka/parcelablelist/ParcelableListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method
