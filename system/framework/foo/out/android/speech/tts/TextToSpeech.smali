.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I

.field public static final SUCCESS:I


# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Landroid/speech/tts/ITts;

.field private mITtscallback:Landroid/speech/tts/ITtsCallback;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    .line 383
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    .line 384
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 385
    const-string v0, ""

    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 386
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 387
    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 406
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 407
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 408
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 410
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    .line 411
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, "rate"

    aput-object v1, v0, v2

    .line 412
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    .line 413
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "country"

    aput-object v2, v0, v1

    .line 414
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "variant"

    aput-object v2, v0, v1

    .line 415
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "streamType"

    aput-object v2, v0, v1

    .line 416
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "utteranceId"

    aput-object v2, v0, v1

    .line 417
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "engine"

    aput-object v2, v0, v1

    .line 418
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "pitch"

    aput-object v2, v0, v1

    .line 423
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v3, v0, v1

    .line 424
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, ""

    aput-object v3, v0, v4

    .line 425
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v3, v0, v1

    .line 426
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v3, v0, v1

    .line 427
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 429
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v3, v0, v1

    .line 430
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v3, v0, v1

    .line 431
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "100"

    aput-object v2, v0, v1

    .line 433
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 434
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object p1
.end method

.method private initTts()V
    .registers 5

    .prologue
    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 441
    new-instance v1, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_TTS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.TTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 471
    return-void
.end method

