.class public abstract Landroid/hardware/ISensorService$Stub;
.super Landroid/os/Binder;
.source "ISensorService.java"

# interfaces
.implements Landroid/hardware/ISensorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISensorService"

.field static final TRANSACTION_enableSensor:I = 0x2

.field static final TRANSACTION_getDataChannel:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.hardware.ISensorService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISensorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "android.hardware.ISensorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ISensorService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/hardware/ISensorService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/hardware/ISensorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISensorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.hardware.ISensorService"

    .line 41
    sparse-switch p1, :sswitch_data_54

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 45
    :sswitch_c
    const-string v5, "android.hardware.ISensorService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 46
    goto :goto_b

    .line 50
    :sswitch_13
    const-string v5, "android.hardware.ISensorService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/hardware/ISensorService$Stub;->getDataChannel()Landroid/os/Bundle;

    move-result-object v4

    .line 52
    .local v4, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_29

    .line 54
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v4, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_27
    move v5, v6

    .line 60
    goto :goto_b

    .line 58
    :cond_29
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 64
    .end local v4           #_result:Landroid/os/Bundle;
    :sswitch_2d
    const-string v5, "android.hardware.ISensorService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/ISensorService$Stub;->enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z

    move-result v4

    .line 74
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_51

    move v5, v6

    :goto_4c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 76
    goto :goto_b

    :cond_51
    move v5, v8

    .line 75
    goto :goto_4c

    .line 41
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
