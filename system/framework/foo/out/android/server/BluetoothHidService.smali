.class public Landroid/server/BluetoothHidService;
.super Landroid/bluetooth/IBluetoothHid$Stub;
.source "BluetoothHidService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field public static final BLUETOOTH_HID_SERVICE:Ljava/lang/String; = "bluetooth_hid"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothHidService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mHidDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHid$Stub;-><init>()V

    .line 64
    new-instance v0, Landroid/server/BluetoothHidService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothHidService$1;-><init>(Landroid/server/BluetoothHidService;)V

    iput-object v0, p0, Landroid/server/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 116
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_1a

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1a
    invoke-direct {p0}, Landroid/server/BluetoothHidService;->initNative()Z

    move-result v0

    if-nez v0, :cond_28

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothHidService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_28
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothHidService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    .line 133
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 134
    invoke-direct {p0}, Landroid/server/BluetoothHidService;->onBluetoothEnable()V

    .line 135
    :cond_67
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothHidService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/server/BluetoothHidService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothHidService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/server/BluetoothHidService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothHidService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothHidService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method private declared-synchronized addHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 11
    .parameter "device"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 156
    monitor-enter p0

    :try_start_3
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, path:Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/server/BluetoothHidService;->getHidPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 160
    .local v3, propValues:[Ljava/lang/String;
    if-nez v3, :cond_34

    .line 161
    const-string v5, "BluetoothHidService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while getting HID properties for device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_64

    move v5, v8

    .line 173
    :goto_32
    monitor-exit p0

    return v5

    .line 164
    :cond_34
    const/4 v4, 0x0

    .line 165
    .local v4, state:Ljava/lang/Integer;
    const/4 v5, 0x0

    :try_start_36
    aget-object v1, v3, v5

    .line 166
    .local v1, name:Ljava/lang/String;
    const-string v5, "Connected"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 167
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 168
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 169
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 171
    :cond_55
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_62
    .catchall {:try_start_36 .. :try_end_62} :catchall_64

    move v5, v7

    .line 173
    goto :goto_32

    .line 156
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #propValues:[Ljava/lang/String;
    .end local v4           #state:Ljava/lang/Integer;
    :catchall_64
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectHidDeviceNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized disconnectHidDeviceNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized getHidPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 365
    if-eq p3, p2, :cond_39

    .line 366
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p0, p1}, Landroid/server/BluetoothHidService;->getHidDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x1

    if-eq p3, v1, :cond_17

    :cond_14
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1c

    .line 371
    :cond_17
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothHidService;->setHidDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 373
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.hid.intent.action.HID_DEVICE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    const-string v1, "android.bluetooth.hid.intent.HID_DEVICE_PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string v1, "android.bluetooth.hid.intent.HID_DEVICE_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    :cond_39
    return-void
.end method

.method private native initNative()Z
.end method