.method private resetCachedParams()V
    .registers 4

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1276
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1277
    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 668
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 670
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 694
    :goto_d
    return v1

    .line 673
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 674
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 675
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 677
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 679
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 680
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 694
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 681
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 683
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 685
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 686
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 695
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 687
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 689
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 691
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 692
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 621
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 623
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 647
    :goto_d
    return v1

    .line 626
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 627
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 628
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 632
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 633
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 634
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 636
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 638
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 639
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 648
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 640
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 642
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 644
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 645
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 564
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 566
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 590
    :goto_d
    return v1

    .line 569
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 570
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 571
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 575
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 576
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 590
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 577
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 579
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 581
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 582
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 591
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 583
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 585
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 587
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 588
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 517
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 519
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 543
    :goto_d
    return v1

    .line 522
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 523
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 524
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 528
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 529
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 543
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 530
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 532
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 534
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 535
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 544
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 536
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 538
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 540
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 541
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public areDefaultsEnforced()Z
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - areDefaultsEnforced"

    .line 1416
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, defaultsEnforced:Z
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1419
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3f

    move v1, v0

    .line 1442
    .end local v0           #defaultsEnforced:Z
    .local v1, defaultsEnforced:I
    :goto_c
    return v1

    .line 1422
    .end local v1           #defaultsEnforced:I
    .restart local v0       #defaultsEnforced:Z
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->areDefaultsEnforced()Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_12} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_42

    move-result v0

    .line 1442
    :try_start_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_3f

    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_c

    .line 1423
    .end local v1           #defaultsEnforced:I
    :catch_16
    move-exception v4

    move-object v2, v4

    .line 1425
    .local v2, e:Landroid/os/RemoteException;
    :try_start_18
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1427
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1428
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_56

    .line 1442
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3f

    .end local v2           #e:Landroid/os/RemoteException;
    :goto_29
    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_c

    .line 1429
    .end local v1           #defaultsEnforced:I
    :catch_2b
    move-exception v4

    move-object v2, v4

    .line 1431
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_2d
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1433
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1434
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_56

    .line 1442
    :try_start_3d
    monitor-exit v3

    goto :goto_29

    .line 1444
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catchall_3f
    move-exception v4

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v4

    .line 1435
    :catch_42
    move-exception v4

    move-object v2, v4

    .line 1437
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_44
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1439
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1440
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_56

    .line 1442
    :try_start_54
    monitor-exit v3

    goto :goto_29

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_56
    move-exception v4

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_3f

    goto :goto_29
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    .line 1377
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1378
    :try_start_5
    const-string v1, ""

    .line 1379
    .local v1, engineName:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_e

    .line 1380
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2b

    move-object v2, v1

    .line 1403
    .end local v1           #engineName:Ljava/lang/String;
    .local v2, engineName:Ljava/lang/String;
    :goto_d
    return-object v2

    .line 1383
    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :cond_e
    :try_start_e
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->getDefaultEngine()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_13} :catch_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_42

    move-result-object v1

    .line 1403
    :try_start_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_2b

    :goto_15
    move-object v2, v1

    .end local v1           #engineName:Ljava/lang/String;
    .restart local v2       #engineName:Ljava/lang/String;
    goto :goto_d

    .line 1384
    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_17
    move-exception v4

    move-object v0, v4

    .line 1386
    .local v0, e:Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1388
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1389
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_56

    .line 1403
    :try_start_29
    monitor-exit v3

    goto :goto_15

    .line 1405
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #engineName:Ljava/lang/String;
    :catchall_2b
    move-exception v4

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v4

    .line 1390
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_2e
    move-exception v4

    move-object v0, v4

    .line 1392
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_30
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1394
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1395
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_56

    .line 1403
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2b

    goto :goto_15

    .line 1396
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_42
    move-exception v4

    move-object v0, v4

    .line 1398
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_44
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1400
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1401
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_56

    .line 1403
    :try_start_54
    monitor-exit v3

    goto :goto_15

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_56
    move-exception v4

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_2b

    goto :goto_15
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    const-string v2, "TextToSpeech.java - getLanguage"

    .line 1122
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1123
    :try_start_8
    iget-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v3, :cond_f

    .line 1124
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_78

    move-object v2, v8

    .line 1159
    :goto_e
    return-object v2

    .line 1128
    :cond_f
    :try_start_f
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_39

    .line 1129
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v3}, Landroid/speech/tts/ITts;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_36

    array-length v3, v1

    if-ne v3, v5, :cond_36

    .line 1131
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_33} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_33} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_33} :catch_7b

    :try_start_33
    monitor-exit v2

    move-object v2, v3

    goto :goto_e

    .line 1133
    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_78

    move-object v2, v8

    goto :goto_e

    .line 1136
    .end local v1           #locStrings:[Ljava/lang/String;
    :cond_39
    :try_start_39
    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4d} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_4d} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_4d} :catch_7b

    :try_start_4d
    monitor-exit v2

    move-object v2, v3

    goto :goto_e

    .line 1140
    :catch_50
    move-exception v3

    move-object v0, v3

    .line 1142
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1144
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1145
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 1159
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_62
    monitor-exit v2

    move-object v2, v8

    goto :goto_e

    .line 1146
    :catch_65
    move-exception v3

    move-object v0, v3

    .line 1148
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1150
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1151
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_62

    .line 1160
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_78
    move-exception v3

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_4d .. :try_end_7a} :catchall_78

    throw v3

    .line 1152
    :catch_7b
    move-exception v3

    move-object v0, v3

    .line 1154
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7d
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1156
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1157
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_78

    goto :goto_62
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 11
    .parameter "loc"

    .prologue
    const-string v3, "TextToSpeech.java - isLanguageAvailable"

    .line 1174
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1175
    const/4 v1, -0x2

    .line 1176
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1177
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_38

    move v2, v1

    .line 1201
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 1180
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_63
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_20} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_20} :catch_4f

    move-result v1

    .line 1201
    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_38

    :goto_22
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 1182
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_24
    move-exception v4

    move-object v0, v4

    .line 1184
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1186
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1187
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_63

    .line 1201
    :try_start_36
    monitor-exit v3

    goto :goto_22

    .line 1203
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_38
    move-exception v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v4

    .line 1188
    :catch_3b
    move-exception v4

    move-object v0, v4

    .line 1190
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3d
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1192
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1193
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_63

    .line 1201
    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_38

    goto :goto_22

    .line 1194
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4f
    move-exception v4

    move-object v0, v4

    .line 1196
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_51
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1198
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1199
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_63

    .line 1201
    :try_start_61
    monitor-exit v3

    goto :goto_22

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_63
    move-exception v4

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_38

    goto :goto_22
.end method

