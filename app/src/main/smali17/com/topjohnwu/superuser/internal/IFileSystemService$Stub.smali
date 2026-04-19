.class public abstract Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;
.super Landroid/os/Binder;
.source "IFileSystemService.java"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/IFileSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/IFileSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkAccess:I = 0x12

.field static final TRANSACTION_close:I = 0x1c

.field static final TRANSACTION_createLink:I = 0x17

.field static final TRANSACTION_createNewFile:I = 0x7

.field static final TRANSACTION_delete:I = 0x8

.field static final TRANSACTION_ftruncate:I = 0x21

.field static final TRANSACTION_getCanonicalPath:I = 0x1

.field static final TRANSACTION_getFreeSpace:I = 0x14

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getTotalSpace:I = 0x13

.field static final TRANSACTION_getUsableSpace:I = 0x15

.field static final TRANSACTION_isDirectory:I = 0x2

.field static final TRANSACTION_isFile:I = 0x3

.field static final TRANSACTION_isHidden:I = 0x4

.field static final TRANSACTION_lastModified:I = 0x5

.field static final TRANSACTION_length:I = 0x6

.field static final TRANSACTION_list:I = 0x9

.field static final TRANSACTION_lseek:I = 0x1f

.field static final TRANSACTION_mkdir:I = 0xa

.field static final TRANSACTION_mkdirs:I = 0xb

.field static final TRANSACTION_openChannel:I = 0x19

.field static final TRANSACTION_openReadStream:I = 0x1a

.field static final TRANSACTION_openWriteStream:I = 0x1b

.field static final TRANSACTION_pread:I = 0x1d

.field static final TRANSACTION_pwrite:I = 0x1e

.field static final TRANSACTION_register:I = 0x18

.field static final TRANSACTION_renameTo:I = 0xc

.field static final TRANSACTION_setExecutable:I = 0x11

.field static final TRANSACTION_setLastModified:I = 0xd

.field static final TRANSACTION_setReadOnly:I = 0xe

.field static final TRANSACTION_setReadable:I = 0x10

.field static final TRANSACTION_setWritable:I = 0xf

.field static final TRANSACTION_size:I = 0x20

