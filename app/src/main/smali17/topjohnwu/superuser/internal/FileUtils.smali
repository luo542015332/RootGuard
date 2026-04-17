.class Lcom/topjohnwu/superuser/internal/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/FileUtils$Flag;
    }
.end annotation


# static fields
.field private static os:Ljava/lang/Object;

.field private static sendfile:Ljava/lang/reflect/Method;

.field private static setFd:Ljava/lang/reflect/AccessibleObject;

.field private static splice:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFileDescriptor(I)Ljava/io/FileDescriptor;
    .registers 8
    .param p0, "fd"    # I

    .line 210
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2e

    .line 213
    :try_start_6
    const-class v0, Ljava/io/FileDescriptor;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15

    .line 219
    goto :goto_29

    .line 214
    :catch_15
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_16
    const-class v3, Ljava/io/FileDescriptor;

    const-string v4, "setInt$"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_28

    .line 218
    :catch_27
    move-exception v3

    :goto_28
    nop

    .line 220
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_29
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 223
    :cond_2e
    :try_start_2e
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    instance-of v3, v0, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_45

    .line 224
    check-cast v0, Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    return-object v0

    .line 226
    :cond_45
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 227
    .local v0, "f":Ljava/io/FileDescriptor;
    sget-object v3, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    check-cast v3, Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2e .. :try_end_59} :catch_5a

    .line 228
    return-object v0

    .line 230
    .end local v0    # "f":Ljava/io/FileDescriptor;
    :catch_5a
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static createTempFIFO()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const-string v0, "libsu-fifo-"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 204
    .local v0, "fifo":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v1, v2}, Landroid/system/Os;->mkfifo(Ljava/lang/String;I)V

    .line 206
    return-object v0
.end method