.method public isSpeaking()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - isSpeaking"

    .line 885
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_6
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_d

    .line 887
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3e

    move v1, v4

    .line 910
    :goto_c
    return v1

    .line 890
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v2}, Landroid/speech/tts/ITts;->isSpeaking()Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_12} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_41

    move-result v2

    :try_start_13
    monitor-exit v1

    move v1, v2

    goto :goto_c

    .line 891
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 895
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 896
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 910
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_28
    monitor-exit v1

    move v1, v4

    goto :goto_c

    .line 897
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 899
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 901
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 902
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 911
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 903
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 905
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 907
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 908
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - playEarcon"

    .line 783
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 784
    const/4 v2, -0x1

    .line 785
    .local v2, result:I
    :try_start_6
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_d

    .line 786
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_5b

    move v3, v2

    .line 820
    .end local v2           #result:I
    .local v3, result:I
    :goto_c
    return v3

    .line 789
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_d
    if-eqz p3, :cond_35

    :try_start_f
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35

    .line 790
    const-string v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 791
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 792
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 794
    :cond_25
    const-string v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 795
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 796
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 799
    .end local v1           #extra:Ljava/lang/String;
    :cond_35
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3d} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3d} :catch_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_3d} :catch_75

    move-result v2

    .line 819
    :try_start_3e
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_5b

    :goto_42
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_c

    .line 800
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_44
    move-exception v5

    move-object v0, v5

    .line 802
    .local v0, e:Landroid/os/RemoteException;
    :try_start_46
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 804
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 805
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_8c

    .line 819
    :try_start_56
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4

    goto :goto_42

    .line 822
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_5b
    move-exception v5

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5b

    throw v5

    .line 806
    :catch_5e
    move-exception v5

    move-object v0, v5

    .line 808
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_60
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 810
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 811
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_8c

    .line 819
    :try_start_70
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_5b

    goto :goto_42

    .line 812
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_75
    move-exception v5

    move-object v0, v5

    .line 814
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_77
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 816
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 817
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_8c

    .line 819
    :try_start_87
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4

    goto :goto_42

    .line 819
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_8c
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_5b

    goto :goto_42
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .registers 16
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TextToSpeech.java - playSilence"

    .line 841
    iget-object v10, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v10

    .line 842
    const/4 v8, -0x1

    .line 843
    .local v8, result:I
    :try_start_6
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v0, :cond_d

    .line 844
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_48

    move v9, v8

    .line 873
    .end local v8           #result:I
    .local v9, result:I
    :goto_c
    return v9

    .line 847
    .end local v9           #result:I
    .restart local v8       #result:I
    :cond_d
    if-eqz p4, :cond_25

    :try_start_f
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 848
    const-string v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 849
    .local v7, extra:Ljava/lang/String;
    if-eqz v7, :cond_25

    .line 850
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v7, v0, v1

    .line 853
    .end local v7           #extra:Ljava/lang/String;
    :cond_25
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITts;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_73
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_30} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_30} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_30} :catch_5f

    move-result v8

    .line 873
    :try_start_31
    monitor-exit v10
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_48

    :goto_32
    move v9, v8

    .end local v8           #result:I
    .restart local v9       #result:I
    goto :goto_c

    .line 854
    .end local v9           #result:I
    .restart local v8       #result:I
    :catch_34
    move-exception v0

    move-object v6, v0

    .line 856
    .local v6, e:Landroid/os/RemoteException;
    :try_start_36
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 859
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_73

    .line 873
    :try_start_46
    monitor-exit v10

    goto :goto_32

    .line 875
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_48
    move-exception v0

    monitor-exit v10
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    throw v0

    .line 860
    :catch_4b
    move-exception v0

    move-object v6, v0

    .line 862
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_4d
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 865
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_73

    .line 873
    :try_start_5d
    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_48

    goto :goto_32

    .line 866
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_5f
    move-exception v0

    move-object v6, v0

    .line 868
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_61
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 871
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_73

    .line 873
    :try_start_71
    monitor-exit v10

    goto :goto_32

    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catchall_73
    move-exception v0

    monitor-exit v10
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_48

    goto :goto_32
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .registers 8
    .parameter "enginePackageName"

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    .line 1336
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1337
    const/4 v1, -0x1

    .line 1338
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1339
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_32

    move v2, v1

    .line 1365
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 1342
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4, p1}, Landroid/speech/tts/ITts;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v1

    .line 1343
    if-nez v1, :cond_1b

    .line 1344
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object p1, v4, v5
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1b} :catch_35
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1b} :catch_49

    .line 1365
    :cond_1b
    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_32

    :goto_1c
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 1346
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_1e
    move-exception v4

    move-object v0, v4

    .line 1348
    .local v0, e:Landroid/os/RemoteException;
    :try_start_20
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1350
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1351
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_5d

    .line 1365
    :try_start_30
    monitor-exit v3

    goto :goto_1c

    .line 1367
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v4

    .line 1352
    :catch_35
    move-exception v4

    move-object v0, v4

    .line 1354
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_37
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1356
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1357
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_5d

    .line 1365
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_32

    goto :goto_1c

    .line 1358
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_49
    move-exception v4

    move-object v0, v4

    .line 1360
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4b
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1362
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1363
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_5d

    .line 1365
    :try_start_5b
    monitor-exit v3

    goto :goto_1c

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_5d
    move-exception v4

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_32

    goto :goto_1c
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .registers 12
    .parameter "loc"

    .prologue
    const-string v6, ""

    const-string v6, "TextToSpeech.java - setLanguage"

    .line 1063
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1064
    const/4 v3, -0x2

    .line 1065
    .local v3, result:I
    :try_start_8
    iget-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v7, :cond_f

    .line 1066
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_59

    move v4, v3

    .line 1109
    .end local v3           #result:I
    .local v4, result:I
    :goto_e
    return v4

    .line 1069
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 1076
    .local v5, variant:Ljava/lang/String;
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v7, v2, v0, v5, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1077
    if-ltz v3, :cond_3a

    .line 1078
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v2, v7, v8

    .line 1079
    const/4 v7, 0x1

    if-lt v3, v7, :cond_3d

    .line 1080
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v0, v7, v8

    .line 1084
    :goto_32
    const/4 v7, 0x2

    if-lt v3, v7, :cond_5c

    .line 1085
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v5, v7, v8
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3a} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3a} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_3a} :catch_78

    .line 1109
    :cond_3a
    :goto_3a
    :try_start_3a
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_59

    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :goto_3b
    move v4, v3

    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_e

    .line 1082
    .end local v4           #result:I
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v3       #result:I
    .restart local v5       #variant:Ljava/lang/String;
    :cond_3d
    :try_start_3d
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_44} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_44} :catch_78

    goto :goto_32

    .line 1090
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_45
    move-exception v7

    move-object v1, v7

    .line 1092
    .local v1, e:Landroid/os/RemoteException;
    :try_start_47
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1094
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1095
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_8c

    .line 1109
    :try_start_57
    monitor-exit v6

    goto :goto_3b

    .line 1111
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_59
    move-exception v7

    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw v7

    .line 1087
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v5       #variant:Ljava/lang/String;
    :cond_5c
    :try_start_5c
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_63} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_63} :catch_78

    goto :goto_3a

    .line 1096
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_64
    move-exception v7

    move-object v1, v7

    .line 1098
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_66
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1100
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1101
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_8c

    .line 1109
    :try_start_76
    monitor-exit v6
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_59

    goto :goto_3b

    .line 1102
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_78
    move-exception v7

    move-object v1, v7

    .line 1104
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_7a
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "IllegalStateException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1106
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1107
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8a
    .catchall {:try_start_7a .. :try_end_8a} :catchall_8c

    .line 1109
    :try_start_8a
    monitor-exit v6

    goto :goto_3b

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_8c
    move-exception v7

    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_59

    goto :goto_3b
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 9
    .parameter "listener"

    .prologue
    const-string v3, "TextToSpeech.java - registerCallback"

    .line 1289
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1290
    const/4 v1, -0x1

    .line 1291
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1292
    monitor-exit v3

    move v2, v1

    .line 1322
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 1294
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    new-instance v4, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v4, p0, p1}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_35

    .line 1302
    :try_start_14
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1d} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1d} :catch_4c

    move-result v1

    .line 1322
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_35

    :goto_1f
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 1303
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_21
    move-exception v4

    move-object v0, v4

    .line 1305
    .local v0, e:Landroid/os/RemoteException;
    :try_start_23
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1307
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1308
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_60

    .line 1322
    :try_start_33
    monitor-exit v3

    goto :goto_1f

    .line 1324
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_35
    move-exception v4

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v4

    .line 1309
    :catch_38
    move-exception v4

    move-object v0, v4

    .line 1311
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3a
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1313
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1314
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_60

    .line 1322
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_35

    goto :goto_1f

    .line 1315
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4c
    move-exception v4

    move-object v0, v4

    .line 1317
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4e
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1319
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1320
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_60

    .line 1322
    :try_start_5e
    monitor-exit v3

    goto :goto_1f

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_60
    move-exception v4

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_35

    goto :goto_1f
