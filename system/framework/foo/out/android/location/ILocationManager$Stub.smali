.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGpsStatusListener:I = 0x7

.field static final TRANSACTION_addProximityAlert:I = 0xb

.field static final TRANSACTION_addTestProvider:I = 0x13

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x18

.field static final TRANSACTION_clearTestProviderLocation:I = 0x16

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1a

.field static final TRANSACTION_getAllProviders:I = 0x1

.field static final TRANSACTION_getFromLocation:I = 0x11

.field static final TRANSACTION_getFromLocationName:I = 0x12

.field static final TRANSACTION_getLastKnownLocation:I = 0xf

.field static final TRANSACTION_getProviderInfo:I = 0xd

.field static final TRANSACTION_getProviders:I = 0x2

.field static final TRANSACTION_isProviderEnabled:I = 0xe

.field static final TRANSACTION_locationCallbackFinished:I = 0x9

.field static final TRANSACTION_removeGpsStatusListener:I = 0x8

.field static final TRANSACTION_removeProximityAlert:I = 0xc

.field static final TRANSACTION_removeTestProvider:I = 0x14

.field static final TRANSACTION_removeUpdates:I = 0x5

.field static final TRANSACTION_removeUpdatesPI:I = 0x6

.field static final TRANSACTION_reportLocation:I = 0x10

.field static final TRANSACTION_requestLocationUpdates:I = 0x3

.field static final TRANSACTION_requestLocationUpdatesPI:I = 0x4

.field static final TRANSACTION_sendExtraCommand:I = 0xa

.field static final TRANSACTION_sendNiResponse:I = 0x1b

.field static final TRANSACTION_setTestProviderEnabled:I = 0x17

.field static final TRANSACTION_setTestProviderLocation:I = 0x15

