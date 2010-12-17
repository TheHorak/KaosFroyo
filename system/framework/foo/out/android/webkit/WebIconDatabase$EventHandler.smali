.class Landroid/webkit/WebIconDatabase$EventHandler;
.super Landroid/os/Handler;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebIconDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabase$EventHandler$IconResult;
    }
.end annotation


# static fields
.field static final BULK_REQUEST_ICON:I = 0x6

.field static final CLOSE:I = 0x1

.field private static final ICON_RESULT:I = 0xa

.field static final OPEN:I = 0x0

.field static final RELEASE_ICON:I = 0x5

.field static final REMOVE_ALL:I = 0x2

.field static final REQUEST_ICON:I = 0x3

.field static final RETAIN_ICON:I = 0x4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebIconDatabase$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase$EventHandler;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebIconDatabase$EventHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase$EventHandler;->hasHandler()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebIconDatabase$EventHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebIconDatabase$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V

    return-void
.end method

.method private bulkRequestIcons(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    .line 148
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    .line 149
    .local v9, map:Ljava/util/HashMap;
    const-string v1, "listener"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebIconDatabase$IconListener;

    .line 150
    .local v8, listener:Landroid/webkit/WebIconDatabase$IconListener;
    const-string v1, "contentResolver"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 151
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "where"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 155
    .local v6, c:Landroid/database/Cursor;
    :try_start_1d
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 161
    :cond_33
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, url:Ljava/lang/String;
    invoke-direct {p0, v10, v8}, Landroid/webkit/WebIconDatabase$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_53
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_3e} :catch_47

    move-result v1

    if-nez v1, :cond_33

    .line 168
    .end local v10           #url:Ljava/lang/String;
    :cond_41
    if-eqz v6, :cond_46

    :goto_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_46
    return-void

    .line 165
    :catch_47
    move-exception v1

    move-object v7, v1

    .line 166
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_49
    const-string v1, "WebIconDatabase"

    const-string v2, "BulkRequestIcons"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_53

    .line 168
    if-eqz v6, :cond_46

    goto :goto_43

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_53
    move-exception v1

    if-eqz v6, :cond_59

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_59
    throw v1
.end method

.method private declared-synchronized createHandler()V
    .registers 5

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_28

    .line 89
    new-instance v1, Landroid/webkit/WebIconDatabase$EventHandler$1;

    invoke-direct {v1, p0}, Landroid/webkit/WebIconDatabase$EventHandler$1;-><init>(Landroid/webkit/WebIconDatabase$EventHandler;)V

    iput-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    .line 128
    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, size:I
    :goto_12
    if-lez v0, :cond_25

    .line 129
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 131
    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 133
    .end local v0           #size:I
    :cond_28
    monitor-exit p0

    return-void

    .line 88
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized hasHandler()Z
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    .line 145
    :goto_a
    monitor-exit p0

    return-void

    .line 143
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    .line 140
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 6
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 173
    invoke-static {p1}, Landroid/webkit/WebIconDatabase;->access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_14

    .line 175
    const/16 v1, 0xa

    new-instance v2, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;-><init>(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/webkit/WebIconDatabase$IconListener;)V

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebIconDatabase$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :cond_14
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 84
    .end local p0
    :goto_5
    return-void

    .line 81
    .restart local p0
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;

    invoke-virtual {p0}, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->dispatch()V

    goto :goto_5

    .line 79
    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_6
    .end packed-switch
.end method
