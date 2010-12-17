.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 389
    or-int v0, p1, p2

    if-ltz v0, :cond_9

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 390
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 392
    :cond_f
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "pathName"

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "pathName"
    .parameter "opts"

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 270
    .local v1, stream:Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_16

    .line 271
    .end local v1           #stream:Ljava/io/InputStream;
    .local v2, stream:Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_2b

    move-result-object v0

    .line 277
    if-eqz v2, :cond_2e

    .line 279
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_13

    move-object v1, v2

    .line 285
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :cond_12
    :goto_12
    return-object v0

    .line 280
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_13
    move-exception v3

    move-object v1, v2

    .line 282
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_12

    .line 272
    :catch_16
    move-exception v3

    .line 277
    :goto_17
    if-eqz v1, :cond_12

    .line 279
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 280
    :catch_1d
    move-exception v3

    goto :goto_12

    .line 277
    :catchall_1f
    move-exception v3

    :goto_20
    if-eqz v1, :cond_25

    .line 279
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 282
    :cond_25
    :goto_25
    throw v3

    .line 280
    :catch_26
    move-exception v4

    goto :goto_25

    .line 277
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catchall_28
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_20

    .line 272
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_2b
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_17

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :cond_2e
    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_12
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 534
    :try_start_0
    invoke-static {p0}, Landroid/os/MemoryFile;->isMemoryFile(Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 535
    invoke-static {p0}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v4

    .line 536
    .local v4, mappedlength:I
    new-instance v2, Landroid/os/MemoryFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/io/FileDescriptor;ILjava/lang/String;)V

    .line 537
    .local v2, file:Landroid/os/MemoryFile;
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 538
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v5

    .line 546
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #file:Landroid/os/MemoryFile;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #mappedlength:I
    :goto_1d
    return-object v5

    .line 541
    :catch_1e
    move-exception v5

    move-object v1, v5

    .line 543
    .local v1, ex:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1d

    .line 545
    .end local v1           #ex:Ljava/io/IOException;
    :cond_22
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 546
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1d
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "res"
    .parameter "id"

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 343
    .local v1, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 344
    .local v2, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 346
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_16

    move-result-object v0

    .line 354
    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_26

    .line 360
    .end local v2           #value:Landroid/util/TypedValue;
    :cond_15
    :goto_15
    return-object v0

    .line 347
    :catch_16
    move-exception v3

    .line 354
    if-eqz v1, :cond_15

    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_15

    .line 355
    :catch_1d
    move-exception v3

    goto :goto_15

    .line 353
    :catchall_1f
    move-exception v3

    .line 354
    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_28

    .line 357
    :cond_25
    :goto_25
    throw v3

    .line 355
    .restart local v2       #value:Landroid/util/TypedValue;
    :catch_26
    move-exception v3

    goto :goto_15

    .end local v2           #value:Landroid/util/TypedValue;
    :catch_28
    move-exception v4

    goto :goto_25
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 306
    if-nez p4, :cond_7

    .line 307
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 310
    .restart local p4
    :cond_7
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_15

    if-eqz p1, :cond_15

    .line 311
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 312
    .local v0, density:I
    if-nez v0, :cond_28

    .line 313
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 319
    .end local v0           #density:I
    :cond_15
    :goto_15
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_23

    if-eqz p0, :cond_23

    .line 320
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 323
    :cond_23
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 314
    .restart local v0       #density:I
    :cond_28
    const v1, 0xffff

    if-eq v0, v1, :cond_15

    .line 315
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v4, 0x4000

    .line 429
    if-nez p0, :cond_6

    .line 430
    const/4 v3, 0x0

    .line 462
    .end local p0
    :goto_5
    return-object v3

    .line 435
    .restart local p0
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_12

    .line 436
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v1, is:Ljava/io/InputStream;
    move-object p0, v1

    .line 442
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_12
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 446
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_2a

    .line 447
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v3

    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_25
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_5

    .line 454
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_2a
    const/4 v2, 0x0

    .line 455
    .local v2, tempStorage:[B
    if-eqz p2, :cond_2f

    .line 456
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 457
    :cond_2f
    if-nez v2, :cond_33

    .line 458
    new-array v2, v4, [B

    .line 459
    :cond_33
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_25
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    .line 466
    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    .line 499
    :cond_7
    :goto_7
    return-object p0

    .line 470
    :cond_8
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 471
    .local v0, density:I
    if-eqz v0, :cond_7

    .line 475
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 476
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 477
    .local v5, targetDensity:I
    if-eqz v5, :cond_7

    if-eq v0, v5, :cond_7

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v6, :cond_7

    .line 482
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 483
    .local v2, np:[B
    if-eqz v2, :cond_55

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_55

    move v1, v9

    .line 484
    .local v1, isNinePatch:Z
    :goto_26
    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v6, :cond_2c

    if-eqz v1, :cond_7

    .line 485
    :cond_2c
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 487
    .local v4, scale:F
    move-object v3, p0

    .line 488
    .local v3, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 490
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    if-eqz v1, :cond_51

    .line 493
    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v2

    .line 494
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 496
    :cond_51
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_7

    .line 483
    .end local v1           #isNinePatch:Z
    .end local v3           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_55
    const/4 v6, 0x0

    move v1, v6

    goto :goto_26
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method

.method private static native nativeSetDefaultConfig(I)V
.end method

.method public static setDefaultConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 576
    if-nez p0, :cond_4

    .line 579
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 581
    :cond_4
    iget v0, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->nativeSetDefaultConfig(I)V

    .line 582
    return-void
.end method
