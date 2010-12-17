.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 464
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 468
    const/4 v6, 0x0

    .line 471
    .local v6, retryCount:I
    :goto_1
    const/4 v8, 0x0

    .line 475
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_b2

    .line 476
    .end local v8           #s:Landroid/net/LocalSocket;
    .local v9, s:Landroid/net/LocalSocket;
    :try_start_7
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v12, "rild"

    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v12, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 478
    .local v3, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_122
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_df

    .line 511
    const/4 v6, 0x0

    .line 513
    :try_start_14
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v9, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 514
    const-string v12, "RILJ"

    const-string v13, "Connected to \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_df

    .line 516
    const/4 v4, 0x0

    .line 518
    .local v4, length:I
    :try_start_20
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 523
    .local v2, is:Ljava/io/InputStream;
    :goto_28
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    invoke-static {v2, v12}, Lcom/android/internal/telephony/RIL;->access$200(Ljava/io/InputStream;[B)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2d} :catch_d4
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2d} :catch_e3

    move-result v4

    .line 525
    if-gez v4, :cond_bc

    .line 547
    .end local v2           #is:Ljava/io/InputStream;
    :goto_30
    :try_start_30
    const-string v12, "RILJ"

    const-string v13, "Disconnected from \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3e} :catch_df

    .line 553
    :try_start_3e
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_11f
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_45} :catch_df

    .line 557
    :goto_45
    :try_start_45
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 558
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 561
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_52} :catch_df

    .line 562
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_53
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, sz:I
    :goto_5b
    if-ge v1, v10, :cond_10d

    .line 563
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 564
    .local v7, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 565
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_117

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 479
    .end local v1           #i:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v7           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v9           #s:Landroid/net/LocalSocket;
    .end local v10           #sz:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_72
    move-exception v12

    move-object v0, v12

    .line 481
    .local v0, ex:Ljava/io/IOException;
    :goto_74
    if-eqz v8, :cond_79

    .line 482
    :try_start_76
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_11a
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_b2

    .line 491
    :cond_79
    :goto_79
    const/16 v12, 0x8

    if-ne v6, v12, :cond_a4

    .line 492
    :try_start_7d
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " times, continuing to retry silently"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_9b} :catch_b2

    .line 503
    :cond_9b
    :goto_9b
    const-wide/16 v12, 0xfa0

    :try_start_9d
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a0} :catch_11d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_b2

    .line 507
    :goto_a0
    add-int/lit8 v6, v6, 0x1

    .line 508
    goto/16 :goto_1

    .line 496
    :cond_a4
    if-lez v6, :cond_9b

    const/16 v12, 0x8

    if-ge v6, v12, :cond_9b

    .line 497
    :try_start_aa
    const-string v12, "RILJ"

    const-string v13, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_b1} :catch_b2

    goto :goto_9b

    .line 570
    .end local v0           #ex:Ljava/io/IOException;
    :catch_b2
    move-exception v12

    move-object v11, v12

    .line 571
    .local v11, tr:Ljava/lang/Throwable;
    :goto_b4
    const-string v12, "RILJ"

    const-string v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    return-void

    .line 530
    .end local v8           #s:Landroid/net/LocalSocket;
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_bc
    :try_start_bc
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 531
    .local v5, p:Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 532
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 536
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v5}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 537
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_d2} :catch_d4
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_d2} :catch_e3

    goto/16 :goto_28

    .line 539
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #p:Landroid/os/Parcel;
    :catch_d4
    move-exception v12

    move-object v0, v12

    .line 540
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_d6
    const-string v12, "RILJ"

    const-string v13, "\'rild\' socket closed"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 570
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_df
    move-exception v12

    move-object v11, v12

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto :goto_b4

    .line 542
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_e3
    move-exception v12

    move-object v11, v12

    .line 543
    .restart local v11       #tr:Ljava/lang/Throwable;
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_10b} :catch_df

    goto/16 :goto_30

    .line 568
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v1       #i:I
    .restart local v10       #sz:I
    :cond_10d
    :try_start_10d
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 569
    monitor-exit v12

    goto/16 :goto_1

    .end local v10           #sz:I
    :catchall_117
    move-exception v13

    monitor-exit v12
    :try_end_119
    .catchall {:try_start_10d .. :try_end_119} :catchall_117

    :try_start_119
    throw v13
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11a} :catch_df

    .line 484
    .end local v1           #i:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_11a
    move-exception v12

    goto/16 :goto_79

    .line 504
    :catch_11d
    move-exception v12

    goto :goto_a0

    .line 554
    .end local v0           #ex:Ljava/io/IOException;
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_11f
    move-exception v12

    goto/16 :goto_45

    .line 479
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_122
    move-exception v12

    move-object v0, v12

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto/16 :goto_74
.end method