.method static modeToFlag(I)Lcom/topjohnwu/superuser/internal/FileUtils$Flag;
    .registers 5
    .param p0, "mode"    # I

    .line 120
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;-><init>()V

    .line 121
    .local v0, "f":Lcom/topjohnwu/superuser/internal/FileUtils$Flag;
    const/high16 v1, 0x30000000

    and-int v2, p0, v1

    const/4 v3, 0x1

    if-ne v2, v1, :cond_11

    .line 122
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    .line 123
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->write:Z

    goto :goto_22

    .line 124
    :cond_11
    const/high16 v1, 0x20000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1a

    .line 125
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->write:Z

    goto :goto_22

    .line 126
    :cond_1a
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_5d

    .line 127
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    .line 131
    :goto_22
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2a

    .line 132
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->create:Z

    .line 134
    :cond_2a
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_32

    .line 135
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->truncate:Z

    .line 137
    :cond_32
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_3a

    .line 138
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    .line 142
    :cond_3a
    iget-boolean v1, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    if-eqz v1, :cond_4b

    iget-boolean v1, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    if-nez v1, :cond_43

    goto :goto_4b

    .line 143
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "READ + APPEND not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_4b
    :goto_4b
    iget-boolean v1, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    if-eqz v1, :cond_5c

    iget-boolean v1, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->truncate:Z

    if-nez v1, :cond_54

    goto :goto_5c

    .line 146
    :cond_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "APPEND + TRUNCATE not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_5c
    :goto_5c
    return-object v0

    .line 129
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static modeToOptions(I)Ljava/util/Set;
    .registers 5
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/nio/file/OpenOption;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    const/high16 v1, 0x30000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_16

    .line 98
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 100
    :cond_16
    const/high16 v1, 0x20000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_22

    .line 101
    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 102
    :cond_22
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_4f

    .line 103
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_2d
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_38

    .line 108
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_38
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_43

    .line 111
    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_43
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_4e

    .line 114
    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4e
    return-object v0

    .line 105
    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static modeToPosix(I)I
    .registers 4
    .param p0, "mode"    # I

    .line 73
    const/high16 v0, 0x30000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_9

    .line 74
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    .local v0, "res":I
    goto :goto_1a

    .line 75
    .end local v0    # "res":I
    :cond_9
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_12

    .line 76
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    .restart local v0    # "res":I
    goto :goto_1a

    .line 77
    .end local v0    # "res":I
    :cond_12
    const/high16 v0, 0x10000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_36

    .line 78
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 82
    .restart local v0    # "res":I
    :goto_1a
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_23

    .line 83
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    .line 85
    :cond_23
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2c

    .line 86
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 88
    :cond_2c
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_35

    .line 89
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, v1

    .line 91
    :cond_35
    return v0

    .line 80
    .end local v0    # "res":I
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    .registers 14
    .param p0, "outFd"    # Ljava/io/FileDescriptor;
    .param p1, "inFd"    # Ljava/io/FileDescriptor;
    .param p2, "inOffset"    # Landroid/util/MutableLong;
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 176
    const-string v0, "sendfile"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1f

    .line 177
    if-nez p2, :cond_c

    goto :goto_13

    :cond_c
    new-instance v3, Landroid/system/Int64Ref;

    iget-wide v0, p2, Landroid/util/MutableLong;->value:J

    invoke-direct {v3, v0, v1}, Landroid/system/Int64Ref;-><init>(J)V

    :goto_13
    move-object v0, v3

    .line 178
    .local v0, "off":Landroid/system/Int64Ref;
    invoke-static {p0, p1, v0, p3, p4}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v1

    .line 179
    .local v1, "result":J
    if-eqz v0, :cond_1e

    .line 180
    iget-wide v3, v0, Landroid/system/Int64Ref;->value:J

    iput-wide v3, p2, Landroid/util/MutableLong;->value:J

    .line 181
    :cond_1e
    return-wide v1

    .line 184
    .end local v0    # "off":Landroid/system/Int64Ref;
    .end local v1    # "result":J
    :cond_1f
    :try_start_1f
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    if-nez v1, :cond_35

    .line 185
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    .line 187
    :cond_35
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-nez v1, :cond_5c

    .line 188
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/io/FileDescriptor;

    aput-object v8, v7, v5

    const-class v8, Ljava/io/FileDescriptor;

    aput-object v8, v7, v4

    const-class v8, Landroid/util/MutableLong;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile:Ljava/lang/reflect/Method;

    .line 192
    :cond_5c
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile:Ljava/lang/reflect/Method;

    sget-object v7, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_78
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_78} :catch_82
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_78} :catch_79

    return-wide v0

    .line 195
    :catch_79
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Landroid/system/ErrnoException;

    sget v3, Landroid/system/OsConstants;->ENOSYS:I

    invoke-direct {v2, v0, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 193
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_82
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Landroid/system/ErrnoException;

    throw v1
.end method

.method static splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .registers 18
    .param p0, "fdIn"    # Ljava/io/FileDescriptor;
    .param p1, "offIn"    # Landroid/system/Int64Ref;
    .param p2, "fdOut"    # Ljava/io/FileDescriptor;
    .param p3, "offOut"    # Landroid/system/Int64Ref;
    .param p4, "len"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 158
    const-string/jumbo v1, "splice"

    :try_start_3
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->splice:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    if-nez v0, :cond_30

    .line 159
    const-class v0, Landroid/system/Os;

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/io/FileDescriptor;

    aput-object v10, v9, v7

    const-class v10, Landroid/system/Int64Ref;

    aput-object v10, v9, v6

    const-class v10, Ljava/io/FileDescriptor;

    aput-object v10, v9, v5

    const-class v10, Landroid/system/Int64Ref;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->splice:Ljava/lang/reflect/Method;

    .line 164
    :cond_30
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->splice:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v7

    aput-object p1, v8, v6

    aput-object p2, v8, v5

    aput-object p3, v8, v4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_53} :catch_5d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_53} :catch_54

    return-wide v0

    .line 167
    :catch_54
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Landroid/system/ErrnoException;

    sget v3, Landroid/system/OsConstants;->ENOSYS:I

    invoke-direct {v2, v1, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 165
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_5d
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Landroid/system/ErrnoException;

    throw v1
.end method
