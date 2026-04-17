.class abstract Lcom/topjohnwu/superuser/internal/FileImpl;
.super Lcom/topjohnwu/superuser/nio/ExtendedFile;
.source "FileImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/topjohnwu/superuser/nio/ExtendedFile;",
        ">",
        "Lcom/topjohnwu/superuser/nio/ExtendedFile;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pathname"    # Ljava/lang/String;

    .line 32
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/nio/ExtendedFile;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 36
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/nio/ExtendedFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/FileImpl;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAbsoluteFile()Ljava/io/File;
    .registers 2

    .line 29
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/FileImpl;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCanonicalFile()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/FileImpl;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentFile()Ljava/io/File;
    .registers 2

    .line 29
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->list()[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 68
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_8
    array-length v1, v0

    .line 70
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/FileImpl;->createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v2

    .line 71
    .local v2, "fs":[Lcom/topjohnwu/superuser/nio/ExtendedFile;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_1b

    .line 72
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/topjohnwu/superuser/internal/FileImpl;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v4

    aput-object v4, v2, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 74
    .end local v3    # "i":I
    :cond_1b
    return-object v2
.end method

.method public listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 10
    .param p1, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileFilter;",
            ")[TT;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->list()[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_26

    aget-object v5, v0, v4

    .line 99
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/topjohnwu/superuser/internal/FileImpl;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v6

    .line 100
    .local v6, "f":Lcom/topjohnwu/superuser/nio/ExtendedFile;, "TT;"
    if-eqz p1, :cond_20

    invoke-interface {p1, v6}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 101
    :cond_20
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "f":Lcom/topjohnwu/superuser/nio/ExtendedFile;, "TT;"
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 103
    :cond_26
    invoke-virtual {p0, v3}, Lcom/topjohnwu/superuser/internal/FileImpl;->createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/topjohnwu/superuser/nio/ExtendedFile;

    return-object v2
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 9
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FilenameFilter;",
            ")[TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->list()[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 82
    const/4 v1, 0x0

    return-object v1

    .line 83
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_26

    aget-object v5, v0, v4

    .line 85
    .local v5, "s":Ljava/lang/String;
    if-eqz p1, :cond_1c

    invoke-interface {p1, p0, v5}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 86
    :cond_1c
    invoke-virtual {p0, v5}, Lcom/topjohnwu/superuser/internal/FileImpl;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v5    # "s":Ljava/lang/String;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 88
    :cond_26
    invoke-virtual {p0, v3}, Lcom/topjohnwu/superuser/internal/FileImpl;->createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/topjohnwu/superuser/nio/ExtendedFile;

    return-object v2
.end method

.method public bridge synthetic listFiles()[Ljava/io/File;
    .registers 2

    .line 29
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 2

    .line 29
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/FileImpl;->listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 2

    .line 29
    .local p0, "this":Lcom/topjohnwu/superuser/internal/FileImpl;, "Lcom/topjohnwu/superuser/internal/FileImpl<TT;>;"
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/FileImpl;->listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    return-object p1
.end method