.method private isHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 148
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 149
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_16

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 150
    const/4 v1, 0x1

    .line 152
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 452
    const-string v0, "BluetoothHidService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method private declared-synchronized lookupSinksMatchingStates([I)Ljava/util/Set;
    .registers 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 383
    .local v6, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_37

    move-result v8

    if-eqz v8, :cond_10

    .line 395
    :cond_e
    monitor-exit p0

    return-object v6

    .line 386
    :cond_10
    :try_start_10
    iget-object v8, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 387
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothHidService;->getHidDeviceState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 388
    .local v5, sinkState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2d
    if-ge v3, v4, :cond_1a

    aget v7, v0, v3

    .line 389
    .local v7, state:I
    if-ne v7, v5, :cond_3a

    .line 390
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_37

    goto :goto_1a

    .line 382
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v6           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #state:I
    :catchall_37
    move-exception v8

    monitor-exit p0

    throw v8

    .line 388
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #sinkState:I
    .restart local v6       #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7       #state:I
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 9

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_56

    .line 197
    iget-object v6, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v2, v6, [Landroid/bluetooth/BluetoothDevice;

    .line 198
    .local v2, devices:[Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 200
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_20
    if-ge v3, v4, :cond_51

    aget-object v1, v0, v3

    .line 201
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 202
    .local v5, state:I
    packed-switch v5, :pswitch_data_58

    .line 200
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 205
    :pswitch_36
    iget-object v6, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/server/BluetoothHidService;->disconnectHidDeviceNative(Ljava/lang/String;)Z

    .line 207
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_48

    goto :goto_33

    .line 196
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:I
    :catchall_48
    move-exception v6

    monitor-exit p0

    throw v6

    .line 210
    .restart local v0       #arr$:[Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #state:I
    :pswitch_4b
    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_4d
    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_33

    .line 215
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #state:I
    :cond_51
    iget-object v6, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_48

    .line 218
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_56
    monitor-exit p0

    return-void

    .line 202
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_4b
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 13

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, devices:Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 181
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, paths:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_14
    if-ge v4, v5, :cond_40

    aget-object v6, v1, v4

    .line 183
    .local v6, path:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, address:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothHidService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 185
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 186
    .local v8, remoteUuids:[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_3d

    .line 187
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 189
    invoke-direct {p0, v2}, Landroid/server/BluetoothHidService;->addHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_42

    .line 182
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 193
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #remoteUuids:[Landroid/os/ParcelUuid;
    :cond_40
    monitor-exit p0

    return-void

    .line 178
    .end local v3           #devices:Ljava/lang/String;
    :catchall_42
    move-exception v9

    monitor-exit p0

    throw v9
.end method


# virtual methods
.method public declared-synchronized connectHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .parameter "device"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_5e

    invoke-direct {p0, v2}, Landroid/server/BluetoothHidService;->lookupSinksMatchingStates([I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_5a

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v5

    .line 253
    :goto_1d
    monitor-exit p0

    return v2

    .line 232
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2f

    invoke-direct {p0, p1}, Landroid/server/BluetoothHidService;->addHidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_2f

    move v2, v5

    .line 233
    goto :goto_1d

    .line 235
    :cond_2f
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 237
    .local v1, state:I
    packed-switch v1, :pswitch_data_68

    .line 245
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_50

    move v2, v5

    .line 247
    goto :goto_1d

    .end local v0           #path:Ljava/lang/String;
    :pswitch_4c
    move v2, v5

    .line 240
    goto :goto_1d

    :pswitch_4e
    move v2, v6

    .line 242
    goto :goto_1d

    .line 250
    .restart local v0       #path:Ljava/lang/String;
    :cond_50
    invoke-direct {p0, v0}, Landroid/server/BluetoothHidService;->connectHidDeviceNative(Ljava/lang/String;)Z
    :try_end_53
    .catchall {:try_start_1f .. :try_end_53} :catchall_5a

    move-result v2

    if-nez v2, :cond_58

    move v2, v5

    .line 251
    goto :goto_1d

    :cond_58
    move v2, v6

    .line 253
    goto :goto_1d

    .line 221
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 226
    nop

    :array_5e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 237
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public declared-synchronized disconnectHidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .parameter "device"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_42

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v5

    .line 280
    :goto_15
    monitor-exit p0

    return v2

    .line 264
    :cond_17
    :try_start_17
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 265
    .local v1, state:I
    packed-switch v1, :pswitch_data_46

    .line 272
    :pswitch_26
    iget-object v2, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_38

    move v2, v5

    .line 274
    goto :goto_15

    .end local v0           #path:Ljava/lang/String;
    :pswitch_34
    move v2, v5

    .line 267
    goto :goto_15

    :pswitch_36
    move v2, v6

    .line 269
    goto :goto_15

    .line 277
    .restart local v0       #path:Ljava/lang/String;
    :cond_38
    invoke-direct {p0, v0}, Landroid/server/BluetoothHidService;->disconnectHidDeviceNative(Ljava/lang/String;)Z
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_42

    move-result v2

    if-nez v2, :cond_40

    move v2, v5

    .line 278
    goto :goto_15

    :cond_40
    move v2, v6

    .line 280
    goto :goto_15

    .line 257
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_42
    move-exception v2

    monitor-exit p0

    throw v2

    .line 265
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_34
        :pswitch_26
        :pswitch_26
        :pswitch_36
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_51

    move-result v3

    if-eqz v3, :cond_b

    .line 449
    :cond_9
    monitor-exit p0

    return-void

    .line 444
    :cond_b
    :try_start_b
    const-string v3, "Cached hid devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 446
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 447
    .local v2, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothHid;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_51

    goto :goto_1a

    .line 443
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:I
    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothHidService;->cleanupNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 143
    invoke-super {p0}, Landroid/bluetooth/IBluetoothHid$Stub;->finalize()V

    .line 145
    return-void

    .line 143
    :catchall_7
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothHid$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;
    .registers 5

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-direct {p0, v1}, Landroid/server/BluetoothHidService;->lookupSinksMatchingStates([I)Ljava/util/Set;

    move-result-object v0

    .line 287
    .local v0, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/bluetooth/BluetoothDevice;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v1

    .line 284
    .end local v0           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHidDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 309
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit p0

    return v0

    .line 309
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHidDeviceState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .parameter "device"

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 302
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_17

    .line 303
    const/4 v1, 0x0

    .line 305
    :goto_15
    monitor-exit p0

    return v1

    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    move-result v1

    goto :goto_15

    .line 300
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;
    .registers 5

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    invoke-direct {p0, v1}, Landroid/server/BluetoothHidService;->lookupSinksMatchingStates([I)Ljava/util/Set;

    move-result-object v0

    .line 296
    .local v0, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/bluetooth/BluetoothDevice;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v1

    .line 291
    .end local v0           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 292
    nop

    :array_26
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized onHidDeviceConnected(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 399
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-nez v3, :cond_7

    .line 418
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 401
    :cond_7
    :try_start_7
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 405
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_22

    .line 407
    const-string v3, "BluetoothHidService"

    const-string v4, "onHidDeviceConnected: Address of the remote device in null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 399
    .end local v0           #address:Ljava/lang/String;
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 411
    .restart local v0       #address:Ljava/lang/String;
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 413
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 414
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 415
    .local v2, prevState:I
    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_1f

    goto :goto_5
.end method

.method public declared-synchronized onHidDeviceDisconnected(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-nez v3, :cond_7

    .line 439
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 423
    :cond_7
    :try_start_7
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 427
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_22

    .line 429
    const-string v3, "BluetoothHidService"

    const-string v4, "onHidDeviceDisconnected: Address of the remote device in null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 421
    .end local v0           #address:Ljava/lang/String;
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 433
    .restart local v0       #address:Ljava/lang/String;
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 435
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 436
    iget-object v3, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 437
    .local v2, prevState:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_1f

    goto :goto_5
.end method

.method public declared-synchronized onPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "path"
    .parameter "propValues"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result v5

    if-nez v5, :cond_b

    .line 359
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 333
    :cond_b
    const/4 v5, 0x0

    :try_start_c
    aget-object v2, p2, v5

    .line 334
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_21

    .line 337
    const-string v5, "BluetoothHidService"

    const-string v6, "onPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_9

    .line 329
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_1e
    move-exception v5

    monitor-exit p0

    throw v5

    .line 341
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_21
    :try_start_21
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 344
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "Connected"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 345
    const/4 v4, 0x0

    .line 346
    .local v4, state:I
    const/4 v5, 0x1

    aget-object v5, p2, v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 347
    const/4 v4, 0x2

    .line 349
    :cond_3c
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_48

    .line 352
    invoke-direct {p0, v1}, Landroid/server/BluetoothHidService;->addHidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_9

    .line 354
    :cond_48
    iget-object v5, p0, Landroid/server/BluetoothHidService;->mHidDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 355
    .local v3, prevState:I
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothHidService;->handleHIDStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_1e

    goto :goto_9
.end method

.method public declared-synchronized setHidDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2a

    move-result v0

    if-nez v0, :cond_17

    .line 320
    const/4 v0, 0x0

    .line 322
    :goto_15
    monitor-exit p0

    return v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/server/BluetoothHidService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2a

    move-result v0

    goto :goto_15

    .line 317
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
