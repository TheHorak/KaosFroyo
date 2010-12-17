.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field private static final TAG:Ljava/lang/String; = "Binder"


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:I

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    .line 135
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method private execTransact(IIII)Z
    .registers 9
    .parameter "code"
    .parameter "dataObj"
    .parameter "replyObj"
    .parameter "flags"

    .prologue
    .line 281
    invoke-static {p2}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, data:Landroid/os/Parcel;
    invoke-static {p3}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v2

    .line 288
    .local v2, reply:Landroid/os/Parcel;
    :try_start_8
    invoke-virtual {p0, p1, v0, v2, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_19

    move-result v3

    .line 296
    .local v3, res:Z
    :goto_c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    return v3

    .line 289
    .end local v3           #res:Z
    :catch_13
    move-exception v1

    .line 290
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 291
    const/4 v3, 0x1

    .line 295
    .restart local v3       #res:Z
    goto :goto_c

    .line 292
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #res:Z
    :catch_19
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 294
    const/4 v3, 0x1

    .restart local v3       #res:Z
    goto :goto_c
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method private final native init()V
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .registers 3
    .parameter "owner"
    .parameter "descriptor"

    .prologue
    .line 144
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 145
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 146
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 237
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 219
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 220
    .local v0, fout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 222
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_a
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 224
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 226
    return-void

    .line 224
    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 273
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 275
    return-void

    .line 273
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3
    .parameter "recipient"
    .parameter "flags"

    .prologue
    .line 260
    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 193
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_f

    .line 194
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 211
    :goto_e
    return v2

    .line 196
    :cond_f
    const v2, 0x5f444d50

    if-ne p1, v2, :cond_2f

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 198
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, args:[Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 201
    :try_start_1e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2a

    .line 204
    :try_start_25
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_31

    :cond_28
    :goto_28
    move v2, v3

    .line 209
    goto :goto_e

    .line 203
    :catchall_2a
    move-exception v2

    .line 204
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_33

    .line 206
    :goto_2e
    throw v2

    .line 211
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_e

    .line 205
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_31
    move-exception v2

    goto :goto_28

    :catch_33
    move-exception v3

    goto :goto_2e
.end method

.method public pingBinder()Z
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3
    .parameter "descriptor"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 182
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    if-eqz p2, :cond_6

    .line 247
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 249
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 250
    .local v0, r:Z
    if-eqz p3, :cond_f

    .line 251
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 253
    :cond_f
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4
    .parameter "recipient"
    .parameter "flags"

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method
