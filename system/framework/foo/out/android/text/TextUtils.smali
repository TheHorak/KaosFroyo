.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static sEllipsis:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 622
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 996
    sput-object v1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1682
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1683
    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method private static blank(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 9
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 1269
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1270
    .local v2, len:I
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1272
    .local v0, buf:[C
    if-eqz p1, :cond_e

    .line 1273
    invoke-static {p0, v5, p1, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1275
    :cond_e
    if-eq p2, v2, :cond_13

    .line 1276
    invoke-static {p0, p2, v2, v0, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1279
    :cond_13
    if-eq p1, p2, :cond_25

    .line 1280
    const/16 v4, 0x2026

    aput-char v4, v0, p1

    .line 1282
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_1b
    if-ge v1, p2, :cond_25

    .line 1283
    const v4, 0xfeff

    aput-char v4, v0, v1

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1287
    .end local v1           #i:I
    :cond_25
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1288
    .local v3, ret:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1290
    return-object v3
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 26
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"

    .prologue
    .line 1308
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 1309
    .local v14, len:I
    new-array v12, v14, [C

    .line 1310
    .local v12, buf:[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v14

    move-object v3, v12

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1312
    const/4 v5, 0x0

    .line 1313
    .local v5, commaCount:I
    const/4 v8, 0x0

    .local v8, i:I
    move v13, v5

    .end local v5           #commaCount:I
    .local v13, commaCount:I
    :goto_14
    if-ge v8, v14, :cond_22

    .line 1314
    aget-char v5, v12, v8

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_112

    .line 1315
    add-int/lit8 v5, v13, 0x1

    .line 1313
    .end local v13           #commaCount:I
    .restart local v5       #commaCount:I
    :goto_1e
    add-int/lit8 v8, v8, 0x1

    move v13, v5

    .end local v5           #commaCount:I
    .restart local v13       #commaCount:I
    goto :goto_14

    .line 1321
    :cond_22
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_b6

    .line 1322
    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 1323
    .local v7, sp:Landroid/text/Spanned;
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 1324
    .local v6, temppaint:Landroid/text/TextPaint;
    mul-int/lit8 v5, v14, 0x2

    new-array v10, v5, [F

    .line 1327
    .local v10, wid:[F
    const/4 v8, 0x0

    :goto_38
    if-ge v8, v14, :cond_50

    .line 1328
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v8, v14, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1330
    .local v9, next:I
    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 1331
    const/4 v5, 0x0

    add-int v11, v14, v8

    sub-int v8, v9, v8

    invoke-static {v10, v5, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    .end local v8           #i:I
    move v8, v9

    .restart local v8       #i:I
    goto :goto_38

    .line 1334
    .end local v9           #next:I
    :cond_50
    const/4 v5, 0x0

    invoke-static {v10, v14, v10, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    .end local v6           #temppaint:Landroid/text/TextPaint;
    .end local v7           #sp:Landroid/text/Spanned;
    :goto_54
    const/4 v6, 0x0

    .line 1341
    .local v6, ok:I
    add-int/lit8 v9, v13, 0x1

    .line 1342
    .local v9, okRemaining:I
    const-string v7, ""

    .line 1344
    .local v7, okFormat:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1345
    .local v11, w:I
    const/4 v5, 0x0

    .line 1347
    .local v5, count:I
    const/4 v8, 0x0

    move v15, v9

    .end local v9           #okRemaining:I
    .local v15, okRemaining:I
    move v9, v6

    .end local v6           #ok:I
    .local v9, ok:I
    move v6, v11

    .end local v11           #w:I
    .local v6, w:I
    move-object v11, v7

    .end local v7           #okFormat:Ljava/lang/String;
    .local v11, okFormat:Ljava/lang/String;
    :goto_60
    if-ge v8, v14, :cond_ea

    .line 1348
    int-to-float v6, v6

    aget v7, v10, v8

    .end local v6           #w:I
    add-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1350
    .local v17, w:I
    aget-char v6, v12, v8

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_10e

    .line 1351
    add-int/lit8 v5, v5, 0x1

    .line 1353
    sub-int v6, v13, v5

    add-int/lit8 v16, v6, 0x1

    .line 1357
    .local v16, remaining:I
    const/4 v6, 0x1

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_c4

    .line 1358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1363
    .local v6, format:Ljava/lang/String;
    :goto_92
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1365
    .local v7, moreWid:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v7, v7, v18

    cmpg-float v7, v7, p2

    if-gtz v7, :cond_10e

    .line 1366
    .end local v7           #moreWid:F
    add-int/lit8 v7, v8, 0x1

    .line 1367
    .end local v9           #ok:I
    .local v7, ok:I
    move/from16 v9, v16

    .line 1368
    .end local v15           #okRemaining:I
    .local v9, okRemaining:I
    move-object v6, v6

    .end local v11           #okFormat:Ljava/lang/String;
    .local v6, okFormat:Ljava/lang/String;
    move-object/from16 v20, v6

    .end local v6           #okFormat:Ljava/lang/String;
    .local v20, okFormat:Ljava/lang/String;
    move v6, v7

    .end local v7           #ok:I
    .local v6, ok:I
    move-object/from16 v7, v20

    .line 1347
    .end local v16           #remaining:I
    .end local v20           #okFormat:Ljava/lang/String;
    .local v7, okFormat:Ljava/lang/String;
    :goto_ae
    add-int/lit8 v8, v8, 0x1

    move-object v11, v7

    .end local v7           #okFormat:Ljava/lang/String;
    .restart local v11       #okFormat:Ljava/lang/String;
    move v15, v9

    .end local v9           #okRemaining:I
    .restart local v15       #okRemaining:I
    move v9, v6

    .end local v6           #ok:I
    .local v9, ok:I
    move/from16 v6, v17

    .end local v17           #w:I
    .local v6, w:I
    goto :goto_60

    .line 1336
    .end local v5           #count:I
    .end local v6           #w:I
    .end local v9           #ok:I
    .end local v10           #wid:[F
    .end local v11           #okFormat:Ljava/lang/String;
    .end local v15           #okRemaining:I
    :cond_b6
    new-array v10, v14, [F

    .line 1337
    .restart local v10       #wid:[F
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v14

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    goto :goto_54

    .line 1360
    .restart local v5       #count:I
    .restart local v9       #ok:I
    .restart local v11       #okFormat:Ljava/lang/String;
    .restart local v15       #okRemaining:I
    .restart local v16       #remaining:I
    .restart local v17       #w:I
    :cond_c4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v18

    move-object/from16 v0, p4

    move-object v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, format:Ljava/lang/String;
    goto :goto_92

    .line 1373
    .end local v16           #remaining:I
    .end local v17           #w:I
    .local v6, w:I
    :cond_ea
    move v0, v6

    int-to-float v0, v0

    move/from16 p1, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_f3

    .line 1378
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_f2
    return-object p0

    .line 1376
    .restart local p0
    .restart local p2
    .restart local p3
    :cond_f3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1377
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .end local p2
    .end local p3
    move-object/from16 p0, p1

    .line 1378
    goto :goto_f2

    .end local v6           #w:I
    .restart local v17       #w:I
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_10e
    move-object v7, v11

    .end local v11           #okFormat:Ljava/lang/String;
    .restart local v7       #okFormat:Ljava/lang/String;
    move v6, v9

    .end local v9           #ok:I
    .local v6, ok:I
    move v9, v15

    .end local v15           #okRemaining:I
    .local v9, okRemaining:I
    goto :goto_ae

    .end local v5           #count:I
    .end local v6           #ok:I
    .end local v7           #okFormat:Ljava/lang/String;
    .end local v9           #okRemaining:I
    .end local v10           #wid:[F
    .end local v17           #w:I
    :cond_112
    move v5, v13

    .end local v13           #commaCount:I
    .local v5, commaCount:I
    goto/16 :goto_1e
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 1443
    array-length v0, p0

    if-nez v0, :cond_7

    .line 1444
    const-string v0, ""

    .line 1480
    :goto_6
    return-object v0

    .line 1447
    :cond_7
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 1448
    aget-object v0, p0, v1

    goto :goto_6

    .line 1451
    :cond_e
    const/4 v8, 0x0

    .line 1452
    .local v8, spanned:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_10
    array-length v0, p0

    if-ge v6, v0, :cond_1a

    .line 1453
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 1454
    const/4 v8, 0x1

    .line 1459
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_20
    array-length v0, p0

    if-ge v6, v0, :cond_2e

    .line 1461
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1460
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 1452
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1464
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_2e
    if-nez v8, :cond_35

    .line 1465
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1468
    :cond_35
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1469
    .local v4, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1470
    .local v5, off:I
    const/4 v6, 0x0

    :goto_3c
    array-length v0, p0

    if-ge v6, v0, :cond_58

    .line 1471
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1473
    .local v2, len:I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_54

    .line 1474
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1477
    :cond_54
    add-int/2addr v5, v2

    .line 1470
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 1480
    .end local v2           #len:I
    :cond_58
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "kind"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 960
    if-nez p3, :cond_4

    .line 961
    const-class p3, Ljava/lang/Object;

    .line 964
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 966
    .local v3, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v5, v3

    if-ge v2, v5, :cond_32

    .line 967
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 968
    .local v4, st:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 969
    .local v0, en:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 971
    .local v1, fl:I
    if-ge v4, p1, :cond_21

    .line 972
    move v4, p1

    .line 973
    :cond_21
    if-le v0, p2, :cond_24

    .line 974
    move v0, p2

    .line 976
    :cond_24
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 966
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 979
    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v4           #st:I
    :cond_32
    return-void
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 11
    .parameter "cs"
    .parameter "printer"
    .parameter "prefix"

    .prologue
    .line 735
    instance-of v5, p0, Landroid/text/Spanned;

    if-eqz v5, :cond_8a

    .line 736
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    .line 737
    .local v4, sp:Landroid/text/Spanned;
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 739
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v5, v3

    if-ge v1, v5, :cond_a4

    .line 740
    aget-object v2, v3, v1

    .line 741
    .local v2, o:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fl=#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 749
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #os:[Ljava/lang/Object;
    .end local v4           #sp:Landroid/text/Spanned;
    :cond_8a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": (no spans)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 751
    :cond_a4
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"

    .prologue
    .line 1007
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 27
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"

    .prologue
    .line 1026
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    if-nez v5, :cond_11

    .line 1027
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 1028
    .local v5, r:Landroid/content/res/Resources;
    const v6, 0x10400b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #r:Landroid/content/res/Resources;
    sput-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1031
    :cond_11
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1036
    .local v8, len:I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-nez v5, :cond_1ad

    .line 1037
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    .line 1039
    .local v14, wid:F
    cmpg-float v5, v14, p2

    if-gtz v5, :cond_3b

    .line 1040
    if-eqz p5, :cond_3a

    .line 1041
    const/16 p1, 0x0

    const/16 p2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1263
    .end local v14           #wid:F
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :cond_3a
    :goto_3a
    return-object p0

    .line 1047
    .restart local v14       #wid:F
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_3b
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 1049
    .local v14, ellipsiswid:F
    cmpl-float v5, v14, p2

    if-lez v5, :cond_7c

    .line 1050
    if-eqz p5, :cond_54

    .line 1051
    const/16 p0, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p0

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1054
    .end local p0
    :cond_54
    if-eqz p4, :cond_79

    .line 1055
    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p0

    .line 1056
    .local p0, buf:[C
    const/4 v12, 0x0

    .end local p1
    .local v12, i:I
    :goto_5b
    if-ge v12, v8, :cond_65

    .line 1057
    const p1, 0xfeff

    aput-char p1, p0, v12

    .line 1056
    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    .line 1059
    :cond_65
    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1060
    .end local p2
    .local p1, ret:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->recycle([C)V

    move-object/from16 p0, p1

    .line 1061
    goto :goto_3a

    .line 1063
    .end local v12           #i:I
    .end local p0           #buf:[C
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    :cond_79
    const-string p0, ""

    goto :goto_3a

    .line 1067
    .local p0, text:Ljava/lang/CharSequence;
    :cond_7c
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_d8

    .line 1068
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float v10, p2, v14

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    .line 1071
    .local p1, fit:I
    if-eqz p5, :cond_9f

    .line 1072
    const/16 p2, 0x0

    sub-int p3, v8, p1

    move-object/from16 v0, p5

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1075
    .end local p2
    .end local p3
    :cond_9f
    if-eqz p4, :cond_b0

    .line 1076
    const/16 p2, 0x0

    sub-int p1, v8, p1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .end local p1           #fit:I
    move-result-object p0

    goto :goto_3a

    .line 1078
    .restart local p1       #fit:I
    :cond_b0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    sub-int p1, v8, p1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p1           #fit:I
    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1080
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_d8
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_12c

    .line 1081
    const/4 v7, 0x0

    const/4 v9, 0x1

    sub-float v10, p2, v14

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    .line 1084
    .local p1, fit:I
    if-eqz p5, :cond_f6

    .line 1085
    move-object/from16 v0, p5

    move/from16 v1, p1

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1088
    :cond_f6
    if-eqz p4, :cond_103

    .line 1089
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1091
    :cond_103
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    const/16 p3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p3
    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p1           #fit:I
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1094
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_12c
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float p3, p2, v14

    const/high16 v5, 0x4000

    div-float v10, p3, v5

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .end local p3
    move-result p3

    .line 1096
    .local p3, right:I
    sub-int v5, v8, p3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 1097
    .local v5, used:F
    const/4 v11, 0x0

    sub-int v12, v8, p3

    const/4 v13, 0x1

    sub-float p2, p2, v14

    sub-float v14, p2, v5

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .end local v14           #ellipsiswid:F
    .end local p2
    move-result p1

    .line 1100
    .local p1, left:I
    if-eqz p5, :cond_167

    .line 1101
    sub-int p2, v8, p3

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1104
    :cond_167
    if-eqz p4, :cond_171

    .line 1105
    sub-int p2, v8, p3

    invoke-static/range {p0 .. p2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1107
    :cond_171
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1108
    .local p0, s:Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p4
    move-result-object p1

    .end local p1           #left:I
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int p2, v8, p3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #s:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1122
    .end local v5           #used:F
    .local p0, text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    .restart local p4
    :cond_1ad
    mul-int/lit8 v5, v8, 0x2

    new-array v14, v5, [F

    .line 1123
    .local v14, wid:[F
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 1124
    .local v10, temppaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v11, v0

    .line 1127
    .local v11, sp:Landroid/text/Spanned;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1bc
    if-ge v12, v8, :cond_1d4

    .line 1128
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v11, v12, v8, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v13

    .line 1130
    .local v13, next:I
    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 1131
    const/4 v5, 0x0

    add-int v6, v8, v12

    sub-int v7, v13, v12

    invoke-static {v14, v5, v14, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1127
    move v12, v13

    goto :goto_1bc

    .line 1134
    .end local v13           #next:I
    :cond_1d4
    const/4 v5, 0x0

    .line 1135
    .local v5, sum:F
    const/4 v12, 0x0

    :goto_1d6
    if-ge v12, v8, :cond_1e0

    .line 1136
    add-int v6, v8, v12

    aget v6, v14, v6

    add-float/2addr v5, v6

    .line 1135
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d6

    .line 1139
    :cond_1e0
    cmpg-float v5, v5, p2

    if-gtz v5, :cond_1f5

    .line 1140
    .end local v5           #sum:F
    if-eqz p5, :cond_3a

    .line 1141
    const/16 p1, 0x0

    const/16 p2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    goto/16 :goto_3a

    .line 1147
    :cond_1f5
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 1149
    .local p1, ellipsiswid:F
    cmpl-float v5, p1, p2

    if-lez v5, :cond_24d

    .line 1150
    if-eqz p5, :cond_20e

    .line 1151
    const/16 p0, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p0

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1154
    .end local p0           #text:Ljava/lang/CharSequence;
    :cond_20e
    if-eqz p4, :cond_249

    .line 1155
    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p0

    .line 1156
    .local p0, buf:[C
    const/4 v12, 0x0

    .end local p1           #ellipsiswid:F
    :goto_215
    if-ge v12, v8, :cond_21f

    .line 1157
    const p1, 0xfeff

    aput-char p1, p0, v12

    .line 1156
    add-int/lit8 v12, v12, 0x1

    goto :goto_215

    .line 1159
    :cond_21f
    new-instance v19, Landroid/text/SpannableString;

    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .end local p2
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1160
    .local v19, ss:Landroid/text/SpannableString;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1161
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1162
    goto/16 :goto_3a

    .line 1164
    .end local v19           #ss:Landroid/text/SpannableString;
    .end local p0           #buf:[C
    .restart local p1       #ellipsiswid:F
    .restart local p2
    :cond_249
    const-string p0, ""

    goto/16 :goto_3a

    .line 1168
    .local p0, text:Ljava/lang/CharSequence;
    :cond_24d
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_2b6

    .line 1169
    const/16 p3, 0x0

    .line 1172
    .local p3, sum:F
    move v12, v8

    :goto_257
    if-ltz v12, :cond_267

    .line 1173
    add-int v5, v8, v12

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v5, v14, v5

    .line 1175
    .local v5, w:F
    add-float v6, v5, p3

    add-float v6, v6, p1

    cmpl-float v6, v6, p2

    if-lez v6, :cond_299

    .line 1182
    .end local v5           #w:F
    :cond_267
    if-eqz p5, :cond_273

    .line 1183
    const/16 p1, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1186
    .end local p1           #ellipsiswid:F
    :cond_273
    if-eqz p4, :cond_29e

    .line 1187
    new-instance v19, Landroid/text/SpannableString;

    const/16 p1, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1188
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1189
    goto/16 :goto_3a

    .line 1179
    .end local v19           #ss:Landroid/text/SpannableString;
    .restart local v5       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p1       #ellipsiswid:F
    :cond_299
    add-float p3, p3, v5

    .line 1172
    add-int/lit8 v12, v12, -0x1

    goto :goto_257

    .line 1191
    .end local v5           #w:F
    .end local p1           #ellipsiswid:F
    :cond_29e
    new-instance p1, Landroid/text/SpannableStringBuilder;

    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p2
    invoke-direct/range {p1 .. p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1192
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v12

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 p0, p1

    .line 1194
    goto/16 :goto_3a

    .line 1196
    .local p1, ellipsiswid:F
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_2b6
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_31a

    .line 1197
    const/16 p3, 0x0

    .line 1200
    .local p3, sum:F
    const/4 v12, 0x0

    :goto_2c0
    if-ge v12, v8, :cond_2ce

    .line 1201
    add-int v5, v8, v12

    aget v5, v14, v5

    .line 1203
    .restart local v5       #w:F
    add-float v6, v5, p3

    add-float v6, v6, p1

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2fa

    .line 1210
    .end local v5           #w:F
    :cond_2ce
    if-eqz p5, :cond_2d7

    .line 1211
    move-object/from16 v0, p5

    move v1, v12

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1214
    :cond_2d7
    if-eqz p4, :cond_2ff

    .line 1215
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    move v1, v12

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1216
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1217
    goto/16 :goto_3a

    .line 1207
    .end local v19           #ss:Landroid/text/SpannableString;
    .restart local v5       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    :cond_2fa
    add-float p3, p3, v5

    .line 1200
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c0

    .line 1219
    .end local v5           #w:F
    :cond_2ff
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #ellipsiswid:F
    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p2
    invoke-direct/range {p1 .. p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1220
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .end local p3           #sum:F
    move-object/from16 p0, p1

    .line 1222
    goto/16 :goto_3a

    .line 1225
    .local p1, ellipsiswid:F
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_31a
    const/4 v5, 0x0

    .local v5, lsum:F
    const/4 v7, 0x0

    .line 1226
    .local v7, rsum:F
    const/16 p3, 0x0

    .local p3, left:I
    move/from16 p3, v8

    .line 1228
    .local p3, right:I
    sub-float p3, p2, p1

    const/high16 v6, 0x4000

    div-float p3, p3, v6

    .line 1229
    .local p3, ravail:F
    move v6, v8

    .end local v10           #temppaint:Landroid/text/TextPaint;
    .local v6, right:I
    :goto_327
    if-ltz v6, :cond_335

    .line 1230
    add-int v9, v8, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget v9, v14, v9

    .line 1232
    .local v9, w:F
    add-float v10, v9, v7

    cmpl-float v10, v10, p3

    if-lez v10, :cond_37a

    .line 1239
    .end local v9           #w:F
    :cond_335
    sub-float p1, p2, p1

    sub-float p1, p1, v7

    .line 1240
    .local p1, lavail:F
    const/16 p2, 0x0

    .local p2, left:I
    move/from16 p3, v5

    .end local v5           #lsum:F
    .end local v7           #rsum:F
    .local p3, lsum:F
    :goto_33d
    move/from16 v0, p2

    move v1, v6

    if-ge v0, v1, :cond_34c

    .line 1241
    add-int v5, v8, p2

    aget v5, v14, v5

    .line 1243
    .local v5, w:F
    add-float v7, v5, p3

    cmpl-float v7, v7, p1

    if-lez v7, :cond_37e

    .line 1250
    .end local v5           #w:F
    :cond_34c
    if-eqz p5, :cond_356

    .line 1251
    move-object/from16 v0, p5

    move/from16 v1, p2

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1254
    :cond_356
    if-eqz p4, :cond_383

    .line 1255
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1256
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1257
    goto/16 :goto_3a

    .line 1236
    .end local v19           #ss:Landroid/text/SpannableString;
    .local v5, lsum:F
    .restart local v7       #rsum:F
    .restart local v9       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, ellipsiswid:F
    .local p2, avail:F
    .local p3, ravail:F
    :cond_37a
    add-float/2addr v7, v9

    .line 1229
    add-int/lit8 v6, v6, -0x1

    goto :goto_327

    .line 1247
    .end local v7           #rsum:F
    .end local v9           #w:F
    .local v5, w:F
    .local p1, lavail:F
    .local p2, left:I
    .local p3, lsum:F
    :cond_37e
    add-float p3, p3, v5

    .line 1240
    add-int/lit8 p2, p2, 0x1

    goto :goto_33d

    .line 1259
    .end local v5           #w:F
    :cond_383
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #lavail:F
    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p3           #lsum:F
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1260
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p3, 0x0

    const/16 p4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1261
    .end local p4
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .end local p2           #left:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v6

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 p0, p1

    .line 1263
    goto/16 :goto_3a
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 465
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 477
    :goto_5
    return v2

    .line 467
    :cond_6
    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 468
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_21

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 469
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 471
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    if-ge v0, v1, :cond_33

    .line 472
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_30

    move v2, v4

    goto :goto_5

    .line 471
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    move v2, v5

    .line 474
    goto :goto_5

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_35
    move v2, v4

    .line 477
    goto :goto_5
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "template"
    .parameter "values"

    .prologue
    const/16 v6, 0x5e

    const-string v4, "template requests value ^"

    .line 805
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_11

    .line 806
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 809
    :cond_11
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 812
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 813
    .local v0, i:I
    :goto_17
    :try_start_17
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_60

    .line 814
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a0

    .line 815
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 816
    .local v1, next:C
    if-ne v1, v6, :cond_35

    .line 817
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 818
    add-int/lit8 v0, v0, 0x1

    .line 819
    goto :goto_17

    .line 820
    :cond_35
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 821
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 822
    .local v3, which:I
    if-gez v3, :cond_61

    .line 823
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 838
    .end local v1           #next:C
    .end local v3           #which:I
    :catch_5f
    move-exception v4

    .line 841
    :cond_60
    return-object v2

    .line 826
    .restart local v1       #next:C
    .restart local v3       #which:I
    :cond_61
    array-length v4, p1

    if-lt v3, v4, :cond_90

    .line 827
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 831
    :cond_90
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 832
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_9c} :catch_5f

    move-result v4

    add-int/2addr v0, v4

    .line 833
    goto/16 :goto_17

    .line 836
    .end local v1           #next:C
    .end local v3           #which:I
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 14
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v10, 0x27

    const/16 v9, 0x22

    const/16 v8, 0x2e

    const/4 v7, 0x1

    .line 1594
    if-gez p1, :cond_b

    .line 1595
    const/4 v5, 0x0

    .line 1679
    :goto_a
    return v5

    .line 1600
    :cond_b
    const/4 v4, 0x0

    .line 1602
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_12

    .line 1603
    or-int/lit16 v4, v4, 0x1000

    .line 1605
    :cond_12
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_18

    move v5, v4

    .line 1606
    goto :goto_a

    .line 1611
    :cond_18
    move v1, p1

    .local v1, i:I
    :goto_19
    if-lez v1, :cond_2d

    .line 1612
    sub-int v5, v1, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1614
    .local v0, c:C
    if-eq v0, v9, :cond_41

    if-eq v0, v10, :cond_41

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_41

    .line 1622
    .end local v0           #c:C
    :cond_2d
    move v2, v1

    .line 1623
    .local v2, j:I
    :goto_2e
    if-lez v2, :cond_44

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x9

    if-ne v0, v5, :cond_44

    .line 1624
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 1611
    .end local v2           #j:I
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 1626
    .end local v0           #c:C
    .restart local v2       #j:I
    :cond_44
    if-eqz v2, :cond_50

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_53

    .line 1627
    :cond_50
    or-int/lit16 v5, v4, 0x2000

    goto :goto_a

    .line 1632
    :cond_53
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_5d

    .line 1633
    if-eq v1, v2, :cond_5b

    or-int/lit16 v4, v4, 0x2000

    :cond_5b
    move v5, v4

    .line 1634
    goto :goto_a

    .line 1639
    :cond_5d
    if-ne v1, v2, :cond_63

    move v5, v4

    .line 1640
    goto :goto_a

    .line 1645
    .restart local v0       #c:C
    :cond_61
    add-int/lit8 v2, v2, -0x1

    .end local v0           #c:C
    :cond_63
    if-lez v2, :cond_77

    .line 1646
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1648
    .restart local v0       #c:C
    if-eq v0, v9, :cond_61

    if-eq v0, v10, :cond_61

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_61

    .line 1654
    .end local v0           #c:C
    :cond_77
    if-lez v2, :cond_a6

    .line 1655
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1657
    .restart local v0       #c:C
    if-eq v0, v8, :cond_89

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_89

    const/16 v5, 0x21

    if-ne v0, v5, :cond_a6

    .line 1661
    :cond_89
    if-ne v0, v8, :cond_9f

    .line 1662
    const/4 v5, 0x2

    sub-int v3, v2, v5

    .local v3, k:I
    :goto_8e
    if-ltz v3, :cond_9f

    .line 1663
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1665
    if-ne v0, v8, :cond_99

    move v5, v4

    .line 1666
    goto/16 :goto_a

    .line 1669
    :cond_99
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 1675
    .end local v3           #k:I
    :cond_9f
    or-int/lit16 v5, v4, 0x4000

    goto/16 :goto_a

    .line 1662
    .restart local v3       #k:I
    :cond_a3
    add-int/lit8 v3, v3, -0x1

    goto :goto_8e

    .end local v0           #c:C
    .end local v3           #k:I
    :cond_a6
    move v5, v4

    .line 1679
    goto/16 :goto_a
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, c:Ljava/lang/Class;
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_e

    .line 64
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 75
    :goto_d
    return-void

    .line 65
    .restart local p0
    :cond_e
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_18

    .line 66
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_d

    .line 67
    .restart local p0
    :cond_18
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_22

    .line 68
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_d

    .line 69
    .restart local p0
    :cond_22
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_2c

    .line 70
    check-cast p0, Landroid/text/GetChars;

    .end local p0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_d

    .line 72
    .restart local p0
    :cond_2c
    move v2, p1

    .local v2, i:I
    move v1, p4

    .end local p4
    .local v1, destoff:I
    :goto_2e
    if-ge v2, p2, :cond_3c

    .line 73
    add-int/lit8 p4, v1, 0x1

    .end local v1           #destoff:I
    .restart local p4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 72
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #destoff:I
    goto :goto_2e

    :cond_3c
    move p4, v1

    .end local v1           #destoff:I
    .restart local p4
    goto :goto_d
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 13
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 894
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 896
    .local v6, len:I
    if-ne p1, v6, :cond_8

    move v9, v6

    .line 939
    :goto_7
    return v9

    .line 898
    :cond_8
    const/4 v9, 0x1

    sub-int v9, v6, v9

    if-ne p1, v9, :cond_f

    move v9, v6

    .line 899
    goto :goto_7

    .line 901
    :cond_f
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 903
    .local v1, c:C
    const v9, 0xd800

    if-lt v1, v9, :cond_62

    const v9, 0xdbff

    if-gt v1, v9, :cond_62

    .line 904
    add-int/lit8 v9, p1, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 906
    .local v2, c1:C
    const v9, 0xdc00

    if-lt v2, v9, :cond_5f

    const v9, 0xdfff

    if-gt v2, v9, :cond_5f

    .line 907
    add-int/lit8 p1, p1, 0x2

    .line 926
    .end local v2           #c1:C
    :cond_2f
    :goto_2f
    instance-of v9, p0, Landroid/text/Spanned;

    if-eqz v9, :cond_82

    .line 927
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    const-class v10, Landroid/text/style/ReplacementSpan;

    invoke-interface {v9, p1, p1, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ReplacementSpan;

    .line 930
    .local v7, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_40
    array-length v9, v7

    if-ge v5, v9, :cond_82

    .line 931
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    aget-object v10, v7, v5

    invoke-interface {v9, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 932
    .local v8, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    aget-object v10, v7, v5

    invoke-interface {v9, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 934
    .local v4, end:I
    if-ge v8, p1, :cond_5c

    if-le v4, p1, :cond_5c

    .line 935
    move p1, v4

    .line 930
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 909
    .end local v4           #end:I
    .end local v5           #i:I
    .end local v7           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v8           #start:I
    .restart local v2       #c1:C
    :cond_5f
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 911
    .end local v2           #c1:C
    :cond_62
    add-int/lit8 p1, p1, 0x1

    .line 914
    :cond_64
    add-int/lit8 v9, p1, 0x1

    invoke-interface {p0, p1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v10, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v9, v10}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, decomposed:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 919
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2f

    .line 922
    add-int/lit8 p1, p1, 0x1

    .line 923
    if-lt p1, v6, :cond_64

    goto :goto_2f

    .end local v3           #decomposed:Ljava/lang/String;
    :cond_82
    move v9, p1

    .line 939
    goto :goto_7
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 13
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 845
    if-nez p1, :cond_6

    move v8, v10

    .line 890
    :goto_5
    return v8

    .line 847
    :cond_6
    if-ne p1, v8, :cond_a

    move v8, v10

    .line 848
    goto :goto_5

    .line 850
    :cond_a
    sub-int v8, p1, v8

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 852
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_60

    const v8, 0xdfff

    if-gt v1, v8, :cond_60

    .line 853
    const/4 v8, 0x2

    sub-int v8, p1, v8

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 855
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_5d

    const v8, 0xdbff

    if-gt v2, v8, :cond_5d

    .line 856
    add-int/lit8 p1, p1, -0x2

    .line 877
    .end local v2           #c1:C
    :cond_2d
    :goto_2d
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_8d

    .line 878
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ReplacementSpan;

    .line 881
    .local v6, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3e
    array-length v8, v6

    if-ge v5, v8, :cond_8d

    .line 882
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v5

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 883
    .local v7, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v5

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 885
    .local v4, end:I
    if-ge v7, p1, :cond_5a

    if-le v4, p1, :cond_5a

    .line 886
    move p1, v7

    .line 881
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 858
    .end local v4           #end:I
    .end local v5           #i:I
    .end local v6           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v7           #start:I
    .restart local v2       #c1:C
    :cond_5d
    add-int/lit8 p1, p1, -0x1

    goto :goto_2d

    .line 860
    .end local v2           #c1:C
    :cond_60
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v8, v9}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, decomposed:Ljava/lang/String;
    add-int/lit8 p1, p1, -0x1

    .line 863
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 865
    :goto_70
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2d

    .line 866
    add-int/lit8 p1, p1, -0x1

    .line 868
    if-eqz p1, :cond_2d

    .line 871
    add-int/lit8 v8, p1, 0x1

    invoke-interface {p0, p1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v9, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v8, v9}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 873
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_70

    .end local v3           #decomposed:Ljava/lang/String;
    :cond_8d
    move v8, p1

    .line 890
    goto/16 :goto_5
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 483
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "s"

    .prologue
    const/16 v4, 0x20

    .line 441
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 443
    .local v1, len:I
    const/4 v2, 0x0

    .line 444
    .local v2, start:I
    :goto_7
    if-ge v2, v1, :cond_12

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_12

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 448
    :cond_12
    move v0, v1

    .line 449
    .local v0, end:I
    :goto_13
    if-le v0, v2, :cond_21

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_21

    .line 450
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 453
    :cond_21
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1413
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 1414
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1415
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 1432
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1413
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1417
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1420
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1423
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1426
    :sswitch_2b
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1429
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1435
    .end local v0           #c:C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1415
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .parameter "s"
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 85
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 87
    :goto_e
    return v1

    .restart local p0
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, -0x1

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, c:Ljava/lang/Class;
    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_15

    const-class v6, Ljava/lang/StringBuffer;

    if-eq v1, v6, :cond_15

    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_15

    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_41

    .line 95
    :cond_15
    const/16 v0, 0x1f4

    .line 96
    .local v0, INDEX_INCREMENT:I
    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 98
    .local v5, temp:[C
    :goto_1d
    if-ge p2, p3, :cond_3c

    .line 99
    add-int/lit16 v4, p2, 0x1f4

    .line 100
    .local v4, segend:I
    if-le v4, p3, :cond_24

    .line 101
    move v4, p3

    .line 103
    :cond_24
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 105
    sub-int v2, v4, p2

    .line 106
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2b
    if-ge v3, v2, :cond_3a

    .line 107
    aget-char v6, v5, v3

    if-ne v6, p1, :cond_37

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 109
    add-int v6, v3, p2

    .line 124
    .end local v0           #INDEX_INCREMENT:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    .end local v5           #temp:[C
    :goto_36
    return v6

    .line 106
    .restart local v0       #INDEX_INCREMENT:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #segend:I
    .restart local v5       #temp:[C
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 113
    :cond_3a
    move p2, v4

    .line 114
    goto :goto_1d

    .line 116
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    :cond_3c
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v6, v7

    .line 117
    goto :goto_36

    .line 120
    .end local v0           #INDEX_INCREMENT:I
    .end local v5           #temp:[C
    :cond_41
    move v3, p2

    .restart local v3       #i:I
    :goto_42
    if-ge v3, p3, :cond_4f

    .line 121
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4c

    move v6, v3

    .line 122
    goto :goto_36

    .line 120
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_4f
    move v6, v7

    .line 124
    goto :goto_36
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "s"
    .parameter "needle"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter "s"
    .parameter "needle"
    .parameter "start"

    .prologue
    .line 190
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "s"
    .parameter "needle"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 196
    .local v1, nlen:I
    if-nez v1, :cond_a

    move v2, p2

    .line 217
    :goto_9
    return v2

    .line 199
    :cond_a
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 202
    .local v0, c:C
    :goto_e
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 203
    sub-int v2, p3, v1

    if-le p2, v2, :cond_18

    move v2, v3

    .line 217
    goto :goto_9

    .line 207
    :cond_18
    if-gez p2, :cond_1c

    move v2, v3

    .line 208
    goto :goto_9

    .line 211
    :cond_1c
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, p2

    .line 212
    goto :goto_9

    .line 215
    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_e
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1521
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1522
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1523
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1524
    const/4 v2, 0x0

    .line 1527
    :goto_12
    return v2

    .line 1522
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1527
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "str"

    .prologue
    .line 429
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 430
    :cond_8
    const/4 v0, 0x1

    .line 432
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isGraphic(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 1507
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1508
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_20

    const/16 v1, 0xe

    if-eq v0, v1, :cond_20

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "str"

    .prologue
    .line 1487
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1488
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_2e

    .line 1489
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1490
    .local v0, gc:I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2b

    if-eqz v0, :cond_2b

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2b

    .line 1497
    const/4 v3, 0x1

    .line 1500
    .end local v0           #gc:I
    :goto_2a
    return v3

    .line 1488
    .restart local v0       #gc:I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1500
    .end local v0           #gc:I
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 1534
    const/16 v0, 0x20

    .line 1535
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 1536
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1543
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1544
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1545
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1546
    const/4 v2, 0x0

    .line 1549
    :goto_12
    return v2

    .line 1544
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1549
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 290
    .local v0, firstTime:Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, token:Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 292
    const/4 v0, 0x0

    .line 296
    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 294
    :cond_1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 298
    .end local v3           #token:Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 271
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_1a

    aget-object v5, v0, v2

    .line 272
    .local v5, token:Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 273
    const/4 v1, 0x0

    .line 277
    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 275
    :cond_16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 279
    .end local v5           #token:Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 4
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 128
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .parameter "s"
    .parameter "ch"
    .parameter "last"

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 135
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 137
    :goto_e
    return v1

    .restart local p0
    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 15
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "last"

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 142
    if-gez p3, :cond_8

    move v7, v8

    .line 182
    :goto_7
    return v7

    .line 144
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_14

    .line 145
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int p3, v7, v9

    .line 147
    :cond_14
    add-int/lit8 v3, p3, 0x1

    .line 149
    .local v3, end:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, c:Ljava/lang/Class;
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_2a

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_2a

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_2a

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_55

    .line 153
    :cond_2a
    const/16 v0, 0x1f4

    .line 154
    .local v0, INDEX_INCREMENT:I
    invoke-static {v10}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 156
    .local v6, temp:[C
    :goto_30
    if-ge p2, v3, :cond_50

    .line 157
    sub-int v5, v3, v10

    .line 158
    .local v5, segstart:I
    if-ge v5, p2, :cond_37

    .line 159
    move v5, p2

    .line 161
    :cond_37
    const/4 v7, 0x0

    invoke-static {p0, v5, v3, v6, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 163
    sub-int v2, v3, v5

    .line 164
    .local v2, count:I
    sub-int v4, v2, v9

    .local v4, i:I
    :goto_3f
    if-ltz v4, :cond_4e

    .line 165
    aget-char v7, v6, v4

    if-ne v7, p1, :cond_4b

    .line 166
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 167
    add-int v7, v4, v5

    goto :goto_7

    .line 164
    :cond_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3f

    .line 171
    :cond_4e
    move v3, v5

    .line 172
    goto :goto_30

    .line 174
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #segstart:I
    :cond_50
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v7, v8

    .line 175
    goto :goto_7

    .line 178
    .end local v0           #INDEX_INCREMENT:I
    .end local v6           #temp:[C
    :cond_55
    sub-int v4, v3, v9

    .restart local v4       #i:I
    :goto_57
    if-lt v4, p2, :cond_64

    .line 179
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_61

    move v7, v4

    .line 180
    goto :goto_7

    .line 178
    :cond_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_57

    :cond_64
    move v7, v8

    .line 182
    goto :goto_7
.end method

.method static obtain(I)[C
    .registers 4
    .parameter "len"

    .prologue
    .line 1385
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1386
    :try_start_3
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1387
    .local v0, buf:[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1388
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 1390
    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_14

    .line 1391
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1393
    :cond_14
    return-object v0

    .line 1388
    .end local v0           #buf:[C
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 943
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 944
    return-void
.end method

.method static recycle([C)V
    .registers 3
    .parameter "temp"

    .prologue
    .line 1397
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1403
    :goto_5
    return-void

    .line 1400
    :cond_6
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1402
    monitor-exit v0

    goto :goto_5

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 10
    .parameter "one"
    .parameter "toffset"
    .parameter "two"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 223
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 225
    .local v2, temp:[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 226
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 228
    const/4 v1, 0x1

    .line 229
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, p4, :cond_1e

    .line 230
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_22

    .line 231
    const/4 v1, 0x0

    .line 236
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 237
    return v1

    .line 229
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "template"
    .parameter "sources"
    .parameter "destinations"

    .prologue
    .line 760
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 762
    .local v3, tb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v5, p1

    if-ge v1, v5, :cond_22

    .line 763
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 765
    .local v4, where:I
    if-ltz v4, :cond_1f

    .line 766
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 762
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 770
    .end local v4           #where:I
    :cond_22
    const/4 v1, 0x0

    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_3c

    .line 771
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 772
    .local v2, start:I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 774
    .local v0, end:I
    if-ltz v2, :cond_39

    .line 775
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 770
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 779
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3c
    return-object v3
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "text"
    .parameter "expression"

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 313
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 315
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 330
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 332
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "source"

    .prologue
    .line 413
    if-nez p0, :cond_4

    .line 414
    const/4 v0, 0x0

    .line 420
    :goto_3
    return-object v0

    .line 415
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_a

    move-object v0, p0

    .line 416
    goto :goto_3

    .line 417
    :cond_a
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_14

    .line 418
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 420
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 248
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 249
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_b
    return-object v2

    .line 250
    .restart local p0
    :cond_c
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 251
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 252
    .restart local p0
    :cond_17
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_22

    .line 253
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 255
    .restart local p0
    :cond_22
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 256
    .local v1, temp:[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 257
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 258
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    move-object v2, v0

    .line 260
    goto :goto_b
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 13
    .parameter "cs"
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    const/4 v9, 0x0

    .line 577
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_4b

    .line 578
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    .line 582
    .local v6, sp:Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 589
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v7, v3

    if-ge v1, v7, :cond_47

    .line 590
    aget-object v2, v3, v1

    .line 591
    .local v2, o:Ljava/lang/Object;
    aget-object v4, v3, v1

    .line 593
    .local v4, prop:Ljava/lang/Object;
    instance-of v7, v4, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2f

    .line 594
    check-cast v4, Landroid/text/style/CharacterStyle;

    .end local v4           #prop:Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    .line 597
    :cond_2f
    instance-of v7, v4, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_44

    .line 598
    move-object v0, v4

    check-cast v0, Landroid/text/ParcelableSpan;

    move-object v5, v0

    .line 599
    .local v5, ps:Landroid/text/ParcelableSpan;
    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    invoke-interface {v5, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 601
    invoke-static {p1, v6, v2}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .line 589
    .end local v5           #ps:Landroid/text/ParcelableSpan;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 605
    .end local v2           #o:Ljava/lang/Object;
    :cond_47
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    .end local v1           #i:I
    .end local v3           #os:[Ljava/lang/Object;
    .end local v6           #sp:Landroid/text/Spanned;
    :goto_4a
    return-void

    .line 607
    :cond_4b
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    if-eqz p0, :cond_59

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a

    .line 611
    :cond_59
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 617
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    return-void
.end method
