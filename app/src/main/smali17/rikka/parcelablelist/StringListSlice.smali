.class public Lrikka/parcelablelist/StringListSlice;
.super Lrikka/parcelablelist/BaseParcelableListSlice;
.source "StringListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrikka/parcelablelist/BaseParcelableListSlice<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lrikka/parcelablelist/StringListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lrikka/parcelablelist/StringListSlice$1;

    invoke-direct {v0}, Lrikka/parcelablelist/StringListSlice$1;-><init>()V

    sput-object v0, Lrikka/parcelablelist/StringListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0, p1}, Lrikka/parcelablelist/BaseParcelableListSlice;-><init>(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lrikka/parcelablelist/StringListSlice$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lrikka/parcelablelist/StringListSlice$1;

    .line 10
    invoke-direct {p0, p1}, Lrikka/parcelablelist/StringListSlice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lrikka/parcelablelist/BaseParcelableListSlice;-><init>(Ljava/util/List;)V

    .line 18
    return-void
.end method

.method public static emptyList()Lrikka/parcelablelist/StringListSlice;
    .locals 2

    .line 13
    new-instance v0, Lrikka/parcelablelist/StringListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lrikka/parcelablelist/StringListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic readElement(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lrikka/parcelablelist/StringListSlice;->readElement(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readElement(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lrikka/parcelablelist/StringListSlice;->writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "writeFlags"    # I

    .line 31
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
