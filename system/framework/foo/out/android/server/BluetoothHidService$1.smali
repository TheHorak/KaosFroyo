.class Landroid/server/BluetoothHidService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothHidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothHidService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothHidService;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 70
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 71
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 73
    .local v3, state:I
    packed-switch v3, :pswitch_data_ae

    .line 108
    .end local v3           #state:I
    :cond_20
    :goto_20
    return-void

    .line 75
    .restart local v3       #state:I
    :pswitch_21
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$000(Landroid/server/BluetoothHidService;)V

    goto :goto_20

    .line 78
    :pswitch_27
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$100(Landroid/server/BluetoothHidService;)V

    goto :goto_20

    .line 81
    .end local v3           #state:I
    :cond_2d
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 82
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, bondState:I
    packed-switch v1, :pswitch_data_b6

    goto :goto_20

    .line 90
    :pswitch_3f
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-virtual {v4, v2, v6}, Landroid/server/BluetoothHidService;->setHidDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_20

    .line 86
    :pswitch_45
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    const/16 v5, 0x64

    invoke-virtual {v4, v2, v5}, Landroid/server/BluetoothHidService;->setHidDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_20

    .line 93
    .end local v1           #bondState:I
    :cond_4d
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 94
    monitor-enter p0

    .line 95
    :try_start_56
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$200(Landroid/server/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 96
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$200(Landroid/server/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 97
    .restart local v3       #state:I
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    const/4 v5, 0x2

    invoke-static {v4, v2, v3, v5}, Landroid/server/BluetoothHidService;->access$300(Landroid/server/BluetoothHidService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 99
    .end local v3           #state:I
    :cond_78
    monitor-exit p0

    goto :goto_20

    :catchall_7a
    move-exception v4

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_56 .. :try_end_7c} :catchall_7a

    throw v4

    .line 100
    :cond_7d
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 101
    monitor-enter p0

    .line 102
    :try_start_86
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$200(Landroid/server/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 103
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$200(Landroid/server/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 104
    .restart local v3       #state:I
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Landroid/server/BluetoothHidService;->access$300(Landroid/server/BluetoothHidService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 106
    .end local v3           #state:I
    :cond_a8
    monitor-exit p0

    goto/16 :goto_20

    :catchall_ab
    move-exception v4

    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_86 .. :try_end_ad} :catchall_ab

    throw v4

    .line 73
    :pswitch_data_ae
    .packed-switch 0xc
        :pswitch_21
        :pswitch_27
    .end packed-switch

    .line 84
    :pswitch_data_b6
    .packed-switch 0xa
        :pswitch_3f
        :pswitch_3f
        :pswitch_45
    .end packed-switch
.end method
