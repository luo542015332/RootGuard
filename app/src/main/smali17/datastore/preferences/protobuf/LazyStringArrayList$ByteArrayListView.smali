.class Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;
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
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 327
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 328
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 329
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 324
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->add(I[B)V

    return-void
.end method

.method public add(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 350
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->add(I[B)V
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$200(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;I[B)V

    .line 351
    iget v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 352
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 324
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public get(I)[B
    .registers 3
    .param p1, "index"    # I

    .line 333
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 324
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->remove(I)[B

    move-result-object p1

    return-object p1
.end method

.method public remove(I)[B
    .registers 4
    .param p1, "index"    # I

    .line 356
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 358
    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 324
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->set(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public set(I[B)[B
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 343
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$000(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 345
    # invokes: Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .registers 2

    .line 338
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
