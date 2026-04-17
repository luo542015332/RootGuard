.class public final Lokhttp3/Cache$RealCacheRequest$1;
.super Lokio/ForwardingSink;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/Cache$RealCacheRequest$1",
        "Lokio/ForwardingSink;",
        "close",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache;

.field final synthetic this$1:Lokhttp3/Cache$RealCacheRequest;


# direct methods
.method constructor <init>(Lokhttp3/Cache;Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V
    .registers 4
    .param p1, "$receiver"    # Lokhttp3/Cache;
    .param p2, "$receiver"    # Lokhttp3/Cache$RealCacheRequest;
    .param p3, "$super_call_param$1"    # Lokio/Sink;

    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache;

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$1:Lokhttp3/Cache$RealCacheRequest;

    .line 398
    invoke-direct {p0, p3}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache;

    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$1:Lokhttp3/Cache$RealCacheRequest;

    monitor-enter v0

    const/4 v2, 0x0

    .line 402
    .local v2, "$i$a$-synchronized-Cache$RealCacheRequest$1$close$1":I
    :try_start_6
    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->getDone()Z

    move-result v3
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_28

    if-eqz v3, :cond_e

    .end local v2    # "$i$a$-synchronized-Cache$RealCacheRequest$1$close$1":I
    monitor-exit v0

    return-void

    .line 403
    .restart local v2    # "$i$a$-synchronized-Cache$RealCacheRequest$1$close$1":I
    :cond_e
    const/4 v3, 0x1

    :try_start_f
    invoke-virtual {v1, v3}, Lokhttp3/Cache$RealCacheRequest;->setDone(Z)V

    .line 404
    invoke-virtual {v0}, Lokhttp3/Cache;->getWriteSuccessCount$okhttp()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lokhttp3/Cache;->setWriteSuccessCount$okhttp(I)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_28

    .line 401
    .end local v2    # "$i$a$-synchronized-Cache$RealCacheRequest$1$close$1":I
    monitor-exit v0

    .line 406
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 407
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$1:Lokhttp3/Cache$RealCacheRequest;

    # getter for: Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/Cache$RealCacheRequest;->access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    .line 408
    return-void

    .line 401
    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method
