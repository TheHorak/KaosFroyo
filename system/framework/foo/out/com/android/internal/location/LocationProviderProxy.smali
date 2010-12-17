.class public Lcom/android/internal/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/LocationProviderProxy$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocationTracking:Z

.field private mMinTime:J

.field private final mName:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkState:I

.field private mProvider:Landroid/location/ILocationProvider;

.field private mServiceConnectedTask:Ljava/lang/Runnable;

.field private final mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 9
    .parameter "context"
    .parameter "name"
    .parameter "serviceName"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/internal/location/LocationProviderProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/LocationProviderProxy$Connection;-><init>(Lcom/android/internal/location/LocationProviderProxy;Lcom/android/internal/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    .line 50
    iput-boolean v2, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/internal/location/LocationProviderProxy;->mEnabled:Z

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    .line 87
    new-instance v0, Lcom/android/internal/location/LocationProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/location/LocationProviderProxy$1;-><init>(Lcom/android/internal/location/LocationProviderProxy;)V

    iput-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnectedTask:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/internal/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/android/internal/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    .line 65
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/location/LocationProviderProxy;)Landroid/location/ILocationProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/location/LocationProviderProxy;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/location/LocationProviderProxy;Landroid/location/ILocationProvider;)Landroid/location/ILocationProvider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/location/LocationProviderProxy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mNetworkState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/location/LocationProviderProxy;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnectedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/location/LocationProviderProxy;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/LocationProviderProxy$Connection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/location/LocationProviderProxy;Lcom/android/internal/location/DummyLocationProvider;)Lcom/android/internal/location/DummyLocationProvider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/location/LocationProviderProxy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/location/LocationProviderProxy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/location/LocationProviderProxy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/location/LocationProviderProxy;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method


# virtual methods
.method public addListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 362
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 363
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 364
    if-eqz v0, :cond_b

    .line 366
    :try_start_8
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->addListener(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_f

    .line 370
    :cond_b
    :goto_b
    return-void

    .line 363
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_c
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v2

    .line 367
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_f
    move-exception v1

    goto :goto_b
.end method

.method public disable()V
    .registers 4

    .prologue
    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mEnabled:Z

    .line 226
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 227
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 228
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    .line 229
    if-eqz v0, :cond_e

    .line 231
    :try_start_b
    invoke-interface {v0}, Landroid/location/ILocationProvider;->disable()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_12

    .line 235
    :cond_e
    :goto_e
    return-void

    .line 228
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_f
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v2

    .line 232
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_12
    move-exception v1

    goto :goto_e
.end method

.method public enable()V
    .registers 4

    .prologue
    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mEnabled:Z

    .line 212
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 213
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 214
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    .line 215
    if-eqz v0, :cond_e

    .line 217
    :try_start_b
    invoke-interface {v0}, Landroid/location/ILocationProvider;->enable()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_12

    .line 221
    :cond_e
    :goto_e
    return-void

    .line 214
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_f
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v2

    .line 218
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_12
    move-exception v1

    goto :goto_e
.end method

.method public enableLocationTracking(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    .line 284
    if-nez p1, :cond_8

    .line 285
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    .line 288
    :cond_8
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 289
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 290
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    .line 291
    if-eqz v0, :cond_13

    .line 293
    :try_start_10
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_17

    .line 297
    :cond_13
    :goto_13
    return-void

    .line 290
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_14
    move-exception v2

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v2

    .line 294
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_17
    move-exception v1

    goto :goto_13
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getAccuracy()I

    move-result v0

    .line 205
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 4

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getInternalState()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 274
    :goto_6
    return-object v1

    .line 272
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 273
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "getInternalState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMinTime()J
    .registers 3

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getPowerRequirement()I

    move-result v0

    .line 197
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 5
    .parameter "extras"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 244
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 245
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    .line 246
    if-eqz v0, :cond_11

    .line 248
    :try_start_8
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_10

    move-result v1

    .line 252
    :goto_c
    return v1

    .line 245
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_d
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v2

    .line 249
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_10
    move-exception v1

    .line 252
    :cond_11
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getStatusUpdateTime()J
    .registers 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 258
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 259
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    .line 260
    if-eqz v0, :cond_11

    .line 262
    :try_start_8
    invoke-interface {v0}, Landroid/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_10

    move-result-wide v1

    .line 266
    :goto_c
    return-wide v1

    .line 259
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_d
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v2

    .line 263
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_10
    move-exception v1

    .line 266
    :cond_11
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 163
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->hasMonetaryCost()Z

    move-result v0

    .line 165
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method public isLocationTracking()Z
    .registers 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method public removeListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 375
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 376
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 377
    if-eqz v0, :cond_b

    .line 379
    :try_start_8
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->removeListener(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_f

    .line 383
    :cond_b
    :goto_b
    return-void

    .line 376
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_c
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v2

    .line 380
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_f
    move-exception v1

    goto :goto_b
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 155
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresCell()Z

    move-result v0

    .line 157
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 139
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresNetwork()Z

    move-result v0

    .line 141
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresSatellite()Z

    move-result v0

    .line 149
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 348
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 349
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    .line 350
    if-eqz v0, :cond_b

    .line 352
    :try_start_8
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_10

    .line 356
    :cond_b
    :goto_b
    const/4 v1, 0x0

    return v1

    .line 349
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_d
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v2

    .line 353
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_10
    move-exception v1

    goto :goto_b
.end method

.method public setMinTime(J)V
    .registers 6
    .parameter "minTime"

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    .line 306
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 307
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 308
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 309
    if-eqz v0, :cond_d

    .line 311
    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->setMinTime(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_11

    .line 315
    :cond_d
    :goto_d
    return-void

    .line 308
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2

    .line 312
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_11
    move-exception v1

    goto :goto_d
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsAltitude()Z

    move-result v0

    .line 173
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 187
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsBearing()Z

    move-result v0

    .line 189
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    if-eqz v0, :cond_b

    .line 179
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsSpeed()Z

    move-result v0

    .line 181
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 335
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 336
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 337
    if-eqz v0, :cond_b

    .line 339
    :try_start_8
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_f

    .line 343
    :cond_b
    :goto_b
    return-void

    .line 336
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_c
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v2

    .line 340
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_f
    move-exception v1

    goto :goto_b
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 6
    .parameter "state"
    .parameter "info"

    .prologue
    .line 318
    iput p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mNetworkState:I

    .line 319
    iput-object p2, p0, Lcom/android/internal/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 321
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mServiceConnection:Lcom/android/internal/location/LocationProviderProxy$Connection;

    monitor-enter v1

    .line 322
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 323
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    .line 324
    if-eqz v0, :cond_f

    .line 326
    :try_start_c
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    .line 330
    :cond_f
    :goto_f
    return-void

    .line 323
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v2

    .line 327
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_13
    move-exception v1

    goto :goto_f
.end method