.field static final TRANSACTION_setTestProviderStatus:I = 0x19


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 57
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
    .line 43
    sparse-switch p1, :sswitch_data_4fa

    .line 451
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 47
    :sswitch_8
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    goto :goto_7

    .line 52
    :sswitch_12
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v51

    .line 54
    .local v51, _result:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 56
    const/4 v4, 0x1

    goto :goto_7

    .line 60
    .end local v51           #_result:Ljava/util/List;
    :sswitch_2a
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v4, 0x1

    move v5, v4

    .line 63
    .local v5, _arg0:Z
    :goto_3a
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Z)Ljava/util/List;

    move-result-object v51

    .line 64
    .restart local v51       #_result:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 66
    const/4 v4, 0x1

    goto :goto_7

    .line 62
    .end local v5           #_arg0:Z
    .end local v51           #_result:Ljava/util/List;
    :cond_4d
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3a

    .line 70
    :sswitch_50
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 76
    .local v6, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 78
    .local v8, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    .local v9, _arg3:Landroid/location/ILocationListener;
    move-object/from16 v4, p0

    .line 79
    invoke-virtual/range {v4 .. v9}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/ILocationListener;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v4, 0x1

    goto :goto_7

    .line 85
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:J
    .end local v8           #_arg2:F
    .end local v9           #_arg3:Landroid/location/ILocationListener;
    :sswitch_76
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 91
    .restart local v6       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 93
    .restart local v8       #_arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a6

    .line 94
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, _arg3:Landroid/app/PendingIntent;
    :goto_9b
    move-object/from16 v4, p0

    .line 99
    invoke-virtual/range {v4 .. v9}, Landroid/location/ILocationManager$Stub;->requestLocationUpdatesPI(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 97
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    :cond_a6
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_9b

    .line 105
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:J
    .end local v8           #_arg2:F
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    :sswitch_a8
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 108
    .local v5, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 114
    .end local v5           #_arg0:Landroid/location/ILocationListener;
    :sswitch_c4
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e9

    .line 117
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 122
    .local v5, _arg0:Landroid/app/PendingIntent;
    :goto_dd
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeUpdatesPI(Landroid/app/PendingIntent;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 120
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :cond_e9
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/app/PendingIntent;
    goto :goto_dd

    .line 128
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :sswitch_eb
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v5

    .line 131
    .local v5, _arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v51

    .line 132
    .local v51, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v51, :cond_111

    const/4 v4, 0x1

    :goto_108
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 133
    :cond_111
    const/4 v4, 0x0

    goto :goto_108

    .line 138
    .end local v5           #_arg0:Landroid/location/IGpsStatusListener;
    .end local v51           #_result:Z
    :sswitch_113
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v5

    .line 141
    .restart local v5       #_arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 147
    .end local v5           #_arg0:Landroid/location/IGpsStatusListener;
    :sswitch_12f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 150
    .local v5, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 156
    .end local v5           #_arg0:Landroid/location/ILocationListener;
    :sswitch_14b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_195

    .line 163
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 168
    .local v8, _arg2:Landroid/os/Bundle;
    :goto_16c
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v51

    .line 169
    .restart local v51       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v51, :cond_197

    const/4 v4, 0x1

    :goto_17b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    if-eqz v8, :cond_199

    .line 172
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v4, 0x1

    move-object v0, v8

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    :goto_192
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 166
    .end local v8           #_arg2:Landroid/os/Bundle;
    .end local v51           #_result:Z
    :cond_195
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/os/Bundle;
    goto :goto_16c

    .line 170
    .restart local v51       #_result:Z
    :cond_197
    const/4 v4, 0x0

    goto :goto_17b

    .line 176
    :cond_199
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_192

    .line 182
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Landroid/os/Bundle;
    .end local v51           #_result:Z
    :sswitch_1a1
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 186
    .local v11, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 188
    .local v6, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 190
    .local v8, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 192
    .local v16, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d7

    .line 193
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .local v18, _arg4:Landroid/app/PendingIntent;
    :goto_1ca
    move-object/from16 v10, p0

    move-wide v13, v6

    move v15, v8

    .line 198
    invoke-virtual/range {v10 .. v18}, Landroid/location/ILocationManager$Stub;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 196
    .end local v18           #_arg4:Landroid/app/PendingIntent;
    :cond_1d7
    const/16 v18, 0x0

    .restart local v18       #_arg4:Landroid/app/PendingIntent;
    goto :goto_1ca

    .line 204
    .end local v6           #_arg1:D
    .end local v8           #_arg2:F
    .end local v11           #_arg0:D
    .end local v16           #_arg3:J
    .end local v18           #_arg4:Landroid/app/PendingIntent;
    :sswitch_1da
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ff

    .line 207
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 212
    .local v5, _arg0:Landroid/app/PendingIntent;
    :goto_1f3
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 210
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :cond_1ff
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/app/PendingIntent;
    goto :goto_1f3

    .line 218
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :sswitch_201
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v51

    .line 222
    .local v51, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v51, :cond_22c

    .line 224
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v4, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    :goto_229
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 228
    :cond_22c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_229

    .line 234
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v51           #_result:Landroid/os/Bundle;
    :sswitch_234
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 237
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v51

    .line 238
    .local v51, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v51, :cond_256

    const/4 v4, 0x1

    :goto_24d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 239
    :cond_256
    const/4 v4, 0x0

    goto :goto_24d

    .line 244
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v51           #_result:Z
    :sswitch_258
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 247
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v51

    .line 248
    .local v51, _result:Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v51, :cond_283

    .line 250
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v4, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 256
    :goto_280
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 254
    :cond_283
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_280

    .line 260
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v51           #_result:Landroid/location/Location;
    :sswitch_28b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b9

    .line 263
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 269
    .local v5, _arg0:Landroid/location/Location;
    :goto_2a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2bb

    const/4 v4, 0x1

    move v6, v4

    .line 270
    .local v6, _arg1:Z
    :goto_2ac
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 266
    .end local v5           #_arg0:Landroid/location/Location;
    .end local v6           #_arg1:Z
    :cond_2b9
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/location/Location;
    goto :goto_2a4

    .line 269
    :cond_2bb
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2ac

    .line 276
    .end local v5           #_arg0:Landroid/location/Location;
    :sswitch_2be
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 280
    .restart local v11       #_arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 282
    .local v6, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 284
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30a

    .line 285
    sget-object v4, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/GeocoderParams;

    .line 291
    .local v9, _arg3:Landroid/location/GeocoderParams;
    :goto_2e3
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .local v26, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v19, p0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v6

    move/from16 v24, v8

    move-object/from16 v25, v9

    .line 292
    invoke-virtual/range {v19 .. v26}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v51

    .line 293
    .local v51, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 296
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 288
    .end local v9           #_arg3:Landroid/location/GeocoderParams;
    .end local v26           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v51           #_result:Ljava/lang/String;
    :cond_30a
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/location/GeocoderParams;
    goto :goto_2e3

    .line 300
    .end local v6           #_arg1:D
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/location/GeocoderParams;
    .end local v11           #_arg0:D
    :sswitch_30c
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 306
    .restart local v6       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v31

    .line 308
    .local v31, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 310
    .local v16, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v35

    .line 312
    .local v35, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 314
    .local v37, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_362

    .line 315
    sget-object v4, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/location/GeocoderParams;

    .line 321
    .local v38, _arg6:Landroid/location/GeocoderParams;
    :goto_33d
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .local v39, _arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-wide/from16 v29, v6

    move-wide/from16 v33, v16

    .line 322
    invoke-virtual/range {v27 .. v39}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v51

    .line 323
    .restart local v51       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 326
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 318
    .end local v38           #_arg6:Landroid/location/GeocoderParams;
    .end local v39           #_arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v51           #_result:Ljava/lang/String;
    :cond_362
    const/16 v38, 0x0

    .restart local v38       #_arg6:Landroid/location/GeocoderParams;
    goto :goto_33d

    .line 330
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:D
    .end local v16           #_arg3:D
    .end local v31           #_arg2:D
    .end local v35           #_arg4:D
    .end local v37           #_arg5:I
    .end local v38           #_arg6:Landroid/location/GeocoderParams;
    :sswitch_365
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3ce

    const/4 v4, 0x1

    move v6, v4

    .line 336
    .local v6, _arg1:Z
    :goto_379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d1

    const/4 v4, 0x1

    move v8, v4

    .line 338
    .local v8, _arg2:Z
    :goto_381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d4

    const/4 v4, 0x1

    move v9, v4

    .line 340
    .local v9, _arg3:Z
    :goto_389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d7

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 342
    .local v18, _arg4:Z
    :goto_392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3db

    const/4 v4, 0x1

    move/from16 v37, v4

    .line 344
    .local v37, _arg5:Z
    :goto_39b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3df

    const/4 v4, 0x1

    move/from16 v38, v4

    .line 346
    .local v38, _arg6:Z
    :goto_3a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e3

    const/4 v4, 0x1

    move/from16 v48, v4

    .line 348
    .local v48, _arg7:Z
    :goto_3ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    .line 350
    .local v49, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .local v50, _arg9:I
    move-object/from16 v40, p0

    move-object/from16 v41, v5

    move/from16 v42, v6

    move/from16 v43, v8

    move/from16 v44, v9

    move/from16 v45, v18

    move/from16 v46, v37

    move/from16 v47, v38

    .line 351
    invoke-virtual/range {v40 .. v50}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 334
    .end local v6           #_arg1:Z
    .end local v8           #_arg2:Z
    .end local v9           #_arg3:Z
    .end local v18           #_arg4:Z
    .end local v37           #_arg5:Z
    .end local v38           #_arg6:Z
    .end local v48           #_arg7:Z
    .end local v49           #_arg8:I
    .end local v50           #_arg9:I
    :cond_3ce
    const/4 v4, 0x0

    move v6, v4

    goto :goto_379

    .line 336
    .restart local v6       #_arg1:Z
    :cond_3d1
    const/4 v4, 0x0

    move v8, v4

    goto :goto_381

    .line 338
    .restart local v8       #_arg2:Z
    :cond_3d4
    const/4 v4, 0x0

    move v9, v4

    goto :goto_389

    .line 340
    .restart local v9       #_arg3:Z
    :cond_3d7
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_392

    .line 342
    .restart local v18       #_arg4:Z
    :cond_3db
    const/4 v4, 0x0

    move/from16 v37, v4

    goto :goto_39b

    .line 344
    .restart local v37       #_arg5:Z
    :cond_3df
    const/4 v4, 0x0

    move/from16 v38, v4

    goto :goto_3a4

    .line 346
    .restart local v38       #_arg6:Z
    :cond_3e3
    const/4 v4, 0x0

    move/from16 v48, v4

    goto :goto_3ad

    .line 357
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Z
    .end local v8           #_arg2:Z
    .end local v9           #_arg3:Z
    .end local v18           #_arg4:Z
    .end local v37           #_arg5:Z
    .end local v38           #_arg6:Z
    :sswitch_3e7
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 360
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 366
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_3ff
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_429

    .line 371
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 376
    .local v6, _arg1:Landroid/location/Location;
    :goto_41c
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 374
    .end local v6           #_arg1:Landroid/location/Location;
    :cond_429
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/location/Location;
    goto :goto_41c

    .line 382
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/Location;
    :sswitch_42b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 385
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 391
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_443
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_464

    const/4 v4, 0x1

    move v6, v4

    .line 396
    .local v6, _arg1:Z
    :goto_457
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 395
    .end local v6           #_arg1:Z
    :cond_464
    const/4 v4, 0x0

    move v6, v4

    goto :goto_457

    .line 402
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_467
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 405
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 411
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_47f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 417
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b7

    .line 418
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 424
    .local v8, _arg2:Landroid/os/Bundle;
    :goto_4a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, _arg3:J
    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v8

    move-wide/from16 v23, v16

    .line 425
    invoke-virtual/range {v19 .. v24}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 421
    .end local v8           #_arg2:Landroid/os/Bundle;
    .end local v16           #_arg3:J
    :cond_4b7
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/os/Bundle;
    goto :goto_4a0

    .line 431
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Landroid/os/Bundle;
    :sswitch_4b9
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 440
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_4d1
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 444
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 445
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v51

    .line 446
    .local v51, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v51, :cond_4f8

    const/4 v4, 0x1

    :goto_4ef
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 447
    :cond_4f8
    const/4 v4, 0x0

    goto :goto_4ef

    .line 43
    :sswitch_data_4fa
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_50
        0x4 -> :sswitch_76
        0x5 -> :sswitch_a8
        0x6 -> :sswitch_c4
        0x7 -> :sswitch_eb
        0x8 -> :sswitch_113
        0x9 -> :sswitch_12f
        0xa -> :sswitch_14b
        0xb -> :sswitch_1a1
        0xc -> :sswitch_1da
        0xd -> :sswitch_201
        0xe -> :sswitch_234
        0xf -> :sswitch_258
        0x10 -> :sswitch_28b
        0x11 -> :sswitch_2be
        0x12 -> :sswitch_30c
        0x13 -> :sswitch_365
        0x14 -> :sswitch_3e7
        0x15 -> :sswitch_3ff
        0x16 -> :sswitch_42b
        0x17 -> :sswitch_443
        0x18 -> :sswitch_467
        0x19 -> :sswitch_47f
        0x1a -> :sswitch_4b9
        0x1b -> :sswitch_4d1
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
