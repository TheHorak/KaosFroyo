.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentHost:Lorg/apache/http/HttpHost;

.field mCurrentThreadTime:J

.field private mId:I

.field private volatile mNewRequest:Landroid/net/http/Request;

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mTotalThreadTime:J

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 8
    .parameter "context"
    .parameter "id"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 54
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/http/ConnectionThread;->setName(Ljava/lang/String;)V

    .line 56
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    .line 57
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 58
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 59
    iput-object v2, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    .line 60
    iput-object v2, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 61
    return-void
.end method


# virtual methods
.method public getCurrentHost()Lorg/apache/http/HttpHost;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public requestStop()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v0

    .line 65
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 66
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 83
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 91
    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 92
    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 94
    :cond_b
    :goto_b
    iget-boolean v3, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v3, :cond_b1

    .line 95
    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 102
    :cond_1d
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    if-eqz v3, :cond_46

    .line 103
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 104
    .local v0, request:Landroid/net/http/Request;
    iput-object v7, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 109
    :goto_25
    if-nez v0, :cond_4d

    .line 110
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v3

    .line 112
    const/4 v4, 0x1

    :try_start_2b
    iput-boolean v4, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_43

    .line 114
    :try_start_2d
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_32} :catch_b2

    .line 117
    :goto_32
    const/4 v4, 0x0

    :try_start_33
    iput-boolean v4, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 118
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_41

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 123
    :cond_41
    monitor-exit v3

    goto :goto_b

    :catchall_43
    move-exception v4

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_43

    throw v4

    .line 106
    .end local v0           #request:Landroid/net/http/Request;
    :cond_46
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    .restart local v0       #request:Landroid/net/http/Request;
    goto :goto_25

    .line 129
    :cond_4d
    iget-object v3, v0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_52
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4, v5}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v3

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 132
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3, p0}, Landroid/net/http/Connection;->setConnectionThread(Landroid/net/http/ConnectionThread;)V

    .line 133
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_a5

    .line 134
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3, v0}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 135
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 136
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v3, v4}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 137
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    .line 142
    :cond_80
    :goto_80
    monitor-enter p0

    .line 143
    :try_start_81
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/http/Connection;->setConnectionThread(Landroid/net/http/ConnectionThread;)V

    .line 144
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 145
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_ae

    .line 147
    iput-object v7, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    .line 149
    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_b

    .line 150
    iget-wide v1, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 151
    .local v1, start:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 152
    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    iget-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    goto/16 :goto_b

    .line 133
    .end local v1           #start:J
    :catchall_a5
    move-exception v3

    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v3

    .line 140
    :cond_a8
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_80

    .line 145
    :catchall_ae
    move-exception v3

    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v3

    .line 157
    .end local v0           #request:Landroid/net/http/Request;
    :cond_b1
    return-void

    .line 115
    .restart local v0       #request:Landroid/net/http/Request;
    :catch_b2
    move-exception v4

    goto/16 :goto_32
.end method

.method public setNewRequest(Landroid/net/http/Request;)V
    .registers 2
    .parameter "req"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 76
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v2, " "

    .line 160
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v2, :cond_3c

    const-string v2, ""

    move-object v1, v2

    .line 161
    .local v1, con:Ljava/lang/String;
    :goto_a
    iget-boolean v2, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v2, :cond_44

    const-string v2, "w"

    move-object v0, v2

    .line 162
    .local v0, active:Ljava/lang/String;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_48

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 160
    .end local v0           #active:Ljava/lang/String;
    .end local v1           #con:Ljava/lang/String;
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_a

    .line 161
    .restart local v1       #con:Ljava/lang/String;
    :cond_44
    const-string v2, "a"
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_48

    move-object v0, v2

    goto :goto_11

    .line 160
    .end local v1           #con:Ljava/lang/String;
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method
