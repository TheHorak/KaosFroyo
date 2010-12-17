.class public Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    .line 32
    const-string v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 86
    :goto_7
    return-void

    .line 84
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public vibrate(J)V
    .registers 5
    .parameter "milliseconds"

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVibratorService;->vibrate(JLandroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 47
    :goto_7
    return-void

    .line 45
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public vibrate([JI)V
    .registers 5
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 67
    array-length v0, p1

    if-ge p2, v0, :cond_b

    .line 69
    :try_start_3
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_11

    .line 75
    :goto_a
    return-void

    .line 73
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 70
    :catch_11
    move-exception v0

    goto :goto_a
.end method
