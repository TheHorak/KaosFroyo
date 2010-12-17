.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0xe

.field static final TRANSACTION_addWindowToken:I = 0xc

.field static final TRANSACTION_closeSystemDialogs:I = 0x26

.field static final TRANSACTION_disableKeyguard:I = 0x22

.field static final TRANSACTION_executeAppTransition:I = 0x16

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x24

.field static final TRANSACTION_getAnimationScale:I = 0x27

.field static final TRANSACTION_getAnimationScales:I = 0x28

.field static final TRANSACTION_getAppOrientation:I = 0x11

.field static final TRANSACTION_getDPadKeycodeState:I = 0x34

.field static final TRANSACTION_getDPadScancodeState:I = 0x30

.field static final TRANSACTION_getKeycodeState:I = 0x31

.field static final TRANSACTION_getKeycodeStateForDevice:I = 0x32

.field static final TRANSACTION_getPendingAppTransition:I = 0x14

.field static final TRANSACTION_getRotation:I = 0x38

.field static final TRANSACTION_getScancodeState:I = 0x2d

.field static final TRANSACTION_getScancodeStateForDevice:I = 0x2e

.field static final TRANSACTION_getSwitchState:I = 0x2b

.field static final TRANSACTION_getSwitchStateForDevice:I = 0x2c

.field static final TRANSACTION_getTrackballKeycodeState:I = 0x33

.field static final TRANSACTION_getTrackballScancodeState:I = 0x2f

.field static final TRANSACTION_hasKeys:I = 0x35

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x25

.field static final TRANSACTION_injectKeyEvent:I = 0x6

.field static final TRANSACTION_injectPointerEvent:I = 0x7

.field static final TRANSACTION_injectTrackballEvent:I = 0x8

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_moveAppToken:I = 0x1d

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x1f

.field static final TRANSACTION_moveAppTokensToTop:I = 0x1e

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x15

.field static final TRANSACTION_pauseKeyDispatching:I = 0x9

.field static final TRANSACTION_prepareAppTransition:I = 0x13

.field static final TRANSACTION_reenableKeyguard:I = 0x23

.field static final TRANSACTION_removeAppToken:I = 0x1c

.field static final TRANSACTION_removeWindowToken:I = 0xd

.field static final TRANSACTION_resumeKeyDispatching:I = 0xa

.field static final TRANSACTION_setAnimationScale:I = 0x29

.field static final TRANSACTION_setAnimationScales:I = 0x2a

.field static final TRANSACTION_setAppGroupId:I = 0xf

.field static final TRANSACTION_setAppOrientation:I = 0x10

.field static final TRANSACTION_setAppStartingWindow:I = 0x17

.field static final TRANSACTION_setAppVisibility:I = 0x19

.field static final TRANSACTION_setAppWillBeHidden:I = 0x18

.field static final TRANSACTION_setEventDispatching:I = 0xb

.field static final TRANSACTION_setFocusedApp:I = 0x12

.field static final TRANSACTION_setInTouchMode:I = 0x36

.field static final TRANSACTION_setNewConfiguration:I = 0x21

.field static final TRANSACTION_setRotation:I = 0x37

.field static final TRANSACTION_startAppFreezingScreen:I = 0x1a

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x1b

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x20

