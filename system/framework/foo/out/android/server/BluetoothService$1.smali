.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v3, "BluetoothService"

    .line 433
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_be

    .line 490
    :cond_b
    :goto_b
    return-void

    .line 435
    :pswitch_c
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 445
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_ca

    goto :goto_b

    .line 447
    :pswitch_1a
    const-string v2, "BluetoothService"

    const-string v2, "Registering hfag record"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v2, "hfag"

    invoke-static {v2}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 453
    :pswitch_3b
    const-string v2, "BluetoothService"

    const-string v2, "Registering hsag record"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v2, "hsag"

    invoke-static {v2}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 459
    :pswitch_5c
    const-string v2, "BluetoothService"

    const-string v2, "Registering opush record"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v2, "opush"

    invoke-static {v2}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 465
    :pswitch_7d
    const-string v2, "BluetoothService"

    const-string v2, "Registering pbap record"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "pbap"

    invoke-static {v2}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto :goto_b

    .line 471
    :pswitch_8a
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_96

    move v3, v6

    :goto_91
    invoke-static {v2, v3}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_b

    :cond_96
    const/4 v3, 0x0

    goto :goto_91

    .line 474
    :pswitch_98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 475
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 476
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 481
    .end local v0           #address:Ljava/lang/String;
    :pswitch_aa
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 482
    .local v1, mode:I
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 486
    iget-object v2, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v5}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_b

    .line 433
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8a
        :pswitch_98
        :pswitch_aa
    .end packed-switch

    .line 445
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_3b
        :pswitch_5c
        :pswitch_7d
    .end packed-switch
.end method
