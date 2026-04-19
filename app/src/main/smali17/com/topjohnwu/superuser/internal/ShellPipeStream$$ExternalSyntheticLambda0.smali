.class public final synthetic Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/io/SuFile;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/io/SuFile;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/io/SuFile;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/io/SuFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->lambda$openReadStream$0(Lcom/topjohnwu/superuser/io/SuFile;Ljava/io/File;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method
