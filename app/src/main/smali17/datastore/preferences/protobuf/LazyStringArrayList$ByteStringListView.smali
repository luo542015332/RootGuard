.class Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Landroidx/datastore/preferences/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 370
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 371
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 372
    return-void
.end method


# virtual methods
.method public add(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 393
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->add(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$500(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 394
    iget v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 395
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 367
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->add(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method public get(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 376
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->getByteString(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 367
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 4
    .param p1, "index"    # I

    .line 399
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 401
    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ByteString;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 367
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public set(ILandroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 386
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->setAndReturn(ILandroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$300(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;ILandroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 388
    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ByteString;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 367
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->set(ILandroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 381
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
