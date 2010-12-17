.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final YUY2:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .registers 2
    .parameter "format"

    .prologue
    const/16 v0, 0x10

    .line 68
    sparse-switch p0, :sswitch_data_a

    .line 74
    const/4 v0, -0x1

    :goto_6
    :sswitch_6
    return v0

    .line 71
    :sswitch_7
    const/16 v0, 0xc

    goto :goto_6

    .line 68
    :sswitch_data_a
    .sparse-switch
        0x4 -> :sswitch_6
        0x10 -> :sswitch_6
        0x11 -> :sswitch_7
        0x14 -> :sswitch_6
    .end sparse-switch
.end method
