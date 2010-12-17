.class final Landroid/view/ViewRoot$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final MAX_ACCELERATION:F = 20.0f


# instance fields
.field absPosition:F

.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 3045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3068
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3069
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .registers 13
    .parameter "off"
    .parameter "time"
    .parameter "axis"

    .prologue
    .line 3094
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_56

    .line 3095
    const/high16 v6, 0x4316

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 3096
    .local v3, normTime:J
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    if-gez v6, :cond_1b

    .line 3098
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3099
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3100
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3101
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3103
    :cond_1b
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    .line 3121
    :goto_1e
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_48

    .line 3122
    iget-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 3123
    .local v1, delta:J
    iput-wide p2, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3124
    iget v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3125
    .local v0, acc:F
    cmp-long v6, v1, v3

    if-gez v6, :cond_7c

    .line 3127
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 3128
    .local v5, scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3f

    mul-float/2addr v0, v5

    .line 3132
    :cond_3f
    const/high16 v6, 0x41a0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_79

    move v6, v0

    :goto_46
    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3143
    .end local v0           #acc:F
    .end local v1           #delta:J
    .end local v5           #scale:F
    :cond_48
    :goto_48
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3144
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    return v6

    .line 3104
    .end local v3           #normTime:J
    :cond_56
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_76

    .line 3105
    neg-float v6, p1

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 3106
    .restart local v3       #normTime:J
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    if-lez v6, :cond_72

    .line 3108
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3109
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3110
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3111
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3113
    :cond_72
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    goto :goto_1e

    .line 3115
    .end local v3           #normTime:J
    :cond_76
    const-wide/16 v3, 0x0

    .restart local v3       #normTime:J
    goto :goto_1e

    .line 3132
    .restart local v0       #acc:F
    .restart local v1       #delta:J
    .restart local v5       #scale:F
    :cond_79
    const/high16 v6, 0x41a0

    goto :goto_46

    .line 3135
    .end local v5           #scale:F
    :cond_7c
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 3136
    .restart local v5       #scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8b

    div-float/2addr v0, v5

    .line 3140
    :cond_8b
    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-lez v6, :cond_95

    move v6, v0

    :goto_92
    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_48

    :cond_95
    const/high16 v6, 0x3f80

    goto :goto_92
.end method

.method generate(F)I
    .registers 10
    .parameter "precision"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 3159
    const/4 v2, 0x0

    .line 3160
    .local v2, movement:I
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3162
    :goto_9
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1d

    move v1, v7

    .line 3163
    .local v1, dir:I
    :goto_11
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_7a

    .line 3196
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_52

    .line 3197
    :cond_1c
    return v2

    .line 3162
    .end local v1           #dir:I
    :cond_1d
    const/4 v3, -0x1

    move v1, v3

    goto :goto_11

    .line 3168
    .restart local v1       #dir:I
    :pswitch_20
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_1c

    .line 3171
    add-int/2addr v2, v1

    .line 3172
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3173
    iput v7, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    goto :goto_9

    .line 3179
    :pswitch_2f
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_1c

    .line 3182
    add-int/2addr v2, v1

    .line 3183
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3184
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    if-lez v1, :cond_50

    const/high16 v4, -0x4000

    :goto_41
    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3185
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    .line 3186
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    goto :goto_9

    :cond_50
    move v4, v6

    .line 3184
    goto :goto_41

    .line 3199
    :cond_52
    add-int/2addr v2, v1

    .line 3200
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    if-ltz v1, :cond_74

    const/high16 v4, -0x4080

    :goto_59
    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3201
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    .line 3202
    iget v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3203
    .local v0, acc:F
    const v3, 0x3f8ccccd

    mul-float/2addr v0, v3

    .line 3204
    const/high16 v3, 0x41a0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_76

    move v3, v0

    :goto_71
    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_9

    .end local v0           #acc:F
    :cond_74
    move v4, v5

    .line 3200
    goto :goto_59

    .line 3204
    .restart local v0       #acc:F
    :cond_76
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_71

    .line 3163
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2f
    .end packed-switch
.end method

.method reset(I)V
    .registers 4
    .parameter "_step"

    .prologue
    .line 3075
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3076
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3077
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3078
    iput p1, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3079
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    .line 3080
    return-void
.end method
