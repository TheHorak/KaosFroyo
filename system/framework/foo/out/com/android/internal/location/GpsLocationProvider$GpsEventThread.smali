.class final Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsEventThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 3
    .parameter

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    .line 1354
    const-string v0, "GpsEventThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1355
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 1358
    const-string v0, "GpsLocationProvider"

    const-string v0, "GpsEventThread starting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :goto_9
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$400(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1363
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$500(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_9

    .line 1365
    :cond_17
    const-string v0, "GpsLocationProvider"

    const-string v0, "GpsEventThread exiting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void
.end method
