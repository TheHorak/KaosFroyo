.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field private static final LAST_RIGHT_TO_LEFT:C = '\u07b1'

.field public static final MATRIX_SAVE_FLAG:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field final mNativeCanvas:I

.field private mScreenDensity:I

.field private mSurfaceFormat:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 71
    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 72
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "nativeCanvas"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 95
    if-nez p1, :cond_10

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 98
    :cond_10
    iput p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 99
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_16

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_16
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 90
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 91
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 92
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .registers 3
    .parameter "gl"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 113
    invoke-static {}, Landroid/graphics/Canvas;->initGL()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 114
    iput-object p1, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 115
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 116
    return-void
.end method

.method public static bidiProcess([CII)[C
    .registers 13
    .parameter "text"
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 1313
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1314
    .local v0, cut:Ljava/lang/String;
    new-array v7, p2, [C

    .line 1315
    .local v7, tt:[C
    invoke-virtual {v0, v8, p2, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1316
    const/4 v2, 0x0

    .line 1317
    .local v2, hasRTL:Z
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_d
    if-ge v3, p2, :cond_18

    .line 1318
    aget-char v8, v7, v3

    invoke-static {v8}, Landroid/graphics/Canvas;->isRTL(C)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 1319
    const/4 v2, 0x1

    .line 1322
    :cond_18
    if-eqz v2, :cond_72

    .line 1323
    new-array v6, p2, [C

    .line 1324
    .local v6, rev:[C
    const/4 v3, 0x0

    :goto_1d
    if-ge v3, p2, :cond_2d

    .line 1325
    sub-int v8, p2, v3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-char v8, v7, v8

    aput-char v8, v6, v3

    .line 1324
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1317
    .end local v6           #rev:[C
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1327
    .restart local v6       #rev:[C
    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    if-ge v3, p2, :cond_72

    .line 1328
    aget-char v8, v6, v3

    invoke-static {v8}, Landroid/graphics/Canvas;->isRTL(C)Z

    move-result v8

    if-nez v8, :cond_40

    aget-char v8, v6, v3

    invoke-static {v8}, Landroid/graphics/Canvas;->isPunctuation(C)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1329
    :cond_40
    aget-char v8, v6, v3

    invoke-static {v8}, Landroid/graphics/Canvas;->reverseParen(C)C

    move-result v8

    aput-char v8, v7, v3

    .line 1330
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1332
    :cond_4b
    add-int/lit8 v1, v3, 0x1

    .line 1333
    .local v1, end:I
    :goto_4d
    if-ge v1, p2, :cond_62

    aget-char v8, v6, v1

    invoke-static {v8}, Landroid/graphics/Canvas;->isRTL(C)Z

    move-result v8

    if-nez v8, :cond_62

    aget-char v8, v6, v1

    invoke-static {v8}, Landroid/graphics/Canvas;->isPunctuation(C)Z

    move-result v8

    if-nez v8, :cond_62

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 1335
    :cond_62
    move v5, v1

    .local v5, jj:I
    move v4, v3

    .line 1336
    .end local v3           #ii:I
    .local v4, ii:I
    :goto_64
    if-ge v4, v1, :cond_70

    .line 1337
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ii:I
    .restart local v3       #ii:I
    add-int/lit8 v5, v5, -0x1

    aget-char v8, v6, v5

    aput-char v8, v7, v4

    move v4, v3

    .end local v3           #ii:I
    .restart local v4       #ii:I
    goto :goto_64

    :cond_70
    move v3, v4

    .line 1338
    .end local v4           #ii:I
    .restart local v3       #ii:I
    goto :goto_2e

    .line 1341
    .end local v1           #end:I
    .end local v5           #jj:I
    .end local v6           #rev:[C
    :cond_72
    return-object v7
.end method

.method public static bidiTest(Ljava/lang/String;II)Z
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "srcCount"

    .prologue
    .line 1259
    const/4 v0, 0x0

    .line 1262
    .local v0, hasBidi:Z
    move v1, p1

    .local v1, i:I
    :goto_2
    add-int v2, p2, p1

    if-ge v1, v2, :cond_17

    .line 1263
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x590

    if-lt v2, v3, :cond_18

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b1

    if-gt v2, v3, :cond_18

    .line 1264
    const/4 v0, 0x1

    .line 1268
    :cond_17
    return v0

    .line 1262
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static bidiTest([CII)Z
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "srcCount"

    .prologue
    .line 1242
    const/4 v0, 0x0

    .line 1245
    .local v0, hasBidi:Z
    move v1, p1

    .local v1, i:I
    :goto_2
    add-int v2, p2, p1

    if-ge v1, v2, :cond_13

    .line 1246
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_14

    aget-char v2, p0, v1

    const/16 v3, 0x7b1

    if-gt v2, v3, :cond_14

    .line 1247
    const/4 v0, 0x1

    .line 1251
    :cond_13
    return v0

    .line 1245
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static checkRange(III)V
    .registers 4
    .parameter "length"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 1122
    or-int v0, p1, p2

    if-ltz v0, :cond_8

    add-int v0, p1, p2

    if-le v0, p0, :cond_e

    .line 1123
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1125
    :cond_e
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method public static native freeCaches()V
.end method

.method public static freeGlCaches()V
    .registers 0

    .prologue
    .line 132
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 133
    return-void
.end method

.method private static native initGL()I
.end method

.method private static native initRaster(I)I
.end method

.method private static isPunctuation(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1272
    const/16 v0, 0x2f

    if-le p0, v0, :cond_18

    const/16 v0, 0x40

    if-eq p0, v0, :cond_18

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    const/16 v0, 0x60

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x7a

    if-le p0, v0, :cond_1a

    const/16 v0, 0xbf

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isRTL(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1276
    const/16 v0, 0x590

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7b1

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static native nativeDrawBitmapMatrix(IIII)V
.end method

.method private static native nativeDrawBitmapMesh(IIII[FI[III)V
.end method

.method private static native nativeDrawVertices(III[FI[FI[II[SIII)V
.end method

.method private static native nativeSetDrawFilter(II)V
.end method

.method private static native nativeSetViewport(III)V
.end method

.method private static native native_clipPath(III)Z
.end method

.method private static native native_clipRect(IFFFFI)Z
.end method

.method private static native native_clipRegion(III)Z
.end method

.method private static native native_concat(II)V
.end method

.method private static native native_drawARGB(IIIII)V
.end method

.method private static native native_drawArc(ILandroid/graphics/RectF;FFZI)V
.end method

.method private native native_drawBitmap(IIFFIIII)V
.end method

.method private static native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V
.end method

.method private native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V
.end method

.method private static native native_drawBitmap(I[IIIFFIIZI)V
.end method

.method private static native native_drawCircle(IFFFI)V
.end method

.method private static native native_drawColor(II)V
.end method

.method private static native native_drawColor(III)V
.end method

.method private static native native_drawLine(IFFFFI)V
.end method

.method private static native native_drawOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawPaint(II)V
.end method

.method private static native native_drawPath(III)V
.end method

.method private static native native_drawPicture(II)V
.end method

.method private static native native_drawPosText(ILjava/lang/String;[FI)V
.end method

.method private static native native_drawPosText(I[CII[FI)V
.end method

.method private static native native_drawRGB(IIII)V
.end method

.method private static native native_drawRect(IFFFFI)V
.end method

.method private static native native_drawRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_drawText(ILjava/lang/String;IIFFI)V
.end method

.method private static native native_drawText(I[CIIFFI)V
.end method

.method private native native_drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
.end method

.method private static native native_drawTextOnPath(ILjava/lang/String;IFFI)V
.end method

.method private static native native_drawTextOnPath(I[CIIIFFI)V
.end method

.method private static native native_getCTM(II)V
.end method

.method private static native native_getClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native native_quickReject(IFFFFI)Z
.end method

.method private static native native_quickReject(III)Z
.end method

.method private static native native_quickReject(ILandroid/graphics/RectF;I)Z
.end method

.method private static native native_saveLayer(IFFFFII)I
.end method

.method private static native native_saveLayer(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_saveLayerAlpha(IFFFFII)I
.end method

.method private static native native_saveLayerAlpha(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_setBitmap(II)V
.end method

.method private static native native_setMatrix(II)V
.end method

.method private static reverseParen(C)C
    .registers 1
    .parameter "c"

    .prologue
    .line 1283
    sparse-switch p0, :sswitch_data_1c

    .line 1309
    :goto_3
    return p0

    .line 1285
    :sswitch_4
    const/16 p0, 0x5d

    .line 1286
    goto :goto_3

    .line 1288
    :sswitch_7
    const/16 p0, 0x5b

    .line 1289
    goto :goto_3

    .line 1291
    :sswitch_a
    const/16 p0, 0x7b

    .line 1292
    goto :goto_3

    .line 1294
    :sswitch_d
    const/16 p0, 0x7d

    .line 1295
    goto :goto_3

    .line 1297
    :sswitch_10
    const/16 p0, 0x29

    .line 1298
    goto :goto_3

    .line 1300
    :sswitch_13
    const/16 p0, 0x28

    .line 1301
    goto :goto_3

    .line 1303
    :sswitch_16
    const/16 p0, 0x3c

    .line 1304
    goto :goto_3

    .line 1306
    :sswitch_19
    const/16 p0, 0x3e

    goto :goto_3

    .line 1283
    :sswitch_data_1c
    .sparse-switch
        0x28 -> :sswitch_10
        0x29 -> :sswitch_13
        0x3c -> :sswitch_19
        0x3e -> :sswitch_16
        0x5b -> :sswitch_4
        0x5d -> :sswitch_7
        0x7b -> :sswitch_d
        0x7d -> :sswitch_a
    .end sparse-switch
.end method

.method private static throwIfRecycled(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 956
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 957
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_1f
    return-void
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 574
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .registers 6
    .parameter "path"
    .parameter "op"

    .prologue
    .line 564
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipPath(III)Z

    move-result v0

    return v0
.end method

.method public native clipRect(FFFF)Z
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    .line 520
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(IIII)Z
.end method

.method public native clipRect(Landroid/graphics/Rect;)Z
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 9
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 480
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(Landroid/graphics/RectF;)Z
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .registers 9
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 466
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter "region"

    .prologue
    .line 603
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 6
    .parameter "region"
    .parameter "op"

    .prologue
    .line 589
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipRegion(III)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 425
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_concat(II)V

    .line 426
    return-void
.end method

.method public drawARGB(IIII)V
    .registers 6
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 734
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawARGB(IIIII)V

    .line 735
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 12
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 920
    if-nez p1, :cond_8

    .line 921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_8
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawArc(ILandroid/graphics/RectF;FFZI)V

    .line 925
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    .line 982
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 983
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_1b

    iget v0, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    :goto_e
    iget v6, p0, Landroid/graphics/Canvas;->mDensity:I

    iget v7, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v8, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Canvas;->native_drawBitmap(IIFFIIII)V

    .line 986
    return-void

    .line 983
    :cond_1b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_e
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 8
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    .line 1117
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()I

    move-result v2

    if-eqz p3, :cond_12

    iget v3, p3, Landroid/graphics/Paint;->mNativePaint:I

    :goto_e
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(IIII)V

    .line 1119
    return-void

    .line 1117
    :cond_12
    const/4 v3, 0x0

    goto :goto_e
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 12
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1043
    if-nez p3, :cond_8

    .line 1044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1046
    :cond_8
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1047
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    if-eqz p4, :cond_20

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v2

    :goto_16
    iget v5, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 1050
    return-void

    .line 1047
    :cond_20
    const/4 v2, 0x0

    move v4, v2

    goto :goto_16
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 13
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1011
    if-nez p3, :cond_8

    .line 1012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1014
    :cond_8
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1015
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_21

    iget v0, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    :goto_16
    iget v6, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v7, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V

    .line 1018
    return-void

    .line 1015
    :cond_21
    const/4 v0, 0x0

    move v5, v0

    goto :goto_16
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 24
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 1075
    if-gez p6, :cond_a

    .line 1076
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1078
    :cond_a
    if-gez p7, :cond_14

    .line 1079
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1081
    :cond_14
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_25

    .line 1082
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1084
    :cond_25
    const/4 v2, 0x1

    sub-int v2, p7, v2

    mul-int v2, v2, p3

    add-int v12, p2, v2

    .line 1085
    .local v12, lastScanline:I
    array-length v13, p1

    .line 1086
    .local v13, length:I
    if-ltz p2, :cond_39

    add-int v2, p2, p6

    if-gt v2, v13, :cond_39

    if-ltz v12, :cond_39

    add-int v2, v12, p6

    if-le v2, v13, :cond_3f

    .line 1088
    :cond_39
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1091
    :cond_3f
    if-eqz p6, :cond_43

    if-nez p7, :cond_44

    .line 1097
    :cond_43
    :goto_43
    return-void

    .line 1095
    :cond_44
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p9, :cond_61

    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v3, v0

    move v11, v3

    :goto_4e
    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v11}, Landroid/graphics/Canvas;->native_drawBitmap(I[IIIFFIIZI)V

    goto :goto_43

    :cond_61
    const/4 v3, 0x0

    move v11, v3

    goto :goto_4e
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 20
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 1105
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 1107
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 22
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 1156
    or-int v3, p2, p3

    or-int v3, v3, p5

    or-int v3, v3, p7

    if-gez v3, :cond_e

    .line 1157
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1159
    :cond_e
    if-eqz p2, :cond_12

    if-nez p3, :cond_13

    .line 1172
    :cond_12
    :goto_12
    return-void

    .line 1162
    :cond_13
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    mul-int v12, v3, v4

    .line 1164
    .local v12, count:I
    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    mul-int/lit8 v4, v12, 0x2

    move v0, v3

    move/from16 v1, p5

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1165
    if-eqz p6, :cond_33

    .line 1167
    move-object/from16 v0, p6

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p7

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1169
    :cond_33
    iget v3, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v4

    if-eqz p8, :cond_50

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    move v11, v5

    :goto_41
    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v11}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(IIII[FI[III)V

    goto :goto_12

    :cond_50
    const/4 v5, 0x0

    move v11, v5

    goto :goto_41
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 900
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawCircle(IFFFI)V

    .line 902
    return-void
.end method

.method public drawColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 744
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_drawColor(II)V

    .line 745
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 755
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawColor(III)V

    .line 756
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 12
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    .line 811
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawLine(IFFFFI)V

    .line 813
    return-void
.end method

.method public native drawLines([FIILandroid/graphics/Paint;)V
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 834
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 835
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 5
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 883
    if-nez p1, :cond_8

    .line 884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 886
    :cond_8
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawOval(ILandroid/graphics/RectF;I)V

    .line 887
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .registers 4
    .parameter "paint"

    .prologue
    .line 766
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPaint(II)V

    .line 767
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 952
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_drawPath(III)V

    .line 953
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 4
    .parameter "picture"

    .prologue
    .line 1647
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 1648
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Picture;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPicture(II)V

    .line 1649
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 6
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 1669
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1670
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1671
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_31

    .line 1672
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1675
    :cond_31
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1676
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1677
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 6
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1656
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1657
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1658
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1661
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1662
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1663
    return-void
.end method

.method public native drawPoint(FFLandroid/graphics/Paint;)V
.end method

.method public native drawPoints([FIILandroid/graphics/Paint;)V
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 792
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 793
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 9
    .parameter "text"
    .parameter "pos"
    .parameter "paint"

    .prologue
    const/4 v4, 0x0

    .line 1559
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    array-length v3, p2

    if-le v2, v3, :cond_10

    .line 1560
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1563
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v4, v2}, Landroid/graphics/Canvas;->bidiTest(Ljava/lang/String;II)Z

    move-result v1

    .line 1564
    .local v1, hasBidi:Z
    if-eqz v1, :cond_37

    .line 1566
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v3}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 1567
    .local v0, bidiText:Ljava/lang/String;
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v2, v3, p2, v4}, Landroid/graphics/Canvas;->native_drawPosText(ILjava/lang/String;[FI)V

    .line 1572
    .end local v0           #bidiText:Ljava/lang/String;
    :goto_36
    return-void

    .line 1569
    :cond_37
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v3, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v2, p1, p2, v3}, Landroid/graphics/Canvas;->native_drawPosText(ILjava/lang/String;[FI)V

    goto :goto_36
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 25
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 1530
    if-ltz p2, :cond_14

    add-int v5, p2, p3

    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    if-gt v5, v6, :cond_14

    add-int v5, p2, p3

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p4

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_1a

    .line 1531
    :cond_14
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 1534
    :cond_1a
    invoke-static/range {p1 .. p3}, Landroid/graphics/Canvas;->bidiTest([CII)Z

    move-result v17

    .line 1535
    .local v17, hasBidi:Z
    if-eqz v17, :cond_67

    .line 1536
    mul-int/lit8 v5, p3, 0x2

    new-array v9, v5, [F

    .line 1537
    .local v9, relativePos:[F
    mul-int/lit8 v5, p2, 0x2

    const/4 v6, 0x0

    mul-int/lit8 v7, p3, 0x2

    move-object/from16 v0, p4

    move v1, v5

    move-object v2, v9

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1539
    invoke-static/range {p1 .. p3}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v16

    .line 1540
    .local v16, bidiText:[C
    new-instance v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1542
    .local v18, reshapedText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v5, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, p3, v8

    if-lez v8, :cond_65

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, p3, v8

    :goto_5a
    sub-int v8, p3, v8

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v10, v0

    invoke-static/range {v5 .. v10}, Landroid/graphics/Canvas;->native_drawPosText(I[CII[FI)V

    .line 1548
    .end local v9           #relativePos:[F
    .end local v16           #bidiText:[C
    .end local v18           #reshapedText:Ljava/lang/String;
    :goto_64
    return-void

    .line 1542
    .restart local v9       #relativePos:[F
    .restart local v16       #bidiText:[C
    .restart local v18       #reshapedText:Ljava/lang/String;
    :cond_65
    const/4 v8, 0x0

    goto :goto_5a

    .line 1545
    .end local v9           #relativePos:[F
    .end local v16           #bidiText:[C
    .end local v18           #reshapedText:Ljava/lang/String;
    :cond_67
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v10, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v15, v0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static/range {v10 .. v15}, Landroid/graphics/Canvas;->native_drawPosText(I[CII[FI)V

    goto :goto_64
.end method

.method public drawRGB(III)V
    .registers 5
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 721
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_drawRGB(IIII)V

    .line 722
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 872
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRect(IFFFFI)V

    .line 874
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 856
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 857
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 5
    .parameter "rect"
    .parameter "paint"

    .prologue
    .line 845
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawRect(ILandroid/graphics/RectF;I)V

    .line 846
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 937
    if-nez p1, :cond_8

    .line 938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 940
    :cond_8
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawRoundRect(ILandroid/graphics/RectF;FFI)V

    .line 942
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 15
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1472
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Z)V

    .line 1473
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Z)V
    .registers 26
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "bidi"

    .prologue
    .line 1478
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sub-int v6, p3, p2

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->bidiTest(Ljava/lang/String;II)Z

    move-result v17

    .line 1479
    .local v17, hasBidi:Z
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move v5, v0

    if-nez v5, :cond_23

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/SpannedString;

    move v5, v0

    if-nez v5, :cond_23

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/SpannableString;

    move v5, v0

    if-eqz v5, :cond_b4

    .line 1481
    :cond_23
    if-eqz v17, :cond_9a

    .line 1482
    if-eqz p7, :cond_6a

    .line 1483
    new-instance v15, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    sub-int v6, p3, p2

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([C)V

    .line 1484
    .local v15, bidiText:Ljava/lang/String;
    invoke-static {v15}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1486
    .local v6, reshapedText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v5, v0

    const/4 v7, 0x0

    sub-int v8, p3, p2

    sub-int v9, p3, p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_68

    sub-int v9, p3, p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    :goto_5a
    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v11, v0

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    .line 1515
    .end local v6           #reshapedText:Ljava/lang/String;
    .end local v15           #bidiText:Ljava/lang/String;
    :goto_67
    return-void

    .line 1486
    .restart local v6       #reshapedText:Ljava/lang/String;
    .restart local v15       #bidiText:Ljava/lang/String;
    :cond_68
    const/4 v9, 0x0

    goto :goto_5a

    .line 1489
    .end local v6           #reshapedText:Ljava/lang/String;
    .end local v15           #bidiText:Ljava/lang/String;
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1491
    .restart local v6       #reshapedText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v5, v0

    const/4 v7, 0x0

    sub-int v8, p3, p2

    sub-int v9, p3, p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_98

    sub-int v9, p3, p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    :goto_8a
    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v11, v0

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    goto :goto_67

    :cond_98
    const/4 v9, 0x0

    goto :goto_8a

    .line 1495
    .end local v6           #reshapedText:Ljava/lang/String;
    :cond_9a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v7, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v13, v0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v7 .. v13}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    goto :goto_67

    .line 1499
    :cond_b4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/GraphicsOperations;

    move v5, v0

    if-eqz v5, :cond_d0

    .line 1500
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v7, v0

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-interface/range {v7 .. v13}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_67

    .line 1504
    :cond_d0
    sub-int v5, p3, p2

    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v16

    .line 1505
    .local v16, buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v16

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1506
    if-eqz v17, :cond_11e

    .line 1507
    new-instance v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1509
    .restart local v6       #reshapedText:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x0

    sub-int v5, p3, p2

    sub-int v7, p3, p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v7, v10

    if-lez v7, :cond_11c

    sub-int v7, p3, p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .end local v6           #reshapedText:Ljava/lang/String;
    sub-int v6, v7, v6

    :goto_109
    sub-int v10, v5, v6

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;Z)V

    .line 1513
    :goto_117
    invoke-static/range {v16 .. v16}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto/16 :goto_67

    .line 1509
    .restart local v6       #reshapedText:Ljava/lang/String;
    :cond_11c
    const/4 v6, 0x0

    goto :goto_109

    .line 1511
    .end local v6           #reshapedText:Ljava/lang/String;
    :cond_11e
    const/4 v9, 0x0

    sub-int v10, p3, p2

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;Z)V

    goto :goto_117
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 11
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1426
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 1427
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Z)V
    .registers 11
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "bidi"

    .prologue
    const/4 v4, 0x0

    .line 1410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v4, v2}, Landroid/graphics/Canvas;->bidiTest(Ljava/lang/String;II)Z

    move-result v1

    .line 1411
    .local v1, hasBidi:Z
    if-eqz v1, :cond_34

    .line 1412
    if-nez p5, :cond_15

    .line 1413
    invoke-static {p1}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1424
    :cond_14
    :goto_14
    return-void

    .line 1415
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 1417
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v3}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 1418
    .local v0, bidiText:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_14

    .line 1422
    .end local v0           #bidiText:Ljava/lang/String;
    :cond_34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_14
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 18
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1442
    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_13

    .line 1443
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1445
    :cond_13
    sub-int v1, p3, p2

    invoke-static {p1, p2, v1}, Landroid/graphics/Canvas;->bidiTest(Ljava/lang/String;II)Z

    move-result v10

    .line 1446
    .local v10, hasBidi:Z
    if-eqz v10, :cond_52

    .line 1447
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sub-int v3, p3, p2

    invoke-static {v2, p2, v3}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    .local v2, reshapedText:Ljava/lang/String;
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    const/4 v3, 0x0

    sub-int v4, p3, p2

    sub-int v5, p3, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    if-lez v5, :cond_50

    sub-int v5, p3, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_43
    sub-int/2addr v4, v5

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v7, v0

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    .line 1455
    .end local v2           #reshapedText:Ljava/lang/String;
    :goto_4f
    return-void

    .line 1449
    .restart local v2       #reshapedText:Ljava/lang/String;
    :cond_50
    const/4 v5, 0x0

    goto :goto_43

    .line 1452
    .end local v2           #reshapedText:Ljava/lang/String;
    :cond_52
    iget v3, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v9, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v3 .. v9}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    goto :goto_4f
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1383
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_11

    .line 1385
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1388
    :cond_11
    invoke-static {p1, p2, p3}, Landroid/graphics/Canvas;->bidiTest([CII)Z

    move-result v8

    .line 1389
    .local v8, hasBidi:Z
    if-eqz v8, :cond_23

    .line 1390
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;Z)V

    .line 1395
    :goto_22
    return-void

    .line 1392
    :cond_23
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFI)V

    goto :goto_22
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;Z)V
    .registers 19
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "bidi"

    .prologue
    .line 1347
    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_c

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_12

    .line 1349
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1351
    :cond_12
    invoke-static {p1, p2, p3}, Landroid/graphics/Canvas;->bidiTest([CII)Z

    move-result v9

    .line 1352
    .local v9, hasBidi:Z
    if-eqz v9, :cond_7a

    .line 1353
    if-eqz p7, :cond_4c

    .line 1354
    invoke-static {p1, p2, p3}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v8

    .line 1355
    .local v8, bidiText:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1357
    .local v10, reshapedText:Ljava/lang/String;
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    if-lez v4, :cond_4a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    :goto_3c
    sub-int v4, p3, v4

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v7, v0

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFI)V

    .line 1370
    .end local v8           #bidiText:[C
    .end local v10           #reshapedText:Ljava/lang/String;
    :goto_49
    return-void

    .line 1357
    .restart local v8       #bidiText:[C
    .restart local v10       #reshapedText:Ljava/lang/String;
    :cond_4a
    const/4 v4, 0x0

    goto :goto_3c

    .line 1360
    .end local v8           #bidiText:[C
    .end local v10           #reshapedText:Ljava/lang/String;
    :cond_4c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1362
    .restart local v10       #reshapedText:Ljava/lang/String;
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_78

    array-length v3, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_69
    sub-int v4, p3, v3

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v7, v0

    move v3, p2

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFI)V

    goto :goto_49

    :cond_78
    const/4 v3, 0x0

    goto :goto_69

    .line 1367
    .end local v10           #reshapedText:Ljava/lang/String;
    :cond_7a
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v7, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFI)V

    goto :goto_49
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 1624
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_33

    .line 1625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v2, v0}, Landroid/graphics/Canvas;->bidiTest(Ljava/lang/String;II)Z

    move-result v7

    .line 1626
    .local v7, hasBidi:Z
    if-eqz v7, :cond_34

    .line 1628
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    .line 1629
    .local v6, bidiText:Ljava/lang/String;
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v6}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawTextOnPath(ILjava/lang/String;IFFI)V

    .line 1637
    .end local v6           #bidiText:Ljava/lang/String;
    .end local v7           #hasBidi:Z
    :cond_33
    :goto_33
    return-void

    .line 1632
    .restart local v7       #hasBidi:Z
    :cond_34
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawTextOnPath(ILjava/lang/String;IFFI)V

    goto :goto_33
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 20
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1589
    if-ltz p2, :cond_7

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_d

    .line 1590
    :cond_7
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1592
    :cond_d
    invoke-static {p1, p2, p3}, Landroid/graphics/Canvas;->bidiTest([CII)Z

    move-result v10

    .line 1593
    .local v10, hasBidi:Z
    if-eqz v10, :cond_4a

    .line 1595
    invoke-static {p1, p2, p3}, Landroid/graphics/Canvas;->bidiProcess([CII)[C

    move-result-object v9

    .line 1596
    .local v9, bidiText:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Landroid/graphics/ArabicReshape;->reshape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1598
    .local v11, reshapedText:Ljava/lang/String;
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    if-lez v4, :cond_48

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    :goto_35
    sub-int v4, p3, v4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->ni()I

    move-result v5

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v8, v0

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Canvas;->native_drawTextOnPath(I[CIIIFFI)V

    .line 1607
    .end local v9           #bidiText:[C
    .end local v11           #reshapedText:Ljava/lang/String;
    :goto_47
    return-void

    .line 1598
    .restart local v9       #bidiText:[C
    .restart local v11       #reshapedText:Ljava/lang/String;
    :cond_48
    const/4 v4, 0x0

    goto :goto_35

    .line 1602
    .end local v9           #bidiText:[C
    .end local v11           #reshapedText:Ljava/lang/String;
    :cond_4a
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->ni()I

    move-result v5

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v8, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Canvas;->native_drawTextOnPath(I[CIIIFFI)V

    goto :goto_47
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 29
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 1221
    move-object/from16 v0, p3

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p4

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1222
    if-eqz p5, :cond_1a

    .line 1223
    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p6

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1225
    :cond_1a
    if-eqz p7, :cond_28

    .line 1226
    move-object/from16 v0, p7

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p8

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1228
    :cond_28
    if-eqz p9, :cond_36

    .line 1229
    move-object/from16 v0, p9

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1231
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    move v4, v0

    move-object/from16 v0, p12

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v15, v0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v3 .. v15}, Landroid/graphics/Canvas;->nativeDrawVertices(III[FI[FI[II[SIII)V

    .line 1234
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1683
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz v0, :cond_c

    .line 1684
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0}, Landroid/graphics/Canvas;->finalizer(I)V

    .line 1686
    :cond_c
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 707
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 708
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 709
    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "bounds"

    .prologue
    .line 698
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_getClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDensity()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    return-object v0
.end method

.method public native getHeight()I
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 453
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 454
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 455
    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "ctm"

    .prologue
    .line 445
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getCTM(II)V

    .line 446
    return-void
.end method

.method public native getSaveCount()I
.end method

.method public native getWidth()I
.end method

.method public native isOpaque()Z
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "type"

    .prologue
    .line 686
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 6
    .parameter "path"
    .parameter "type"

    .prologue
    .line 661
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_quickReject(III)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 5
    .parameter "rect"
    .parameter "type"

    .prologue
    .line 641
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_quickReject(ILandroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public native restore()V
.end method

.method public native restoreToCount(I)V
.end method

.method public native rotate(F)V
.end method

.method public final rotate(FFF)V
    .registers 6
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 406
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 408
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    return-void
.end method

.method public native save()I
.end method

.method public native save(I)I
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .registers 14
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 298
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p5, :cond_11

    iget v1, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v1

    :goto_7
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayer(IFFFFII)I

    move-result v0

    return v0

    :cond_11
    const/4 v1, 0x0

    move v5, v1

    goto :goto_7
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .registers 6
    .parameter "bounds"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 288
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p2, :cond_b

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    :goto_6
    invoke-static {v0, p1, v1, p3}, Landroid/graphics/Canvas;->native_saveLayer(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0

    :cond_b
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveLayerAlpha(FFFFII)I
    .registers 14
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 329
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayerAlpha(IFFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .registers 6
    .parameter "bounds"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 320
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 321
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_saveLayerAlpha(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public native scale(FF)V
.end method

.method public final scale(FFFF)V
    .registers 7
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 386
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 387
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 388
    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 389
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 148
    :cond_c
    iget-object v0, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_18

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t set a bitmap device on a GL canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_18
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 153
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_setBitmap(II)V

    .line 154
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 156
    return-void
.end method

.method public setDensity(I)V
    .registers 3
    .parameter "density"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 224
    :cond_9
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 225
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .registers 4
    .parameter "filter"

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, nativeFilter:I
    if-eqz p1, :cond_5

    .line 613
    iget v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:I

    .line 615
    :cond_5
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 616
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v1, v0}, Landroid/graphics/Canvas;->nativeSetDrawFilter(II)V

    .line 617
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 436
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-nez p1, :cond_9

    const/4 v1, 0x0

    :goto_5
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_setMatrix(II)V

    .line 438
    return-void

    .line 436
    :cond_9
    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_5
.end method

.method public setScreenDensity(I)V
    .registers 2
    .parameter "density"

    .prologue
    .line 229
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 230
    return-void
.end method

.method public setViewport(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_9

    .line 167
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->nativeSetViewport(III)V

    .line 169
    :cond_9
    return-void
.end method

.method public native skew(FF)V
.end method

.method public native translate(FF)V
.end method
