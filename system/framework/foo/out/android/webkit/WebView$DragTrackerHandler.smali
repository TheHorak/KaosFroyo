.class Landroid/webkit/WebView$DragTrackerHandler;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragTrackerHandler"
.end annotation


# static fields
.field private static final ANIMATING_STATE:I = 0x1

.field private static final DRAGGING_STATE:I = 0x0

.field private static final FINISHED_STATE:I = 0x2


# instance fields
.field private mCurrStretchX:F

.field private mCurrStretchY:F

.field private mInterp:Landroid/graphics/Interpolator;

.field private final mMaxDX:F

.field private final mMaxDY:F

.field private final mMinDX:F

.field private final mMinDY:F

.field private final mProxy:Landroid/webkit/WebView$DragTracker;

.field private mSX:I

.field private mSY:I

.field private final mStartX:F

.field private final mStartY:F

.field private mState:I

.field private mXY:[F

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V
    .registers 13
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "proxy"

    .prologue
    .line 4429
    iput-object p1, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4421
    const/4 v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    .line 4430
    iput-object p4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    .line 4432
    invoke-virtual {p1}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v6

    invoke-static {p1}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)I

    move-result v7

    add-int v0, v6, v7

    .line 4433
    .local v0, docBottom:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    .line 4434
    .local v5, viewTop:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    add-int v2, v5, v6

    .line 4436
    .local v2, viewBottom:I
    iput p3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartY:F

    .line 4437
    neg-int v6, v5

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDY:F

    .line 4438
    sub-int v6, v0, v2

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDY:F

    .line 4445
    invoke-virtual {p1}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v1

    .line 4446
    .local v1, docRight:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    .line 4447
    .local v3, viewLeft:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    add-int v4, v3, v6

    .line 4448
    .local v4, viewRight:I
    iput p2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartX:F

    .line 4449
    neg-int v6, v3

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDX:F

    .line 4450
    sub-int v6, v1, v4

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDX:F

    .line 4452
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    .line 4453
    iget-object v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v6, p2, p3}, Landroid/webkit/WebView$DragTracker;->onStartDrag(FF)V

    .line 4456
    const v6, -0x1869f

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSX:I

    .line 4457
    return-void
.end method

.method private buildBitmap(II)V
    .registers 9
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 4566
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    .line 4567
    .local v3, w:I
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    .line 4568
    .local v2, h:I
    invoke-direct {p0}, Landroid/webkit/WebView$DragTrackerHandler;->offscreenBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4569
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4570
    .local v1, canvas:Landroid/graphics/Canvas;
    neg-int v4, p1

    int-to-float v4, v4

    neg-int v5, p2

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4571
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {v4, v1}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V

    .line 4577
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView$DragTracker;->onBitmapChange(Landroid/graphics/Bitmap;)V

    .line 4578
    return-void
.end method

.method private computeStretch(FFF)F
    .registers 7
    .parameter "delta"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 4460
    const/4 v0, 0x0

    .line 4461
    .local v0, stretch:F
    sub-float v1, p3, p2

    const/high16 v2, 0x4080

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    .line 4462
    cmpg-float v1, p1, p2

    if-gez v1, :cond_10

    .line 4463
    sub-float v0, p1, p2

    .line 4468
    :cond_f
    :goto_f
    return v0

    .line 4464
    :cond_10
    cmpl-float v1, p1, p3

    if-lez v1, :cond_f

    .line 4465
    sub-float v0, p1, p3

    goto :goto_f
.end method

.method private hiddenHeightOfTitleBar()I
    .registers 3

    .prologue
    .line 4518
    iget-object v0, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private offscreenBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .prologue
    .line 4525
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method


# virtual methods
.method public dragTo(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4472
    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartY:F

    sub-float/2addr v2, p2

    iget v3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDY:F

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDY:F

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView$DragTrackerHandler;->computeStretch(FFF)F

    move-result v1

    .line 4473
    .local v1, sy:F
    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartX:F

    sub-float/2addr v2, p1

    iget v3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDX:F

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDX:F

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView$DragTrackerHandler;->computeStretch(FFF)F

    move-result v0

    .line 4475
    .local v0, sx:F
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3f

    .line 4476
    const/4 v1, 0x0

    .line 4481
    :cond_21
    :goto_21
    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2d

    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3e

    .line 4482
    :cond_2d
    iput v0, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    .line 4483
    iput v1, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    .line 4488
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView$DragTracker;->onStretchChange(FF)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 4489
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 4492
    :cond_3e
    return-void

    .line 4477
    :cond_3f
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_21

    .line 4478
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4532
    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6a

    .line 4533
    :cond_f
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 4534
    .local v2, sx:I
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Landroid/webkit/WebView$DragTrackerHandler;->hiddenHeightOfTitleBar()I

    move-result v5

    sub-int v3, v4, v5

    .line 4535
    .local v3, sy:I
    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSX:I

    if-ne v4, v2, :cond_29

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSY:I

    if-eq v4, v3, :cond_30

    .line 4536
    :cond_29
    invoke-direct {p0, v2, v3}, Landroid/webkit/WebView$DragTrackerHandler;->buildBitmap(II)V

    .line 4537
    iput v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSX:I

    .line 4538
    iput v3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSY:I

    .line 4541
    :cond_30
    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    if-ne v4, v7, :cond_57

    .line 4542
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    iget-object v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v1

    .line 4543
    .local v1, result:Landroid/graphics/Interpolator$Result;
    sget-object v4, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v1, v4, :cond_45

    .line 4544
    const/4 v4, 0x2

    iput v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    move v4, v6

    .line 4562
    .end local v1           #result:Landroid/graphics/Interpolator$Result;
    .end local v2           #sx:I
    .end local v3           #sy:I
    :goto_44
    return v4

    .line 4547
    .restart local v1       #result:Landroid/graphics/Interpolator$Result;
    .restart local v2       #sx:I
    .restart local v3       #sy:I
    :cond_45
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    iget-object v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    aget v5, v5, v6

    iget-object v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView$DragTracker;->onStretchChange(FF)Z

    .line 4548
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 4552
    .end local v1           #result:Landroid/graphics/Interpolator$Result;
    :cond_57
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 4553
    .local v0, count:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4554
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView$DragTracker;->onDraw(Landroid/graphics/Canvas;)V

    .line 4555
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v4, v7

    .line 4556
    goto :goto_44

    .end local v0           #count:I
    .end local v2           #sx:I
    .end local v3           #sy:I
    :cond_6a
    move v4, v6

    .line 4562
    goto :goto_44
.end method

.method public isFinished()Z
    .registers 3

    .prologue
    .line 4514
    iget v0, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public stopDrag()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4495
    const/16 v0, 0xc8

    .line 4496
    .local v0, DURATION:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    .line 4497
    .local v2, now:I
    new-instance v4, Landroid/graphics/Interpolator;

    invoke-direct {v4, v8}, Landroid/graphics/Interpolator;-><init>(I)V

    iput-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    .line 4498
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    iget v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    aput v5, v4, v6

    .line 4499
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    iget v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    aput v5, v4, v7

    .line 4501
    const/4 v4, 0x4

    new-array v1, v4, [F

    fill-array-data v1, :array_3a

    .line 4502
    .local v1, blend:[F
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    iget-object v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    invoke-virtual {v4, v6, v2, v5, v1}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 4503
    new-array v3, v8, [F

    fill-array-data v3, :array_46

    .line 4504
    .local v3, zerozero:[F
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    add-int/lit16 v5, v2, 0xc8

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 4505
    iput v7, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    .line 4510
    return-void

    .line 4501
    :array_3a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4503
    :array_46
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
