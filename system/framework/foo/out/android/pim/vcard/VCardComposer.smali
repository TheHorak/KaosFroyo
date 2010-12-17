.class public Landroid/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;,
        Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final VCARD_TEST_AUTHORITY:Ljava/lang/String; = "com.android.unit_tests.vcard"

.field public static final VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final VCARD_TYPE_STRING_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharsetString:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private final mIsDoCoMo:Z

.field private mTerminateIsCalled:Z

.field private final mUsesShiftJis:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    const-string v0, "content://com.android.unit_tests.vcard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    .line 131
    sget-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 138
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 275
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 9
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    const-string v4, "VCardComposer"

    const-string v2, "SHIFT_JIS"

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const-string v2, "No error"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 291
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    .line 292
    iput p2, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    .line 293
    iput-boolean p3, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 296
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 297
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->usesShiftJis(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mUsesShiftJis:Z

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    .line 300
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_49

    .line 303
    :try_start_2e
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_39
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2e .. :try_end_39} :catch_3d

    move-result-object v0

    .line 308
    .local v0, charset:Ljava/lang/String;
    :goto_3a
    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCharsetString:Ljava/lang/String;

    .line 321
    .end local v0           #charset:Ljava/lang/String;
    :goto_3c
    return-void

    .line 304
    :catch_3d
    move-exception v2

    move-object v1, v2

    .line 305
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "SHIFT_JIS"

    .restart local v0       #charset:Ljava/lang/String;
    goto :goto_3a

    .line 309
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_49
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mUsesShiftJis:Z

    if-eqz v2, :cond_66

    .line 312
    :try_start_4d
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_56
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_4d .. :try_end_56} :catch_5a

    move-result-object v0

    .line 317
    .restart local v0       #charset:Ljava/lang/String;
    :goto_57
    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCharsetString:Ljava/lang/String;

    goto :goto_3c

    .line 313
    .end local v0           #charset:Ljava/lang/String;
    :catch_5a
    move-exception v2

    move-object v1, v2

    .line 314
    .restart local v1       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "Vendor-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "SHIFT_JIS"

    .restart local v0       #charset:Ljava/lang/String;
    goto :goto_57

    .line 319
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_66
    const-string v2, "UTF-8"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mCharsetString:Ljava/lang/String;

    goto :goto_3c
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .parameter "context"
    .parameter "vcardTypeStr"
    .parameter "careHandlerErrors"

    .prologue
    .line 283
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 284
    return-void
.end method

.method static synthetic access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCharsetString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/pim/vcard/VCardComposer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    return v0
.end method

