.class Lcom/android/internal/location/GpsLocationProvider$1;
.super Landroid/location/IGpsStatusProvider$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .registers 9
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_a

    .line 282
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener is null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    :cond_a
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 286
    :try_start_11
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 287
    .local v0, binder:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v6}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 288
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v3, :cond_3f

    .line 289
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v6}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/location/GpsLocationProvider$Listener;

    .line 290
    .local v4, test:Lcom/android/internal/location/GpsLocationProvider$Listener;
    iget-object v6, v4, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 292
    monitor-exit v5

    .line 300
    .end local v4           #test:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :goto_3b
    return-void

    .line 288
    .restart local v4       #test:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 296
    .end local v4           #test:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_3f
    new-instance v2, Lcom/android/internal/location/GpsLocationProvider$Listener;

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {v2, v6, p1}, Lcom/android/internal/location/GpsLocationProvider$Listener;-><init>(Lcom/android/internal/location/GpsLocationProvider;Landroid/location/IGpsStatusListener;)V

    .line 297
    .local v2, l:Lcom/android/internal/location/GpsLocationProvider$Listener;
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 298
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v6}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v5

    goto :goto_3b

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_55
    move-exception v6

    monitor-exit v5
    :try_end_57
    .catchall {:try_start_11 .. :try_end_57} :catchall_55

    throw v6
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .registers 9
    .parameter "listener"

    .prologue
    .line 303
    if-nez p1, :cond_a

    .line 304
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener is null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_a
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 308
    :try_start_11
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 309
    .local v0, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 310
    .local v2, l:Lcom/android/internal/location/GpsLocationProvider$Listener;
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v6}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 311
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v3, :cond_41

    if-nez v2, :cond_41

    .line 312
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v6}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/location/GpsLocationProvider$Listener;

    .line 313
    .local v4, test:Lcom/android/internal/location/GpsLocationProvider$Listener;
    iget-object v6, v4, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 314
    move-object v2, v4

    .line 311
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 318
    .end local v4           #test:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_41
    if-eqz v2, :cond_50

    .line 319
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$1;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v6}, Lcom/android/internal/location/GpsLocationProvider;->access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 322
    :cond_50
    monitor-exit v5

    .line 323
    return-void

    .line 322
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_52
    move-exception v6

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_11 .. :try_end_54} :catchall_52

    throw v6
.end method
