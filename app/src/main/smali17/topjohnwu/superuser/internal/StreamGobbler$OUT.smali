.class Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;
.super Lcom/topjohnwu/superuser/internal/StreamGobbler;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OUT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/StreamGobbler<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_RESULT_CODE:I = 0x1


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/StreamGobbler;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;->process(Z)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "codeStr":Ljava/lang/String;
    if-nez v1, :cond_9

    move v2, v0

    goto :goto_d

    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "code":I
    :goto_d
    const-string v3, "SHELLOUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(exit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_2f} :catch_30

    return-object v0

    .line 82
    .end local v2    # "code":I
    :catch_30
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
