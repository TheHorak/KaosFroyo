.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1764
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1786
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1787
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .registers 16
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1792
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1793
    .local v2, columnRawContactId:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1796
    .local v9, rawContactId:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1797
    .local v4, cv:Landroid/content/ContentValues;
    const-string v11, "account_name"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1798
    const-string v11, "account_type"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1799
    const-string v11, "_id"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1800
    const-string v11, "dirty"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1801
    const-string v11, "version"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1802
    const-string v11, "sourceid"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1803
    const-string v11, "sync1"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1804
    const-string v11, "sync2"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1805
    const-string v11, "sync3"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1806
    const-string v11, "sync4"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1807
    const-string v11, "deleted"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1808
    const-string v11, "contact_id"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1809
    const-string v11, "starred"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1810
    const-string v11, "is_restricted"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1811
    const-string v11, "name_verified"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1812
    new-instance v3, Landroid/content/Entity;

    invoke-direct {v3, v4}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1816
    .local v3, contact:Landroid/content/Entity;
    :cond_5f
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-eqz v11, :cond_68

    .line 1861
    :goto_67
    return-object v3

    .line 1820
    :cond_68
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #cv:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1821
    .restart local v4       #cv:Landroid/content/ContentValues;
    const-string v11, "_id"

    const-string v12, "data_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1822
    const-string v11, "res_package"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1824
    const-string v11, "mimetype"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1825
    const-string v11, "is_primary"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1826
    const-string v11, "is_super_primary"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1828
    const-string v11, "data_version"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1829
    const-string v11, "group_sourceid"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1831
    const-string v11, "data_version"

    invoke-static {p1, v4, v11}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1833
    sget-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_a7
    if-ge v6, v8, :cond_ca

    aget-object v7, v0, v6

    .line 1834
    .local v7, key:Ljava/lang/String;
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1835
    .local v1, columnIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_b8

    .line 1833
    :goto_b5
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 1839
    :cond_b8
    :try_start_b8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b8 .. :try_end_bf} :catch_c0

    goto :goto_b5

    .line 1840
    :catch_c0
    move-exception v11

    move-object v5, v11

    .line 1841
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_b5

    .line 1858
    .end local v1           #columnIndex:I
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    .end local v7           #key:Ljava/lang/String;
    :cond_ca
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v11, v4}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1859
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5f

    goto :goto_67
.end method
