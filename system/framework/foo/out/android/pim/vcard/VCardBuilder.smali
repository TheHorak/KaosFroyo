.class public Landroid/pim/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "VCardBuilder"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field private static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharsetString:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mUsesShiftJis:Z

.field private final mUsesUtf8:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 766
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .parameter "vcardType"

    .prologue
    const-string v5, "VCardBuilder"

    const-string v2, "SHIFT_JIS"

    const-string v4, "CHARSET=SHIFT_JIS"

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    .line 112
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isV30(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    .line 113
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 114
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 115
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 116
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 117
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 118
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 119
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->usesUtf8(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesUtf8:Z

    .line 120
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->usesShiftJis(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesShiftJis:Z

    .line 121
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 122
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 123
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 125
    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v2, :cond_5b

    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesUtf8:Z

    if-nez v2, :cond_78

    :cond_5b
    const/4 v2, 0x1

    :goto_5c
    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 127
    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_86

    .line 130
    :try_start_62
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_62 .. :try_end_6d} :catch_7a

    move-result-object v0

    .line 135
    .local v0, charset:Ljava/lang/String;
    :goto_6e
    iput-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mCharsetString:Ljava/lang/String;

    .line 139
    const-string v2, "CHARSET=SHIFT_JIS"

    iput-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 154
    .end local v0           #charset:Ljava/lang/String;
    :goto_74
    invoke-virtual {p0}, Landroid/pim/vcard/VCardBuilder;->clear()V

    .line 155
    return-void

    .line 125
    :cond_78
    const/4 v2, 0x0

    goto :goto_5c

    .line 131
    :catch_7a
    move-exception v2

    move-object v1, v2

    .line 132
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardBuilder"

    const-string v2, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "SHIFT_JIS"

    .restart local v0       #charset:Ljava/lang/String;
    goto :goto_6e

    .line 140
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_86
    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesShiftJis:Z

    if-eqz v2, :cond_a7

    .line 143
    :try_start_8a
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_93
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_8a .. :try_end_93} :catch_9b

    move-result-object v0

    .line 148
    .restart local v0       #charset:Ljava/lang/String;
    :goto_94
    iput-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mCharsetString:Ljava/lang/String;

    .line 149
    const-string v2, "CHARSET=SHIFT_JIS"

    iput-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_74

    .line 144
    .end local v0           #charset:Ljava/lang/String;
    :catch_9b
    move-exception v2

    move-object v1, v2

    .line 145
    .restart local v1       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardBuilder"

    const-string v2, "Vendor-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "SHIFT_JIS"

    .restart local v0       #charset:Ljava/lang/String;
    goto :goto_94

    .line 151
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_a7
    const-string v2, "UTF-8"

    iput-object v2, p0, Landroid/pim/vcard/VCardBuilder;->mCharsetString:Ljava/lang/String;

    .line 152
    const-string v2, "CHARSET=UTF-8"

    iput-object v2, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_74
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .registers 16
    .parameter "contentValues"

    .prologue
    .line 408
    const-string v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, tmpPhoneticFamilyName:Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 412
    .local v11, tmpPhoneticMiddleName:Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, tmpPhoneticGivenName:Ljava/lang/String;
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_78

    .line 415
    invoke-static {v9}, Landroid/pim/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, phoneticFamilyName:Ljava/lang/String;
    invoke-static {v11}, Landroid/pim/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, phoneticMiddleName:Ljava/lang/String;
    invoke-static {v10}, Landroid/pim/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, phoneticGivenName:Ljava/lang/String;
    :goto_22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 428
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_77

    .line 429
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_77
    :goto_77
    return-void

    .line 419
    .end local v4           #phoneticFamilyName:Ljava/lang/String;
    .end local v5           #phoneticGivenName:Ljava/lang/String;
    .end local v6           #phoneticMiddleName:Ljava/lang/String;
    :cond_78
    move-object v4, v9

    .line 420
    .restart local v4       #phoneticFamilyName:Ljava/lang/String;
    move-object v6, v11

    .line 421
    .restart local v6       #phoneticMiddleName:Ljava/lang/String;
    move-object v5, v10

    .restart local v5       #phoneticGivenName:Ljava/lang/String;
    goto :goto_22

    .line 443
    :cond_7c
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v12, :cond_1ea

    .line 444
    iget v12, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 447
    .local v8, sortString:Ljava/lang/String;
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 449
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_a7
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .end local v8           #sortString:Ljava/lang/String;
    :cond_be
    :goto_be
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_77

    .line 530
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_124

    .line 531
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_2d0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2d0

    const/4 v12, 0x1

    move v7, v12

    .line 535
    .local v7, reallyUseQuotedPrintable:Z
    :goto_da
    if-eqz v7, :cond_2d4

    .line 536
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_e0
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_101

    .line 542
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_101
    if-eqz v7, :cond_111

    .line 546
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_111
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_124
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_186

    .line 554
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_2da

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2da

    const/4 v12, 0x1

    move v7, v12

    .line 558
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_13c
    if-eqz v7, :cond_2de

    .line 559
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_142
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_163

    .line 565
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_163
    if-eqz v7, :cond_173

    .line 569
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_173
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_186
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_77

    .line 577
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_2e4

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2e4

    const/4 v12, 0x1

    move v7, v12

    .line 581
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_19e
    if-eqz v7, :cond_2e8

    .line 582
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_1a4
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c5

    .line 588
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_1c5
    if-eqz v7, :cond_1d5

    .line 592
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_1d5
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_77

    .line 455
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1ea
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_be

    .line 469
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_2b6

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2b6

    :cond_22b
    const/4 v12, 0x1

    move v7, v12

    .line 485
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_22d
    if-eqz v7, :cond_2ba

    .line 486
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_23b
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25b

    .line 497
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_25b
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const/4 v3, 0x1

    .line 503
    .local v3, first:Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_26f

    .line 504
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v3, 0x0

    .line 507
    :cond_26f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_27d

    .line 508
    if-eqz v3, :cond_2c8

    .line 509
    const/4 v3, 0x0

    .line 513
    :goto_278
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_27d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_291

    .line 516
    if-nez v3, :cond_28c

    .line 517
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    :cond_28c
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_291
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 473
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_2b6
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_22d

    .line 490
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_2ba
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_23b

    .line 511
    .restart local v3       #first:Z
    :cond_2c8
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_278

    .line 531
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_2d0
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_da

    .line 538
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_2d4
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_e0

    .line 554
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_2da
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_13c

    .line 561
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_2de
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_142

    .line 577
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_2e4
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_19e

    .line 584
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_2e8
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_1a4
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const v7, 0x7fffffff

    .line 778
    .local v7, currentPriority:I
    const v1, 0x7fffffff

    .line 779
    .local v1, currentType:I
    const/4 v3, 0x0

    .line 780
    .local v3, currentContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 781
    .local v6, contentValues:Landroid/content/ContentValues;
    if-eqz v6, :cond_b

    .line 784
    const-string v0, "data2"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 785
    .local v11, typeAsInteger:Ljava/lang/Integer;
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 786
    .local v10, priorityAsInteger:Ljava/lang/Integer;
    if-eqz v10, :cond_42

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    .line 788
    .local v9, priority:I
    :goto_2e
    if-ge v9, v7, :cond_b

    .line 789
    move v7, v9

    .line 790
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 791
    move-object v3, v6

    .line 792
    if-nez v9, :cond_b

    .line 798
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v9           #priority:I
    .end local v10           #priorityAsInteger:Ljava/lang/Integer;
    .end local v11           #typeAsInteger:Ljava/lang/Integer;
    :cond_38
    if-nez v3, :cond_47

    .line 799
    const-string v0, "VCardBuilder"

    const-string v4, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_41
    return-void

    .line 786
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    .restart local v10       #priorityAsInteger:Ljava/lang/Integer;
    .restart local v11       #typeAsInteger:Ljava/lang/Integer;
    :cond_42
    const v0, 0x7fffffff

    move v9, v0

    goto :goto_2e

    .line 803
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v10           #priorityAsInteger:Ljava/lang/Integer;
    .end local v11           #typeAsInteger:Ljava/lang/Integer;
    :cond_47
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_41
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 809
    .local v3, contentValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_6

    .line 812
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 813
    .local v8, typeAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_3b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 815
    .local v1, type:I
    :goto_21
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, label:Ljava/lang/String;
    const-string v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 818
    .local v7, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v7, :cond_3f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3d

    move v4, v9

    .local v4, isPrimary:Z
    :goto_36
    move-object v0, p0

    .line 820
    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_6

    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #isPrimary:Z
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_3b
    move v1, v9

    .line 813
    goto :goto_21

    .restart local v1       #type:I
    .restart local v2       #label:Ljava/lang/String;
    .restart local v7       #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_3d
    move v4, v5

    .line 818
    goto :goto_36

    :cond_3f
    move v4, v5

    goto :goto_36

    .line 822
    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v8           #typeAsInteger:Ljava/lang/Integer;
    :cond_41
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1747
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1748
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1755
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_17

    :cond_8
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_17

    .line 1756
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    :cond_17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1723
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1724
    .local v0, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1731
    .local v2, typeValue:Ljava/lang/String;
    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1734
    if-eqz v0, :cond_1e

    .line 1735
    const/4 v0, 0x0

    .line 1739
    :goto_1a
    invoke-direct {p0, v2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_5

    .line 1737
    :cond_1e
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 1741
    .end local v2           #typeValue:Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .registers 7
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1485
    iget-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_a

    .line 1488
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    :goto_9
    return-void

    .line 1490
    :cond_a
    invoke-static {p2}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, phoneType:Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 1492
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_9

    .line 1494
    :cond_14
    const-string v1, "VCardBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .registers 12
    .parameter "contentValues"

    .prologue
    .line 169
    const-string v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, familyName:Ljava/lang/String;
    const-string v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, middleName:Ljava/lang/String;
    const-string v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, givenName:Ljava/lang/String;
    const-string v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, prefix:Ljava/lang/String;
    const-string v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, suffix:Ljava/lang/String;
    const-string v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, phoneticFamilyName:Ljava/lang/String;
    const-string v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, phoneticMiddleName:Ljava/lang/String;
    const-string v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, phoneticGivenName:Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    :cond_6c
    const/4 v9, 0x1

    :goto_6d
    return v9

    :cond_6e
    const/4 v9, 0x0

    goto :goto_6d
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "str"

    .prologue
    .line 1787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1788
    const-string v5, ""

    .line 1821
    :goto_8
    return-object v5

    .line 1791
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1792
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1793
    .local v2, index:I
    const/4 v3, 0x0

    .line 1794
    .local v3, lineCount:I
    const/4 v4, 0x0

    .line 1797
    .local v4, strArray:[B
    :try_start_11
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mCharsetString:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_16} :catch_3e

    move-result-object v4

    .line 1803
    :cond_17
    :goto_17
    array-length v5, v4

    if-ge v2, v5, :cond_6b

    .line 1804
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    add-int/lit8 v2, v2, 0x1

    .line 1806
    add-int/lit8 v3, v3, 0x3

    .line 1808
    const/16 v5, 0x43

    if-lt v3, v5, :cond_17

    .line 1816
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    const/4 v3, 0x0

    goto :goto_17

    .line 1798
    :catch_3e
    move-exception v5

    move-object v1, v5

    .line 1799
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "VCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/pim/vcard/VCardBuilder;->mCharsetString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Try default charset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_17

    .line 1821
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 1832
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1833
    const-string v5, ""

    .line 1896
    :goto_a
    return-object v5

    .line 1836
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1837
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1838
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v2, :cond_66

    .line 1839
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1840
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_6c

    .line 1891
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1838
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1842
    :sswitch_24
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1847
    :sswitch_2d
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_39

    .line 1848
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1849
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_21

    .line 1861
    .end local v3           #nextChar:C
    :cond_39
    :sswitch_39
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1865
    :sswitch_3f
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v5, :cond_49

    .line 1866
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1874
    :cond_49
    :sswitch_49
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_54

    .line 1875
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1878
    :cond_54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1883
    :sswitch_58
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v5, :cond_62

    .line 1884
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1886
    :cond_62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1896
    .end local v0           #ch:C
    :cond_66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 1840
    nop

    :sswitch_data_6c
    .sparse-switch
        0xa -> :sswitch_39
        0xd -> :sswitch_2d
        0x2c -> :sswitch_58
        0x3b -> :sswitch_24
        0x3c -> :sswitch_49
        0x3e -> :sswitch_49
        0x5c -> :sswitch_3f
    .end sparse-switch
.end method

.method private getPrimaryContentValue(Ljava/util/List;)Landroid/content/ContentValues;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 190
    .local v4, primaryContentValues:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 191
    .local v5, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 192
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_6

    .line 195
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 196
    .local v3, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_29

    .line 198
    move-object v4, v0

    .line 216
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_23
    if-nez v4, :cond_28

    .line 217
    if-eqz v5, :cond_4b

    .line 219
    move-object v4, v5

    .line 226
    :cond_28
    :goto_28
    return-object v4

    .line 200
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #isSuperPrimary:Ljava/lang/Integer;
    :cond_29
    if-nez v4, :cond_6

    .line 203
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 204
    .local v2, isPrimary:Ljava/lang/Integer;
    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_41

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 206
    move-object v4, v0

    goto :goto_6

    .line 209
    :cond_41
    if-nez v5, :cond_6

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 211
    move-object v5, v0

    goto :goto_6

    .line 221
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #isPrimary:Ljava/lang/Integer;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_4b
    const-string v6, "VCardBuilder"

    const-string v7, "All ContentValues given from database is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4       #primaryContentValues:Landroid/content/ContentValues;
    goto :goto_28
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .registers 9
    .parameter "propertyValueList"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1775
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v4, :cond_8

    move v4, v5

    .line 1783
    :goto_7
    return v4

    .line 1778
    :cond_8
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_1e

    aget-object v3, v0, v1

    .line 1779
    .local v3, propertyValue:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    move v4, v6

    .line 1780
    goto :goto_7

    .line 1778
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v3           #propertyValue:Ljava/lang/String;
    :cond_1e
    move v4, v5

    .line 1783
    goto :goto_7
.end method

.method private splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 690
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_40

    .line 691
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 694
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1f

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_25

    .line 695
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 696
    :cond_25
    const/16 v5, 0x3b

    if-eq v1, v5, :cond_2d

    const/16 v5, 0xa

    if-ne v1, v5, :cond_22

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_22

    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_22

    .line 701
    .end local v1           #ch:C
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4d

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_4d
    return-object v4
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Landroid/pim/vcard/VCardBuilder$PostalStruct;
    .registers 28
    .parameter "contentValues"

    .prologue
    .line 843
    const-string v24, "data5"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 844
    .local v19, rawPoBox:Ljava/lang/String;
    const-string v24, "data6"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 845
    .local v18, rawNeighborhood:Ljava/lang/String;
    const-string v24, "data4"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 846
    .local v22, rawStreet:Ljava/lang/String;
    const-string v24, "data7"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 847
    .local v16, rawLocality:Ljava/lang/String;
    const-string v24, "data8"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 848
    .local v21, rawRegion:Ljava/lang/String;
    const-string v24, "data9"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 849
    .local v20, rawPostalCode:Ljava/lang/String;
    const-string v24, "data10"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 850
    .local v14, rawCountry:Ljava/lang/String;
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    const/16 v24, 0x0

    aput-object v19, v13, v24

    const/16 v24, 0x1

    aput-object v18, v13, v24

    const/16 v24, 0x2

    aput-object v22, v13, v24

    const/16 v24, 0x3

    aput-object v16, v13, v24

    const/16 v24, 0x4

    aput-object v21, v13, v24

    const/16 v24, 0x5

    aput-object v20, v13, v24

    const/16 v24, 0x6

    aput-object v14, v13, v24

    .line 853
    .local v13, rawAddressArray:[Ljava/lang/String;
    invoke-static {v13}, Landroid/pim/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_195

    .line 854
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_122

    invoke-static {v13}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_122

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 857
    .local v23, reallyUseQuotedPrintable:Z
    :goto_81
    invoke-static {v13}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_128

    const/16 v24, 0x1

    move/from16 v5, v24

    .line 877
    .local v5, appendCharset:Z
    :goto_8b
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_132

    .line 878
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_12e

    .line 879
    const-string v17, ""

    .line 890
    .local v17, rawLocality2:Ljava/lang/String;
    :goto_99
    if-eqz v23, :cond_15d

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 892
    .local v9, encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 893
    .local v12, encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 894
    .local v8, encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 895
    .local v11, encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 896
    .local v10, encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 906
    .local v6, encodedCountry:Ljava/lang/String;
    :goto_ca
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 907
    .local v4, addressBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 914
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    new-instance v24, Landroid/pim/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    move v2, v5

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 951
    .end local v4           #addressBuffer:Ljava/lang/StringBuffer;
    .end local v5           #appendCharset:Z
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedPoBox:Ljava/lang/String;
    .end local v10           #encodedPostalCode:Ljava/lang/String;
    .end local v11           #encodedRegion:Ljava/lang/String;
    .end local v12           #encodedStreet:Ljava/lang/String;
    .end local v17           #rawLocality2:Ljava/lang/String;
    .end local v23           #reallyUseQuotedPrintable:Z
    :goto_121
    return-object v24

    .line 854
    :cond_122
    const/16 v24, 0x0

    move/from16 v23, v24

    goto/16 :goto_81

    .line 857
    .restart local v23       #reallyUseQuotedPrintable:Z
    :cond_128
    const/16 v24, 0x0

    move/from16 v5, v24

    goto/16 :goto_8b

    .line 881
    .restart local v5       #appendCharset:Z
    :cond_12e
    move-object/from16 v17, v18

    .restart local v17       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_99

    .line 884
    .end local v17           #rawLocality2:Ljava/lang/String;
    :cond_132
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_13c

    .line 885
    move-object/from16 v17, v16

    .restart local v17       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_99

    .line 887
    .end local v17           #rawLocality2:Ljava/lang/String;
    :cond_13c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_99

    .line 898
    :cond_15d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 899
    .restart local v9       #encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 900
    .restart local v12       #encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 901
    .restart local v8       #encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 902
    .restart local v11       #encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 903
    .restart local v10       #encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 904
    .restart local v6       #encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_ca

    .line 923
    .end local v5           #appendCharset:Z
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedPoBox:Ljava/lang/String;
    .end local v10           #encodedPostalCode:Ljava/lang/String;
    .end local v11           #encodedRegion:Ljava/lang/String;
    .end local v12           #encodedStreet:Ljava/lang/String;
    .end local v17           #rawLocality2:Ljava/lang/String;
    .end local v23           #reallyUseQuotedPrintable:Z
    :cond_195
    const-string v24, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 925
    .local v15, rawFormattedAddress:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1a9

    .line 926
    const/16 v24, 0x0

    goto/16 :goto_121

    .line 928
    :cond_1a9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_230

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_230

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 931
    .restart local v23       #reallyUseQuotedPrintable:Z
    :goto_1c7
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_235

    const/16 v24, 0x1

    move/from16 v5, v24

    .line 934
    .restart local v5       #appendCharset:Z
    :goto_1dd
    if-eqz v23, :cond_23a

    .line 935
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, encodedFormattedAddress:Ljava/lang/String;
    :goto_1e6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 944
    .restart local v4       #addressBuffer:Ljava/lang/StringBuffer;
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 949
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    new-instance v24, Landroid/pim/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    move v2, v5

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_121

    .line 928
    .end local v4           #addressBuffer:Ljava/lang/StringBuffer;
    .end local v5           #appendCharset:Z
    .end local v7           #encodedFormattedAddress:Ljava/lang/String;
    .end local v23           #reallyUseQuotedPrintable:Z
    :cond_230
    const/16 v24, 0x0

    move/from16 v23, v24

    goto :goto_1c7

    .line 931
    .restart local v23       #reallyUseQuotedPrintable:Z
    :cond_235
    const/16 v24, 0x0

    move/from16 v5, v24

    goto :goto_1dd

    .line 937
    .restart local v5       #appendCharset:Z
    :cond_23a
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #encodedFormattedAddress:Ljava/lang/String;
    goto :goto_1e6
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 16
    .parameter "mimeType"
    .parameter "contentValues"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, ";"

    .line 1541
    sget-object v8, Landroid/pim/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1585
    :goto_c
    return-void

    .line 1544
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    .local v5, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_13
    const/16 v8, 0xf

    if-gt v1, v8, :cond_38

    .line 1546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1547
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_32

    .line 1548
    const-string v7, ""

    .line 1550
    :cond_32
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1553
    .end local v7           #value:Ljava/lang/String;
    :cond_38
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v8, :cond_a4

    invoke-static {v5}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_a4

    move v3, v12

    .line 1556
    .local v3, needCharset:Z
    :goto_43
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_a6

    invoke-static {v5}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_a6

    move v6, v12

    .line 1559
    .local v6, reallyUseQuotedPrintable:Z
    :goto_4e
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "X-ANDROID-CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    if-eqz v3, :cond_65

    .line 1561
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    :cond_65
    if-eqz v6, :cond_75

    .line 1565
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_75
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1572
    .local v4, rawValue:Ljava/lang/String;
    if-eqz v6, :cond_a8

    .line 1573
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, encodedValue:Ljava/lang/String;
    :goto_97
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #needCharset:Z
    .end local v4           #rawValue:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_a4
    move v3, v11

    .line 1553
    goto :goto_43

    .restart local v3       #needCharset:Z
    :cond_a6
    move v6, v11

    .line 1556
    goto :goto_4e

    .line 1579
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #rawValue:Ljava/lang/String;
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_a8
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_97

    .line 1584
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v4           #rawValue:Ljava/lang/String;
    :cond_ad
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "type"
    .parameter "label"
    .parameter "rawValue"
    .parameter "isPrimary"

    .prologue
    .line 1297
    packed-switch p1, :pswitch_data_74

    .line 1326
    const-string v2, "VCardBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/4 v1, 0x0

    .line 1332
    .local v1, typeAsString:Ljava/lang/String;
    :goto_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v0, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_28

    .line 1334
    const-string v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    :cond_28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    :cond_31
    const-string v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1342
    return-void

    .line 1299
    .end local v0           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_37
    invoke-static {p2}, Landroid/pim/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1300
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1301
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1305
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_66
    const/4 v1, 0x0

    .line 1307
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1310
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_68
    const-string v1, "HOME"

    .line 1311
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1314
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_6b
    const-string v1, "WORK"

    .line 1315
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1318
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_6e
    const/4 v1, 0x0

    .line 1319
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1322
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_70
    const-string v1, "CELL"

    .line 1323
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1c

    .line 1297
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_37
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_70
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, ""

    .line 709
    const/4 v3, 0x0

    .line 710
    .local v3, emailAddressExists:Z
    if-eqz p1, :cond_65

    .line 711
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 712
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 713
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, emailAddress:Ljava/lang/String;
    if-eqz v2, :cond_28

    .line 715
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 717
    :cond_28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 720
    const-string v10, "data2"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 721
    .local v9, typeAsObject:Ljava/lang/Integer;
    if-eqz v9, :cond_5e

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    .line 723
    .local v8, type:I
    :goto_3b
    const-string v10, "data3"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, label:Ljava/lang/String;
    const-string v10, "is_primary"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 725
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_63

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_61

    move v5, v12

    .line 727
    .local v5, isPrimary:Z
    :goto_50
    const/4 v3, 0x1

    .line 728
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 729
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {p0, v8, v7, v2, v5}, Landroid/pim/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    .line 721
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    :cond_5e
    const/4 v10, 0x3

    move v8, v10

    goto :goto_3b

    .restart local v6       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v7       #label:Ljava/lang/String;
    .restart local v8       #type:I
    :cond_61
    move v5, v11

    .line 725
    goto :goto_50

    :cond_63
    move v5, v11

    goto :goto_50

    .line 735
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #typeAsObject:Ljava/lang/Integer;
    :cond_65
    if-nez v3, :cond_72

    iget-boolean v10, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v10, :cond_72

    .line 736
    const-string v10, ""

    const-string v10, ""

    invoke-virtual {p0, v12, v13, v13, v11}, Landroid/pim/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 739
    :cond_72
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_4b

    .line 1150
    const/4 v9, 0x0

    .line 1151
    .local v9, primaryBirthday:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1152
    .local v10, secondaryBirthday:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1153
    .local v1, contentValues:Landroid/content/ContentValues;
    if-eqz v1, :cond_8

    .line 1156
    const-string v11, "data2"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1158
    .local v3, eventTypeAsInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_4c

    .line 1159
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1163
    .local v2, eventType:I
    :goto_22
    const/4 v11, 0x3

    if-ne v2, v11, :cond_72

    .line 1164
    const-string v11, "data1"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, birthdayCandidate:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 1168
    const-string v11, "is_super_primary"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1170
    .local v8, isSuperPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_51

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_4e

    const/4 v11, 0x1

    move v7, v11

    .line 1172
    .local v7, isSuperPrimary:Z
    :goto_3d
    if-eqz v7, :cond_54

    .line 1174
    move-object v9, v0

    .line 1193
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #eventType:I
    .end local v3           #eventTypeAsInteger:Ljava/lang/Integer;
    .end local v7           #isSuperPrimary:Z
    .end local v8           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_40
    if-eqz v9, :cond_7c

    .line 1194
    const-string v11, "BDAY"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #primaryBirthday:Ljava/lang/String;
    .end local v10           #secondaryBirthday:Ljava/lang/String;
    :cond_4b
    :goto_4b
    return-object p0

    .line 1161
    .restart local v1       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #eventTypeAsInteger:Ljava/lang/Integer;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #primaryBirthday:Ljava/lang/String;
    .restart local v10       #secondaryBirthday:Ljava/lang/String;
    :cond_4c
    const/4 v2, 0x2

    .restart local v2       #eventType:I
    goto :goto_22

    .line 1170
    .restart local v0       #birthdayCandidate:Ljava/lang/String;
    .restart local v8       #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_4e
    const/4 v11, 0x0

    move v7, v11

    goto :goto_3d

    :cond_51
    const/4 v11, 0x0

    move v7, v11

    goto :goto_3d

    .line 1177
    .restart local v7       #isSuperPrimary:Z
    :cond_54
    const-string v11, "is_primary"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1179
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_6b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_68

    const/4 v11, 0x1

    move v5, v11

    .line 1181
    .local v5, isPrimary:Z
    :goto_64
    if-eqz v5, :cond_6e

    .line 1183
    move-object v9, v0

    goto :goto_8

    .line 1179
    .end local v5           #isPrimary:Z
    :cond_68
    const/4 v11, 0x0

    move v5, v11

    goto :goto_64

    :cond_6b
    const/4 v11, 0x0

    move v5, v11

    goto :goto_64

    .line 1184
    .restart local v5       #isPrimary:Z
    :cond_6e
    if-nez v10, :cond_8

    .line 1186
    move-object v10, v0

    goto :goto_8

    .line 1188
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #isSuperPrimary:Z
    .end local v8           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_72
    iget-boolean v11, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v11, :cond_8

    .line 1190
    const-string v11, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v11, v1}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_8

    .line 1196
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #eventType:I
    .end local v3           #eventTypeAsInteger:Ljava/lang/Integer;
    :cond_7c
    if-eqz v10, :cond_4b

    .line 1197
    const-string v11, "BDAY"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public appendIms(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 957
    if-eqz p1, :cond_9c

    .line 958
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 959
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v11, "data5"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 960
    .local v8, protocolAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_7

    .line 963
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/pim/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v7

    .line 964
    .local v7, propertyName:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 967
    const-string v11, "data1"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 969
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 971
    :cond_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 976
    const-string v11, "data2"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 977
    .local v9, typeAsInteger:Ljava/lang/Integer;
    if-eqz v9, :cond_70

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_43
    packed-switch v11, :pswitch_data_9e

    .line 993
    const/4 v10, 0x0

    .line 999
    .local v10, typeAsString:Ljava/lang/String;
    :goto_47
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v6, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_55

    .line 1001
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_55
    const-string v11, "is_primary"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1004
    .local v4, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_98

    const/4 v11, 0x1

    move v3, v11

    .line 1006
    .local v3, isPrimary:Z
    :goto_65
    if-eqz v3, :cond_6c

    .line 1007
    const-string v11, "PREF"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_6c
    invoke-virtual {p0, v7, v6, v1}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_7

    .line 977
    .end local v3           #isPrimary:Z
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_70
    const/4 v11, 0x3

    goto :goto_43

    .line 979
    :pswitch_72
    const-string v10, "HOME"

    .line 980
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_47

    .line 983
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_75
    const-string v10, "WORK"

    .line 984
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_47

    .line 987
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_78
    const-string v11, "data3"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, label:Ljava/lang/String;
    if-eqz v5, :cond_95

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 989
    .restart local v10       #typeAsString:Ljava/lang/String;
    :goto_94
    goto :goto_47

    .line 988
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_95
    const/4 v11, 0x0

    move-object v10, v11

    goto :goto_94

    .end local v5           #label:Ljava/lang/String;
    .restart local v4       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v6       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #typeAsString:Ljava/lang/String;
    :cond_98
    move v3, v13

    .line 1004
    goto :goto_65

    :cond_9a
    move v3, v13

    goto :goto_65

    .line 1013
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #propertyName:Ljava/lang/String;
    .end local v8           #protocolAsObject:Ljava/lang/Integer;
    .end local v9           #typeAsInteger:Ljava/lang/Integer;
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_9c
    return-object p0

    .line 977
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_78
        :pswitch_72
        :pswitch_75
    .end packed-switch
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    const/4 v0, 0x0

    .line 1624
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1625
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 11
    .parameter "propertyName"
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"

    .prologue
    .line 1634
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1635
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1628
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 1629
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 10
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1639
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1640
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .registers 10
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ";"

    .line 1645
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    if-eqz p2, :cond_19

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 1647
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1650
    :cond_19
    if-eqz p4, :cond_29

    .line 1651
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    :cond_29
    if-eqz p5, :cond_51

    .line 1657
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    invoke-direct {p0, p3}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, encodedValue:Ljava/lang/String;
    :goto_3d
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    return-void

    .line 1663
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_51
    invoke-direct {p0, p3}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_3d
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .registers 13
    .parameter "propertyName"
    .parameter
    .parameter
    .parameter "needCharset"
    .parameter "needQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, ";"

    .line 1679
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    if-eqz p2, :cond_19

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_19

    .line 1681
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1684
    :cond_19
    if-eqz p4, :cond_29

    .line 1685
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    :cond_29
    if-eqz p5, :cond_39

    .line 1689
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    :cond_39
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    const/4 v1, 0x1

    .line 1695
    .local v1, first:Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1697
    .local v3, rawValue:Ljava/lang/String;
    if-eqz p5, :cond_60

    .line 1698
    invoke-direct {p0, v3}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, encodedValue:Ljava/lang/String;
    :goto_57
    if-eqz v1, :cond_65

    .line 1708
    const/4 v1, 0x0

    .line 1712
    :goto_5a
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 1704
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_60
    invoke-direct {p0, v3}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_57

    .line 1710
    :cond_65
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 1714
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v3           #rawValue:Ljava/lang/String;
    :cond_6d
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .registers 11
    .parameter "propertyName"
    .parameter
    .parameter "needCharset"
    .parameter "needQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1673
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1674
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    .line 1589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1594
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1595
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 10
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1599
    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    move v4, v2

    .line 1601
    .local v4, needCharset:Z
    :goto_d
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move v5, v2

    .local v5, reallyUseQuotedPrintable:Z
    :goto_1c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1604
    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1606
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_24
    move v4, v1

    .line 1599
    goto :goto_d

    .restart local v4       #needCharset:Z
    :cond_26
    move v5, v1

    .line 1601
    goto :goto_1c
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .parameter "propertyName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1610
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v0, :cond_20

    invoke-static {p3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_20

    move v4, v2

    .line 1613
    .local v4, needCharset:Z
    :goto_d
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_22

    invoke-static {p3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_22

    move v5, v2

    .local v5, reallyUseQuotedPrintable:Z
    :goto_18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1616
    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1618
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_20
    move v4, v1

    .line 1610
    goto :goto_d

    .restart local v4       #needCharset:Z
    :cond_22
    move v5, v1

    .line 1613
    goto :goto_18
.end method

.method public appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 236
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_1b

    .line 237
    const-string v3, "N"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_1a
    :goto_1a
    return-object p0

    .line 238
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    move v3, v0

    if-eqz v3, :cond_1a

    .line 240
    const-string v3, "N"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 246
    :cond_39
    invoke-direct/range {p0 .. p1}, Landroid/pim/vcard/VCardBuilder;->getPrimaryContentValue(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v9

    .line 247
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "data3"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, familyName:Ljava/lang/String;
    const-string v3, "data5"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, middleName:Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, givenName:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, prefix:Ljava/lang/String;
    const-string v3, "data6"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, suffix:Ljava/lang/String;
    const-string v3, "data1"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, displayName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e5

    .line 255
    :cond_6d
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const/4 v11, 0x1

    aput-object v6, v3, v11

    const/4 v11, 0x2

    aput-object v5, v3, v11

    const/4 v11, 0x3

    aput-object v7, v3, v11

    const/4 v11, 0x4

    aput-object v8, v3, v11

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v20

    .line 257
    .local v20, reallyAppendCharsetParameterToName:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_20b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20b

    :cond_c9
    const/4 v3, 0x1

    move/from16 v23, v3

    .line 266
    .local v23, reallyUseQuotedPrintableToName:Z
    :goto_cc
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_210

    .line 267
    move-object/from16 v18, v10

    .line 273
    .local v18, formattedName:Ljava/lang/String;
    :goto_d4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v3, v10

    .end local v10           #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v19

    .line 275
    .local v19, reallyAppendCharsetParameterToFN:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_21f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v3, v10

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21f

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 284
    .local v22, reallyUseQuotedPrintableToFN:Z
    :goto_f7
    if-eqz v23, :cond_224

    .line 285
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 287
    .local v14, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 288
    .local v15, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 289
    .local v16, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 298
    .local v17, encodedSuffix:Ljava/lang/String;
    :goto_11c
    if-eqz v22, :cond_249

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 302
    .local v13, encodedFormattedname:Ljava/lang/String;
    :goto_127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "N"

    .end local v4           #familyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_254

    .line 304
    if-eqz v20, :cond_151

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_151
    if-eqz v23, :cond_167

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    if-eqz v19, :cond_1d1

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_1d1
    if-eqz v22, :cond_1e7

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .end local v12           #encodedFamily:Ljava/lang/String;
    .end local v13           #encodedFormattedname:Ljava/lang/String;
    .end local v14           #encodedGiven:Ljava/lang/String;
    .end local v15           #encodedMiddle:Ljava/lang/String;
    .end local v16           #encodedPrefix:Ljava/lang/String;
    .end local v17           #encodedSuffix:Ljava/lang/String;
    .end local v18           #formattedName:Ljava/lang/String;
    .end local v19           #reallyAppendCharsetParameterToFN:Z
    .end local v20           #reallyAppendCharsetParameterToName:Z
    .end local v22           #reallyUseQuotedPrintableToFN:Z
    .end local v23           #reallyUseQuotedPrintableToName:Z
    :cond_203
    :goto_203
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_1a

    .line 257
    .restart local v4       #familyName:Ljava/lang/String;
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v20       #reallyAppendCharsetParameterToName:Z
    :cond_20b
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_cc

    .line 269
    .restart local v23       #reallyUseQuotedPrintableToName:Z
    :cond_210
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #formattedName:Ljava/lang/String;
    goto/16 :goto_d4

    .line 275
    .end local v10           #displayName:Ljava/lang/String;
    .restart local v19       #reallyAppendCharsetParameterToFN:Z
    :cond_21f
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_f7

    .line 291
    .restart local v22       #reallyUseQuotedPrintableToFN:Z
    :cond_224
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 292
    .restart local v12       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 293
    .restart local v14       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 294
    .restart local v15       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 295
    .restart local v16       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_11c

    .line 298
    :cond_249
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_127

    .line 320
    .end local v4           #familyName:Ljava/lang/String;
    .restart local v13       #encodedFormattedname:Ljava/lang/String;
    :cond_254
    if-eqz v20, :cond_26d

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_26d
    if-eqz v23, :cond_283

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a4

    .line 354
    .end local v12           #encodedFamily:Ljava/lang/String;
    .end local v13           #encodedFormattedname:Ljava/lang/String;
    .end local v14           #encodedGiven:Ljava/lang/String;
    .end local v15           #encodedMiddle:Ljava/lang/String;
    .end local v16           #encodedPrefix:Ljava/lang/String;
    .end local v17           #encodedSuffix:Ljava/lang/String;
    .end local v18           #formattedName:Ljava/lang/String;
    .end local v19           #reallyAppendCharsetParameterToFN:Z
    .end local v20           #reallyAppendCharsetParameterToName:Z
    .end local v22           #reallyUseQuotedPrintableToFN:Z
    .end local v23           #reallyUseQuotedPrintableToName:Z
    .restart local v4       #familyName:Ljava/lang/String;
    .restart local v10       #displayName:Ljava/lang/String;
    :cond_2e5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f2

    .line 355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_3e3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .end local v4           #familyName:Ljava/lang/String;
    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e3

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 358
    .local v21, reallyUseQuotedPrintableToDisplayName:Z
    :goto_301
    if-eqz v21, :cond_3e8

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 363
    .local v11, encodedDisplayName:Ljava/lang/String;
    :goto_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33b

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_33b
    if-eqz v21, :cond_351

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c5

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_203

    .line 355
    .end local v11           #encodedDisplayName:Ljava/lang/String;
    .end local v21           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_3e3
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_301

    .line 358
    .restart local v21       #reallyUseQuotedPrintableToDisplayName:Z
    :cond_3e8
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_30b

    .line 391
    .end local v21           #reallyUseQuotedPrintableToDisplayName:Z
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_3f2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    move v3, v0

    if-eqz v3, :cond_411

    .line 393
    const-string v3, "N"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_203

    .line 395
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_203

    .line 396
    const-string v3, "N"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_203
.end method

.method public appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v4, :cond_2b

    .line 605
    const/4 v3, 0x0

    .line 612
    .local v3, useAndroidProperty:Z
    :goto_5
    if-eqz p1, :cond_37

    .line 613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 614
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, nickname:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 618
    if-eqz v3, :cond_31

    .line 619
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v4, v0}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_b

    .line 606
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_2b
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v4, :cond_37

    .line 607
    const/4 v3, 0x1

    .restart local v3       #useAndroidProperty:Z
    goto :goto_5

    .line 621
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #nickname:Ljava/lang/String;
    :cond_31
    const-string v4, "NICKNAME"

    invoke-virtual {p0, v4, v2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 625
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_37
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "data1"

    const-string v11, "NOTE"

    .line 1102
    if-eqz p1, :cond_62

    .line 1103
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v8, :cond_67

    .line 1104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .local v4, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1106
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1107
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v8, "data1"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    .local v3, note:Ljava/lang/String;
    if-nez v3, :cond_2c

    .line 1109
    const-string v3, ""

    .line 1111
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_16

    .line 1112
    if-eqz v1, :cond_39

    .line 1113
    const/4 v1, 0x0

    .line 1117
    :goto_35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1115
    :cond_39
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 1120
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #note:Ljava/lang/String;
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, noteStr:Ljava/lang/String;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_63

    move v7, v10

    .line 1125
    .local v7, shouldAppendCharsetInfo:Z
    :goto_4e
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_65

    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_65

    move v6, v10

    .line 1128
    .local v6, reallyUseQuotedPrintable:Z
    :goto_5d
    const-string v8, "NOTE"

    invoke-virtual {p0, v11, v5, v7, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1145
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_62
    return-object p0

    .restart local v1       #first:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #noteBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #noteStr:Ljava/lang/String;
    :cond_63
    move v7, v9

    .line 1123
    goto :goto_4e

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_65
    move v6, v9

    .line 1125
    goto :goto_5d

    .line 1131
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6b
    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1132
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    const-string v8, "data1"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1133
    .restart local v5       #noteStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 1134
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a3

    move v7, v10

    .line 1136
    .restart local v7       #shouldAppendCharsetInfo:Z
    :goto_8e
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_a5

    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a5

    move v6, v10

    .line 1139
    .restart local v6       #reallyUseQuotedPrintable:Z
    :goto_9d
    const-string v8, "NOTE"

    invoke-virtual {p0, v11, v5, v7, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_6b

    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_a3
    move v7, v9

    .line 1134
    goto :goto_8e

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_a5
    move v6, v9

    .line 1136
    goto :goto_9d
.end method

.method public appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1035
    if-eqz p1, :cond_ac

    .line 1036
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1037
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, company:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 1039
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1041
    :cond_20
    const-string v7, "data5"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, department:Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 1043
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1045
    :cond_2c
    const-string v7, "data4"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1046
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_38

    .line 1047
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1050
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    .local v4, orgBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 1052
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    :cond_46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5a

    .line 1055
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_57

    .line 1056
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    :cond_57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1061
    .local v5, orgline:Ljava/lang/String;
    const-string v7, "ORG"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v5, v8, v10

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a4

    move v8, v11

    :goto_6b
    iget-boolean v9, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v9, :cond_a6

    new-array v9, v11, [Ljava/lang/String;

    aput-object v5, v9, v10

    invoke-static {v9}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a6

    move v9, v11

    :goto_7a
    invoke-virtual {p0, v7, v5, v8, v9}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1066
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1067
    const-string v7, "TITLE"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v6, v8, v10

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a8

    move v8, v11

    :goto_90
    iget-boolean v9, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v9, :cond_aa

    new-array v9, v11, [Ljava/lang/String;

    aput-object v6, v9, v10

    invoke-static {v9}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_aa

    move v9, v11

    :goto_9f
    invoke-virtual {p0, v7, v6, v8, v9}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_8

    :cond_a4
    move v8, v10

    .line 1061
    goto :goto_6b

    :cond_a6
    move v9, v10

    goto :goto_7a

    :cond_a8
    move v8, v10

    .line 1067
    goto :goto_90

    :cond_aa
    move v9, v10

    goto :goto_9f

    .line 1074
    .end local v0           #company:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #department:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #orgBuilder:Ljava/lang/StringBuilder;
    .end local v5           #orgline:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_ac
    return-object p0
.end method

.method public appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 630
    .local v14, phoneLineExists:Z
    if-eqz p1, :cond_dc

    .line 631
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 632
    .local v17, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_dc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 633
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v20, "data2"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 634
    .local v19, typeAsObject:Ljava/lang/Integer;
    const-string v20, "data3"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 635
    .local v13, label:Ljava/lang/String;
    const-string v20, "is_primary"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 636
    .local v12, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v12, :cond_88

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_83

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 638
    .local v11, isPrimary:Z
    :goto_3f
    const-string v20, "data1"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 639
    .local v15, phoneNumber:Ljava/lang/String;
    if-eqz v15, :cond_4e

    .line 640
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 642
    :cond_4e
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 645
    if-eqz v19, :cond_8d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v18, v20

    .line 646
    .local v18, type:I
    :goto_5c
    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_92

    .line 647
    const/4 v14, 0x1

    .line 648
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 649
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v13

    move-object v3, v15

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    .line 636
    .end local v11           #isPrimary:Z
    .end local v15           #phoneNumber:Ljava/lang/String;
    .end local v18           #type:I
    :cond_83
    const/16 v20, 0x0

    move/from16 v11, v20

    goto :goto_3f

    :cond_88
    const/16 v20, 0x0

    move/from16 v11, v20

    goto :goto_3f

    .line 645
    .restart local v11       #isPrimary:Z
    .restart local v15       #phoneNumber:Ljava/lang/String;
    :cond_8d
    const/16 v20, 0x1

    move/from16 v18, v20

    goto :goto_5c

    .line 660
    .restart local v18       #type:I
    :cond_92
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 661
    .local v16, phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_c

    .line 664
    const/4 v14, 0x1

    .line 665
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_a4
    :goto_a4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 666
    .local v5, actualPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a4

    .line 667
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/pim/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v7

    .line 668
    .local v7, format:I
    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, formattedPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v13

    move-object v3, v8

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a4

    .line 678
    .end local v5           #actualPhoneNumber:Ljava/lang/String;
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v7           #format:I
    .end local v8           #formattedPhoneNumber:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #isPrimary:Z
    .end local v12           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v13           #label:Ljava/lang/String;
    .end local v15           #phoneNumber:Ljava/lang/String;
    .end local v16           #phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18           #type:I
    .end local v19           #typeAsObject:Ljava/lang/Integer;
    :cond_dc
    if-nez v14, :cond_ff

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_ff

    .line 679
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, ""

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 682
    :cond_ff
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "encodedValue"
    .parameter "photoType"

    .prologue
    const-string v9, ";"

    const-string v11, " "

    const-string v10, "\r\n"

    .line 1504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .local v6, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v8, "PHOTO"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const-string v8, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v8, :cond_6c

    .line 1508
    const-string v8, "ENCODING=b"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    :goto_1e
    const-string v8, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-direct {p0, v6, p2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1514
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1518
    .local v7, tmpStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1519
    .restart local v6       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1520
    .local v2, lineCount:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 1521
    .local v1, length:I
    const/16 v8, 0x4b

    const-string v9, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v4, v8, v9

    .line 1523
    .local v4, maxNumForFirstLine:I
    const-string v8, " "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v4, v8

    .line 1524
    .local v5, maxNumInGeneral:I
    move v3, v4

    .line 1525
    .local v3, maxNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_50
    if-ge v0, v1, :cond_72

    .line 1526
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1527
    add-int/lit8 v2, v2, 0x1

    .line 1528
    if-le v2, v3, :cond_69

    .line 1529
    const-string v8, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    const-string v8, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    move v3, v5

    .line 1532
    const/4 v2, 0x0

    .line 1525
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 1510
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v3           #maxNum:I
    .end local v4           #maxNumForFirstLine:I
    .end local v5           #maxNumInGeneral:I
    .end local v7           #tmpStr:Ljava/lang/String;
    :cond_6c
    const-string v8, "ENCODING=BASE64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1535
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v3       #maxNum:I
    .restart local v4       #maxNumForFirstLine:I
    .restart local v5       #maxNumInGeneral:I
    .restart local v7       #tmpStr:Ljava/lang/String;
    :cond_72
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_3d

    .line 1079
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1080
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_6

    .line 1083
    const-string v5, "data15"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1084
    .local v1, data:[B
    if-eqz v1, :cond_6

    .line 1087
    invoke-static {v1}, Landroid/pim/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v4

    .line 1088
    .local v4, photoType:Ljava/lang/String;
    if-nez v4, :cond_2a

    .line 1089
    const-string v5, "VCardBuilder"

    const-string v6, "Unknown photo type. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1092
    :cond_2a
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1093
    .local v3, photoString:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1094
    invoke-virtual {p0, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1098
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:[B
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #photoString:Ljava/lang/String;
    .end local v4           #photoType:Ljava/lang/String;
    :cond_3d
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .registers 15
    .parameter "type"
    .parameter "label"
    .parameter "contentValues"
    .parameter "isPrimary"
    .parameter "emitLineEveryTime"

    .prologue
    const-string v8, ";"

    .line 1223
    invoke-direct {p0, p3}, Landroid/pim/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Landroid/pim/vcard/VCardBuilder$PostalStruct;

    move-result-object v3

    .line 1224
    .local v3, postalStruct:Landroid/pim/vcard/VCardBuilder$PostalStruct;
    if-nez v3, :cond_80

    .line 1225
    if-eqz p5, :cond_7f

    .line 1226
    const/4 v4, 0x0

    .line 1227
    .local v4, reallyUseQuotedPrintable:Z
    const/4 v1, 0x0

    .line 1228
    .local v1, appendCharset:Z
    const-string v0, ""

    .line 1239
    .local v0, addressValue:Ljava/lang/String;
    :goto_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_1a

    .line 1241
    const-string v5, "PREF"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_1a
    packed-switch p1, :pswitch_data_be

    .line 1267
    const-string v5, "VCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown StructuredPostal type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_35
    :goto_35
    :pswitch_35
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1274
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-direct {p0, v2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1277
    :cond_4c
    if-eqz v1, :cond_5c

    .line 1282
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_5c
    if-eqz v4, :cond_6c

    .line 1286
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_6c
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .end local v0           #addressValue:Ljava/lang/String;
    .end local v1           #appendCharset:Z
    .end local v2           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #reallyUseQuotedPrintable:Z
    :cond_7f
    return-void

    .line 1233
    :cond_80
    iget-boolean v4, v3, Landroid/pim/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1234
    .restart local v4       #reallyUseQuotedPrintable:Z
    iget-boolean v1, v3, Landroid/pim/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1235
    .restart local v1       #appendCharset:Z
    iget-object v0, v3, Landroid/pim/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .restart local v0       #addressValue:Ljava/lang/String;
    goto :goto_e

    .line 1245
    .restart local v2       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_87
    const-string v5, "HOME"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1249
    :pswitch_8d
    const-string v5, "WORK"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1253
    :pswitch_93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v5}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 1243
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_93
        :pswitch_87
        :pswitch_8d
        :pswitch_35
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 743
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 744
    :cond_8
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_2f

    .line 745
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_2f
    :goto_2f
    return-object p0

    .line 752
    :cond_30
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_38

    .line 753
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_2f

    .line 755
    :cond_38
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_2f
.end method

.method public appendRelation(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1205
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_1e

    if-eqz p1, :cond_1e

    .line 1206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1207
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_a

    .line 1210
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_a

    .line 1213
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1e
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .parameter "typeAsInteger"
    .parameter "label"
    .parameter "encodedValue"
    .parameter "isPrimary"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "VOICE"

    const-string v7, "WORK"

    .line 1346
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    if-nez p1, :cond_4a

    .line 1351
    const/4 v1, 0x7

    .line 1356
    .local v1, type:I
    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v0, parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_156

    .line 1466
    :cond_20
    :goto_20
    :pswitch_20
    if-eqz p4, :cond_27

    .line 1467
    const-string v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_150

    .line 1471
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1476
    :goto_36
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    return-void

    .line 1353
    .end local v0           #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #type:I
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #type:I
    goto :goto_18

    .line 1359
    .restart local v0       #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4f
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 1364
    :pswitch_5d
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v7, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 1369
    :pswitch_6b
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 1374
    :pswitch_7d
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v7, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 1379
    :pswitch_8f
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1383
    :pswitch_95
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_9f

    .line 1386
    const-string v3, "VOICE"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1388
    :cond_9f
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1393
    :pswitch_a6
    const-string v3, "VOICE"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1397
    :pswitch_ad
    const-string v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1402
    :pswitch_b4
    const-string v3, "WORK"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    const/4 p4, 0x1

    .line 1404
    goto/16 :goto_20

    .line 1407
    :pswitch_bc
    const-string v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1411
    :pswitch_c3
    const/4 p4, 0x1

    .line 1412
    goto/16 :goto_20

    .line 1415
    :pswitch_c6
    const-string v3, "FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1419
    :pswitch_cd
    const-string v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1423
    :pswitch_d4
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v7, v3, v5

    const-string v4, "CELL"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_20

    .line 1428
    :pswitch_e7
    const-string v3, "WORK"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_f7

    .line 1431
    const-string v3, "VOICE"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1433
    :cond_f7
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1438
    :pswitch_fe
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1442
    :pswitch_105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 1444
    const-string v3, "VOICE"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1445
    :cond_112
    invoke-static {p2}, Landroid/pim/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 1446
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1448
    :cond_11f
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1449
    .local v2, upperLabel:Ljava/lang/String;
    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 1450
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1451
    :cond_12e
    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 1473
    .end local v2           #upperLabel:Ljava/lang/String;
    :cond_150
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_36

    .line 1357
    nop

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_105
        :pswitch_4f
        :pswitch_8f
        :pswitch_5d
        :pswitch_7d
        :pswitch_6b
        :pswitch_95
        :pswitch_a6
        :pswitch_20
        :pswitch_ad
        :pswitch_b4
        :pswitch_bc
        :pswitch_c3
        :pswitch_c6
        :pswitch_20
        :pswitch_cd
        :pswitch_20
        :pswitch_d4
        :pswitch_e7
        :pswitch_20
        :pswitch_fe
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1017
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2a

    .line 1018
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1019
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, website:Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 1021
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1026
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1027
    const-string v3, "URL"

    invoke-virtual {p0, v3, v2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1031
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #website:Ljava/lang/String;
    :cond_2a
    return-object p0
.end method

.method public clear()V
    .registers 4

    .prologue
    const-string v2, "VERSION"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mEndAppended:Z

    .line 160
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30:Z

    if-eqz v0, :cond_1f

    .line 162
    const-string v0, "VERSION"

    const-string v0, "3.0"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_1e
    return-void

    .line 164
    :cond_1f
    const-string v0, "VERSION"

    const-string v0, "2.1"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, ""

    .line 1901
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_30

    .line 1902
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_26

    .line 1903
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_26
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mEndAppended:Z

    .line 1911
    :cond_30
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
