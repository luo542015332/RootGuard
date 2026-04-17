.class public final synthetic Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->lambda$openReadStream$1(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
