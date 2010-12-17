.class final Landroid/webkit/JWebCoreJavaBridge;
.super Landroid/os/Handler;
.source "JWebCoreJavaBridge.java"


# static fields
.field private static final FUNCPTR_MESSAGE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit-timers"

.field static final REFRESH_PLUGINS:I = 0x64

.field private static final TIMER_MESSAGE:I = 0x1


# instance fields
.field private mCurrentMainWebView:Landroid/webkit/WebView;

.field private mHasDeferredTimers:Z

.field private mHasInstantTimer:Z

.field private mNativeBridge:I

.field private mPauseTimerRefCount:I

.field private mTimerPaused:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeConstructor()V

    .line 58
    return-void
.end method

.method private cookies(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 192
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cookiesEnabled()Z
    .registers 2

    .prologue
    .line 199
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method private fireSharedTimer()V
    .registers 3

    .prologue
    .line 85
    new-instance v0, Landroid/webkit/PerfChecker;

    invoke-direct {v0}, Landroid/webkit/PerfChecker;-><init>()V

    .line 87
    .local v0, checker:Landroid/webkit/PerfChecker;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 88
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->sharedTimerFired()V

    .line 89
    const-string v1, "sharedTimer"

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private getKeyStrengthList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    invoke-static {}, Landroid/webkit/CertTool;->getKeyStrengthList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginDirectories()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginSharedDataDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginSharedDataDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSignedPublicKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "index"
    .parameter "challenge"
    .parameter "url"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mCurrentMainWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 262
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mCurrentMainWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/webkit/CertTool;->getSignedPublicKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1b

    move-result-object v0

    .line 266
    :goto_f
    monitor-exit p0

    return-object v0

    .line 265
    :cond_11
    :try_start_11
    const-string v0, "webkit-timers"

    const-string v1, "There is no active WebView for getSignedPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, ""
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 259
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeServiceFuncPtrQueue()V
.end method

.method private native nativeUpdatePluginDirectories([Ljava/lang/String;Z)V
.end method

.method private setCookies(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "url"
    .parameter "value"

    .prologue
    const/4 v7, -0x1

    .line 163
    const-string v6, "\r"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 165
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 166
    .local v5, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 168
    .local v1, i:I
    :goto_1b
    if-eq v1, v7, :cond_4d

    if-ge v1, v5, :cond_4d

    .line 169
    const/16 v6, 0xd

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 170
    .local v3, ir:I
    const/16 v6, 0xa

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 171
    .local v2, in:I
    if-ne v3, v7, :cond_3a

    move v4, v2

    .line 173
    .local v4, newi:I
    :goto_2e
    if-le v4, v1, :cond_44

    .line 174
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 179
    :cond_37
    add-int/lit8 v1, v4, 0x1

    .line 180
    goto :goto_1b

    .line 171
    .end local v4           #newi:I
    :cond_3a
    if-ne v2, v7, :cond_3e

    move v4, v3

    goto :goto_2e

    :cond_3e
    if-ge v3, v2, :cond_42

    move v4, v3

    goto :goto_2e

    :cond_42
    move v4, v2

    goto :goto_2e

    .line 175
    .restart local v4       #newi:I
    :cond_44
    if-ne v4, v7, :cond_37

    .line 176
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 181
    .end local v2           #in:I
    .end local v3           #ir:I
    .end local v4           #newi:I
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 183
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v5           #size:I
    :cond_51
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private setSharedTimer(J)V
    .registers 7
    .parameter "timemillis"

    .prologue
    const/4 v3, 0x1

    .line 223
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_16

    .line 228
    iget-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    if-eqz v1, :cond_c

    .line 239
    :goto_b
    return-void

    .line 231
    :cond_c
    iput-boolean v3, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 232
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 236
    .end local v0           #msg:Landroid/os/Message;
    :cond_16
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b
.end method

.method private native sharedTimerFired()V
.end method

.method private signalServiceFuncPtrQueue()V
    .registers 3

    .prologue
    .line 122
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method private stopSharedTimer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->removeMessages(I)V

    .line 249
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 250
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 251
    return-void
.end method


# virtual methods
.method public native addPackageName(Ljava/lang/String;)V
.end method

.method public native addPackageNames(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeFinalize()V

    .line 63
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2c

    .line 118
    :goto_5
    return-void

    .line 102
    :sswitch_6
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-eqz v0, :cond_e

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    goto :goto_5

    .line 105
    :cond_e
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    goto :goto_5

    .line 110
    :sswitch_12
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeServiceFuncPtrQueue()V

    goto :goto_5

    .line 113
    :sswitch_16
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdatePluginDirectories([Ljava/lang/String;Z)V

    goto :goto_5

    .line 100
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_12
        0x64 -> :sswitch_16
    .end sparse-switch
.end method

.method public pause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 132
    iget v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    if-nez v0, :cond_d

    .line 133
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 136
    :cond_d
    return-void
.end method

.method declared-synchronized removeActiveWebView(Landroid/webkit/WebView;)V
    .registers 3
    .parameter "webview"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mCurrentMainWebView:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eq v0, p1, :cond_7

    .line 79
    :goto_5
    monitor-exit p0

    return-void

    .line 78
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mCurrentMainWebView:Landroid/webkit/WebView;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_5

    .line 74
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native removePackageName(Ljava/lang/String;)V
.end method

.method public resume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    iget v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 143
    iput-boolean v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    .line 144
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    if-eqz v0, :cond_15

    .line 145
    iput-boolean v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 146
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    .line 149
    :cond_15
    return-void
.end method

.method declared-synchronized setActiveWebView(Landroid/webkit/WebView;)V
    .registers 3
    .parameter "webview"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mCurrentMainWebView:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    .line 71
    :goto_5
    monitor-exit p0

    return-void

    .line 70
    :cond_7
    :try_start_7
    iput-object p1, p0, Landroid/webkit/JWebCoreJavaBridge;->mCurrentMainWebView:Landroid/webkit/WebView;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    goto :goto_5

    .line 66
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native setCacheSize(I)V
.end method

.method public native setNetworkOnLine(Z)V
.end method

.method public native setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method
