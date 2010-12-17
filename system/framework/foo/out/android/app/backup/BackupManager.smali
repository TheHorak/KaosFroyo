.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private static checkServiceBinder()V
    .registers 1

    .prologue
    .line 60
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_10

    .line 61
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 64
    :cond_10
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 107
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 108
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 110
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 115
    :cond_c
    :goto_c
    return-void

    .line 111
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method


# virtual methods
.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .registers 8

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, session:Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 164
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_1c

    .line 166
    :try_start_8
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, transport:Ljava/lang/String;
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v5, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 168
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1d

    .end local v2           #session:Landroid/app/backup/RestoreSession;
    .local v3, session:Landroid/app/backup/RestoreSession;
    move-object v2, v3

    .line 173
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .end local v4           #transport:Ljava/lang/String;
    .restart local v2       #session:Landroid/app/backup/RestoreSession;
    :cond_1c
    :goto_1c
    return-object v2

    .line 169
    :catch_1d
    move-exception v5

    move-object v1, v5

    .line 170
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "BackupManager"

    const-string v6, "beginRestoreSession() couldn\'t connect"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public dataChanged()V
    .registers 4

    .prologue
    .line 85
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 86
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_12

    .line 88
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 93
    :cond_12
    :goto_12
    return-void

    .line 89
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .registers 10
    .parameter "observer"

    .prologue
    .line 136
    const/4 v2, -0x1

    .line 137
    .local v2, result:I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 138
    sget-object v6, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v6, :cond_2b

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, session:Landroid/app/backup/RestoreSession;
    :try_start_9
    sget-object v6, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, transport:Ljava/lang/String;
    sget-object v6, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v5}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 143
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_2c

    .line 144
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .local v4, session:Landroid/app/backup/RestoreSession;
    :try_start_1c
    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_45

    move-result v2

    .line 148
    if-eqz v4, :cond_2b

    .line 149
    invoke-virtual {v4}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 153
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .end local v5           #transport:Ljava/lang/String;
    :cond_2b
    :goto_2b
    return v2

    .line 145
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    :catch_2c
    move-exception v6

    move-object v1, v6

    .line 146
    .local v1, e:Landroid/os/RemoteException;
    :goto_2e
    :try_start_2e
    const-string v6, "BackupManager"

    const-string v7, "restoreSelf() unable to contact service"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3b

    .line 148
    if-eqz v3, :cond_2b

    .line 149
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto :goto_2b

    .line 148
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3b
    move-exception v6

    :goto_3c
    if-eqz v3, :cond_41

    .line 149
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_41
    throw v6

    .line 148
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v0       #binder:Landroid/app/backup/IRestoreSession;
    .restart local v4       #session:Landroid/app/backup/RestoreSession;
    .restart local v5       #transport:Ljava/lang/String;
    :catchall_42
    move-exception v6

    move-object v3, v4

    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    goto :goto_3c

    .line 145
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v4       #session:Landroid/app/backup/RestoreSession;
    :catch_45
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    goto :goto_2e
.end method
