.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field private static final TAB_INCREMENT:I = 0x14

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mEmojiRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 42
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 45
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 50
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_49

    .line 51
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 52
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1936
    :goto_25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1957
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/4 v2, 0x0

    const/16 v3, 0x7fff

    aput-short v3, v1, v2

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1959
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_4e

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 54
    :cond_49
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 55
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_25

    .line 1959
    :array_4e
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1933
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 116
    if-gez p3, :cond_28

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_28
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 120
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 121
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 122
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 123
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 124
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 125
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 126
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 127
    return-void
.end method

.method static synthetic access$100(Landroid/text/Layout;III[CI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .registers 26
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1202
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1203
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1204
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 1206
    .local v11, dirs:Landroid/text/Layout$Directions;
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v15, v6

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_23

    .line 1207
    add-int/lit8 v15, v15, -0x1

    .line 1209
    :cond_23
    move/from16 v13, v16

    .line 1210
    .local v13, here:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_26
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    if-ge v14, v5, :cond_8a

    .line 1211
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v14

    add-int v18, v13, v5

    .line 1212
    .local v18, there:I
    move/from16 v0, v18

    move v1, v15

    if-le v0, v1, :cond_3c

    .line 1213
    move/from16 v18, v15

    .line 1215
    :cond_3c
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_85

    move/from16 v0, p3

    move v1, v13

    if-lt v0, v1, :cond_85

    .line 1216
    move/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1217
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1219
    .local v12, en:I
    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_85

    .line 1220
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v5

    move v3, v6

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v6

    .line 1221
    .local v6, h1:F
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v5

    move v3, v7

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v8

    .line 1223
    .local v8, h2:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1227
    .end local v6           #h1:F
    .end local v8           #h2:F
    .end local v12           #en:I
    .end local v17           #st:I
    :cond_85
    move/from16 v13, v18

    .line 1210
    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    .line 1229
    .end local v18           #there:I
    :cond_8a
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V
    .registers 46
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "hasTabs"
    .parameter "parspans"

    .prologue
    .line 1384
    if-nez p13, :cond_b7

    .line 1385
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p6

    move-object v1, v5

    if-ne v0, v1, :cond_26

    .line 1389
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    .line 1465
    :cond_25
    :goto_25
    return-void

    .line 1392
    :cond_26
    const/16 v20, 0x0

    .line 1398
    .local v20, buf:[C
    :goto_28
    const/16 v22, 0x0

    .line 1400
    .local v22, h:F
    const/16 v23, 0x0

    .line 1401
    .local v23, here:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2e
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_1bb

    .line 1402
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v24

    add-int v29, v23, v5

    .line 1403
    .local v29, there:I
    sub-int v5, p4, p3

    move/from16 v0, v29

    move v1, v5

    if-le v0, v1, :cond_49

    .line 1404
    sub-int v29, p4, p3

    .line 1406
    :cond_49
    move/from16 v27, v23

    .line 1407
    .local v27, segstart:I
    if-eqz p13, :cond_cc

    move/from16 v25, v23

    .local v25, j:I
    :goto_4f
    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_1b5

    .line 1408
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_61

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_d6

    .line 1409
    :cond_61
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_cf

    const/4 v5, 0x1

    move v10, v5

    :goto_6b
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_d2

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_77
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1415
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_b2

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b2

    .line 1416
    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v22

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v6

    move-object/from16 v4, p14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v6

    mul-float v22, v5, v6

    .line 1418
    :cond_b2
    add-int/lit8 v27, v25, 0x1

    .line 1407
    :cond_b4
    :goto_b4
    add-int/lit8 v25, v25, 0x1

    goto :goto_4f

    .line 1394
    .end local v20           #buf:[C
    .end local v22           #h:F
    .end local v23           #here:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_b7
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v20

    .line 1395
    .restart local v20       #buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v20

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto/16 :goto_28

    .restart local v22       #h:F
    .restart local v23       #here:I
    .restart local v24       #i:I
    .restart local v27       #segstart:I
    .restart local v29       #there:I
    :cond_cc
    move/from16 v25, v29

    .line 1407
    goto :goto_4f

    .line 1409
    .restart local v25       #j:I
    :cond_cf
    const/4 v5, 0x0

    move v10, v5

    goto :goto_6b

    :cond_d2
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_77

    .line 1419
    :cond_d6
    if-eqz p13, :cond_b4

    aget-char v5, v20, v25

    const v6, 0xd800

    if-lt v5, v6, :cond_b4

    aget-char v5, v20, v25

    const v6, 0xdfff

    if-gt v5, v6, :cond_b4

    add-int/lit8 v5, v25, 0x1

    move v0, v5

    move/from16 v1, v29

    if-ge v0, v1, :cond_b4

    .line 1420
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v21

    .line 1422
    .local v21, emoji:I
    sget v5, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_b4

    sget v5, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_b4

    .line 1423
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1426
    .local v19, bm:Landroid/graphics/Bitmap;
    if-eqz v19, :cond_b4

    .line 1427
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_1ac

    const/4 v5, 0x1

    move v10, v5

    :goto_118
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_1b0

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_124
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    if-nez v5, :cond_14b

    .line 1434
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    .line 1437
    :cond_14b
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1438
    add-int v8, p3, v25

    add-int v5, p3, v25

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1442
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1443
    .local v18, bitmapHeight:F
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    move v0, v5

    neg-float v0, v0

    move/from16 v28, v0

    .line 1444
    .local v28, textHeight:F
    div-float v26, v28, v18

    .line 1445
    .local v26, scale:F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v30, v5, v26

    .line 1447
    .local v30, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    add-float v6, p7, v22

    move/from16 v0, p9

    int-to-float v0, v0

    move v7, v0

    sub-float v7, v7, v28

    add-float v8, p7, v22

    add-float v8, v8, v30

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1450
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1451
    add-float v22, v22, v30

    .line 1453
    add-int/lit8 v25, v25, 0x1

    .line 1454
    add-int/lit8 v27, v25, 0x1

    goto/16 :goto_b4

    .line 1427
    .end local v18           #bitmapHeight:F
    .end local v26           #scale:F
    .end local v28           #textHeight:F
    .end local v30           #width:F
    :cond_1ac
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_118

    :cond_1b0
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_124

    .line 1460
    .end local v19           #bm:Landroid/graphics/Bitmap;
    .end local v21           #emoji:I
    :cond_1b5
    move/from16 v23, v29

    .line 1401
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2e

    .line 1463
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_1bb
    if-eqz p13, :cond_25

    .line 1464
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->recycle([C)V

    goto/16 :goto_25
.end method

.method private ellipsize(III[CI)V
    .registers 13
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1782
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1784
    .local v2, ellipsisCount:I
    if-nez v2, :cond_7

    .line 1806
    :cond_6
    return-void

    .line 1788
    :cond_7
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1789
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1791
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_10
    add-int v6, v3, v2

    if-ge v4, v6, :cond_6

    .line 1794
    if-ne v4, v3, :cond_26

    .line 1795
    const/16 v1, 0x2026

    .line 1800
    .local v1, c:C
    :goto_18
    add-int v0, v4, v5

    .line 1802
    .local v0, a:I
    if-lt v0, p1, :cond_23

    if-ge v0, p2, :cond_23

    .line 1803
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1791
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1797
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_26
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_18
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 77
    const/4 v8, 0x0

    .line 78
    .local v8, need:F
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 81
    .local v1, workPaint:Landroid/text/TextPaint;
    move v3, p1

    .local v3, i:I
    :goto_8
    if-gt v3, p2, :cond_24

    .line 82
    const/16 v0, 0xa

    invoke-static {p0, v0, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 84
    .local v4, next:I
    if-gez v4, :cond_13

    .line 85
    move v4, p2

    .line 88
    :cond_13
    const/4 v6, 0x1

    move-object v0, p3

    move-object v2, p0

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v9

    .line 91
    .local v9, w:F
    cmpl-float v0, v9, v8

    if-lez v0, :cond_20

    .line 92
    move v8, v9

    .line 94
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 81
    move v3, v4

    goto :goto_8

    .line 97
    .end local v4           #next:I
    .end local v9           #w:F
    :cond_24
    return v8
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZZ)F
    .registers 6
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 547
    .local v0, line:I
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZZI)F
    .registers 33
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"
    .parameter "line"

    .prologue
    .line 552
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 553
    .local v5, start:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    .line 554
    .local v7, end:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 555
    .local v8, dir:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 556
    .local v12, tab:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 558
    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v13, 0x0

    .line 559
    .local v13, tabs:[Landroid/text/style/TabStopSpan;
    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_43

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v5, v7, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tabs:[Landroid/text/style/TabStopSpan;
    check-cast v13, [Landroid/text/style/TabStopSpan;

    .line 563
    .restart local v13       #tabs:[Landroid/text/style/TabStopSpan;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v13}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F

    move-result v27

    .line 566
    .local v27, wid:F
    move/from16 v0, p1

    move v1, v7

    if-le v0, v1, :cond_84

    .line 567
    const/4 v2, -0x1

    if-ne v8, v2, :cond_ad

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    sub-float v27, v27, v2

    .line 575
    :cond_84
    :goto_84
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v22

    .line 576
    .local v22, align:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v24

    .line 577
    .local v24, left:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v26

    .line 579
    .local v26, right:I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_d5

    .line 580
    const/4 v2, -0x1

    if-ne v8, v2, :cond_ce

    .line 581
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    .line 599
    :goto_ac
    return v2

    .line 571
    .end local v22           #align:Landroid/text/Layout$Alignment;
    .end local v24           #left:I
    .end local v26           #right:I
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    add-float v27, v27, v2

    goto :goto_84

    .line 583
    .restart local v22       #align:Landroid/text/Layout$Alignment;
    .restart local v24       #left:I
    .restart local v26       #right:I
    :cond_ce
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    goto :goto_ac

    .line 586
    :cond_d5
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v25

    .line 588
    .local v25, max:F
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_f9

    .line 589
    const/4 v2, -0x1

    if-ne v8, v2, :cond_f0

    .line 590
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_ac

    .line 592
    :cond_f0
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    sub-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_ac

    .line 594
    :cond_f9
    move/from16 v0, v25

    float-to-int v0, v0

    move v2, v0

    and-int/lit8 v23, v2, -0x2

    .line 596
    .local v23, imax:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_10e

    .line 597
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_ac

    .line 599
    :cond_10e
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v24

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_ac
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .registers 12
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 677
    .local v3, start:I
    if-eqz p3, :cond_2f

    .line 678
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 682
    .local v4, end:I
    :goto_a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v6

    .line 684
    .local v6, tab:Z
    if-nez p2, :cond_22

    if-eqz v6, :cond_22

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_22

    .line 685
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 688
    :cond_22
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    return v0

    .line 680
    .end local v4           #end:I
    .end local v6           #tab:Z
    :cond_2f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4       #end:I
    goto :goto_a
.end method

.method private getLineVisibleEnd(III)I
    .registers 8
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 841
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 843
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_e

    move v2, p3

    .line 860
    :goto_b
    return v2

    .line 847
    .local v0, ch:C
    :cond_c
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_e
    if-le p3, p2, :cond_25

    .line 848
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 850
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1d

    .line 851
    sub-int v2, p3, v3

    goto :goto_b

    .line 854
    :cond_1d
    const/16 v2, 0x20

    if-eq v0, v2, :cond_c

    const/16 v2, 0x9

    if-eq v0, v2, :cond_c

    .end local v0           #ch:C
    :cond_25
    move v2, p3

    .line 860
    goto :goto_b
.end method

.method private getOffsetAtStartOf(I)I
    .registers 12
    .parameter "offset"

    .prologue
    .line 1088
    if-nez p1, :cond_4

    .line 1089
    const/4 v8, 0x0

    .line 1114
    :goto_3
    return v8

    .line 1091
    :cond_4
    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1092
    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1094
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_27

    const v8, 0xdfff

    if-gt v1, v8, :cond_27

    .line 1095
    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1097
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_27

    const v8, 0xdbff

    if-gt v2, v8, :cond_27

    .line 1098
    add-int/lit8 p1, p1, -0x1

    .line 1101
    .end local v2           #c1:C
    :cond_27
    iget-boolean v8, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v8, :cond_57

    .line 1102
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1105
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    array-length v8, v5

    if-ge v4, v8, :cond_57

    .line 1106
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1107
    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1109
    .local v3, end:I
    if-ge v6, p1, :cond_54

    if-le v3, p1, :cond_54

    .line 1110
    move p1, v6

    .line 1105
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_57
    move v8, p1

    .line 1114
    goto :goto_3
.end method

.method private static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F
    .registers 31
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "offset"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "trailing"
    .parameter "alt"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1474
    const/4 v5, 0x0

    .line 1476
    .local v5, buf:[C
    if-eqz p10, :cond_15

    .line 1477
    sub-int v5, p5, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1478
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_15
    move-object v12, v5

    .line 1481
    .end local v5           #buf:[C
    .local v12, buf:[C
    const/4 v5, 0x0

    .line 1483
    .local v5, h:F
    if-eqz p9, :cond_23

    .line 1484
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_23

    .line 1485
    if-nez p8, :cond_b7

    const/16 p8, 0x1

    .line 1488
    :cond_23
    :goto_23
    const/4 v6, 0x0

    .line 1489
    .local v6, here:I
    const/4 v7, 0x0

    .local v7, i:I
    move v14, v7

    .end local v7           #i:I
    .local v14, i:I
    :goto_26
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    array-length v7, v7

    if-ge v14, v7, :cond_1ca

    .line 1490
    if-eqz p9, :cond_33

    .line 1491
    if-nez p8, :cond_bb

    const/16 p8, 0x1

    .line 1493
    :cond_33
    :goto_33
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    aget-short v7, v7, v14

    add-int/2addr v7, v6

    .line 1494
    .local v7, there:I
    sub-int v8, p5, p3

    if-le v7, v8, :cond_1e3

    .line 1495
    sub-int v7, p5, p3

    move/from16 v18, v7

    .line 1497
    .end local v7           #there:I
    .local v18, there:I
    :goto_42
    move v7, v6

    .line 1498
    .local v7, segstart:I
    if-eqz p10, :cond_bf

    .local v6, j:I
    :goto_45
    move v15, v6

    .end local v6           #j:I
    .local v15, j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .local v16, segstart:I
    move v13, v5

    .end local v5           #h:F
    .local v13, h:F
    :goto_49
    move v0, v15

    move/from16 v1, v18

    if-gt v0, v1, :cond_1c1

    .line 1499
    const/4 v6, 0x0

    .line 1500
    .local v6, codept:I
    const/4 v5, 0x0

    .line 1502
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p10, :cond_59

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_59

    .line 1503
    aget-char v6, v12, v15

    .line 1506
    :cond_59
    const v7, 0xd800

    if-lt v6, v7, :cond_1df

    const v7, 0xdfff

    if-gt v6, v7, :cond_1df

    add-int/lit8 v7, v15, 0x1

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_1df

    .line 1507
    invoke-static {v12, v15}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 1509
    sget v7, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v7, :cond_1df

    sget v7, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v7, :cond_1df

    .line 1510
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v11, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v11, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 1514
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_7e
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_89

    const/16 v6, 0x9

    if-eq v5, v6, :cond_89

    if-eqz v11, :cond_1da

    .line 1517
    :cond_89
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_99

    .end local v5           #codept:I
    if-eqz p8, :cond_e0

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_e0

    .line 1519
    :cond_99
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_c2

    and-int/lit8 v5, v14, 0x1

    if-nez v5, :cond_c2

    .line 1520
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0
    add-float p0, p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1597
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .end local p0           #h:F
    .local p1, h:F
    :goto_b6
    return p1

    .line 1485
    .end local v14           #i:I
    .local v5, h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_b7
    const/16 p8, 0x0

    goto/16 :goto_23

    .line 1491
    .local v6, here:I
    .restart local v14       #i:I
    :cond_bb
    const/16 p8, 0x0

    goto/16 :goto_33

    .restart local v7       #segstart:I
    .restart local v18       #there:I
    :cond_bf
    move/from16 v6, v18

    .line 1498
    goto :goto_45

    .line 1526
    .end local v5           #h:F
    .end local v6           #here:I
    .end local v7           #segstart:I
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_c2
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_e0

    and-int/lit8 v5, v14, 0x1

    if-eqz v5, :cond_e0

    .line 1527
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v13, p0

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1530
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_b6

    .line 1534
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_e0
    add-int v8, p3, v16

    add-int v9, p3, v15

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    .line 1538
    .local v17, segw:F
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_ff

    if-eqz p8, :cond_137

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_137

    .line 1540
    :cond_ff
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_11b

    .line 1541
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    add-float p0, p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1545
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_b6

    .line 1548
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_11b
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_137

    .line 1549
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    sub-float p0, v13, p0

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1553
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_b6

    .line 1557
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_137
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_157

    .line 1558
    sub-float v5, v13, v17

    .line 1562
    .end local v13           #h:F
    .restart local v5       #h:F
    :goto_13f
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_1d8

    aget-char v6, v12, v15

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1d8

    .line 1563
    add-int v6, p3, v15

    move/from16 v0, p4

    move v1, v6

    if-ne v0, v1, :cond_15a

    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 1564
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_b6

    .line 1560
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_157
    add-float v5, v13, v17

    .end local v13           #h:F
    .restart local v5       #h:F
    goto :goto_13f

    .line 1566
    :cond_15a
    move/from16 v0, p6

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v5, v7

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move v3, v5

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    .end local v5           #h:F
    move-result v5

    mul-float/2addr v5, v6

    .restart local v5       #h:F
    move v13, v5

    .line 1569
    .end local v5           #h:F
    .restart local v13       #h:F
    :goto_172
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_1d5

    if-eqz v11, :cond_1d5

    .line 1570
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_186

    move/from16 p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, v13

    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_b6

    .line 1571
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_186
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1572
    add-int/lit8 v9, v15, 0x2

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move v8, v15

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1575
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1578
    .local v5, wid:F
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_1bf

    .line 1579
    sub-float v5, v13, v5

    .line 1584
    .end local v13           #h:F
    .local v5, h:F
    :goto_1b3
    add-int/lit8 v6, v15, 0x1

    .line 1587
    .end local v15           #j:I
    .local v6, j:I
    :goto_1b5
    add-int/lit8 v7, v6, 0x1

    .line 1498
    .end local v16           #segstart:I
    .end local v17           #segw:F
    .restart local v7       #segstart:I
    :goto_1b7
    add-int/lit8 v6, v6, 0x1

    move v15, v6

    .end local v6           #j:I
    .restart local v15       #j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .restart local v16       #segstart:I
    move v13, v5

    .end local v5           #h:F
    .restart local v13       #h:F
    goto/16 :goto_49

    .line 1581
    .local v5, wid:F
    .restart local v17       #segw:F
    :cond_1bf
    add-float/2addr v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto :goto_1b3

    .line 1591
    .end local v5           #h:F
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v17           #segw:F
    .restart local v13       #h:F
    :cond_1c1
    move/from16 v5, v18

    .line 1489
    .local v5, here:I
    add-int/lit8 v6, v14, 0x1

    .end local v14           #i:I
    .local v6, i:I
    move v14, v6

    .end local v6           #i:I
    .restart local v14       #i:I
    move v6, v5

    .end local v5           #here:I
    .local v6, here:I
    move v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto/16 :goto_26

    .line 1594
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    :cond_1ca
    if-eqz p10, :cond_1cf

    .line 1595
    invoke-static {v12}, Landroid/text/TextUtils;->recycle([C)V

    :cond_1cf
    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 1597
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_b6

    .end local v6           #here:I
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    .restart local v17       #segw:F
    .restart local v18       #there:I
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_1d5
    move v6, v15

    .end local v15           #j:I
    .local v6, j:I
    move v5, v13

    .end local v13           #h:F
    .restart local v5       #h:F
    goto :goto_1b5

    .end local v6           #j:I
    .restart local v15       #j:I
    :cond_1d8
    move v13, v5

    .end local v5           #h:F
    .restart local v13       #h:F
    goto :goto_172

    .end local v17           #segw:F
    .local v5, codept:I
    :cond_1da
    move v6, v15

    .end local v15           #j:I
    .restart local v6       #j:I
    move/from16 v7, v16

    .end local v16           #segstart:I
    .restart local v7       #segstart:I
    move v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto :goto_1b7

    .end local v7           #segstart:I
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_1df
    move-object v11, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_7e

    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v13           #h:F
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .local v5, h:F
    .local v6, here:I
    .local v7, there:I
    :cond_1e3
    move/from16 v18, v7

    .end local v7           #there:I
    .restart local v18       #there:I
    goto/16 :goto_42
.end method

.method static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F
    .registers 28
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1621
    const/4 v5, 0x0

    .line 1623
    .local v5, buf:[C
    if-eqz p6, :cond_15

    .line 1624
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1625
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_15
    move-object v14, v5

    .line 1628
    .end local v5           #buf:[C
    .local v14, buf:[C
    sub-int v16, p4, p3

    .line 1630
    .local v16, len:I
    const/4 v8, 0x0

    .line 1631
    .local v8, lastPos:I
    const/4 v11, 0x0

    .line 1632
    .local v11, width:F
    const/4 v5, 0x0

    .local v5, ascent:I
    const/4 v7, 0x0

    .local v7, descent:I
    const/4 v10, 0x0

    .local v10, top:I
    const/4 v6, 0x0

    .line 1634
    .local v6, bottom:I
    if-eqz p5, :cond_2c

    .line 1635
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1636
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1639
    :cond_2c
    if-eqz p6, :cond_121

    const/4 v9, 0x0

    .local v9, pos:I
    :goto_2f
    move/from16 v17, v9

    .end local v9           #pos:I
    .local v17, pos:I
    move v13, v6

    .end local v6           #bottom:I
    .local v13, bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .local v18, top:I
    move v15, v7

    .end local v7           #descent:I
    .local v15, descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .local v19, width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v7, v8

    .end local v8           #lastPos:I
    .local v7, lastPos:I
    :goto_39
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_177

    .line 1640
    const/4 v6, 0x0

    .line 1641
    .local v6, codept:I
    const/4 v5, 0x0

    .line 1643
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p6, :cond_4b

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4b

    .line 1644
    aget-char v6, v14, v17

    .line 1647
    :cond_4b
    const v8, 0xd800

    if-lt v6, v8, :cond_1bb

    const v8, 0xdfff

    if-gt v6, v8, :cond_1bb

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1bb

    .line 1648
    move-object v0, v14

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 1650
    sget v8, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v8, :cond_1bb

    sget v8, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v8, :cond_1bb

    .line 1651
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v12, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v12, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 1655
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_72
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_7e

    const/16 v6, 0x9

    if-eq v5, v6, :cond_7e

    if-eqz v12, :cond_1af

    .line 1656
    :cond_7e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 1658
    .end local v5           #codept:I
    add-int v8, p3, v7

    add-int v9, p3, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v7           #lastPos:I
    move-result v5

    add-float v19, v19, v5

    .line 1662
    if-eqz p5, :cond_bf

    .line 1663
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v5, v0

    if-gez v5, :cond_125

    .line 1664
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1665
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1672
    :cond_bf
    :goto_bf
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_1a9

    .line 1673
    if-nez v12, :cond_147

    .line 1675
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v19

    move-object/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v5

    .end local v19           #width:F
    .local v5, width:F
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move v12, v5

    .line 1698
    .end local v5           #width:F
    .local v12, width:F
    :goto_d8
    if-eqz p5, :cond_1a2

    .line 1699
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    if-ge v5, v11, :cond_19f

    .line 1700
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    .line 1702
    .end local v11           #ascent:I
    .local v5, ascent:I
    :goto_e6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    if-le v6, v15, :cond_19c

    .line 1703
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    .end local v15           #descent:I
    .local v6, descent:I
    move v7, v6

    .line 1706
    .end local v6           #descent:I
    .local v7, descent:I
    :goto_f3
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_198

    .line 1707
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    .end local v18           #top:I
    .local v6, top:I
    move v8, v6

    .line 1709
    .end local v6           #top:I
    .local v8, top:I
    :goto_103
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    if-le v6, v13, :cond_194

    .line 1710
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    .end local v13           #bottom:I
    .local v6, bottom:I
    move v10, v8

    .line 1717
    .end local v8           #top:I
    .restart local v10       #top:I
    :goto_110
    add-int/lit8 v8, v9, 0x1

    .local v8, lastPos:I
    move v11, v12

    .line 1639
    .end local v12           #width:F
    .local v11, width:F
    :goto_113
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v9

    .end local v9           #pos:I
    .restart local v17       #pos:I
    move v13, v6

    .end local v6           #bottom:I
    .restart local v13       #bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .restart local v18       #top:I
    move v15, v7

    .end local v7           #descent:I
    .restart local v15       #descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .restart local v19       #width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v7, v8

    .end local v8           #lastPos:I
    .local v7, lastPos:I
    goto/16 :goto_39

    .end local v13           #bottom:I
    .end local v15           #descent:I
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .restart local v5       #ascent:I
    .restart local v6       #bottom:I
    .local v7, descent:I
    .restart local v8       #lastPos:I
    .restart local v10       #top:I
    .local v11, width:F
    :cond_121
    move/from16 v9, v16

    goto/16 :goto_2f

    .line 1667
    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v8           #lastPos:I
    .end local v10           #top:I
    .local v11, ascent:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_125
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1668
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_bf

    .line 1685
    :cond_147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1686
    add-int v8, p3, v17

    add-int v5, p3, v17

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1689
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v6, v19, v5

    .line 1694
    .end local v19           #width:F
    .local v6, width:F
    add-int/lit8 v5, v17, 0x1

    .end local v17           #pos:I
    .local v5, pos:I
    move v9, v5

    .end local v5           #pos:I
    .restart local v9       #pos:I
    move v12, v6

    .end local v6           #width:F
    .local v12, width:F
    goto/16 :goto_d8

    .line 1721
    .end local v9           #pos:I
    .end local v12           #width:F
    .local v7, lastPos:I
    .restart local v17       #pos:I
    .restart local v19       #width:F
    :cond_177
    if-eqz p5, :cond_18e

    .line 1722
    move v0, v11

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1723
    move v0, v15

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1724
    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1725
    move v0, v13

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1728
    :cond_18e
    if-eqz p6, :cond_193

    .line 1729
    invoke-static {v14}, Landroid/text/TextUtils;->recycle([C)V

    .line 1731
    :cond_193
    return v19

    .end local v11           #ascent:I
    .end local v15           #descent:I
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .local v5, ascent:I
    .local v7, descent:I
    .local v8, top:I
    .restart local v9       #pos:I
    .restart local v12       #width:F
    :cond_194
    move v6, v13

    .end local v13           #bottom:I
    .local v6, bottom:I
    move v10, v8

    .end local v8           #top:I
    .restart local v10       #top:I
    goto/16 :goto_110

    .end local v6           #bottom:I
    .end local v10           #top:I
    .restart local v13       #bottom:I
    .restart local v18       #top:I
    :cond_198
    move/from16 v8, v18

    .end local v18           #top:I
    .restart local v8       #top:I
    goto/16 :goto_103

    .end local v7           #descent:I
    .end local v8           #top:I
    .restart local v15       #descent:I
    .restart local v18       #top:I
    :cond_19c
    move v7, v15

    .end local v15           #descent:I
    .restart local v7       #descent:I
    goto/16 :goto_f3

    .end local v5           #ascent:I
    .end local v7           #descent:I
    .restart local v11       #ascent:I
    .restart local v15       #descent:I
    :cond_19f
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_e6

    .end local v5           #ascent:I
    .restart local v11       #ascent:I
    :cond_1a2
    move v6, v13

    .end local v13           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v10, v18

    .end local v18           #top:I
    .restart local v10       #top:I
    move v7, v15

    .end local v15           #descent:I
    .restart local v7       #descent:I
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_110

    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v9           #pos:I
    .end local v10           #top:I
    .restart local v11       #ascent:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_1a9
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move/from16 v12, v19

    .end local v19           #width:F
    .local v12, width:F
    goto/16 :goto_d8

    .end local v9           #pos:I
    .local v5, codept:I
    .local v7, lastPos:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v17       #pos:I
    .restart local v19       #width:F
    :cond_1af
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move v6, v13

    .end local v13           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v10, v18

    .end local v18           #top:I
    .restart local v10       #top:I
    move v5, v11

    .end local v11           #ascent:I
    .local v5, ascent:I
    move v8, v7

    .end local v7           #lastPos:I
    .local v8, lastPos:I
    move/from16 v11, v19

    .end local v19           #width:F
    .local v11, width:F
    move v7, v15

    .end local v15           #descent:I
    .local v7, descent:I
    goto/16 :goto_113

    .end local v8           #lastPos:I
    .end local v9           #pos:I
    .end local v10           #top:I
    .end local v12           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .local v7, lastPos:I
    .local v11, ascent:I
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_1bb
    move-object v12, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v12       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_72
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 1748
    const v2, 0x7f7fffff

    .line 1749
    .local v2, nh:F
    const/4 v0, 0x0

    .line 1751
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_41

    .line 1752
    if-nez p4, :cond_15

    .line 1753
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1754
    const/4 v0, 0x1

    .line 1757
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v4, p4

    if-ge v1, v4, :cond_38

    .line 1758
    if-nez v0, :cond_24

    .line 1759
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_24

    .line 1757
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1763
    :cond_24
    aget-object p0, p4, v1

    check-cast p0, Landroid/text/style/TabStopSpan;

    invoke-interface {p0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1765
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_21

    .line 1766
    int-to-float v2, v3

    goto :goto_21

    .line 1769
    .end local v3           #where:I
    :cond_38
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_41

    move v4, v2

    .line 1773
    .end local v1           #i:I
    :goto_40
    return v4

    :cond_41
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_40
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 153
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 69
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 169
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 170
    :try_start_3
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 171
    monitor-exit v5

    .line 374
    .end local p2
    :cond_f
    return-void

    .line 174
    .restart local p2
    :cond_10
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v47, v0

    .line 175
    .local v47, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v46, v0

    .line 176
    .local v46, dbottom:I
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_e3

    .line 179
    const/16 v61, 0x0

    .line 180
    .local v61, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v44

    .line 182
    .local v44, bottom:I
    move/from16 v0, v47

    move/from16 v1, v61

    if-le v0, v1, :cond_34

    .line 183
    move/from16 v61, v47

    .line 185
    :cond_34
    move/from16 v0, v46

    move/from16 v1, v44

    if-ge v0, v1, :cond_3c

    .line 186
    move/from16 v44, v46

    .line 189
    :cond_3c
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v48

    .line 190
    .local v48, first:I
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v50

    .line 192
    .local v50, last:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v54

    .line 193
    .local v54, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v55

    .line 195
    .local v55, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 196
    .local v6, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .line 197
    .local v12, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .line 198
    .local v8, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v59, v0

    .line 200
    .local v59, spannedText:Z
    sget-object v42, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 201
    .local v42, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v58, 0x0

    .line 202
    .local v58, spanend:I
    const/16 v60, 0x0

    .line 207
    .local v60, textLength:I
    if-eqz v59, :cond_fd

    .line 208
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v60

    .line 209
    move/from16 v15, v48

    .local v15, i:I
    :goto_7f
    move v0, v15

    move/from16 v1, v50

    if-gt v0, v1, :cond_e9

    .line 210
    move/from16 v13, v55

    .line 211
    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 212
    .local v14, end:I
    move/from16 v55, v14

    .line 214
    move/from16 v9, v54

    .line 215
    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 216
    .local v11, lbottom:I
    move/from16 v54, v11

    .line 217
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 219
    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v58

    if-lt v0, v1, :cond_cb

    .line 220
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v57, v0

    .line 221
    .local v57, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v57

    move v1, v13

    move/from16 v2, v60

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v58

    .line 223
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v57

    move v1, v13

    move/from16 v2, v58

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v42

    .end local v42           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v42, [Landroid/text/style/ParagraphStyle;

    .line 227
    .end local v57           #sp:Landroid/text/Spanned;
    .restart local v42       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_cb
    const/16 v53, 0x0

    .local v53, n:I
    :goto_cd
    move-object/from16 v0, v42

    array-length v0, v0

    move v5, v0

    move/from16 v0, v53

    move v1, v5

    if-ge v0, v1, :cond_e6

    .line 228
    aget-object v4, v42, v53

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 230
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 227
    add-int/lit8 v53, v53, 0x1

    goto :goto_cd

    .line 176
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v8           #width:I
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v12           #buf:Ljava/lang/CharSequence;
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v42           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v44           #bottom:I
    .end local v46           #dbottom:I
    .end local v47           #dtop:I
    .end local v48           #first:I
    .end local v50           #last:I
    .end local v53           #n:I
    .end local v54           #previousLineBottom:I
    .end local v55           #previousLineEnd:I
    .end local v58           #spanend:I
    .end local v59           #spannedText:Z
    .end local v60           #textLength:I
    .end local v61           #top:I
    :catchall_e3
    move-exception v6

    :try_start_e4
    monitor-exit v5
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v6

    .line 209
    .restart local v6       #paint:Landroid/text/TextPaint;
    .restart local v8       #width:I
    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v12       #buf:Ljava/lang/CharSequence;
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v42       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v44       #bottom:I
    .restart local v46       #dbottom:I
    .restart local v47       #dtop:I
    .restart local v48       #first:I
    .restart local v50       #last:I
    .restart local v53       #n:I
    .restart local v54       #previousLineBottom:I
    .restart local v55       #previousLineEnd:I
    .restart local v58       #spanend:I
    .restart local v59       #spannedText:Z
    .restart local v60       #textLength:I
    .restart local v61       #top:I
    :cond_e6
    add-int/lit8 v15, v15, 0x1

    goto :goto_7f

    .line 237
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v53           #n:I
    :cond_e9
    const/16 v58, 0x0

    .line 238
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v54

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v55

    .line 240
    sget-object v42, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 245
    .end local v15           #i:I
    :cond_fd
    if-eqz p2, :cond_11f

    .line 246
    if-eqz p4, :cond_10d

    .line 247
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    :cond_10d
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 252
    if-eqz p4, :cond_11f

    .line 253
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v43, v0

    .line 262
    .local v43, align:Landroid/text/Layout$Alignment;
    move/from16 v15, v48

    .end local p2
    .restart local v15       #i:I
    :goto_127
    move v0, v15

    move/from16 v1, v50

    if-gt v0, v1, :cond_f

    .line 263
    move/from16 v13, v55

    .line 265
    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v55

    .line 266
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .line 268
    .restart local v14       #end:I
    move/from16 v9, v54

    .line 269
    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 270
    .restart local v11       #lbottom:I
    move/from16 v54, v11

    .line 271
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 273
    .restart local v10       #lbaseline:I
    const/16 v27, 0x0

    .line 274
    .local v27, isFirstParaLine:Z
    if-eqz v59, :cond_1ab

    .line 275
    if-eqz v13, :cond_168

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_16a

    .line 276
    :cond_168
    const/16 v27, 0x1

    .line 280
    :cond_16a
    move v0, v13

    move/from16 v1, v58

    if-lt v0, v1, :cond_1ab

    .line 281
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v57, v0

    .line 282
    .restart local v57       #sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v57

    move v1, v13

    move/from16 v2, v60

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v58

    .line 284
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v57

    move v1, v13

    move/from16 v2, v58

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v42

    .end local v42           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v42, [Landroid/text/style/ParagraphStyle;

    .line 286
    .restart local v42       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v43, v0

    .line 287
    move-object/from16 v0, v42

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v53, v5, v7

    .restart local v53       #n:I
    :goto_19b
    if-ltz v53, :cond_1ab

    .line 288
    aget-object v5, v42, v53

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_210

    .line 289
    aget-object p2, v42, v53

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v43

    .line 296
    .end local v53           #n:I
    .end local v57           #sp:Landroid/text/Spanned;
    :cond_1ab
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .line 297
    .local v20, dir:I
    const/16 v19, 0x0

    .line 298
    .local v19, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v56, v0

    .line 302
    .local v56, right:I
    if-eqz v59, :cond_217

    .line 303
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v51, v0

    .line 304
    .local v51, length:I
    const/16 v53, 0x0

    .restart local v53       #n:I
    :goto_1c3
    move/from16 v0, v53

    move/from16 v1, v51

    if-ge v0, v1, :cond_217

    .line 305
    aget-object v5, v42, v53

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_20d

    .line 306
    aget-object v16, v42, v53

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    .line 315
    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 319
    move/from16 v62, v27

    .line 320
    .local v62, useMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_20d

    .line 321
    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v45

    .line 322
    .local v45, count:I
    move/from16 v0, v45

    move v1, v15

    if-le v0, v1, :cond_213

    const/4 v5, 0x1

    move/from16 v62, v5

    .line 324
    :goto_203
    move-object/from16 v0, v16

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v19, v19, v5

    .line 304
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v45           #count:I
    .end local v62           #useMargin:Z
    :cond_20d
    add-int/lit8 v53, v53, 0x1

    goto :goto_1c3

    .line 287
    .end local v19           #left:I
    .end local v20           #dir:I
    .end local v51           #length:I
    .end local v56           #right:I
    .restart local v57       #sp:Landroid/text/Spanned;
    :cond_210
    add-int/lit8 v53, v53, -0x1

    goto :goto_19b

    .line 322
    .end local v57           #sp:Landroid/text/Spanned;
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v19       #left:I
    .restart local v20       #dir:I
    .restart local v45       #count:I
    .restart local v51       #length:I
    .restart local v56       #right:I
    .restart local v62       #useMargin:Z
    :cond_213
    const/4 v5, 0x0

    move/from16 v62, v5

    goto :goto_203

    .line 333
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v45           #count:I
    .end local v51           #length:I
    .end local v53           #n:I
    .end local v62           #useMargin:Z
    :cond_217
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v43

    move-object v1, v5

    if-ne v0, v1, :cond_25e

    .line 334
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_25b

    .line 335
    move/from16 v63, v19

    .line 359
    .local v63, x:I
    :goto_226
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v34

    .line 360
    .local v34, directions:Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v41

    .line 361
    .local v41, hasTab:Z
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v34

    move-object v1, v5

    if-ne v0, v1, :cond_294

    if-nez v59, :cond_294

    if-nez v41, :cond_294

    .line 367
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v32, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v28, p1

    move-object/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move-object/from16 v34, v6

    invoke-virtual/range {v28 .. v35}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Z)V

    .line 262
    .end local v34           #directions:Landroid/text/Layout$Directions;
    :goto_257
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_127

    .line 337
    .end local v41           #hasTab:Z
    .end local v63           #x:I
    :cond_25b
    move/from16 v63, v56

    .restart local v63       #x:I
    goto :goto_226

    .line 340
    .end local v63           #x:I
    :cond_25e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v42

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v52, v0

    .line 341
    .local v52, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v43

    move-object v1, v5

    if-ne v0, v1, :cond_280

    .line 342
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_27d

    .line 343
    add-int v63, v19, v52

    .restart local v63       #x:I
    goto :goto_226

    .line 345
    .end local v63           #x:I
    :cond_27d
    sub-int v63, v56, v52

    .restart local v63       #x:I
    goto :goto_226

    .line 349
    .end local v63           #x:I
    :cond_280
    and-int/lit8 v52, v52, -0x2

    .line 350
    sub-int v5, v56, v19

    sub-int v5, v5, v52

    shr-int/lit8 v49, v5, 0x1

    .line 351
    .local v49, half:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_291

    .line 352
    sub-int v63, v56, v49

    .restart local v63       #x:I
    goto :goto_226

    .line 354
    .end local v63           #x:I
    :cond_291
    add-int v63, v19, v49

    .restart local v63       #x:I
    goto :goto_226

    .line 369
    .end local v49           #half:I
    .end local v52           #max:I
    .restart local v34       #directions:Landroid/text/Layout$Directions;
    .restart local v41       #hasTab:Z
    :cond_294
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v40, v0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v20

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    move-object/from16 v39, v6

    invoke-direct/range {v28 .. v42}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V

    goto :goto_257
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 15
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1125
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1127
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1128
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1129
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1131
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1132
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 1134
    .local v5, h2:F
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/high16 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1138
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1140
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1142
    .local v2, dist:I
    if-nez v1, :cond_38

    if-eqz v3, :cond_42

    .line 1143
    :cond_38
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1145
    if-eqz v3, :cond_3f

    .line 1146
    add-int/2addr v7, v2

    .line 1147
    :cond_3f
    if-eqz v1, :cond_42

    .line 1148
    sub-int/2addr v0, v2

    .line 1151
    :cond_42
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4a

    .line 1152
    const/high16 v4, 0x3f00

    .line 1153
    :cond_4a
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_52

    .line 1154
    const/high16 v5, 0x3f00

    .line 1156
    :cond_52
    cmpl-float v8, v4, v5

    if-nez v8, :cond_97

    .line 1157
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1158
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1167
    :goto_5e
    const/4 v8, 0x2

    if-ne v1, v8, :cond_b0

    .line 1168
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1169
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1170
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1171
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1183
    :cond_7a
    :goto_7a
    const/4 v8, 0x2

    if-ne v3, v8, :cond_e4

    .line 1184
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1185
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1186
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1187
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1198
    :cond_96
    :goto_96
    return-void

    .line 1160
    :cond_97
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1161
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1163
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1164
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5e

    .line 1172
    :cond_b0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_7a

    .line 1173
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1174
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1176
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1177
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1179
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1180
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7a

    .line 1188
    :cond_e4
    const/4 v8, 0x1

    if-ne v3, v8, :cond_96

    .line 1189
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1190
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1192
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1193
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1196
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_96
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 884
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 875
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 867
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 462
    if-eqz p2, :cond_17

    .line 463
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 464
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 465
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 466
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 468
    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 825
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 7
    .parameter "offset"

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 724
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 725
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 727
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 728
    move v1, v0

    goto :goto_5

    .line 730
    :cond_16
    move v2, v0

    goto :goto_5

    .line 733
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1c

    .line 734
    const/4 v3, 0x0

    .line 736
    :goto_1b
    return v3

    :cond_1c
    move v3, v2

    goto :goto_1b
.end method

.method public getLineForVertical(I)I
    .registers 7
    .parameter "vertical"

    .prologue
    .line 699
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 701
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 702
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 704
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 705
    move v1, v0

    goto :goto_5

    .line 707
    :cond_16
    move v2, v0

    goto :goto_5

    .line 710
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1c

    .line 711
    const/4 v3, 0x0

    .line 713
    :goto_1b
    return v3

    :cond_1c
    move v3, v2

    goto :goto_1b
.end method

.method public getLineLeft(I)F
    .registers 10
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 608
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 609
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 611
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1d

    .line 612
    if-ne v1, v7, :cond_1b

    .line 613
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 626
    :goto_1a
    return v5

    :cond_1b
    move v5, v6

    .line 615
    goto :goto_1a

    .line 616
    :cond_1d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2e

    .line 617
    if-ne v1, v7, :cond_25

    move v5, v6

    .line 618
    goto :goto_1a

    .line 620
    :cond_25
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_1a

    .line 622
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 623
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 624
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 626
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_1a
.end method

.method public getLineMax(I)F
    .registers 4
    .parameter "line"

    .prologue
    .line 662
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .registers 9
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 635
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 636
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 638
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1e

    .line 639
    if-ne v1, v6, :cond_13

    .line 640
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 653
    :goto_12
    return v5

    .line 642
    :cond_13
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_12

    .line 643
    :cond_1e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2d

    .line 644
    if-ne v1, v6, :cond_29

    .line 645
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_12

    .line 647
    :cond_29
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_12

    .line 649
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 650
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 651
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 653
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_12
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 4
    .parameter "line"

    .prologue
    .line 670
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 23
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 744
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 745
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 746
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 748
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 749
    add-int/lit8 v13, v13, 0x1

    .line 751
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_3c

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 754
    :cond_3c
    move v4, v14

    .line 755
    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 757
    .local v5, bestdist:F
    move v9, v14

    .line 758
    .local v9, here:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4c
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_11a

    .line 759
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    aget-short v18, v18, v11

    add-int v17, v9, v18

    .line 760
    .local v17, there:I
    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_ad

    const/16 v18, 0x1

    move/from16 v16, v18

    .line 762
    .local v16, swap:I
    :goto_6a
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_71

    .line 763
    move/from16 v17, v13

    .line 765
    :cond_71
    const/16 v18, 0x1

    sub-int v18, v17, v18

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    const/16 v19, 0x1

    sub-int v12, v18, v19

    .line 767
    .local v12, low:I
    :goto_7d
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b4

    .line 768
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 769
    .local v8, guess:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 771
    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_b2

    .line 772
    move v10, v8

    goto :goto_7d

    .line 760
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_ad
    const/16 v18, -0x1

    move/from16 v16, v18

    goto :goto_6a

    .line 774
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_b2
    move v12, v8

    goto :goto_7d

    .line 777
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_b4
    add-int/lit8 v18, v9, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_bd

    .line 778
    add-int/lit8 v12, v9, 0x1

    .line 780
    :cond_bd
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_101

    .line 781
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 783
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 785
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 786
    .local v3, aft:I
    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_fb

    .line 787
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 789
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_fb

    .line 790
    move v7, v15

    .line 791
    move v12, v3

    .line 795
    .end local v15           #other:F
    :cond_fb
    cmpg-float v18, v7, v5

    if-gez v18, :cond_101

    .line 796
    move v5, v7

    .line 797
    move v4, v12

    .line 801
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_101
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 803
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_114

    .line 804
    move v5, v7

    .line 805
    move v4, v9

    .line 808
    :cond_114
    move/from16 v9, v17

    .line 758
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4c

    .line 811
    .end local v7           #dist:F
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_11a
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 813
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_12d

    .line 814
    move v5, v7

    .line 815
    move v4, v13

    .line 818
    :cond_12d
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .registers 20
    .parameter "offset"

    .prologue
    .line 892
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 893
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 894
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 895
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 897
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_33

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 900
    :cond_33
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 902
    .local v11, horiz:F
    move/from16 v3, p1

    .line 903
    .local v3, best:I
    const/high16 v4, -0x3100

    .line 906
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 907
    .local v5, candidate:I
    if-lt v5, v14, :cond_5e

    if-gt v5, v8, :cond_5e

    .line 908
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 910
    .local v9, h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_5e

    cmpl-float v16, v9, v4

    if-lez v16, :cond_5e

    .line 911
    move v3, v5

    .line 912
    move v4, v9

    .line 916
    .end local v9           #h:F
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 917
    if-lt v5, v14, :cond_81

    if-gt v5, v8, :cond_81

    .line 918
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 920
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_81

    cmpl-float v16, v9, v4

    if-lez v16, :cond_81

    .line 921
    move v3, v5

    .line 922
    move v4, v9

    .line 926
    .end local v9           #h:F
    :cond_81
    move v10, v14

    .line 927
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_83
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_f5

    .line 928
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 929
    .local v15, there:I
    if-le v15, v8, :cond_9c

    .line 930
    move v15, v8

    .line 932
    :cond_9c
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 934
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_ad

    cmpl-float v16, v9, v4

    if-lez v16, :cond_ad

    .line 935
    move v3, v10

    .line 936
    move v4, v9

    .line 939
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 940
    if-lt v5, v14, :cond_cf

    if-gt v5, v8, :cond_cf

    .line 941
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 943
    cmpg-float v16, v9, v11

    if-gez v16, :cond_cf

    cmpl-float v16, v9, v4

    if-lez v16, :cond_cf

    .line 944
    move v3, v5

    .line 945
    move v4, v9

    .line 949
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 950
    if-lt v5, v14, :cond_f1

    if-gt v5, v8, :cond_f1

    .line 951
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 953
    cmpg-float v16, v9, v11

    if-gez v16, :cond_f1

    cmpl-float v16, v9, v4

    if-lez v16, :cond_f1

    .line 954
    move v3, v5

    .line 955
    move v4, v9

    .line 959
    :cond_f1
    move v10, v15

    .line 927
    add-int/lit8 v12, v12, 0x1

    goto :goto_83

    .line 962
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_f5
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 964
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_106

    cmpl-float v16, v9, v4

    if-lez v16, :cond_106

    .line 965
    move v3, v8

    .line 966
    move v4, v9

    .line 969
    :cond_106
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_10e

    move/from16 v16, v3

    .line 983
    :goto_10d
    return v16

    .line 972
    :cond_10e
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 974
    .local v6, dir:I
    if-lez v6, :cond_12e

    .line 975
    if-nez v13, :cond_11c

    move/from16 v16, v3

    .line 976
    goto :goto_10d

    .line 978
    :cond_11c
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_10d

    .line 980
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_13e

    move/from16 v16, v3

    .line 981
    goto :goto_10d

    .line 983
    :cond_13e
    add-int/lit8 v16, v13, 0x1

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_10d
.end method

.method public getOffsetToRightOf(I)I
    .registers 20
    .parameter "offset"

    .prologue
    .line 992
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 993
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 994
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 995
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 997
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_33

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 1000
    :cond_33
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 1002
    .local v11, horiz:F
    move/from16 v3, p1

    .line 1003
    .local v3, best:I
    const/high16 v4, 0x4f00

    .line 1006
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1007
    .local v5, candidate:I
    if-lt v5, v14, :cond_5e

    if-gt v5, v8, :cond_5e

    .line 1008
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1010
    .local v9, h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_5e

    cmpg-float v16, v9, v4

    if-gez v16, :cond_5e

    .line 1011
    move v3, v5

    .line 1012
    move v4, v9

    .line 1016
    .end local v9           #h:F
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1017
    if-lt v5, v14, :cond_81

    if-gt v5, v8, :cond_81

    .line 1018
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1020
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_81

    cmpg-float v16, v9, v4

    if-gez v16, :cond_81

    .line 1021
    move v3, v5

    .line 1022
    move v4, v9

    .line 1026
    .end local v9           #h:F
    :cond_81
    move v10, v14

    .line 1027
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_83
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_f5

    .line 1028
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 1029
    .local v15, there:I
    if-le v15, v8, :cond_9c

    .line 1030
    move v15, v8

    .line 1032
    :cond_9c
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1034
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_ad

    cmpg-float v16, v9, v4

    if-gez v16, :cond_ad

    .line 1035
    move v3, v10

    .line 1036
    move v4, v9

    .line 1039
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1040
    if-lt v5, v14, :cond_cf

    if-gt v5, v8, :cond_cf

    .line 1041
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1043
    cmpl-float v16, v9, v11

    if-lez v16, :cond_cf

    cmpg-float v16, v9, v4

    if-gez v16, :cond_cf

    .line 1044
    move v3, v5

    .line 1045
    move v4, v9

    .line 1049
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1050
    if-lt v5, v14, :cond_f1

    if-gt v5, v8, :cond_f1

    .line 1051
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1053
    cmpl-float v16, v9, v11

    if-lez v16, :cond_f1

    cmpg-float v16, v9, v4

    if-gez v16, :cond_f1

    .line 1054
    move v3, v5

    .line 1055
    move v4, v9

    .line 1059
    :cond_f1
    move v10, v15

    .line 1027
    add-int/lit8 v12, v12, 0x1

    goto :goto_83

    .line 1062
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_f5
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1064
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_106

    cmpg-float v16, v9, v4

    if-gez v16, :cond_106

    .line 1065
    move v3, v8

    .line 1066
    move v4, v9

    .line 1069
    :cond_106
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_10e

    move/from16 v16, v3

    .line 1083
    :goto_10d
    return v16

    .line 1072
    :cond_10e
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1074
    .local v6, dir:I
    if-lez v6, :cond_137

    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_127

    move/from16 v16, v3

    .line 1076
    goto :goto_10d

    .line 1078
    :cond_127
    add-int/lit8 v16, v13, 0x1

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_10d

    .line 1080
    :cond_137
    if-nez v13, :cond_13c

    move/from16 v16, v3

    .line 1081
    goto :goto_10d

    .line 1083
    :cond_13c
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_10d
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 9
    .parameter "line"

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1296
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_26

    .line 1297
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1298
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1302
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1303
    .local v2, spanLength:I
    if-lez v2, :cond_26

    .line 1304
    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1308
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_26
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 18
    .parameter "line"

    .prologue
    const/4 v15, 0x1

    .line 1315
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .line 1317
    .local v3, dir:I
    const/4 v5, 0x0

    .line 1319
    .local v5, left:I
    const/4 v8, 0x0

    .line 1320
    .local v8, par:Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 1321
    .local v7, off:I
    if-eqz v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    sub-int v13, v7, v15

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_1d

    .line 1322
    :cond_1c
    const/4 v8, 0x1

    .line 1324
    :cond_1d
    if-ne v3, v15, :cond_61

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v12, v0

    if-eqz v12, :cond_61

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    .line 1327
    .local v9, sp:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v9, v12, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/LeadingMarginSpan;

    .line 1331
    .local v11, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3e
    array-length v12, v11

    if-ge v4, v12, :cond_61

    .line 1332
    move v6, v8

    .line 1333
    .local v6, margin:Z
    aget-object v10, v11, v4

    .line 1334
    .local v10, span:Landroid/text/style/LeadingMarginSpan;
    instance-of v12, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v12, :cond_56

    .line 1335
    move-object v0, v10

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v12, v0

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    .line 1336
    .local v2, count:I
    move v0, v2

    move/from16 v1, p1

    if-lt v0, v1, :cond_5e

    move v6, v15

    .line 1338
    .end local v2           #count:I
    :cond_56
    :goto_56
    invoke-interface {v10, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v12

    add-int/2addr v5, v12

    .line 1331
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 1336
    .restart local v2       #count:I
    :cond_5e
    const/4 v12, 0x0

    move v6, v12

    goto :goto_56

    .line 1343
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #margin:Z
    .end local v9           #sp:Landroid/text/Spanned;
    .end local v10           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v11           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_61
    return v5
.end method

.method public final getParagraphRight(I)I
    .registers 12
    .parameter "line"

    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1352
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1354
    .local v4, right:I
    const/4 v3, 0x0

    .line 1355
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1356
    .local v2, off:I
    if-eqz v2, :cond_1a

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1b

    .line 1357
    :cond_1a
    const/4 v3, 0x1

    .line 1360
    :cond_1b
    const/4 v7, -0x1

    if-ne v0, v7, :cond_44

    .line 1361
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_44

    .line 1362
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1363
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1367
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    array-length v7, v6

    if-ge v1, v7, :cond_44

    .line 1368
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1367
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1373
    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_44
    return v4
.end method

.method public getPrimaryHorizontal(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 532
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .registers 3
    .parameter "offset"

    .prologue
    const/4 v0, 0x1

    .line 541
    invoke-direct {p0, p1, v0, v0}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 23
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1240
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1287
    :goto_9
    return-void

    .line 1243
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_16

    .line 1244
    move/from16 v17, p2

    .line 1245
    .local v17, temp:I
    move/from16 p2, p1

    .line 1246
    move/from16 p1, v17

    .line 1249
    .end local v17           #temp:I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1250
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1252
    .local v15, endline:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1253
    .local v6, top:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1255
    .local v7, bottom:I
    if-ne v3, v15, :cond_3e

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1256
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_9

    .line 1258
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v2, v0

    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1260
    .local v18, width:F
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1263
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a8

    .line 1264
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1270
    :goto_82
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_84
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_c2

    .line 1271
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1272
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1273
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1270
    add-int/lit8 v16, v16, 0x1

    goto :goto_84

    .line 1267
    .end local v16           #i:I
    :cond_a8
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_82

    .line 1276
    .restart local v16       #i:I
    :cond_c2
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1277
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1279
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1282
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_101

    .line 1283
    .end local v3           #startline:I
    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    .line 1285
    :cond_101
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9
.end method

.method public final getSpacingAdd()F
    .registers 2

    .prologue
    .line 445
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4
    .parameter "wid"

    .prologue
    .line 413
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_c

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_c
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 418
    return-void
.end method

.method protected final isSpanned()Z
    .registers 2

    .prologue
    .line 1777
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 135
    if-gez p3, :cond_21

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_21
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 140
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 141
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 142
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 143
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 144
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 145
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 146
    return-void
.end method
