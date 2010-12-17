.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final DISABLE_EXPAND:I = 0x1

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x4

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x2

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/IStatusBar;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 65
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    .line 68
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;II)Landroid/os/IBinder;
    .registers 7
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/app/IStatusBar;->addIcon(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/IBinder;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 122
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public collapse()V
    .registers 3

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1}, Landroid/app/IStatusBar;->deactivate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 105
    return-void

    .line 101
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disable(I)V
    .registers 6
    .parameter "what"

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/app/IStatusBar;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 81
    return-void

    .line 77
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public expand()V
    .registers 3

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1}, Landroid/app/IStatusBar;->activate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 93
    return-void

    .line 89
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeIcon(Landroid/os/IBinder;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->removeIcon(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 144
    return-void

    .line 140
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toggle()V
    .registers 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1}, Landroid/app/IStatusBar;->toggle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 117
    return-void

    .line 113
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateIcon(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 12
    .parameter "key"
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IStatusBar;->updateIcon(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 135
    return-void

    .line 131
    :catch_10
    move-exception v0

    move-object v6, v0

    .line 133
    .local v6, ex:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