.end method

.method public setPitch(F)I
    .registers 10
    .parameter "pitch"

    .prologue
    const-string v4, "TextToSpeech.java - setPitch"

    .line 1016
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1017
    const/4 v2, -0x1

    .line 1018
    .local v2, result:I
    :try_start_6
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_d

    .line 1019
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_38

    move v3, v2

    .line 1042
    .end local v2           #result:I
    .local v3, result:I
    :goto_c
    return v3

    .line 1024
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_d
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_21

    .line 1025
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 1026
    .local v1, p:I
    :try_start_16
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_4f
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_3b

    .line 1027
    const/4 v2, 0x0

    .line 1042
    .end local v1           #p:I
    :cond_21
    :try_start_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_38

    :goto_22
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_c

    .line 1029
    .end local v3           #result:I
    .restart local v1       #p:I
    .restart local v2       #result:I
    :catch_24
    move-exception v5

    move-object v0, v5

    .line 1031
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_26
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1033
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1034
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_4f

    .line 1042
    :try_start_36
    monitor-exit v4

    goto :goto_22

    .line 1044
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #p:I
    :catchall_38
    move-exception v5

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v5

    .line 1035
    .restart local v1       #p:I
    :catch_3b
    move-exception v5

    move-object v0, v5

    .line 1037
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3d
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1039
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1040
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4f

    .line 1042
    :try_start_4d
    monitor-exit v4

    goto :goto_22

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_4f
    move-exception v5

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_38

    goto :goto_22
