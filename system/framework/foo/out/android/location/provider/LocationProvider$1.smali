.class Landroid/location/provider/LocationProvider$1;
.super Landroid/location/ILocationProvider$Stub;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/provider/LocationProvider;


# direct methods
.method constructor <init>(Landroid/location/provider/LocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-direct {p0}, Landroid/location/ILocationProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProvider;->onAddListener(I)V

    .line 124
    return-void
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onDisable()V

    .line 88
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onEnable()V

    .line 84
    return-void
.end method

.method public enableLocationTracking(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProvider;->onEnableLocationTracking(Z)V

    .line 104
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onGetAccuracy()I

    move-result v0

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onGetInternalState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onGetPowerRequirement()I

    move-result v0

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .parameter "extras"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProvider;->onGetStatus(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onGetStatusUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onHasMonetaryCost()Z

    move-result v0

    return v0
.end method

.method public removeListener(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProvider;->onRemoveListener(I)V

    .line 128
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onRequiresCell()Z

    move-result v0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onRequiresNetwork()Z

    move-result v0

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onRequiresSatellite()Z

    move-result v0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Landroid/location/provider/LocationProvider;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setMinTime(J)V
    .registers 4
    .parameter "minTime"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Landroid/location/provider/LocationProvider;->onSetMinTime(J)V

    .line 108
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onSupportsAltitude()Z

    move-result v0

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onSupportsBearing()Z

    move-result v0

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0}, Landroid/location/provider/LocationProvider;->onSupportsSpeed()Z

    move-result v0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProvider;->onUpdateLocation(Landroid/location/Location;)V

    .line 116
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 4
    .parameter "state"
    .parameter "info"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/location/provider/LocationProvider$1;->this$0:Landroid/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Landroid/location/provider/LocationProvider;->onUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    .line 112
    return-void
.end method