.field static final TRANSACTION_sync:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    const-string v0, "com.topjohnwu.superuser.internal.IFileSystemService"

    invoke-virtual {p0, p0, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_0
    const-string v0, "com.topjohnwu.superuser.internal.IFileSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 181
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/topjohnwu/superuser/internal/IFileSystemService;

    if-eqz v1, :cond_1

    .line 182
    move-object v1, v0

    check-cast v1, Lcom/topjohnwu/superuser/internal/IFileSystemService;

    return-object v1

    .line 184
    :cond_1
    new-instance v1, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 188
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    const-string v0, "com.topjohnwu.superuser.internal.IFileSystemService"

    .line 193
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 204
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 200
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return v1

    .line 548
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 550
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    .line 551
    .local v2, "_arg1":Z
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v4

    .line 552
    .local v4, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-static {p3, v4, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 554
    goto/16 :goto_3

    .line 537
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 540
    .local v3, "_arg1":J
    invoke-virtual {p0, v2, v3, v4}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v5

    .line 541
    .local v5, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-static {p3, v5, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 543
    goto/16 :goto_3

    .line 528
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 529
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->size(I)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v3

    .line 530
    .local v3, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-static {p3, v3, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 532
    goto/16 :goto_3

    .line 515
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 519
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 520
    .local v5, "_arg2":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v6

    .line 521
    .local v6, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-static {p3, v6, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 523
    goto/16 :goto_3

    .line 502
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 504
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 507
    .local v4, "_arg2":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->pwrite(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v6

    .line 508
    .restart local v6    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-static {p3, v6, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 510
    goto/16 :goto_3

    .line 489
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 494
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->pread(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v6

    .line 495
    .restart local v6    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-static {p3, v6, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 497
    goto/16 :goto_3

    .line 482
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 483
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->close(I)V

    .line 484
    goto/16 :goto_3

    .line 469
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 473
    .local v4, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v1

    .line 474
    .local v2, "_arg2":Z
    :cond_2
    invoke-virtual {p0, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->openWriteStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v5

    .line 475
    .local v5, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-static {p3, v5, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 477
    goto/16 :goto_3

    .line 458
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 461
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->openReadStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v4

    .line 462
    .local v4, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-static {p3, v4, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 464
    goto/16 :goto_3

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 449
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->openChannel(Ljava/lang/String;ILjava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v5

    .line 451
    .restart local v5    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-static {p3, v5, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_3

    .line 438
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 439
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->register(Landroid/os/IBinder;)V

    .line 440
    goto/16 :goto_3

    .line 425
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v1

    .line 430
    .local v2, "_arg2":Z
    :cond_3
    invoke-virtual {p0, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v5

    .line 431
    .restart local v5    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-static {p3, v5, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 433
    goto/16 :goto_3

    .line 416
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getMode(Ljava/lang/String;)I

    move-result v3

    .line 418
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    goto/16 :goto_3

    .line 407
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getUsableSpace(Ljava/lang/String;)J

    move-result-wide v3

    .line 409
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    goto/16 :goto_3

    .line 398
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v3

    .line 400
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 402
    goto/16 :goto_3

    .line 389
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getTotalSpace(Ljava/lang/String;)J

    move-result-wide v3

    .line 391
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 393
    goto/16 :goto_3

    .line 378
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->checkAccess(Ljava/lang/String;I)Z

    move-result v4

    .line 382
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    goto/16 :goto_3

    .line 365
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v2

    .line 369
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v2, v1

    .line 370
    .local v2, "_arg2":Z
    :cond_5
    invoke-virtual {p0, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setExecutable(Ljava/lang/String;ZZ)Z

    move-result v5

    .line 371
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto/16 :goto_3

    .line 352
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    move v4, v2

    .line 356
    .restart local v4    # "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v2, v1

    .line 357
    .restart local v2    # "_arg2":Z
    :cond_7
    invoke-virtual {p0, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setReadable(Ljava/lang/String;ZZ)Z

    move-result v5

    .line 358
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    goto/16 :goto_3

    .line 339
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v1

    goto :goto_2

    :cond_8
    move v4, v2

    .line 343
    .restart local v4    # "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v2, v1

    .line 344
    .restart local v2    # "_arg2":Z
    :cond_9
    invoke-virtual {p0, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setWritable(Ljava/lang/String;ZZ)Z

    move-result v5

    .line 345
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    goto/16 :goto_3

    .line 330
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setReadOnly(Ljava/lang/String;)Z

    move-result v3

    .line 332
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    goto/16 :goto_3

    .line 319
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 322
    .local v3, "_arg1":J
    invoke-virtual {p0, v2, v3, v4}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setLastModified(Ljava/lang/String;J)Z

    move-result v5

    .line 323
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    goto/16 :goto_3

    .line 308
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 312
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    goto/16 :goto_3

    .line 299
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->mkdirs(Ljava/lang/String;)Z

    move-result v3

    .line 301
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    goto/16 :goto_3

    .line 290
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->mkdir(Ljava/lang/String;)Z

    move-result v3

    .line 292
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_3

    .line 281
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 285
    goto/16 :goto_3

    .line 272
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->delete(Ljava/lang/String;)Z

    move-result v3

    .line 274
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto :goto_3

    .line 263
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->createNewFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v3

    .line 265
    .local v3, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-static {p3, v3, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_3

    .line 254
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->length(Ljava/lang/String;)J

    move-result-wide v3

    .line 256
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    goto :goto_3

    .line 245
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->lastModified(Ljava/lang/String;)J

    move-result-wide v3

    .line 247
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    goto :goto_3

    .line 236
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->isHidden(Ljava/lang/String;)Z

    move-result v3

    .line 238
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    goto :goto_3

    .line 227
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->isFile(Ljava/lang/String;)Z

    move-result v3

    .line 229
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    goto :goto_3

    .line 218
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->isDirectory(Ljava/lang/String;)Z

    move-result v3

    .line 220
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto :goto_3

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getCanonicalPath(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v3

    .line 211
    .local v3, "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-static {p3, v3, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 561
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/topjohnwu/superuser/internal/IOResult;
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
