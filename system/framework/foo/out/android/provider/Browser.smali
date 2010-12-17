.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$SearchColumns;,
        Landroid/provider/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String; = null

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri; = null

.field private static final SEARCHES_WHERE_CLAUSE:Ljava/lang/String; = "search = ?"

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "date"

    const-string v6, "_id"

    .line 35
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "visits"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v7, v0, v1

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_entered"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v7, v0, v4

    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 102
    const-string v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v7, v0, v5

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 208
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 13
    .parameter "cr"
    .parameter "search"

    .prologue
    .line 566
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 567
    .local v9, now:J
    const/4 v6, 0x0

    .line 569
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    const-string v3, "search = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 575
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .local v8, map:Landroid/content/ContentValues;
    const-string v0, "search"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 580
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_53} :catch_5f

    .line 587
    :goto_53
    if-eqz v6, :cond_58

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 589
    .end local v8           #map:Landroid/content/ContentValues;
    :cond_58
    :goto_58
    return-void

    .line 582
    .restart local v8       #map:Landroid/content/ContentValues;
    :cond_59
    :try_start_59
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_5e} :catch_5f

    goto :goto_53

    .line 584
    .end local v8           #map:Landroid/content/ContentValues;
    :catch_5f
    move-exception v0

    move-object v7, v0

    .line 585
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_61
    const-string v0, "browser"

    const-string v1, "addSearchUrl"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_6e

    .line 587
    if-eqz v6, :cond_58

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_6e
    move-exception v0

    if-eqz v6, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v0
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 10
    .parameter "cr"

    .prologue
    .line 420
    const/4 v6, 0x0

    .line 421
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 423
    .local v8, ret:Z
    :try_start_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "bookmark"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "visits"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 0 OR visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_38
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_22} :catch_29

    move-result v8

    .line 436
    if-eqz v6, :cond_28

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_28
    :goto_28
    return v8

    .line 433
    :catch_29
    move-exception v0

    move-object v7, v0

    .line 434
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2b
    const-string v0, "browser"

    const-string v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_38

    .line 436
    if-eqz v6, :cond_28

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    .line 599
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 603
    :goto_7
    return-void

    .line 600
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 601
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "browser"

    const-string v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .parameter "cr"
    .parameter "url"

    .prologue
    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, matchesUrl:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 12
    .parameter "cr"
    .parameter "begin"
    .parameter "end"

    .prologue
    const-wide/16 v3, -0x1

    const-string v6, " >= "

    const-string v5, " < "

    .line 528
    const-string v0, "date"

    .line 529
    .local v0, date:Ljava/lang/String;
    cmp-long v2, v3, p1

    if-nez v2, :cond_33

    .line 530
    cmp-long v2, v3, p3

    if-nez v2, :cond_14

    .line 531
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 542
    :goto_13
    return-void

    .line 534
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, whereClause:Ljava/lang/String;
    :goto_2f
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_13

    .line 535
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_33
    cmp-long v2, v3, p3

    if-nez v2, :cond_53

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_2f

    .line 538
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_2f
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 9
    .parameter "cr"
    .parameter "whereClause"

    .prologue
    .line 462
    const/4 v6, 0x0

    .line 464
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_ba
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_c} :catch_c0

    move-result-object v0

    .line 469
    .end local v6           #c:Landroid/database/Cursor;
    .local v0, c:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 470
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    .line 474
    .local v2, iconDb:Landroid/webkit/WebIconDatabase;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 477
    .local v1, firstTime:Z
    :cond_1d
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, url:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_95

    const/4 v3, 0x1

    .line 480
    .local v3, isBookmark:Z
    :goto_2b
    if-eqz v3, :cond_ad

    .line 481
    if-eqz v1, :cond_97

    .line 482
    const/4 v1, 0x0

    .line 486
    .end local v3           #isBookmark:Z
    :goto_30
    const-string v3, "( _id = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 488
    const-string v3, " )"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 494
    if-nez v1, :cond_6d

    .line 495
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #firstTime:Z
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 496
    .local v1, map:Landroid/content/ContentValues;
    const-string v2, "visits"

    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 502
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_6d
    const-string v1, "bookmark = 0"

    .line 503
    .local v1, deleteWhereClause:Ljava/lang/String;
    if-eqz p1, :cond_c4

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #deleteWhereClause:Ljava/lang/String;
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 506
    .local p1, deleteWhereClause:Ljava/lang/String;
    :goto_88
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_d .. :try_end_8e} :catchall_b1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_8e} :catch_9d

    .line 512
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #deleteWhereClause:Ljava/lang/String;
    :cond_8e
    if-eqz v0, :cond_93

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_93
    move-object p0, v0

    .line 514
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :cond_94
    :goto_94
    return-void

    .line 478
    .restart local v0       #c:Landroid/database/Cursor;
    .local v1, firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_95
    const/4 v3, 0x0

    goto :goto_2b

    .line 484
    .restart local v3       #isBookmark:Z
    :cond_97
    :try_start_97
    const-string v3, " OR "

    .end local v3           #isBookmark:Z
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_b1
    .catch Ljava/lang/IllegalStateException; {:try_start_97 .. :try_end_9c} :catch_9d

    goto :goto_30

    .line 508
    .end local v1           #firstTime:Z
    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #whereClause:Ljava/lang/String;
    :catch_9d
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 509
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_a0
    :try_start_a0
    const-string v0, "browser"

    const-string v1, "deleteHistoryWhere"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_be

    .line 512
    if-eqz p0, :cond_94

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_94

    .line 490
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;
    .restart local v3       #isBookmark:Z
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_ad
    :try_start_ad
    invoke-virtual {v2, v5}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_b0} :catch_9d

    goto :goto_42

    .line 512
    .end local v1           #firstTime:Z
    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    .end local v3           #isBookmark:Z
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #whereClause:Ljava/lang/String;
    :catchall_b1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_b4
    if-eqz p0, :cond_b9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_b9
    throw p1

    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #whereClause:Ljava/lang/String;
    :catchall_ba
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_b4

    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_be
    move-exception p1

    goto :goto_b4

    .line 508
    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :catch_c0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_a0

    .restart local v0       #c:Landroid/database/Cursor;
    .local v1, deleteWhereClause:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_c4
    move-object p1, v1

    .end local v1           #deleteWhereClause:Ljava/lang/String;
    .local p1, deleteWhereClause:Ljava/lang/String;
    goto :goto_88
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "url"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 203
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "url"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 11
    .parameter "cr"

    .prologue
    .line 322
    const/4 v6, 0x0

    .line 323
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 325
    .local v9, str:[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "url"

    aput-object v1, v2, v0

    .line 328
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 331
    const/4 v8, 0x0

    .line 332
    .local v8, i:I
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 333
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_44
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_29} :catch_32

    .line 334
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 340
    :cond_2c
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #i:I
    :cond_31
    :goto_31
    return-object v9

    .line 336
    :catch_32
    move-exception v0

    move-object v7, v0

    .line 337
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_34
    const-string v0, "browser"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_44

    .line 340
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_44
    move-exception v0

    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v0
