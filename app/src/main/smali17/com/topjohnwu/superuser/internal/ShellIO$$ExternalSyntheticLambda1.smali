.class public final synthetic Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/ShellIO;I[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

    iput p2, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$2:[B

    iput p4, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 7

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$2:[B

    iget v3, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;->f$3:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/topjohnwu/superuser/internal/ShellIO;->lambda$write0$0$com-topjohnwu-superuser-internal-ShellIO(I[BILjava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method
