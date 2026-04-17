.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    return-void
.end method


# virtual methods
.method public final eval(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z
    .registers 3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->$r8$lambda$k2AusSDYRAElOqP3HVfVK8vtNnI(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
