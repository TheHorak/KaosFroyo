.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;,
        Landroid/view/WindowOrientationListener$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final localLOGV:Z


# instance fields
.field private mAccelerometerMode:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "rate"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    .line 74
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 76
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 77
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_26

    .line 79
    new-instance v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    .line 81
    :cond_26
    iput-object p1, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowOrientationListener;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowOrientationListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Landroid/view/WindowOrientationListener;->mAccelerometerMode:I

    return v0
.end method

.method static synthetic access$102(Landroid/view/WindowOrientationListener;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Landroid/view/WindowOrientationListener;->mAccelerometerMode:I

    return p1
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public disable()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 110
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_b
    :goto_b
    return-void

    .line 113
    :cond_c
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 115
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    .line 117
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SettingsObserver;->stop()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;

    goto :goto_b
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 91
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_b
    :goto_b
    return-void

    .line 94
    :cond_c
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_b

    .line 96
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    .line 98
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;

    if-nez v0, :cond_2b

    .line 99
    new-instance v0, Landroid/view/WindowOrientationListener$SettingsObserver;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/view/WindowOrientationListener$SettingsObserver;-><init>(Landroid/view/WindowOrientationListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;

    .line 101
    :cond_2b
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSettingsObserver:Landroid/view/WindowOrientationListener$SettingsObserver;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SettingsObserver;->observe()V

    goto :goto_b
.end method

.method public getCurrentRotation()I
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getCurrentRotation()I

    move-result v0

    .line 128
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public abstract onOrientationChanged(I)V
.end method
