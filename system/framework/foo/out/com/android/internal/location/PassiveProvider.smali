.class public Lcom/android/internal/location/PassiveProvider;
.super Ljava/lang/Object;
.source "PassiveProvider.java"

# interfaces
.implements Landroid/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "PassiveProvider"


# instance fields
.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/location/ILocationManager;)V
    .registers 2
    .parameter "locationManager"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 45
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 139
    return-void
.end method

.method public disable()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public enable()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public enableLocationTracking(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/internal/location/PassiveProvider;->mTracking:Z

    .line 115
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, -0x1

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "passive"

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, -0x1

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .parameter "extras"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/location/PassiveProvider;->mTracking:Z

    if-eqz v0, :cond_6

    .line 99
    const/4 v0, 0x2

    .line 101
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 106
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public removeListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 142
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public setMinTime(J)V
    .registers 3
    .parameter "minTime"

    .prologue
    .line 118
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/android/internal/location/PassiveProvider;->mTracking:Z

    if-eqz v1, :cond_a

    .line 127
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 132
    :cond_a
    :goto_a
    return-void

    .line 128
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PassiveProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 121
    return-void
.end method