.field static final TRANSACTION_watchRotation:I = 0x39


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
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
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    sparse-switch p1, :sswitch_data_5e0

    .line 682
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 47
    :sswitch_8
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_7

    .line 52
    :sswitch_f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v10

    .line 56
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v10, :cond_27

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v0, 0x1

    goto :goto_7

    .line 57
    :cond_27
    const/4 v0, 0x0

    goto :goto_22

    .line 62
    .end local v1           #_arg0:I
    .end local v10           #_result:Z
    :sswitch_29
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v10

    .line 64
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v10, :cond_3d

    const/4 v0, 0x1

    :goto_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v0, 0x1

    goto :goto_7

    .line 65
    :cond_3d
    const/4 v0, 0x0

    goto :goto_38

    .line 70
    .end local v10           #_result:Z
    :sswitch_3f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v10

    .line 72
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v10, :cond_53

    const/4 v0, 0x1

    :goto_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    :cond_53
    const/4 v0, 0x0

    goto :goto_4e

    .line 78
    .end local v10           #_result:Z
    :sswitch_55
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 82
    .local v1, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 83
    .local v2, _arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v10

    .line 84
    .local v10, _result:Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v10, :cond_7c

    invoke-interface {v10}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 86
    const/4 v0, 0x1

    goto :goto_7

    .line 85
    :cond_7c
    const/4 v0, 0x0

    goto :goto_77

    .line 90
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v10           #_result:Landroid/view/IWindowSession;
    :sswitch_7e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 93
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v10

    .line 94
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v10, :cond_9b

    const/4 v0, 0x1

    :goto_95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 95
    :cond_9b
    const/4 v0, 0x0

    goto :goto_95

    .line 100
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v10           #_result:Z
    :sswitch_9d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c8

    .line 103
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 109
    .local v1, _arg0:Landroid/view/KeyEvent;
    :goto_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    const/4 v0, 0x1

    move v2, v0

    .line 110
    .local v2, _arg1:Z
    :goto_b8
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v10

    .line 111
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v10, :cond_cd

    const/4 v0, 0x1

    :goto_c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 106
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_c8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    goto :goto_b0

    .line 109
    :cond_ca
    const/4 v0, 0x0

    move v2, v0

    goto :goto_b8

    .line 112
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_cd
    const/4 v0, 0x0

    goto :goto_c2

    .line 117
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_cf
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fa

    .line 120
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 126
    .local v1, _arg0:Landroid/view/MotionEvent;
    :goto_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    move v2, v0

    .line 127
    .restart local v2       #_arg1:Z
    :goto_ea
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v10

    .line 128
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v10, :cond_ff

    const/4 v0, 0x1

    :goto_f4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 123
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_fa
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_e2

    .line 126
    :cond_fc
    const/4 v0, 0x0

    move v2, v0

    goto :goto_ea

    .line 129
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_ff
    const/4 v0, 0x0

    goto :goto_f4

    .line 134
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_101
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12c

    .line 137
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 143
    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    :goto_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12e

    const/4 v0, 0x1

    move v2, v0

    .line 144
    .restart local v2       #_arg1:Z
    :goto_11c
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v10

    .line 145
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v10, :cond_131

    const/4 v0, 0x1

    :goto_126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 140
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_12c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_114

    .line 143
    :cond_12e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_11c

    .line 146
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_131
    const/4 v0, 0x0

    goto :goto_126

    .line 151
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_133
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 154
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 160
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_145
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 163
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 169
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_157
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16d

    const/4 v0, 0x1

    move v1, v0

    .line 172
    .local v1, _arg0:Z
    :goto_164
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 171
    .end local v1           #_arg0:Z
    :cond_16d
    const/4 v0, 0x0

    move v1, v0

    goto :goto_164

    .line 178
    :sswitch_170
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 182
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 189
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_186
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 192
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 198
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_198
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 204
    .local v2, _arg1:Landroid/view/IApplicationToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c3

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_1b9
    move-object v0, p0

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 208
    .end local v5           #_arg4:Z
    :cond_1c3
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1b9

    .line 215
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/IApplicationToken;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_1c6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 219
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 226
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_1dc
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v1

    .line 230
    .local v1, _arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 237
    .end local v1           #_arg0:Landroid/view/IApplicationToken;
    .end local v2           #_arg1:I
    :sswitch_1f6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v1

    .line 240
    .restart local v1       #_arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v10

    .line 241
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 247
    .end local v1           #_arg0:Landroid/view/IApplicationToken;
    .end local v10           #_result:I
    :sswitch_210
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 251
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22a

    const/4 v0, 0x1

    move v2, v0

    .line 252
    .local v2, _arg1:Z
    :goto_221
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 251
    .end local v2           #_arg1:Z
    :cond_22a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_221

    .line 258
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_22d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(I)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 267
    .end local v1           #_arg0:I
    :sswitch_23f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v10

    .line 269
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 275
    .end local v10           #_result:I
    :sswitch_251
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;II)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 288
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_26b
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 295
    :sswitch_279
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 299
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b6

    .line 304
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 310
    .local v4, _arg3:Ljava/lang/CharSequence;
    :goto_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 312
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 314
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 316
    .local v7, _arg6:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b8

    const/4 v0, 0x1

    move v8, v0

    .local v8, _arg7:Z
    :goto_2ac
    move-object v0, p0

    .line 317
    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 307
    .end local v4           #_arg3:Ljava/lang/CharSequence;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Landroid/os/IBinder;
    .end local v8           #_arg7:Z
    :cond_2b6
    const/4 v4, 0x0

    .restart local v4       #_arg3:Ljava/lang/CharSequence;
    goto :goto_298

    .line 316
    .restart local v5       #_arg4:I
    .restart local v6       #_arg5:I
    .restart local v7       #_arg6:Landroid/os/IBinder;
    :cond_2b8
    const/4 v0, 0x0

    move v8, v0

    goto :goto_2ac

    .line 323
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/CharSequence;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Landroid/os/IBinder;
    :sswitch_2bb
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 326
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 332
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_2cd
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 336
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e7

    const/4 v0, 0x1

    move v2, v0

    .line 337
    .local v2, _arg1:Z
    :goto_2de
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 336
    .end local v2           #_arg1:Z
    :cond_2e7
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2de

    .line 343
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_2ea
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 347
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 354
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_300
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 358
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31a

    const/4 v0, 0x1

    move v2, v0

    .line 359
    .local v2, _arg1:Z
    :goto_311
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 358
    .end local v2           #_arg1:Z
    :cond_31a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_311

    .line 365
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_31d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 368
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 374
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_32f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 379
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 385
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_345
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 388
    .local v9, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v9}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 394
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_357
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 397
    .restart local v9       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v9}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 403
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_369
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_394

    .line 406
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 412
    .local v1, _arg0:Landroid/content/res/Configuration;
    :goto_37c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 413
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v10

    .line 414
    .local v10, _result:Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v10, :cond_396

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 422
    :goto_391
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 409
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v10           #_result:Landroid/content/res/Configuration;
    :cond_394
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    goto :goto_37c

    .line 420
    .restart local v2       #_arg1:Landroid/os/IBinder;
    .restart local v10       #_result:Landroid/content/res/Configuration;
    :cond_396
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_391

    .line 426
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v10           #_result:Landroid/content/res/Configuration;
    :sswitch_39b
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b7

    .line 429
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 434
    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    :goto_3ae
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 432
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    :cond_3b7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    goto :goto_3ae

    .line 440
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    :sswitch_3b9
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 444
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 451
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_3cf
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 454
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 460
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_3e1
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v1

    .line 463
    .local v1, _arg0:Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 469
    .end local v1           #_arg0:Landroid/view/IOnKeyguardExitResult;
    :sswitch_3f7
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v10

    .line 471
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v10, :cond_40c

    const/4 v0, 0x1

    :goto_406
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 472
    :cond_40c
    const/4 v0, 0x0

    goto :goto_406

    .line 477
    .end local v10           #_result:Z
    :sswitch_40e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 486
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_420
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v10

    .line 490
    .local v10, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloat(F)V

    .line 492
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 496
    .end local v1           #_arg0:I
    .end local v10           #_result:F
    :sswitch_436
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v10

    .line 498
    .local v10, _result:[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 500
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 504
    .end local v10           #_result:[F
    :sswitch_448
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 509
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 515
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_45e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 518
    .local v1, _arg0:[F
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 524
    .end local v1           #_arg0:[F
    :sswitch_470
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getSwitchState(I)I

    move-result v10

    .line 528
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 534
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_486
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 538
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getSwitchStateForDevice(II)I

    move-result v10

    .line 540
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 546
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_4a0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getScancodeState(I)I

    move-result v10

    .line 550
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 556
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_4b6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 561
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getScancodeStateForDevice(II)I

    move-result v10

    .line 562
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 568
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_4d0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballScancodeState(I)I

    move-result v10

    .line 572
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 578
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_4e6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 581
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getDPadScancodeState(I)I

    move-result v10

    .line 582
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 588
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_4fc
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 591
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getKeycodeState(I)I

    move-result v10

    .line 592
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 598
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_512
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeycodeStateForDevice(II)I

    move-result v10

    .line 604
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 610
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_52c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballKeycodeState(I)I

    move-result v10

    .line 614
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 620
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_542
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 623
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getDPadKeycodeState(I)I

    move-result v10

    .line 624
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 630
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_558
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 634
    .local v1, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 635
    .local v2, _arg1:[Z
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->hasKeys([I[Z)Z

    move-result v10

    .line 636
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v10, :cond_578

    const/4 v0, 0x1

    :goto_56f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 639
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 637
    :cond_578
    const/4 v0, 0x0

    goto :goto_56f

    .line 643
    .end local v1           #_arg0:[I
    .end local v2           #_arg1:[Z
    .end local v10           #_result:Z
    :sswitch_57a
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_590

    const/4 v0, 0x1

    move v1, v0

    .line 646
    .local v1, _arg0:Z
    :goto_587
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 645
    .end local v1           #_arg0:Z
    :cond_590
    const/4 v0, 0x0

    move v1, v0

    goto :goto_587

    .line 652
    :sswitch_593
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b1

    const/4 v0, 0x1

    move v2, v0

    .line 658
    .local v2, _arg1:Z
    :goto_5a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->setRotation(IZI)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 656
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    :cond_5b1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5a4

    .line 665
    .end local v1           #_arg0:I
    :sswitch_5b4
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v10

    .line 667
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 673
    .end local v10           #_result:I
    :sswitch_5c6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v1

    .line 676
    .local v1, _arg0:Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v10

    .line 677
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 43
    :sswitch_data_5e0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_7e
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_cf
        0x8 -> :sswitch_101
        0x9 -> :sswitch_133
        0xa -> :sswitch_145
        0xb -> :sswitch_157
        0xc -> :sswitch_170
        0xd -> :sswitch_186
        0xe -> :sswitch_198
        0xf -> :sswitch_1c6
        0x10 -> :sswitch_1dc
        0x11 -> :sswitch_1f6
        0x12 -> :sswitch_210
        0x13 -> :sswitch_22d
        0x14 -> :sswitch_23f
        0x15 -> :sswitch_251
        0x16 -> :sswitch_26b
        0x17 -> :sswitch_279
        0x18 -> :sswitch_2bb
        0x19 -> :sswitch_2cd
        0x1a -> :sswitch_2ea
        0x1b -> :sswitch_300
        0x1c -> :sswitch_31d
        0x1d -> :sswitch_32f
        0x1e -> :sswitch_345
        0x1f -> :sswitch_357
        0x20 -> :sswitch_369
        0x21 -> :sswitch_39b
        0x22 -> :sswitch_3b9
        0x23 -> :sswitch_3cf
        0x24 -> :sswitch_3e1
        0x25 -> :sswitch_3f7
        0x26 -> :sswitch_40e
        0x27 -> :sswitch_420
        0x28 -> :sswitch_436
        0x29 -> :sswitch_448
        0x2a -> :sswitch_45e
        0x2b -> :sswitch_470
        0x2c -> :sswitch_486
        0x2d -> :sswitch_4a0
        0x2e -> :sswitch_4b6
        0x2f -> :sswitch_4d0
        0x30 -> :sswitch_4e6
        0x31 -> :sswitch_4fc
        0x32 -> :sswitch_512
        0x33 -> :sswitch_52c
        0x34 -> :sswitch_542
        0x35 -> :sswitch_558
        0x36 -> :sswitch_57a
        0x37 -> :sswitch_593
        0x38 -> :sswitch_5b4
        0x39 -> :sswitch_5c6
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
