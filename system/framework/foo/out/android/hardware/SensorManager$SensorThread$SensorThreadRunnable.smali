.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field private mDataChannel:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter "dataChannel"

    .prologue
    .line 329
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    .line 331
    return-void
.end method

.method private open()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 339
    iget-object v7, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    const-string v8, "fds"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 341
    .local v6, pfds:[Landroid/os/Parcelable;
    if-eqz v6, :cond_1e

    .line 342
    array-length v4, v6

    .line 343
    .local v4, length:I
    new-array v1, v4, [Ljava/io/FileDescriptor;

    .line 344
    .local v1, fds:[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v4, :cond_1f

    .line 345
    aget-object v5, v6, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 346
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v1, v2

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 349
    .end local v1           #fds:[Ljava/io/FileDescriptor;
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1e
    const/4 v1, 0x0

    .line 351
    .restart local v1       #fds:[Ljava/io/FileDescriptor;
    :cond_1f
    iget-object v7, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    const-string v8, "ints"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 352
    .local v3, ints:[I
    invoke-static {v1, v3}, Landroid/hardware/SensorManager;->sensors_data_open([Ljava/io/FileDescriptor;[I)I

    .line 353
    if-eqz v6, :cond_44

    .line 357
    :try_start_2c
    array-length v7, v6

    sub-int v2, v7, v9

    .restart local v2       #i:I
    :goto_2f
    if-ltz v2, :cond_44

    .line 358
    aget-object v5, v6, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 359
    .restart local v5       #pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_38} :catch_3b

    .line 357
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 361
    .end local v2           #i:I
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_3b
    move-exception v7

    move-object v0, v7

    .line 363
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SensorManager"

    const-string v8, "IOException: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0           #e:Ljava/io/IOException;
    :cond_44
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    .line 367
    return v9
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 372
    const/4 v9, 0x3

    new-array v8, v9, [F

    .line 373
    .local v8, values:[F
    new-array v6, v10, [I

    .line 374
    .local v6, status:[I
    new-array v7, v10, [J

    .line 375
    .local v7, timestamp:[J
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 377
    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v9

    if-nez v9, :cond_14

    .line 423
    :goto_13
    return-void

    .line 381
    :cond_14
    monitor-enter p0

    .line 383
    :try_start_15
    iget-object v9, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 385
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_48

    .line 389
    :goto_1e
    invoke-static {v8, v6, v7}, Landroid/hardware/SensorManager;->sensors_data_poll([F[I[J)I

    move-result v3

    .line 391
    .local v3, sensor:I
    const/4 v9, 0x0

    aget v0, v6, v9

    .line 392
    .local v0, accuracy:I
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 393
    if-eq v3, v11, :cond_32

    :try_start_2a
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 394
    :cond_32
    if-ne v3, v11, :cond_3b

    .line 397
    const-string v10, "SensorManager"

    const-string v11, "_sensors_data_poll() failed, we bail out."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3b
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_data_close()I

    .line 402
    iget-object v10, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 403
    monitor-exit v9

    goto :goto_13

    .line 420
    :catchall_45
    move-exception v10

    monitor-exit v9
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_45

    throw v10

    .line 385
    .end local v0           #accuracy:I
    .end local v3           #sensor:I
    :catchall_48
    move-exception v9

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v9

    .line 405
    .restart local v0       #accuracy:I
    .restart local v3       #sensor:I
    :cond_4b
    :try_start_4b
    sget-object v10, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 406
    .local v4, sensorObject:Landroid/hardware/Sensor;
    if-eqz v4, :cond_72

    .line 409
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 410
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5c
    if-ge v1, v5, :cond_72

    .line 411
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 412
    .local v2, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 415
    invoke-virtual {v2, v4, v8, v7, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    .line 410
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 420
    .end local v1           #i:I
    .end local v2           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v5           #size:I
    :cond_72
    monitor-exit v9
    :try_end_73
    .catchall {:try_start_4b .. :try_end_73} :catchall_45

    goto :goto_1e
.end method
