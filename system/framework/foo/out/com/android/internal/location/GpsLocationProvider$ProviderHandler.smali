.class final Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/GpsLocationProvider;Lcom/android/internal/location/GpsLocationProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 1373
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    .line 1405
    .end local p0
    :cond_6
    :goto_6
    return-void

    .line 1375
    .restart local p0
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_11

    .line 1376
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$600(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1378
    :cond_11
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$700(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1382
    :pswitch_17
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_22

    move v1, v2

    :goto_1e
    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$800(Lcom/android/internal/location/GpsLocationProvider;Z)V

    goto :goto_6

    :cond_22
    const/4 v1, 0x0

    goto :goto_1e

    .line 1385
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    invoke-static {v0, v1, p0}, Lcom/android/internal/location/GpsLocationProvider;->access$900(Lcom/android/internal/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_6

    .line 1388
    .restart local p0
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$1000(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1391
    :pswitch_36
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$1100(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1392
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$1200(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_6

    .line 1396
    :pswitch_44
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/location/Location;

    invoke-static {v0, p0}, Lcom/android/internal/location/GpsLocationProvider;->access$1300(Lcom/android/internal/location/GpsLocationProvider;Landroid/location/Location;)V

    goto :goto_6

    .line 1399
    .restart local p0
    :pswitch_4e
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$1400(Lcom/android/internal/location/GpsLocationProvider;I)V

    goto :goto_6

    .line 1402
    :pswitch_56
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$1500(Lcom/android/internal/location/GpsLocationProvider;I)V

    goto :goto_6

    .line 1373
    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_7
        :pswitch_17
        :pswitch_24
        :pswitch_30
        :pswitch_36
        :pswitch_44
        :pswitch_4e
        :pswitch_56
    .end packed-switch
.end method
