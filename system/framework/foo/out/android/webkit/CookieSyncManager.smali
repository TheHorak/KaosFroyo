.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# static fields
.field private static sRef:Landroid/webkit/CookieSyncManager;


# instance fields
.field private mLastUpdate:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    const-string v0, "CookieSyncManager"

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 95
    const-class v0, Landroid/webkit/CookieSyncManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v1, :cond_12

    .line 96
    new-instance v1, Landroid/webkit/CookieSyncManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/CookieSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    .line 98
    :cond_12
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieSyncManager;
    .registers 3

    .prologue
    .line 80
    const-class v0, Landroid/webkit/CookieSyncManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v1, :cond_12

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 80
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 85
    :cond_12
    :try_start_12
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v0

    return-object v1
.end method

.method private syncFromRamToFlash(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 199
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-byte v2, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 200
    iget-byte v2, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    if-eqz v2, :cond_24

    .line 201
    iget-object v2, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    iget-object v3, v0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    iget-object v4, v0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    iget-object v5, v0, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_24
    iget-byte v2, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_36

    .line 205
    iget-object v2, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewDatabase;->addCookie(Landroid/webkit/CookieManager$Cookie;)V

    .line 206
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->syncedACookie(Landroid/webkit/CookieManager$Cookie;)V

    goto :goto_4

    .line 208
    :cond_36
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->deleteACookie(Landroid/webkit/CookieManager$Cookie;)V

    goto :goto_4

    .line 212
    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    :cond_3e
    return-void
.end method


# virtual methods
.method clearAllCookies()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_5

    .line 129
    :goto_4
    return-void

    .line 128
    :cond_5
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCookies()V

    goto :goto_4
.end method

.method clearExpiredCookies(J)V
    .registers 4
    .parameter "now"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_5

    .line 170
    :goto_4
    return-void

    .line 169
    :cond_5
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->clearExpiredCookies(J)V

    goto :goto_4
.end method

.method clearSessionCookies()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_5

    .line 156
    :goto_4
    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearSessionCookies()V

    goto :goto_4
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_a

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewDatabase;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9
.end method

.method hasCookies()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, 0x0

    .line 141
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/CookieSyncManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasCookies()Z

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic resetSync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->resetSync()V

    return-void
.end method

.method public bridge synthetic run()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public bridge synthetic startSync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->startSync()V

    return-void
.end method

.method public bridge synthetic stopSync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->stopSync()V

    return-void
.end method

.method public bridge synthetic sync()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->sync()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .registers 6

    .prologue
    .line 177
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v2

    if-nez v2, :cond_b

    .line 193
    :goto_a
    return-void

    .line 181
    :cond_b
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iget-wide v3, p0, Landroid/webkit/CookieSyncManager;->mLastUpdate:J

    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->getUpdatedCookiesSince(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    .local v0, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/CookieSyncManager;->mLastUpdate:J

    .line 184
    invoke-direct {p0, v0}, Landroid/webkit/CookieSyncManager;->syncFromRamToFlash(Ljava/util/ArrayList;)V

    .line 186
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->deleteLRUDomain()Ljava/util/ArrayList;

    move-result-object v1

    .line 188
    .local v1, lruList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-direct {p0, v1}, Landroid/webkit/CookieSyncManager;->syncFromRamToFlash(Ljava/util/ArrayList;)V

    goto :goto_a
.end method
