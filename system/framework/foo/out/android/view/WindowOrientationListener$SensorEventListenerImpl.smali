.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATING_LOWPASS_ALPHA:F = 0.4375f

.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x258

.field private static final DEFAULT_LOWPASS_ALPHA:F = 0.875f

.field private static final DEFAULT_TIME_CONSTANT_MS:I = 0xc8

.field private static final FIX_LOWPASS:F = 1.75f

.field private static final MAX_DEVIATION_FROM_GRAVITY:I = 0x1

.field private static final MAX_TILT:I = 0x41

.field private static final PARTIAL_TILT:I = 0x2d

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_180:I = 0x2

.field private static final ROTATION_270:I = 0x3

.field private static final ROTATION_90:I = 0x1

.field private static final SAMPLING_PERIOD_MS:I = 0xc8

.field private static final TILTED_LOWPASS_ALPHA:F = 0.875f

.field private static final TILTED_TIME_CONSTANT_MS:I = 0xc8

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field private final MAX_TRANSITION_TILT:[I

.field private final ROTATE_TO:[[I

.field private final SURFACE_ROTATIONS:[I

.field private final THRESHOLDS:[[[I

.field private mFilteredVector:[F

.field private mRotation:I

.field final synthetic this$0:Landroid/view/WindowOrientationListener;


# direct methods
.method constructor <init>(Landroid/view/WindowOrientationListener;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 163
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 183
    new-array v0, v4, [I

    fill-array-data v0, :array_c0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_ROTATIONS:[I

    .line 193
    new-array v0, v4, [[[I

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_cc

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_dc

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_e4

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_ec

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_f4

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_fc

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_104

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_10c

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_114

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_11c

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_124

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_12c

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_134

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_13c

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    .line 201
    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_144

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_14e

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_15a

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_166

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    .line 215
    new-array v0, v4, [I

    fill-array-data v0, :array_172

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    .line 273
    new-array v0, v5, [F

    fill-array-data v0, :array_17e

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    return-void

    .line 183
    nop

    :array_c0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 193
    :array_cc
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_d4
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_dc
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_e4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_ec
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data

    :array_f4
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    :array_fc
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_104
    .array-data 0x4
        0xf0t 0x0t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
    .end array-data

    :array_10c
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data

    :array_114
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_11c
    .array-data 0x4
        0x59t 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_124
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_12c
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_134
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_13c
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    .line 201
    :array_144
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_14e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_15a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_166
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 215
    :array_172
    .array-data 0x4
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
    .end array-data

    .line 273
    :array_17e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calculateNewRotation(II)V
    .registers 10
    .parameter "orientation"
    .parameter "tiltAngle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 317
    invoke-direct {p0, p1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->testThreshold(I)I

    move-result v2

    .line 318
    .local v2, row:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 350
    :cond_9
    :goto_9
    return-void

    .line 320
    :cond_a
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    iget v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v3, v3, v4

    aget v1, v3, v2

    .line 322
    .local v1, rotation:I
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_9

    .line 327
    if-nez v1, :cond_2e

    move v0, v6

    .line 328
    .local v0, allowed:Z
    :goto_1b
    if-nez v0, :cond_20

    .line 329
    packed-switch v1, :pswitch_data_5a

    .line 342
    :cond_20
    :goto_20
    if-eqz v0, :cond_9

    .line 348
    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 349
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_ROTATIONS:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/WindowOrientationListener;->onOrientationChanged(I)V

    goto :goto_9

    .end local v0           #allowed:Z
    :cond_2e
    move v0, v5

    .line 327
    goto :goto_1b

    .line 331
    .restart local v0       #allowed:Z
    :pswitch_30
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3c

    move v0, v6

    .line 332
    :goto_3b
    goto :goto_20

    :cond_3c
    move v0, v5

    .line 331
    goto :goto_3b

    .line 334
    :pswitch_3e
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4a

    move v0, v6

    .line 335
    :goto_49
    goto :goto_20

    :cond_4a
    move v0, v5

    .line 334
    goto :goto_49

    .line 337
    :pswitch_4c
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_58

    move v0, v6

    :goto_57
    goto :goto_20

    :cond_58
    move v0, v5

    goto :goto_57

    .line 329
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_3e
        :pswitch_4c
    .end packed-switch
.end method

.method private lowpassFilter(FFF)F
    .registers 6
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    .line 353
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private testThreshold(I)I
    .registers 11
    .parameter "orientation"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    iget v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v1, v3, v4

    .line 287
    .local v1, thresholdRanges:[[I
    const/4 v0, -0x1

    .line 288
    .local v0, row:I
    const/4 v2, 0x0

    .line 291
    .local v2, transition:Z
    iget v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    if-nez v3, :cond_3a

    .line 292
    aget-object v3, v1, v5

    aget v3, v3, v5

    if-lt p1, v3, :cond_1e

    aget-object v3, v1, v5

    aget v3, v3, v6

    if-ge p1, v3, :cond_1e

    .line 293
    const/4 v0, 0x0

    .line 311
    :cond_1d
    :goto_1d
    return v0

    .line 294
    :cond_1e
    aget-object v3, v1, v6

    aget v3, v3, v5

    if-lt p1, v3, :cond_2c

    aget-object v3, v1, v6

    aget v3, v3, v6

    if-ge p1, v3, :cond_2c

    .line 295
    const/4 v0, 0x1

    goto :goto_1d

    .line 296
    :cond_2c
    aget-object v3, v1, v7

    aget v3, v3, v5

    if-lt p1, v3, :cond_1d

    aget-object v3, v1, v7

    aget v3, v3, v6

    if-ge p1, v3, :cond_1d

    .line 297
    const/4 v0, 0x2

    goto :goto_1d

    .line 301
    :cond_3a
    aget-object v3, v1, v5

    aget v3, v3, v5

    if-lt p1, v3, :cond_48

    aget-object v3, v1, v5

    aget v3, v3, v6

    if-ge p1, v3, :cond_48

    .line 302
    const/4 v0, 0x0

    goto :goto_1d

    .line 303
    :cond_48
    aget-object v3, v1, v6

    aget v3, v3, v5

    if-lt p1, v3, :cond_56

    aget-object v3, v1, v6

    aget v3, v3, v6

    if-ge p1, v3, :cond_56

    .line 304
    const/4 v0, 0x1

    goto :goto_1d

    .line 305
    :cond_56
    aget-object v3, v1, v7

    aget v3, v3, v5

    if-lt p1, v3, :cond_64

    aget-object v3, v1, v7

    aget v3, v3, v6

    if-ge p1, v3, :cond_64

    .line 306
    const/4 v0, 0x2

    goto :goto_1d

    .line 307
    :cond_64
    aget-object v3, v1, v8

    aget v3, v3, v5

    if-lt p1, v3, :cond_1d

    aget-object v3, v1, v8

    aget v3, v3, v6

    if-ge p1, v3, :cond_1d

    .line 308
    const/4 v0, 0x3

    goto :goto_1d
.end method

.method private tiltAngle(FF)F
    .registers 5
    .parameter "z"
    .parameter "magnitude"

    .prologue
    .line 365
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 357
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method getCurrentRotation()I
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_ROTATIONS:[I

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 408
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 371
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v9, v11

    .line 372
    .local v6, x:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v9, v12

    .line 373
    .local v7, y:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v9, v13

    .line 374
    .local v8, z:F
    invoke-direct {p0, v6, v7, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v2

    .line 375
    .local v2, magnitude:F
    const v9, 0x411ce80a

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 376
    .local v1, deviation:F
    invoke-direct {p0, v8, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .line 378
    .local v5, tiltAngle:F
    const/high16 v0, 0x3f60

    .line 379
    .local v0, alpha:F
    const/high16 v9, 0x4282

    cmpl-float v9, v5, v9

    if-lez v9, :cond_29

    .line 404
    :goto_28
    return-void

    .line 381
    :cond_29
    const/high16 v9, 0x3f80

    cmpl-float v9, v1, v9

    if-lez v9, :cond_7a

    .line 382
    const/high16 v0, 0x3ee0

    .line 387
    :cond_31
    :goto_31
    iget-object v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    iget-object v10, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    aget v10, v10, v11

    invoke-direct {p0, v6, v10, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v6

    .end local v6           #x:F
    aput v6, v9, v11

    .line 388
    .restart local v6       #x:F
    iget-object v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    iget-object v10, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    aget v10, v10, v12

    invoke-direct {p0, v7, v10, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v7

    .end local v7           #y:F
    aput v7, v9, v12

    .line 389
    .restart local v7       #y:F
    iget-object v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    iget-object v10, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    aget v10, v10, v13

    invoke-direct {p0, v8, v10, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v8

    .end local v8           #z:F
    aput v8, v9, v13

    .line 390
    .restart local v8       #z:F
    invoke-direct {p0, v6, v7, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v2

    .line 391
    invoke-direct {p0, v8, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .line 397
    neg-float v9, v6

    float-to-double v9, v9

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x42652ee1

    mul-float v4, v9, v10

    .line 398
    .local v4, orientationAngle:F
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 400
    .local v3, orientation:I
    if-gez v3, :cond_72

    .line 401
    add-int/lit16 v3, v3, 0x168

    .line 403
    :cond_72
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {p0, v3, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->calculateNewRotation(II)V

    goto :goto_28

    .line 383
    .end local v3           #orientation:I
    .end local v4           #orientationAngle:F
    :cond_7a
    const/high16 v9, 0x4234

    cmpl-float v9, v5, v9

    if-lez v9, :cond_31

    .line 384
    const/high16 v0, 0x3f60

    goto :goto_31
.end method