.end method

.method public static final getVisitedHistoryByOrder(Landroid/content/ContentResolver;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 15
    .parameter "cr"
    .parameter "order"
    .parameter "num"

    .prologue
    const/4 v11, 0x0

    .line 353
    const/4 v0, 0x1

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "url"

    aput-object v1, v2, v0

    .line 356
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v3, "visits > 0"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p2, :cond_30

    move v7, p2

    .line 360
    .local v7, count:I
    :goto_1b
    new-array v10, v7, [Ljava/lang/String;

    .line 361
    .local v10, str:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 362
    .local v9, i:I
    :goto_1e
    if-ge v9, v7, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 363
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 364
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 359
    .end local v7           #count:I
    .end local v9           #i:I
    .end local v10           #str:[Ljava/lang/String;
    :cond_30
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v7, v0

    goto :goto_1b

    .line 366
    .restart local v7       #count:I
    .restart local v9       #i:I
    .restart local v10       #str:[Ljava/lang/String;
    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_39} :catch_3b

    move-object v0, v10

    .line 369
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v9           #i:I
    .end local v10           #str:[Ljava/lang/String;
    :goto_3a
    return-object v0

    .line 368
    :catch_3b
    move-exception v0

    move-object v8, v0

    .line 369
    .local v8, e:Ljava/lang/IllegalStateException;
    new-array v0, v11, [Ljava/lang/String;

    goto :goto_3a
.end method

.method public static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const-string v5, "www."

    const-string v1, "url = "

    const-string v3, "https://"

    const-string v2, "http://"

    .line 220
    const/4 v7, 0x0

    .line 221
    .local v7, secure:Z
    move-object v6, p1

    .line 222
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 223
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 228
    :cond_18
    :goto_18
    const-string v0, "www."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 229
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    :cond_25
    const/4 v8, 0x0

    .line 232
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_7d

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 236
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 254
    :goto_5e
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 224
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_6d
    const-string v0, "https://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 225
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    const/4 v7, 0x1

    goto :goto_18

    .line 240
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 243
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 247
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 250
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 4
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    .line 618
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/WebIconDatabase;->bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 620
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .local v0, i:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "s"

    .prologue
    .line 157
    const v0, 0x10402ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "c"
    .parameter "stringToSend"
    .parameter "chooserDialogTitle"

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :try_start_11
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_18} :catch_19

    .line 182
    :goto_18
    return-void

    .line 179
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .registers 10
    .parameter "cr"

    .prologue
    .line 385
    const/4 v6, 0x0

    .line 388
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark = 0"

    const/4 v4, 0x0

    const-string v5, "date"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_45

    .line 397
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    const/4 v0, 0x5

    if-ge v8, v0, :cond_45

    .line 400
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_42} :catch_4e

    move-result v0

    if-nez v0, :cond_4b

    .line 409
    .end local v8           #i:I
    :cond_45
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_4a
    :goto_4a
    return-void

    .line 397
    .restart local v8       #i:I
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 406
    .end local v8           #i:I
    :catch_4e
    move-exception v0

    move-object v7, v0

    .line 407
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_50
    const-string v0, "browser"

    const-string v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5d

    .line 409
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_5d
    move-exception v0

    if-eqz v6, :cond_63

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 13
    .parameter "cr"
    .parameter "url"
    .parameter "real"

    .prologue
    const-string v8, "visits"

    const-string v8, "user_entered"

    const-string v8, "date"

    .line 270
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 271
    .local v3, now:J
    const/4 v0, 0x0

    .line 273
    .local v0, c:Landroid/database/Cursor;
    :try_start_10
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 276
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v2, map:Landroid/content/ContentValues;
    if-eqz p2, :cond_5a

    .line 278
    const-string v8, "visits"

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    :goto_31
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 286
    .local v5, projection:[Ljava/lang/String;
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v9, "_id = ?"

    invoke-virtual {p0, v8, v2, v9, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_bf
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_54} :catch_65

    .line 311
    .end local v5           #projection:[Ljava/lang/String;
    :goto_54
    if-eqz v0, :cond_59

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 313
    .end local v2           #map:Landroid/content/ContentValues;
    :cond_59
    :goto_59
    return-void

    .line 281
    .restart local v2       #map:Landroid/content/ContentValues;
    :cond_5a
    :try_start_5a
    const-string v8, "user_entered"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_bf
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_64} :catch_65

    goto :goto_31

    .line 308
    .end local v2           #map:Landroid/content/ContentValues;
    :catch_65
    move-exception v8

    move-object v1, v8

    .line 309
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_67
    const-string v8, "browser"

    const-string v9, "updateVisitedHistory"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_bf

    .line 311
    if-eqz v0, :cond_59

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_59

    .line 288
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_74
    :try_start_74
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 289
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 292
    .restart local v2       #map:Landroid/content/ContentValues;
    if-eqz p2, :cond_c6

    .line 293
    const/4 v7, 0x1

    .line 294
    .local v7, visits:I
    const/4 v6, 0x0

    .line 299
    .local v6, user_entered:I
    :goto_80
    const-string v8, "url"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v8, "visits"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    const-string v8, "bookmark"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v8, "title"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v8, "created"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v8, "user_entered"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_be
    .catchall {:try_start_74 .. :try_end_be} :catchall_bf
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_be} :catch_65

    goto :goto_54

    .line 311
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v6           #user_entered:I
    .end local v7           #visits:I
    :catchall_bf
    move-exception v8

    if-eqz v0, :cond_c5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c5
    throw v8

    .line 296
    .restart local v2       #map:Landroid/content/ContentValues;
    :cond_c6
    const/4 v7, 0x0

    .line 297
    .restart local v7       #visits:I
    const/4 v6, 0x1

    .restart local v6       #user_entered:I
    goto :goto_80
.end method
