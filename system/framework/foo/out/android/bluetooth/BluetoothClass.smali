.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_OPP:I = 0x2


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "classInt"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .registers 5
    .parameter "profile"

    .prologue
    const/high16 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    if-ne p1, v1, :cond_19

    .line 282
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 336
    :goto_d
    return v0

    .line 288
    :cond_e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    move v0, v2

    .line 295
    goto :goto_d

    :sswitch_17
    move v0, v1

    .line 293
    goto :goto_d

    .line 297
    :cond_19
    if-nez p1, :cond_2e

    .line 300
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 301
    goto :goto_d

    .line 304
    :cond_23
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    move v0, v2

    .line 310
    goto :goto_d

    :sswitch_2c
    move v0, v1

    .line 308
    goto :goto_d

    .line 312
    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_46

    .line 313
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    .line 314
    goto :goto_d

    .line 317
    :cond_3b
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    move v0, v2

    .line 333
    goto :goto_d

    :sswitch_44
    move v0, v1

    .line 331
    goto :goto_d

    :cond_46
    move v0, v2

    .line 336
    goto :goto_d

    .line 288
    :sswitch_data_48
    .sparse-switch
        0x414 -> :sswitch_17
        0x418 -> :sswitch_17
        0x420 -> :sswitch_17
        0x428 -> :sswitch_17
    .end sparse-switch

    .line 304
    :sswitch_data_5a
    .sparse-switch
        0x404 -> :sswitch_2c
        0x408 -> :sswitch_2c
        0x420 -> :sswitch_2c
    .end sparse-switch

    .line 317
    :sswitch_data_68
    .sparse-switch
        0x100 -> :sswitch_44
        0x104 -> :sswitch_44
        0x108 -> :sswitch_44
        0x10c -> :sswitch_44
        0x110 -> :sswitch_44
        0x114 -> :sswitch_44
        0x118 -> :sswitch_44
        0x200 -> :sswitch_44
        0x204 -> :sswitch_44
        0x208 -> :sswitch_44
        0x20c -> :sswitch_44
        0x210 -> :sswitch_44
        0x214 -> :sswitch_44
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 67
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_11

    .line 68
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1
    iget v1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    .line 70
    :goto_e
    return v0

    :cond_f
    move v0, v2

    .line 68
    goto :goto_e

    .restart local p1
    :cond_11
    move v0, v2

    .line 70
    goto :goto_e
.end method

.method public getDeviceClass()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .registers 4
    .parameter "service"

    .prologue
    .line 130
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