.method static synthetic access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 27
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v13, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v17, 0x0

    .line 468
    .local v17, entityIterator:Landroid/content/EntityIterator;
    :try_start_7
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 471
    .local v4, uri:Landroid/net/Uri;
    const-string v22, "contact_id=?"

    .line 472
    .local v22, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_7c

    .line 473
    .local v7, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_103

    .line 476
    const/4 v3, 0x0

    const/4 v5, 0x5

    :try_start_25
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "contact_id=?"

    .end local v4           #uri:Landroid/net/Uri;
    aput-object v6, v5, v4

    const/4 v4, 0x3

    aput-object v7, v5, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/content/EntityIterator;

    move-object/from16 v17, v0
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_4c} :catch_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_4c} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_4c} :catch_a2

    .line 498
    :goto_4c
    if-nez v17, :cond_116

    .line 499
    :try_start_4e
    const-string v3, "VCardComposer"

    const-string v4, "EntityIterator is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v3, ""
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_7c

    .line 525
    if-eqz v17, :cond_5c

    .line 526
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    .line 545
    .end local p0
    .end local p1
    :cond_5c
    :goto_5c
    return-object v3

    .line 478
    .restart local p0
    .restart local p1
    :catch_5d
    move-exception v3

    move-object v14, v3

    .line 479
    .local v14, e:Ljava/lang/IllegalArgumentException;
    :try_start_5f
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_7c

    goto :goto_4c

    .line 525
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .end local v22           #selection:Ljava/lang/String;
    :catchall_7c
    move-exception v3

    if-eqz v17, :cond_82

    .line 526
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    :cond_82
    throw v3

    .line 481
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v22       #selection:Ljava/lang/String;
    :catch_83
    move-exception v3

    move-object v14, v3

    .line 482
    .local v14, e:Ljava/lang/IllegalAccessException;
    :try_start_85
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 484
    .end local v14           #e:Ljava/lang/IllegalAccessException;
    :catch_a2
    move-exception v3

    move-object v14, v3

    .line 485
    .local v14, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "VCardComposer"

    const-string v4, "InvocationTargetException has been thrown: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v14}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v23

    .line 487
    .local v23, stackTraceElements:[Ljava/lang/StackTraceElement;
    move-object/from16 v9, v23

    .local v9, arr$:[Ljava/lang/StackTraceElement;
    move-object v0, v9

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_bb
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_e2

    aget-object v15, v9, v18

    .line 488
    .local v15, element:Ljava/lang/StackTraceElement;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    add-int/lit8 v18, v18, 0x1

    goto :goto_bb

    .line 490
    .end local v15           #element:Ljava/lang/StackTraceElement;
    :cond_e2
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    .end local v9           #arr$:[Ljava/lang/StackTraceElement;
    .end local v14           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v23           #stackTraceElements:[Ljava/lang/StackTraceElement;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const-string v6, "contact_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v17

    goto/16 :goto_4c

    .line 503
    .end local v4           #uri:Landroid/net/Uri;
    :cond_116
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_140

    .line 504
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data does not exist. contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v3, ""
    :try_end_139
    .catchall {:try_start_85 .. :try_end_139} :catchall_7c

    .line 525
    if-eqz v17, :cond_5c

    .line 526
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_5c

    .line 508
    :cond_140
    :try_start_140
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_188

    .line 509
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 510
    .local v16, entity:Landroid/content/Entity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_154
    :goto_154
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity$NamedContentValues;

    .line 511
    .local v21, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v11, v0

    .line 512
    .local v11, contentValues:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 513
    .local v19, key:Ljava/lang/String;
    if-eqz v19, :cond_154

    .line 514
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 516
    .local v12, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v12, :cond_184

    .line 517
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .restart local v12       #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object v0, v13

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_184
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_187
    .catchall {:try_start_140 .. :try_end_187} :catchall_7c

    goto :goto_154

    .line 525
    .end local v11           #contentValues:Landroid/content/ContentValues;
    .end local v12           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v16           #entity:Landroid/content/Entity;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #key:Ljava/lang/String;
    .end local v21           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_188
    if-eqz v17, :cond_18d

    .line 526
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    .line 530
    :cond_18d
    new-instance v10, Landroid/pim/vcard/VCardBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    move v3, v0

    invoke-direct {v10, v3}, Landroid/pim/vcard/VCardBuilder;-><init>(I)V

    .line 531
    .local v10, builder:Landroid/pim/vcard/VCardBuilder;
    const-string v3, "vnd.android.cursor.item/name"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/List;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/organization"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/website"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    move v3, v0

    const/high16 v4, 0x200

    and-int/2addr v3, v4

    if-nez v3, :cond_217

    .line 539
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 541
    :cond_217
    const-string v3, "vnd.android.cursor.item/note"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/im"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/relation"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 545
    invoke-virtual {v10}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5c
.end method


# virtual methods
.method public addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 327
    if-eqz p1, :cond_7

    .line 328
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_7
    return-void
.end method

.method public createOneEntry()Z
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .registers 13
    .parameter "getEntityIteratorMethod"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "VCardComposer"

    .line 413
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_10

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 414
    :cond_10
    const-string v6, "The vCard composer object is not correctly initialized"

    iput-object v6, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    move v6, v9

    .line 456
    :goto_15
    return v6

    .line 419
    :cond_16
    :try_start_16
    iget v6, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    if-ltz v6, :cond_54

    .line 420
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_af
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_16 .. :try_end_25} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_25} :catch_9b

    move-result-object v5

    .line 437
    .local v5, vcard:Ljava/lang/String;
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 442
    iget-boolean v6, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v6, :cond_b6

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .local v2, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 446
    .local v3, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    move v6, v9

    .line 447
    goto :goto_15

    .line 423
    .end local v2           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v3           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #vcard:Ljava/lang/String;
    :cond_54
    :try_start_54
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mIdColumn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_af
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_54 .. :try_end_6e} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_6e} :catch_9b

    .line 437
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto :goto_15

    .line 426
    :catch_75
    move-exception v6

    move-object v0, v6

    .line 427
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    :try_start_77
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VCardException has been thrown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_af

    .line 437
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v9

    goto/16 :goto_15

    .line 429
    .end local v0           #e:Landroid/pim/vcard/exception/VCardException;
    :catch_9b
    move-exception v6

    move-object v1, v6

    .line 432
    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_9d
    const-string v6, "VCardComposer"

    const-string v7, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_af

    .line 437
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto/16 :goto_15

    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    :catchall_af
    move-exception v6

    iget-object v7, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v6

    .line 451
    .restart local v5       #vcard:Ljava/lang/String;
    :cond_b6
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 452
    .restart local v3       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_bc

    .end local v3           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_cc
    move v6, v10

    .line 456
    goto/16 :goto_15
.end method

.method public finalize()V
    .registers 2

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_7

    .line 568
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->terminate()V

    .line 570
    :cond_7
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 574
    const/4 v0, 0x0

    .line 576
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getErrorReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0, v0}, Landroid/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 349
    if-nez p1, :cond_4

    .line 350
    const/4 v0, 0x0

    .line 401
    :goto_3
    return v0

    .line 353
    :cond_4
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_43

    .line 354
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 357
    .local v9, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 358
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_31
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 359
    .local v7, finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_31

    .line 361
    .end local v7           #finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_41
    const/4 v0, 0x0

    goto :goto_3

    .line 366
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_43
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 367
    .restart local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_49

    .line 372
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_5b
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 374
    :cond_6b
    sget-object v2, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 379
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 382
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8a

    .line 383
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    goto :goto_3

    .line 376
    .end local v2           #projection:[Ljava/lang/String;
    :cond_83
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 387
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_8a
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 389
    :cond_98
    :try_start_98
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_9d} :catch_a7

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 394
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 396
    .end local v2           #projection:[Ljava/lang/String;
    :goto_a4
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 390
    .restart local v2       #projection:[Ljava/lang/String;
    :catch_a7
    move-exception v0

    move-object v6, v0

    .line 391
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_a9
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    .end local v2           #projection:[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_a9 .. :try_end_c5} :catchall_cd

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 394
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_a4

    .line 393
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_cd
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 394
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 399
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_d6
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    .line 401
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 341
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/pim/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_5
.end method

.method public terminate()V
    .registers 7

    .prologue
    .line 549
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 550
    .local v1, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_6

    .line 553
    .end local v1           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_16
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_22

    .line 555
    :try_start_1a
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1f} :catch_26

    .line 559
    :goto_1f
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 562
    :cond_22
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    .line 563
    return-void

    .line 556
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 557
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
