.class public final synthetic Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:[I

.field public final synthetic f$7:[B


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/ShellIO;IIIII[I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

    iput p2, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$5:I

    iput-object p7, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$6:[I

    iput-object p8, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$7:[B

    return-void
.end method


# virtual methods
.method public final run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 11

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$0:Lcom/topjohnwu/superuser/internal/ShellIO;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$5:I

    iget-object v6, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$6:[I

    iget-object v7, p0, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;->f$7:[B

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/topjohnwu/superuser/internal/ShellIO;->lambda$alignedRead$1$com-topjohnwu-superuser-internal-ShellIO(IIIII[I[BLjava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method
