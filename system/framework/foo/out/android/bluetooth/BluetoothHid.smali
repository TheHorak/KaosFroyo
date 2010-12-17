.class public Landroid/bluetooth/BluetoothHid;
.super Ljava/lang/Object;
.source "BluetoothHid.java"


# static fields
.field private static final DBG:Z = false

.field public static final HID_DEVICE_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.hid.intent.HID_DEVICE_PREVIOUS_STATE"

.field public static final HID_DEVICE_STATE:Ljava/lang/String; = "android.bluetooth.hid.intent.HID_DEVICE_STATE"

.field public static final HID_DEVICE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.hid.intent.action.HID_DEVICE_STATE_CHANGED"

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothHid"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/bluetooth/IBluetoothHid;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/bluetooth/BluetoothHid;->mContext:Landroid/content/Context;

    .line 99
    const-string v1, "bluetooth_hid"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 101
    invoke-static {v0}, Landroid/bluetooth/IBluetoothHid$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHid;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    .line 108
    :goto_13
    return-void

    .line 103
    :cond_14
    const-string v1, "BluetoothHid"

    const-string v2, "Bluetooth HID service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    goto :goto_13
.end method

.method public static doesClassMatch(Landroid/bluetooth/BluetoothClass;)Z
    .registers 2
    .parameter "btClass"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 272
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 270
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 266
    nop

    :sswitch_data_c
    .sparse-switch
        0x540 -> :sswitch_9
        0x580 -> :sswitch_9
        0x5c0 -> :sswitch_9
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 277
    const-string v0, "BluetoothHid"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 243
    packed-switch p0, :pswitch_data_2a

    .line 253
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

    .line 245
    :pswitch_1d
    const-string v0, "disconnected"

    goto :goto_1c

    .line 247
    :pswitch_20
    const-string v0, "connecting"

    goto :goto_1c

    .line 249
    :pswitch_23
    const-string v0, "connected"

    goto :goto_1c

    .line 251
    :pswitch_26
    const-string v0, "disconnecting"

    goto :goto_1c

    .line 243
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public connectHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHid;->connectHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 124
    :goto_6
    return v1

    .line 122
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnectHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHid;->disconnectHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 140
    :goto_6
    return v1

    .line 138
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
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
    .line 161
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHid;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 165
    :goto_13
    return-object v1

    .line 163
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getHidDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHid;->getHidDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 234
    :goto_6
    return v1

    .line 232
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getHidDeviceState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHid;->getHidDeviceState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 196
    :goto_6
    return v1

    .line 194
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v1, 0x0

    goto :goto_6
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
    .line 177
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHid;->getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 181
    :goto_13
    return-object v1

    .line 179
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public isHidDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHid;->getHidDeviceState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 151
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setHidDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHid;->setHidDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 219
    :goto_6
    return v1

    .line 217
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v1, 0x0

    goto :goto_6
.end method