.end method

.method public setSpeechRate(F)I
    .registers 11
    .parameter "speechRate"

    .prologue
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - setSpeechRate"

    .line 967
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 968
    const/4 v2, -0x1

    .line 969
    .local v2, result:I
    :try_start_7
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_e

    .line 970
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3d

    move v3, v2

    .line 997
    .end local v2           #result:I
    .local v3, result:I
    :goto_d
    return v3

    .line 973
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_e
    cmpl-float v5, p1, v8

    if-lez v5, :cond_24

    .line 974
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 975
    .local v1, rate:I
    :try_start_16
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_54
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1f} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1f} :catch_40

    .line 978
    cmpl-float v5, p1, v8

    if-lez v5, :cond_27

    .line 979
    const/4 v2, 0x0

    .line 997
    .end local v1           #rate:I
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_3d

    :goto_25
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_d

    .line 981
    .end local v3           #result:I
    .restart local v1       #rate:I
    .restart local v2       #result:I
    :cond_27
    const/4 v2, -0x1

    goto :goto_24

    .line 984
    :catch_29
    move-exception v5

    move-object v0, v5

    .line 986
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2b
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 988
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 989
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_54

    .line 997
    :try_start_3b
    monitor-exit v4

    goto :goto_25

    .line 999
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #rate:I
    :catchall_3d
    move-exception v5

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v5

    .line 990
    .restart local v1       #rate:I
    :catch_40
    move-exception v5

    move-object v0, v5

    .line 992
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_42
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 994
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 995
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_54

    .line 997
    :try_start_52
    monitor-exit v4

    goto :goto_25

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_54
    move-exception v5

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_3d

    goto :goto_25
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 486
    :goto_7
    return-void

    .line 482
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - speak"

    .line 718
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 719
    const/4 v2, -0x1

    .line 720
    .local v2, result:I
    :try_start_6
    const-string v5, "TTS received: "

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_12

    .line 722
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_71

    move v3, v2

    .line 760
    .end local v2           #result:I
    .local v3, result:I
    :goto_11
    return v3

    .line 725
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_12
    if-eqz p3, :cond_4a

    :try_start_14
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 726
    const-string v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 728
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 730
    :cond_2a
    const-string v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 731
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 732
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 734
    :cond_3a
    const-string v5, "engine"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 735
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_4a

    .line 736
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .line 739
    .end local v1           #extra:Ljava/lang/String;
    :cond_4a
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_a2
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_53} :catch_5a
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_53} :catch_74
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_53} :catch_8b

    move-result v2

    .line 759
    :try_start_54
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_71

    :goto_58
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_11

    .line 740
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_5a
    move-exception v5

    move-object v0, v5

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5c
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 744
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 745
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_a2

    .line 759
    :try_start_6c
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4

    goto :goto_58

    .line 762
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_71
    move-exception v5

    monitor-exit v4
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_71

    throw v5

    .line 746
    :catch_74
    move-exception v5

    move-object v0, v5

    .line 748
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_76
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 750
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 751
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_a2

    .line 759
    :try_start_86
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_71

    goto :goto_58

    .line 752
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_8b
    move-exception v5

    move-object v0, v5

    .line 754
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_8d
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 756
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 757
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_a2

    .line 759
    :try_start_9d
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4

    goto :goto_58

    .line 759
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_a2
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_71

    goto :goto_58
