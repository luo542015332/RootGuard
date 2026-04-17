.class public final Lcom/topjohnwu/superuser/internal/BuilderImpl;
.super Lcom/topjohnwu/superuser/Shell$Builder;
.source "BuilderImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BUILDER"


# instance fields
.field private command:[Ljava/lang/String;

.field private flags:I

.field private initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

.field timeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell$Builder;-><init>()V

    .line 39
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->timeout:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->flags:I

    return-void
.end method

.method private varargs exec([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;
    .registers 5
    .param p1, "commands"    # [Ljava/lang/String;

    .line 117
    :try_start_0
    const-string v0, "BUILDER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 119
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v1

    .line 120
    .end local v0    # "process":Ljava/lang/Process;
    :catch_2b
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/Utils;->ex(Ljava/lang/Throwable;)V

    .line 122
    new-instance v1, Lcom/topjohnwu/superuser/NoShellException;

    const-string v2, "Unable to create a shell!"

    invoke-direct {v1, v2, v0}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private start()Lcom/topjohnwu/superuser/internal/ShellImpl;
    .registers 7

    .line 83
    const/4 v0, 0x0

    .line 86
    .local v0, "shell":Lcom/topjohnwu/superuser/internal/ShellImpl;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v2

    const-string/jumbo v3, "su"

    const/4 v4, 0x0

    if-nez v2, :cond_2a

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 88
    :try_start_13
    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v5, "--mount-master"

    aput-object v5, v2, v1

    invoke-direct {p0, v2}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->exec([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v2

    move-object v0, v2

    .line 89
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRoot()Z

    move-result v2
    :try_end_24
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_13 .. :try_end_24} :catch_28

    if-nez v2, :cond_29

    .line 90
    const/4 v0, 0x0

    goto :goto_29

    .line 91
    :catch_28
    move-exception v2

    :cond_29
    :goto_29
    nop

    .line 95
    :cond_2a
    if-nez v0, :cond_45

    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_45

    .line 97
    :try_start_32
    new-array v2, v1, [Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->exec([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v2

    move-object v0, v2

    .line 98
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRoot()Z

    move-result v2
    :try_end_3f
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_32 .. :try_end_3f} :catch_43

    if-nez v2, :cond_44

    .line 99
    const/4 v0, 0x0

    goto :goto_44

    .line 101
    :catch_43
    move-exception v2

    :cond_44
    :goto_44
    nop

    .line 105
    :cond_45
    if-nez v0, :cond_5b

    .line 106
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 107
    invoke-static {v4}, Lcom/topjohnwu/superuser/internal/Utils;->setConfirmedRootState(Z)V

    .line 109
    :cond_50
    const-string/jumbo v1, "sh"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->exec([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    .line 112
    :cond_5b
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/topjohnwu/superuser/Shell;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/Shell;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/topjohnwu/superuser/internal/ShellImpl;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->command:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 156
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->exec([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    return-object v0

    .line 158
    :cond_9
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->start()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/internal/ShellImpl;
    .registers 9
    .param p1, "process"    # Ljava/lang/Process;

    .line 131
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/ShellImpl;-><init>(Lcom/topjohnwu/superuser/internal/BuilderImpl;Ljava/lang/Process;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_3d

    .line 135
    .local v0, "shell":Lcom/topjohnwu/superuser/internal/ShellImpl;
    nop

    .line 136
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 137
    const/4 v1, 0x1

    sput-boolean v1, Lcom/topjohnwu/superuser/Shell;->enableLegacyStderrRedirection:Z

    .line 139
    :cond_11
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/MainShell;->setCached(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    .line 140
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    if-eqz v1, :cond_3c

    .line 141
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_3c

    aget-object v5, v2, v4

    .line 143
    .local v5, "init":Lcom/topjohnwu/superuser/Shell$Initializer;
    if-eqz v5, :cond_39

    invoke-virtual {v5, v1, v0}, Lcom/topjohnwu/superuser/Shell$Initializer;->onInit(Landroid/content/Context;Lcom/topjohnwu/superuser/Shell;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_39

    .line 144
    :cond_2d
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/topjohnwu/superuser/internal/MainShell;->setCached(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    .line 145
    new-instance v2, Lcom/topjohnwu/superuser/NoShellException;

    const-string v3, "Unable to init shell"

    invoke-direct {v2, v3}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v5    # "init":Lcom/topjohnwu/superuser/Shell$Initializer;
    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 149
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_3c
    return-object v0

    .line 132
    .end local v0    # "shell":Lcom/topjohnwu/superuser/internal/ShellImpl;
    :catch_3d
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/Utils;->ex(Ljava/lang/Throwable;)V

    .line 134
    new-instance v1, Lcom/topjohnwu/superuser/NoShellException;

    const-string v2, "Unable to create a shell!"

    invoke-direct {v1, v2, v0}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method hasFlags(I)Z
    .registers 3
    .param p1, "mask"    # I

    .line 45
    iget v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public varargs setCommands([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Builder;
    .registers 2
    .param p1, "c"    # [Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->command:[Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setFlags(I)Lcom/topjohnwu/superuser/Shell$Builder;
    .registers 2
    .param p1, "f"    # I

    .line 51
    iput p1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->flags:I

    .line 52
    return-object p0
.end method

.method public setInitializersImpl([Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/topjohnwu/superuser/Shell$Initializer;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "clz":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/topjohnwu/superuser/Shell$Initializer;>;"
    array-length v0, p1

    new-array v0, v0, [Lcom/topjohnwu/superuser/Shell$Initializer;

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_2c

    .line 73
    :try_start_9
    aget-object v1, p1, v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 74
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/topjohnwu/superuser/Shell$Initializer;>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 75
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/Shell$Initializer;

    aput-object v2, v3, v0
    :try_end_22
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_9 .. :try_end_22} :catch_25
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_22} :catch_23

    .line 78
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/topjohnwu/superuser/Shell$Initializer;>;"
    goto :goto_29

    .line 76
    :catch_23
    move-exception v1

    goto :goto_26

    :catch_25
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :goto_26
    invoke-static {v1}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/Throwable;)V

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 80
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method public setTimeout(J)Lcom/topjohnwu/superuser/Shell$Builder;
    .registers 3
    .param p1, "t"    # J

    .line 58
    iput-wide p1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->timeout:J

    .line 59
    return-object p0
.end method
