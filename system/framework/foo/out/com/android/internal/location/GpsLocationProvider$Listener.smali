.class final Lcom/android/internal/location/GpsLocationProvider$Listener;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IGpsStatusListener;

.field mSensors:I

.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsLocationProvider;Landroid/location/IGpsStatusListener;)V
    .registers 4
    .parameter
    .parameter "listener"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->mSensors:I

    .line 794
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    .line 795
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 798
    const-string v0, "GpsLocationProvider"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 801
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 802
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 803
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    if-eqz v0, :cond_26

    .line 804
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 806
    :cond_26
    return-void

    .line 802
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method
