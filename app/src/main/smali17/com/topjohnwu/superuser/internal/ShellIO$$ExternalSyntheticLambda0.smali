.class public final synthetic Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/ShellIO;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

    iput-wide p2, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 6

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

    iget-wide v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;->f$1:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/topjohnwu/superuser/internal/ShellIO;->lambda$setLength$2$com-topjohnwu-superuser-internal-ShellIO(JLjava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method
