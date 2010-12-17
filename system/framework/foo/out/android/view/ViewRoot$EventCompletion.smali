.class Landroid/view/ViewRoot$EventCompletion;
.super Landroid/os/Handler;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventCompletion"
.end annotation


# instance fields
.field final mIsPointer:Z

.field final mKeyEvent:Landroid/view/KeyEvent;

.field final mMotionEvent:Landroid/view/MotionEvent;

.field final mWindow:Landroid/view/IWindow;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V
    .registers 7
    .parameter "looper"
    .parameter "window"
    .parameter "key"
    .parameter "isPointer"
    .parameter "motion"

    .prologue
    .line 2846
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2847
    iput-object p2, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    .line 2848
    iput-object p3, p0, Landroid/view/ViewRoot$EventCompletion;->mKeyEvent:Landroid/view/KeyEvent;

    .line 2849
    iput-boolean p4, p0, Landroid/view/ViewRoot$EventCompletion;->mIsPointer:Z

    .line 2850
    iput-object p5, p0, Landroid/view/ViewRoot$EventCompletion;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2851
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot$EventCompletion;->sendEmptyMessage(I)Z

    .line 2852
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 2856
    iget-object v2, p0, Landroid/view/ViewRoot$EventCompletion;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v2, :cond_c

    .line 2858
    :try_start_4
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_51

    .line 2893
    :cond_b
    :goto_b
    return-void

    .line 2861
    :cond_c
    iget-boolean v2, p0, Landroid/view/ViewRoot$EventCompletion;->mIsPointer:Z

    if-eqz v2, :cond_36

    .line 2863
    iget-object v1, p0, Landroid/view/ViewRoot$EventCompletion;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2864
    .local v1, event:Landroid/view/MotionEvent;
    if-nez v1, :cond_29

    .line 2866
    :try_start_14
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_4f

    move-result-object v1

    .line 2869
    :goto_1c
    const/4 v0, 0x1

    .line 2873
    .local v0, didFinish:Z
    :goto_1d
    if-nez v0, :cond_b

    .line 2875
    :try_start_1f
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_b

    .line 2876
    :catch_27
    move-exception v2

    goto :goto_b

    .line 2871
    .end local v0           #didFinish:Z
    :cond_29
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    const/4 v2, 0x1

    move v0, v2

    .restart local v0       #didFinish:Z
    :goto_32
    goto :goto_1d

    .end local v0           #didFinish:Z
    :cond_33
    const/4 v2, 0x0

    move v0, v2

    goto :goto_32

    .line 2880
    .end local v1           #event:Landroid/view/MotionEvent;
    :cond_36
    iget-object v1, p0, Landroid/view/ViewRoot$EventCompletion;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2881
    .restart local v1       #event:Landroid/view/MotionEvent;
    if-nez v1, :cond_43

    .line 2883
    :try_start_3a
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_4d

    move-result-object v1

    goto :goto_b

    .line 2888
    :cond_43
    :try_start_43
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_4b

    goto :goto_b

    .line 2889
    :catch_4b
    move-exception v2

    goto :goto_b

    .line 2884
    :catch_4d
    move-exception v2

    goto :goto_b

    .line 2867
    :catch_4f
    move-exception v2

    goto :goto_1c

    .line 2859
    .end local v1           #event:Landroid/view/MotionEvent;
    :catch_51
    move-exception v2

    goto :goto_b
.end method
