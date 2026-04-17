.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Level;,
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\r\u0010\u000b\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0007J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\n\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "Lokhttp3/Interceptor;",
        "logger",
        "Lokhttp3/logging/HttpLoggingInterceptor$Logger;",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V",
        "headersToRedact",
        "",
        "",
        "<set-?>",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "level",
        "getLevel",
        "()Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V",
        "bodyHasUnknownEncoding",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "-deprecated_level",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "logHeader",
        "",
        "i",
        "",
        "redactHeader",
        "name",
        "setLevel",
        "Level",
        "Logger",
        "okhttp-logging-interceptor"
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
.field private volatile headersToRedact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .registers 3
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 43
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 46
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 39
    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 39
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 40
    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 39
    :cond_6
    invoke-direct {p0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 294
    return-void
.end method

.method private final bodyHasUnknownEncoding(Lokhttp3/Headers;)Z
    .registers 6
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 290
    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 291
    .local v0, "contentEncoding":Ljava/lang/String;
    :cond_a
    const-string v2, "identity"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 292
    const-string v2, "gzip"

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    nop

    .line 291
    :goto_1e
    return v1
.end method

.method private final logHeader(Lokhttp3/Headers;I)V
    .registers 7
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "i"    # I

    .line 285
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "\u2588\u2588"

    goto :goto_14

    :cond_10
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/String;
    :goto_14
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 287
    return-void
.end method


# virtual methods
.method public final -deprecated_level()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "level"
            imports = {}
        .end subannotation
    .end annotation

    .line 146
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public final getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .registers 2

    .line 46
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 31
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "chain"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 152
    .local v3, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 153
    .local v4, "request":Lokhttp3/Request;
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_18

    .line 154
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 157
    :cond_18
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    move v7, v0

    .line 158
    .local v7, "logBody":Z
    if-nez v7, :cond_29

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    move v8, v0

    .line 160
    .local v8, "logHeaders":Z
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    .line 162
    .local v9, "requestBody":Lokhttp3/RequestBody;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v10

    .line 164
    .local v10, "connection":Lokhttp3/Connection;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0x20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ""

    if-eqz v10, :cond_6e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6f

    :cond_6e
    move-object v13, v12

    :goto_6f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    nop

    .line 165
    .local v0, "requestStartMessage":Ljava/lang/String;
    const-string v13, "-byte body)"

    const-string v14, " ("

    if-nez v8, :cond_9f

    if-eqz v9, :cond_9f

    .line 166
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_a0

    .line 168
    :cond_9f
    move-object v5, v0

    .end local v0    # "requestStartMessage":Ljava/lang/String;
    .local v5, "requestStartMessage":Ljava/lang/String;
    :goto_a0
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v0, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 170
    const-string v0, "-byte body omitted)"

    const-string v6, "UTF_8"

    const-wide/16 v18, -0x1

    if-eqz v8, :cond_277

    .line 171
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v15

    .line 173
    .local v15, "headers":Lokhttp3/Headers;
    if-eqz v9, :cond_126

    .line 176
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v20

    if-eqz v20, :cond_ec

    move-object/from16 v21, v20

    .local v21, "it":Lokhttp3/MediaType;
    const/16 v20, 0x0

    .line 177
    .local v20, "$i$a$-let-HttpLoggingInterceptor$intercept$1":I
    const-string v11, "Content-Type"

    invoke-virtual {v15, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e4

    .line 178
    iget-object v11, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v22, v3

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v22, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    .end local v5    # "requestStartMessage":Ljava/lang/String;
    .local v23, "requestStartMessage":Ljava/lang/String;
    const-string v5, "Content-Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, v21

    .end local v21    # "it":Lokhttp3/MediaType;
    .local v5, "it":Lokhttp3/MediaType;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_ea

    .line 177
    .end local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v23    # "requestStartMessage":Ljava/lang/String;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v5, "requestStartMessage":Ljava/lang/String;
    .restart local v21    # "it":Lokhttp3/MediaType;
    :cond_e4
    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v5, v21

    .line 180
    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v21    # "it":Lokhttp3/MediaType;
    .local v5, "it":Lokhttp3/MediaType;
    .restart local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v23    # "requestStartMessage":Ljava/lang/String;
    :goto_ea
    nop

    .end local v5    # "it":Lokhttp3/MediaType;
    .end local v20    # "$i$a$-let-HttpLoggingInterceptor$intercept$1":I
    goto :goto_f0

    .line 176
    .end local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v23    # "requestStartMessage":Ljava/lang/String;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v5, "requestStartMessage":Ljava/lang/String;
    :cond_ec
    move-object/from16 v22, v3

    move-object/from16 v23, v5

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v5    # "requestStartMessage":Ljava/lang/String;
    .restart local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v23    # "requestStartMessage":Ljava/lang/String;
    :goto_f0
    nop

    .line 181
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v20

    cmp-long v3, v20, v18

    if-eqz v3, :cond_123

    .line 182
    const-string v3, "Content-Length"

    invoke-virtual {v15, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_120

    .line 183
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Length: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v20, v10

    .end local v10    # "connection":Lokhttp3/Connection;
    .local v20, "connection":Lokhttp3/Connection;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_12c

    .line 182
    .end local v20    # "connection":Lokhttp3/Connection;
    .restart local v10    # "connection":Lokhttp3/Connection;
    :cond_120
    move-object/from16 v20, v10

    .end local v10    # "connection":Lokhttp3/Connection;
    .restart local v20    # "connection":Lokhttp3/Connection;
    goto :goto_12c

    .line 181
    .end local v20    # "connection":Lokhttp3/Connection;
    .restart local v10    # "connection":Lokhttp3/Connection;
    :cond_123
    move-object/from16 v20, v10

    .end local v10    # "connection":Lokhttp3/Connection;
    .restart local v20    # "connection":Lokhttp3/Connection;
    goto :goto_12c

    .line 173
    .end local v20    # "connection":Lokhttp3/Connection;
    .end local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v23    # "requestStartMessage":Ljava/lang/String;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v5    # "requestStartMessage":Ljava/lang/String;
    .restart local v10    # "connection":Lokhttp3/Connection;
    :cond_126
    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v20, v10

    .line 188
    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v5    # "requestStartMessage":Ljava/lang/String;
    .end local v10    # "connection":Lokhttp3/Connection;
    .restart local v20    # "connection":Lokhttp3/Connection;
    .restart local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v23    # "requestStartMessage":Ljava/lang/String;
    :goto_12c
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v15}, Lokhttp3/Headers;->size()I

    move-result v5

    :goto_131
    if-ge v3, v5, :cond_139

    .line 189
    invoke-direct {v1, v15, v3}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_131

    .line 192
    .end local v3    # "i":I
    :cond_139
    const-string v3, "--> END "

    if-eqz v7, :cond_259

    if-nez v9, :cond_144

    move-object/from16 v24, v15

    move-object v15, v12

    goto/16 :goto_25c

    .line 194
    :cond_144
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v1, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_171

    .line 195
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (encoded body omitted)"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object v15, v12

    goto/16 :goto_27e

    .line 196
    :cond_171
    invoke-virtual {v9}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v5

    if-eqz v5, :cond_19a

    .line 197
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (duplex request body omitted)"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object v15, v12

    goto/16 :goto_27e

    .line 198
    :cond_19a
    invoke-virtual {v9}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_1c3

    .line 199
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (one-shot body omitted)"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object v15, v12

    goto/16 :goto_27e

    .line 201
    :cond_1c3
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 202
    .local v5, "buffer":Lokio/Buffer;
    move-object v10, v5

    check-cast v10, Lokio/BufferedSink;

    invoke-virtual {v9, v10}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 204
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    .line 205
    .local v10, "contentType":Lokhttp3/MediaType;
    if-eqz v10, :cond_1dc

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v11

    if-nez v11, :cond_1e1

    :cond_1dc
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .local v11, "charset":Ljava/nio/charset/Charset;
    :cond_1e1
    move-object/from16 v21, v10

    .end local v10    # "contentType":Lokhttp3/MediaType;
    .local v21, "contentType":Lokhttp3/MediaType;
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v10, v12}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 208
    invoke-static {v5}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    move-result v10

    if-eqz v10, :cond_227

    .line 209
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v24, v15

    .end local v15    # "headers":Lokhttp3/Headers;
    .local v24, "headers":Lokhttp3/Headers;
    invoke-virtual {v5, v11}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 210
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v25, v11

    move-object v15, v12

    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .local v25, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_27e

    .line 212
    .end local v24    # "headers":Lokhttp3/Headers;
    .end local v25    # "charset":Ljava/nio/charset/Charset;
    .restart local v11    # "charset":Ljava/nio/charset/Charset;
    .restart local v15    # "headers":Lokhttp3/Headers;
    :cond_227
    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move-object v15, v12

    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .end local v15    # "headers":Lokhttp3/Headers;
    .restart local v24    # "headers":Lokhttp3/Headers;
    .restart local v25    # "charset":Ljava/nio/charset/Charset;
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 213
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " (binary "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {v10, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_27e

    .line 192
    .end local v5    # "buffer":Lokio/Buffer;
    .end local v21    # "contentType":Lokhttp3/MediaType;
    .end local v24    # "headers":Lokhttp3/Headers;
    .end local v25    # "charset":Ljava/nio/charset/Charset;
    .restart local v15    # "headers":Lokhttp3/Headers;
    :cond_259
    move-object/from16 v24, v15

    move-object v15, v12

    .line 193
    .end local v15    # "headers":Lokhttp3/Headers;
    .restart local v24    # "headers":Lokhttp3/Headers;
    :goto_25c
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_27e

    .line 170
    .end local v20    # "connection":Lokhttp3/Connection;
    .end local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v23    # "requestStartMessage":Ljava/lang/String;
    .end local v24    # "headers":Lokhttp3/Headers;
    .local v3, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v5, "requestStartMessage":Ljava/lang/String;
    .local v10, "connection":Lokhttp3/Connection;
    :cond_277
    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v20, v10

    move-object v15, v12

    .line 218
    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v5    # "requestStartMessage":Ljava/lang/String;
    .end local v10    # "connection":Lokhttp3/Connection;
    .restart local v20    # "connection":Lokhttp3/Connection;
    .restart local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v23    # "requestStartMessage":Ljava/lang/String;
    :goto_27e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .local v10, "startNs":J
    const/4 v3, 0x0

    .line 220
    .local v3, "response":Lokhttp3/Response;
    nop

    .line 221
    :try_start_284
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v5
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_288} :catch_4c0

    move-object v3, v5

    .line 227
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    move-object/from16 v21, v13

    sub-long v12, v24, v10

    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 229
    .local v12, "tookMs":J
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    .local v5, "responseBody":Lokhttp3/ResponseBody;
    move-object/from16 v24, v9

    move-wide/from16 v25, v10

    .end local v9    # "requestBody":Lokhttp3/RequestBody;
    .end local v10    # "startNs":J
    .local v24, "requestBody":Lokhttp3/RequestBody;
    .local v25, "startNs":J
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    .line 231
    .local v9, "contentLength":J
    cmp-long v11, v9, v18

    if-eqz v11, :cond_2be

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v2, "-byte"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2c1

    :cond_2be
    const-string/jumbo v2, "unknown-length"

    .line 232
    .local v2, "bodySize":Ljava/lang/String;
    :goto_2c1
    iget-object v11, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 233
    move-object/from16 v18, v4

    .end local v4    # "request":Lokhttp3/Request;
    .local v18, "request":Lokhttp3/Request;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v15

    const-string v15, "<-- "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_2e9

    const/16 v16, 0x1

    goto :goto_2eb

    :cond_2e9
    const/16 v16, 0x0

    :goto_2eb
    if-eqz v16, :cond_2f4

    move-wide/from16 v27, v9

    move-object/from16 v9, v19

    const/16 v10, 0x20

    goto :goto_30d

    :cond_2f4
    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v27, v9

    .end local v9    # "contentLength":J
    .local v27, "contentLength":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_30d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v8, :cond_34b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " body"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_34d

    :cond_34b
    move-object/from16 v9, v19

    :goto_34d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v9, 0x29

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-interface {v11, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 235
    if-eqz v8, :cond_4ba

    .line 236
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    .line 237
    .local v4, "headers":Lokhttp3/Headers;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v10

    :goto_369
    if-ge v9, v10, :cond_371

    .line 238
    invoke-direct {v1, v4, v9}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 237
    add-int/lit8 v9, v9, 0x1

    goto :goto_369

    .line 241
    .end local v9    # "i":I
    :cond_371
    if-eqz v7, :cond_4ab

    invoke-static {v3}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v9

    if-nez v9, :cond_382

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move v15, v7

    move/from16 v19, v8

    goto/16 :goto_4b2

    .line 243
    :cond_382
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v9

    invoke-direct {v1, v9}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v9

    if-eqz v9, :cond_39a

    .line 244
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v6, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v0, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object/from16 v16, v2

    move v15, v7

    move/from16 v19, v8

    goto/16 :goto_4bf

    .line 246
    :cond_39a
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v9

    .line 247
    .local v9, "source":Lokio/BufferedSource;
    const-wide v10, 0x7fffffffffffffffL

    invoke-interface {v9, v10, v11}, Lokio/BufferedSource;->request(J)Z

    .line 248
    const/4 v10, 0x0

    .local v10, "buffer":Ljava/lang/Object;
    invoke-interface {v9}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v10

    .line 250
    const/4 v11, 0x0

    .line 251
    .local v11, "gzippedLength":Ljava/lang/Long;
    const-string v14, "Content-Encoding"

    invoke-virtual {v4, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "gzip"

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "bodySize":Ljava/lang/String;
    .local v16, "bodySize":Ljava/lang/String;
    invoke-static {v15, v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3f8

    .line 252
    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 253
    new-instance v2, Lokio/GzipSource;

    invoke-virtual {v10}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v14

    check-cast v14, Lokio/Source;

    invoke-direct {v2, v14}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v2, Ljava/io/Closeable;

    :try_start_3d2
    move-object v14, v2

    check-cast v14, Lokio/GzipSource;

    .local v14, "gzippedResponseBody":Lokio/GzipSource;
    const/4 v15, 0x0

    .line 254
    .local v15, "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    new-instance v17, Lokio/Buffer;

    invoke-direct/range {v17 .. v17}, Lokio/Buffer;-><init>()V
    :try_end_3db
    .catchall {:try_start_3d2 .. :try_end_3db} :catchall_3ed

    move-object/from16 v10, v17

    .line 255
    move-object/from16 v17, v4

    .end local v4    # "headers":Lokhttp3/Headers;
    .local v17, "headers":Lokhttp3/Headers;
    :try_start_3df
    move-object v4, v14

    check-cast v4, Lokio/Source;

    invoke-virtual {v10, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_3e5
    .catchall {:try_start_3df .. :try_end_3e5} :catchall_3ea

    .line 253
    .end local v14    # "gzippedResponseBody":Lokio/GzipSource;
    .end local v15    # "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3fa

    :catchall_3ea
    move-exception v0

    move-object v4, v0

    goto :goto_3f1

    .end local v17    # "headers":Lokhttp3/Headers;
    .restart local v4    # "headers":Lokhttp3/Headers;
    :catchall_3ed
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "headers":Lokhttp3/Headers;
    .end local v5    # "responseBody":Lokhttp3/ResponseBody;
    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .end local v9    # "source":Lokio/BufferedSource;
    .end local v10    # "buffer":Ljava/lang/Object;
    .end local v11    # "gzippedLength":Ljava/lang/Long;
    .end local v12    # "tookMs":J
    .end local v16    # "bodySize":Ljava/lang/String;
    .end local v18    # "request":Lokhttp3/Request;
    .end local v20    # "connection":Lokhttp3/Connection;
    .end local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v23    # "requestStartMessage":Ljava/lang/String;
    .end local v24    # "requestBody":Lokhttp3/RequestBody;
    .end local v25    # "startNs":J
    .end local v27    # "contentLength":J
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :goto_3f1
    :try_start_3f1
    throw v4
    :try_end_3f2
    .catchall {:try_start_3f1 .. :try_end_3f2} :catchall_3f2

    .restart local v3    # "response":Lokhttp3/Response;
    .restart local v5    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v7    # "logBody":Z
    .restart local v8    # "logHeaders":Z
    .restart local v9    # "source":Lokio/BufferedSource;
    .restart local v10    # "buffer":Ljava/lang/Object;
    .restart local v11    # "gzippedLength":Ljava/lang/Long;
    .restart local v12    # "tookMs":J
    .restart local v16    # "bodySize":Ljava/lang/String;
    .restart local v17    # "headers":Lokhttp3/Headers;
    .restart local v18    # "request":Lokhttp3/Request;
    .restart local v20    # "connection":Lokhttp3/Connection;
    .restart local v22    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v23    # "requestStartMessage":Ljava/lang/String;
    .restart local v24    # "requestBody":Lokhttp3/RequestBody;
    .restart local v25    # "startNs":J
    .restart local v27    # "contentLength":J
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catchall_3f2
    move-exception v0

    move-object v6, v0

    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6

    .line 251
    .end local v17    # "headers":Lokhttp3/Headers;
    .restart local v4    # "headers":Lokhttp3/Headers;
    :cond_3f8
    move-object/from16 v17, v4

    .line 259
    .end local v4    # "headers":Lokhttp3/Headers;
    .restart local v17    # "headers":Lokhttp3/Headers;
    :goto_3fa
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 260
    .local v2, "contentType":Lokhttp3/MediaType;
    if-eqz v2, :cond_408

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-nez v4, :cond_40d

    :cond_408
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .local v4, "charset":Ljava/nio/charset/Charset;
    :cond_40d
    invoke-static {v10}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    move-result v6

    if-nez v6, :cond_43e

    .line 263
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v14, v19

    invoke-interface {v6, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 264
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<-- END HTTP (binary "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    move/from16 v19, v8

    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .local v15, "logBody":Z
    .local v19, "logHeaders":Z
    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 265
    return-object v3

    .line 268
    .end local v15    # "logBody":Z
    .end local v19    # "logHeaders":Z
    .restart local v7    # "logBody":Z
    .restart local v8    # "logHeaders":Z
    :cond_43e
    move v15, v7

    move-object/from16 v14, v19

    move/from16 v19, v8

    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .restart local v15    # "logBody":Z
    .restart local v19    # "logHeaders":Z
    const-wide/16 v6, 0x0

    cmp-long v0, v27, v6

    if-eqz v0, :cond_45b

    .line 269
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v0, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 270
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v10}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 273
    :cond_45b
    const-string v0, "<-- END HTTP ("

    if-eqz v11, :cond_48a

    .line 274
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "-byte, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "-gzipped-byte body)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_4bf

    .line 276
    :cond_48a
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_4bf

    .line 241
    .end local v9    # "source":Lokio/BufferedSource;
    .end local v10    # "buffer":Ljava/lang/Object;
    .end local v11    # "gzippedLength":Ljava/lang/Long;
    .end local v15    # "logBody":Z
    .end local v16    # "bodySize":Ljava/lang/String;
    .end local v17    # "headers":Lokhttp3/Headers;
    .end local v19    # "logHeaders":Z
    .local v2, "bodySize":Ljava/lang/String;
    .local v4, "headers":Lokhttp3/Headers;
    .restart local v7    # "logBody":Z
    .restart local v8    # "logHeaders":Z
    :cond_4ab
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move v15, v7

    move/from16 v19, v8

    .line 242
    .end local v2    # "bodySize":Ljava/lang/String;
    .end local v4    # "headers":Lokhttp3/Headers;
    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .restart local v15    # "logBody":Z
    .restart local v16    # "bodySize":Ljava/lang/String;
    .restart local v17    # "headers":Lokhttp3/Headers;
    .restart local v19    # "logHeaders":Z
    :goto_4b2
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v2, "<-- END HTTP"

    invoke-interface {v0, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_4bf

    .line 235
    .end local v15    # "logBody":Z
    .end local v16    # "bodySize":Ljava/lang/String;
    .end local v17    # "headers":Lokhttp3/Headers;
    .end local v19    # "logHeaders":Z
    .restart local v2    # "bodySize":Ljava/lang/String;
    .restart local v7    # "logBody":Z
    .restart local v8    # "logHeaders":Z
    :cond_4ba
    move-object/from16 v16, v2

    move v15, v7

    move/from16 v19, v8

    .line 281
    .end local v2    # "bodySize":Ljava/lang/String;
    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .restart local v15    # "logBody":Z
    .restart local v16    # "bodySize":Ljava/lang/String;
    .restart local v19    # "logHeaders":Z
    :goto_4bf
    return-object v3

    .line 222
    .end local v5    # "responseBody":Lokhttp3/ResponseBody;
    .end local v12    # "tookMs":J
    .end local v15    # "logBody":Z
    .end local v16    # "bodySize":Ljava/lang/String;
    .end local v18    # "request":Lokhttp3/Request;
    .end local v19    # "logHeaders":Z
    .end local v24    # "requestBody":Lokhttp3/RequestBody;
    .end local v25    # "startNs":J
    .end local v27    # "contentLength":J
    .local v4, "request":Lokhttp3/Request;
    .restart local v7    # "logBody":Z
    .restart local v8    # "logHeaders":Z
    .local v9, "requestBody":Lokhttp3/RequestBody;
    .local v10, "startNs":J
    :catch_4c0
    move-exception v0

    move-object/from16 v18, v4

    move v15, v7

    move/from16 v19, v8

    move-object/from16 v24, v9

    move-wide/from16 v25, v10

    move-object v2, v0

    .end local v4    # "request":Lokhttp3/Request;
    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .end local v9    # "requestBody":Lokhttp3/RequestBody;
    .end local v10    # "startNs":J
    .restart local v15    # "logBody":Z
    .restart local v18    # "request":Lokhttp3/Request;
    .restart local v19    # "logHeaders":Z
    .restart local v24    # "requestBody":Lokhttp3/RequestBody;
    .restart local v25    # "startNs":J
    move-object v0, v2

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- HTTP FAILED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 224
    throw v0
.end method

.method public final level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V
    .registers 3
    .param p1, "<set-?>"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public final redactHeader(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Lkotlin/text/StringsKt;->getCASE_INSENSITIVE_ORDER(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 124
    .local v0, "newHeadersToRedact":Ljava/util/TreeSet;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 125
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 127
    return-void
.end method

.method public final setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .registers 4
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    move-object v0, p0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .local v0, "$this$setLevel_u24lambda_u240":Lokhttp3/logging/HttpLoggingInterceptor;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$a$-apply-HttpLoggingInterceptor$setLevel$1":I
    iput-object p1, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 138
    nop

    .line 136
    .end local v0    # "$this$setLevel_u24lambda_u240":Lokhttp3/logging/HttpLoggingInterceptor;
    .end local v1    # "$i$a$-apply-HttpLoggingInterceptor$setLevel$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 138
    return-object v0
.end method
