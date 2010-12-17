.class public final Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"


# static fields
.field public static final ACTION_SINK_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final EXTRA_PREVIOUS_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

.field public static final EXTRA_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.SINK_STATE"

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_PLAYING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dp"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/bluetooth/IBluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "bluetooth_a2dp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 102
    invoke-static {v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 110
    :goto_13
    return-void

    .line 104
    :cond_14
    const-string v1, "BluetoothA2dp"

    const-string v2, "Bluetooth A2DP service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    goto :goto_13
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 294
    const-string v0, "BluetoothA2dp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 277
    packed-switch p0, :pswitch_data_2c

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 279
    :pswitch_1d
    const-string v0, "disconnected"

    goto :goto_1c

    .line 281
    :pswitch_20
    const-string v0, "connecting"

    goto :goto_1c

    .line 283
    :pswitch_23
    const-string v0, "connected"

    goto :goto_1c

    .line 285
    :pswitch_26
    const-string v0, "disconnecting"

    goto :goto_1c

    .line 287
    :pswitch_29
    const-string v0, "playing"

    goto :goto_1c

    .line 277
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 125
    :goto_6
    return v1

    .line 123
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 142
    :goto_6
    return v1

    .line 140
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectedSinks()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 200
    :goto_13
    return-object v1

    .line 198
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getNonDisconnectedSinks()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 216
    :goto_13
    return-object v1

    .line 214
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 268
    :goto_6
    return v1

    .line 266
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 231
    :goto_6
    return v1

    .line 229
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isSinkConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 186
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 174
    :goto_6
    return v1

    .line 172
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 253
    :goto_6
    return v1

    .line 251
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 158
    :goto_6
    return v1

    .line 156
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_6
.end method