.end method

.method public stop()I
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - stop"

    .line 922
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 923
    const/4 v1, -0x1

    .line 924
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 925
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2c

    move v2, v1

    .line 948
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 928
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/speech/tts/ITts;->stop(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_14} :catch_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_43

    move-result v1

    .line 948
    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2c

    :goto_16
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 929
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 931
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 933
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 934
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_57

    .line 948
    :try_start_2a
    monitor-exit v3

    goto :goto_16

    .line 950
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2c
    move-exception v4

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v4

    .line 935
    :catch_2f
    move-exception v4

    move-object v0, v4

    .line 937
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_31
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 939
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 940
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_57

    .line 948
    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2c

    goto :goto_16

    .line 941
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_43
    move-exception v4

    move-object v0, v4

    .line 943
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 945
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 946
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_57

    .line 948
    :try_start_55
    monitor-exit v3

    goto :goto_16

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_57
    move-exception v4

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_2c

    goto :goto_16
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 13
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - synthesizeToFile"

    .line 1224
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1225
    const/4 v2, -0x1

    .line 1226
    .local v2, result:I
    :try_start_7
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_e

    .line 1227
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_63

    move v3, v2

    .line 1263
    .end local v2           #result:I
    .local v3, result:I
    :goto_d
    return v3

    .line 1230
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_e
    if-eqz p2, :cond_36

    :try_start_10
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 1232
    const-string v5, "utteranceId"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1233
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 1234
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 1236
    :cond_26
    const-string v5, "engine"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1237
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 1238
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .line 1241
    .end local v1           #extra:Ljava/lang/String;
    :cond_36
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, p3}, Landroid/speech/tts/ITts;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_94
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3f} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_3f} :catch_66
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_3f} :catch_7d

    move-result v5

    if-eqz v5, :cond_49

    move v2, v8

    .line 1262
    :goto_43
    :try_start_43
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_63

    :goto_47
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_d

    .line 1241
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_49
    const/4 v5, -0x1

    move v2, v5

    goto :goto_43

    .line 1243
    :catch_4c
    move-exception v5

    move-object v0, v5

    .line 1245
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4e
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1247
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1248
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_94

    .line 1262
    :try_start_5e
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4

    goto :goto_47

    .line 1265
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_63
    move-exception v5

    monitor-exit v4
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_63

    throw v5

    .line 1249
    :catch_66
    move-exception v5

    move-object v0, v5

    .line 1251
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_68
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1253
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1254
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_94

    .line 1262
    :try_start_78
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_63

    goto :goto_47

    .line 1255
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_7d
    move-exception v5

    move-object v0, v5

    .line 1257
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7f
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1259
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1260
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_94

    .line 1262
    :try_start_8f
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4

    goto :goto_47

    .line 1262
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_94
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_63

    goto :goto_47
.end method
