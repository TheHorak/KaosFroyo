.class Lcom/android/internal/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/location/LocationProviderProxy;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$400(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/LocationProviderProxy$Connection;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v3}, Lcom/android/internal/location/LocationProviderProxy;->access$100(Lcom/android/internal/location/LocationProviderProxy;)Landroid/location/ILocationProvider;

    move-result-object v1

    .line 92
    .local v1, provider:Landroid/location/ILocationProvider;
    if-nez v1, :cond_11

    .line 93
    monitor-exit v2

    .line 130
    :cond_10
    :goto_10
    return-void

    .line 95
    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_e7

    .line 97
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    if-nez v2, :cond_9f

    .line 99
    :try_start_1a
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    new-instance v3, Lcom/android/internal/location/DummyLocationProvider;

    iget-object v4, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v4}, Lcom/android/internal/location/LocationProviderProxy;->access$600(Lcom/android/internal/location/LocationProviderProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/internal/location/LocationProviderProxy;->access$502(Lcom/android/internal/location/LocationProviderProxy;Lcom/android/internal/location/DummyLocationProvider;)Lcom/android/internal/location/DummyLocationProvider;

    .line 100
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    .line 102
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresCell()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    .line 105
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    .line 106
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsBearing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    .line 108
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$500(Lcom/android/internal/location/LocationProviderProxy;)Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getAccuracy()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_9f} :catch_ea

    .line 116
    :cond_9f
    :goto_9f
    :try_start_9f
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$700(Lcom/android/internal/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 117
    invoke-interface {v1}, Landroid/location/ILocationProvider;->enable()V

    .line 119
    :cond_aa
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$800(Lcom/android/internal/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 120
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V

    .line 122
    :cond_b6
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$900(Lcom/android/internal/location/LocationProviderProxy;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_cb

    .line 123
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$900(Lcom/android/internal/location/LocationProviderProxy;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/location/ILocationProvider;->setMinTime(J)V

    .line 125
    :cond_cb
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$1000(Lcom/android/internal/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 126
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/internal/location/LocationProviderProxy;->access$1100(Lcom/android/internal/location/LocationProviderProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v3}, Lcom/android/internal/location/LocationProviderProxy;->access$1000(Lcom/android/internal/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_e2} :catch_e4

    goto/16 :goto_10

    .line 128
    :catch_e4
    move-exception v2

    goto/16 :goto_10

    .line 95
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_e7
    move-exception v3

    :try_start_e8
    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v3

    .line 109
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :catch_ea
    move-exception v2

    move-object v0, v2

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy$1;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/location/LocationProviderProxy;->access$502(Lcom/android/internal/location/LocationProviderProxy;Lcom/android/internal/location/DummyLocationProvider;)Lcom/android/internal/location/DummyLocationProvider;

    goto :goto_9f
.end method
