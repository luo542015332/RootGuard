.class Lrikka/parcelablelist/BaseParcelableListSlice$1;
.super Landroid/os/Binder;
.source "BaseParcelableListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/parcelablelist/BaseParcelableListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrikka/parcelablelist/BaseParcelableListSlice;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$writeFlags:I


# direct methods
.method constructor <init>(Lrikka/parcelablelist/BaseParcelableListSlice;Ljava/util/Iterator;I)V
    .registers 4
    .param p1, "this$0"    # Lrikka/parcelablelist/BaseParcelableListSlice;

    .line 93
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice$1;, "Lrikka/parcelablelist/BaseParcelableListSlice$1;"
    iput-object p1, p0, Lrikka/parcelablelist/BaseParcelableListSlice$1;->this$0:Lrikka/parcelablelist/BaseParcelableListSlice;

    iput-object p2, p0, Lrikka/parcelablelist/BaseParcelableListSlice$1;->val$iterator:Ljava/util/Iterator;

    iput p3, p0, Lrikka/parcelablelist/BaseParcelableListSlice$1;->val$writeFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 96
    .local p0, "this":Lrikka/parcelablelist/BaseParcelableListSlice$1;, "Lrikka/parcelablelist/BaseParcelableListSlice$1;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    if-nez p3, :cond_6

    goto :goto_10

    .line 99
    :cond_6
    iget-object v1, p0, Lrikka/parcelablelist/BaseParcelableListSlice$1;->this$0:Lrikka/parcelablelist/BaseParcelableListSlice;

    iget-object v2, p0, Lrikka/parcelablelist/BaseParcelableListSlice$1;->val$iterator:Ljava/util/Iterator;

    iget v3, p0, Lrikka/parcelablelist/BaseParcelableListSlice$1;->val$writeFlags:I

    # invokes: Lrikka/parcelablelist/BaseParcelableListSlice;->writeSliceToParcel(Ljava/util/Iterator;Landroid/os/Parcel;I)V
    invoke-static {v1, v2, p3, v3}, Lrikka/parcelablelist/BaseParcelableListSlice;->access$000(Lrikka/parcelablelist/BaseParcelableListSlice;Ljava/util/Iterator;Landroid/os/Parcel;I)V

    .line 100
    return v0

    .line 97
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method
