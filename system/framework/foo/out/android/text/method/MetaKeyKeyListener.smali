.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object; = null

.field private static final CAP:Ljava/lang/Object; = null

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_SHIFT:I = 0x8

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x20202000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x200000000L

.field private static final META_ALT_RELEASED:J = 0x20000000000L

.field private static final META_ALT_USED:J = 0x2000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x100000000L

.field private static final META_CAP_RELEASED:J = 0x10000000000L

.field private static final META_CAP_USED:J = 0x1000000L

.field public static final META_SELECTING:I = 0x10000

.field private static final META_SHIFT_MASK:J = 0x10101000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x40404000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x400000000L

.field private static final META_SYM_RELEASED:J = 0x40000000000L

.field private static final META_SYM_USED:J = 0x4000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_SHIFT:I = 0x20

.field private static final RELEASED:I = 0x2000011

.field private static final RELEASED_SHIFT:I = 0x28

.field private static final SELECTING:Ljava/lang/Object; = null

.field private static final SYM:Ljava/lang/Object; = null

.field private static final USED:I = 0x3000011

.field private static final USED_SHIFT:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(JIJ)J
    .registers 12
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 422
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_18

    .line 423
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 426
    :goto_17
    return-wide v0

    .line 424
    :cond_18
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_25

    .line 425
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    goto :goto_17

    :cond_25
    move-wide v0, p0

    .line 426
    goto :goto_17
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 194
    .local v0, current:I
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 195
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    :cond_10
    :goto_10
    return-void

    .line 196
    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_10

    .line 197
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static adjustMetaAfterKeypress(J)J
    .registers 5
    .parameter "state"

    .prologue
    .line 415
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 416
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 417
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 418
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .registers 4
    .parameter "content"

    .prologue
    .line 161
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 162
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 163
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 165
    :try_start_f
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 167
    .local v0, power:Landroid/os/IPowerManager;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-gtz v1, :cond_25

    .line 168
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V

    .line 169
    :cond_25
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-gtz v1, :cond_31

    .line 170
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_32

    .line 172
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_31
    :goto_31
    return-void

    .line 171
    :catch_32
    move-exception v1

    goto :goto_31
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .registers 3
    .parameter "content"
    .parameter "states"

    .prologue
    .line 332
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 333
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 334
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 335
    :cond_1b
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_25

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 336
    :cond_25
    return-void
.end method

.method private static getActive(JIII)I
    .registers 9
    .parameter "state"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const-wide/16 v2, 0x0

    .line 399
    shl-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    move v0, p4

    .line 404
    :goto_b
    return v0

    .line 401
    :cond_c
    int-to-long v0, p2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    move v0, p3

    .line 402
    goto :goto_b

    .line 404
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 9
    .parameter "text"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const/4 v4, 0x0

    .line 139
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_7

    move v3, v4

    .line 151
    :goto_6
    return v3

    .line 143
    :cond_7
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .line 144
    .local v2, sp:Landroid/text/Spanned;
    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 146
    .local v1, flag:I
    const v3, 0x4000011

    if-ne v1, v3, :cond_16

    move v3, p3

    .line 147
    goto :goto_6

    .line 148
    :cond_16
    if-eqz v1, :cond_1a

    move v3, p2

    .line 149
    goto :goto_6

    :cond_1a
    move v3, v4

    .line 151
    goto :goto_6
.end method

.method public static final getMetaState(J)I
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 369
    const/16 v0, 0x100

    invoke-static {p0, p1, v1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {p0, p1, v2, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x400

    invoke-static {p0, p1, v3, v3, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(JI)I
    .registers 5
    .parameter "state"
    .parameter "meta"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 383
    packed-switch p2, :pswitch_data_16

    .line 394
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 385
    :pswitch_7
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_6

    .line 388
    :pswitch_c
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_6

    .line 391
    :pswitch_11
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_6

    .line 383
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "text"

    .prologue
    const/high16 v4, 0x1

    .line 104
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .registers 5
    .parameter "text"
    .parameter "meta"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 119
    sparse-switch p1, :sswitch_data_24

    .line 133
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 121
    :sswitch_7
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 124
    :sswitch_e
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 127
    :sswitch_15
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 130
    :sswitch_1c
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 119
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_e
        0x4 -> :sswitch_15
        0x10000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .registers 7
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 433
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_8

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_13

    .line 434
    :cond_8
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    .line 446
    :goto_12
    return-wide v0

    .line 437
    :cond_13
    const/16 v0, 0x39

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_2a

    .line 439
    :cond_1f
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_12

    .line 442
    :cond_2a
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_39

    .line 443
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_12

    :cond_39
    move-wide v0, p0

    .line 446
    goto :goto_12
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .registers 7
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 467
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_8

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_13

    .line 468
    :cond_8
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    .line 480
    :goto_12
    return-wide v0

    .line 471
    :cond_13
    const/16 v0, 0x39

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_2a

    .line 473
    :cond_1f
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_12

    .line 476
    :cond_2a
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_39

    .line 477
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_12

    :cond_39
    move-wide v0, p0

    .line 480
    goto :goto_12
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .parameter "text"
    .parameter "what"

    .prologue
    .line 179
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .parameter "text"
    .parameter "what"

    .prologue
    .line 188
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static press(JIJ)J
    .registers 14
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v7, -0x1

    const/16 v6, 0x20

    const/16 v5, 0x8

    const-wide/16 v3, 0x0

    .line 450
    int-to-long v0, p2

    shl-long/2addr v0, v6

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_10

    .line 460
    :cond_f
    :goto_f
    return-wide p0

    .line 452
    :cond_10
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_23

    .line 453
    xor-long v0, p3, v7

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    goto :goto_f

    .line 454
    :cond_23
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-nez v0, :cond_f

    .line 456
    int-to-long v0, p2

    shl-long/2addr v0, v5

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_37

    .line 457
    xor-long v0, p3, v7

    and-long/2addr p0, v0

    goto :goto_f

    .line 459
    :cond_37
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    goto :goto_f
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 8
    .parameter "content"
    .parameter "what"

    .prologue
    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    .line 263
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 265
    .local v0, state:I
    if-ne v0, v3, :cond_e

    .line 275
    :cond_d
    :goto_d
    return-void

    .line 267
    :cond_e
    const v1, 0x2000011

    if-ne v0, v1, :cond_17

    .line 268
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    .line 269
    :cond_17
    const v1, 0x3000011

    if-eq v0, v1, :cond_d

    .line 271
    if-ne v0, v4, :cond_22

    .line 272
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_d

    .line 274
    :cond_22
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d
.end method

.method private static release(JIJ)J
    .registers 10
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v3, 0x0

    .line 484
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_10

    .line 485
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 488
    :cond_f
    :goto_f
    return-wide p0

    .line 486
    :cond_10
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_f

    .line 487
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    goto :goto_f
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 6
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 321
    .local v0, current:I
    const v1, 0x3000011

    if-ne v0, v1, :cond_e

    .line 322
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 325
    :cond_d
    :goto_d
    return-void

    .line 323
    :cond_e
    const v1, 0x1000011

    if-ne v0, v1, :cond_d

    .line 324
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d
.end method

.method private static resetLock(JIJ)J
    .registers 9
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    .line 350
    int-to-long v0, p2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 351
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 353
    :cond_f
    return-wide p0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4
    .parameter "content"
    .parameter "what"

    .prologue
    .line 212
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 214
    .local v0, current:I
    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    .line 215
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 216
    :cond_c
    return-void
.end method

.method public static resetLockedMeta(J)J
    .registers 5
    .parameter "state"

    .prologue
    .line 343
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 344
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 345
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 346
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .registers 2
    .parameter "content"

    .prologue
    .line 205
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 206
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 207
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 208
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 89
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 90
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 91
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 92
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 5
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 282
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 283
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 3
    .parameter "view"
    .parameter "content"

    .prologue
    .line 291
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 292
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .registers 7
    .parameter "state"
    .parameter "which"

    .prologue
    .line 492
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_e

    .line 493
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 494
    :cond_e
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1c

    .line 495
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 496
    :cond_1c
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2a

    .line 497
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 498
    :cond_2a
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 328
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 329
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x4000011

    const v5, 0x1000011

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 223
    const/16 v2, 0x3b

    if-eq p3, v2, :cond_10

    const/16 v2, 0x3c

    if-ne p3, v2, :cond_38

    .line 224
    :cond_10
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 226
    :try_start_15
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 228
    .local v0, power:Landroid/os/IPowerManager;
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 229
    .local v1, state:I
    if-eq v1, v5, :cond_29

    if-ne v1, v6, :cond_30

    .line 230
    :cond_29
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V

    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :goto_2e
    move v2, v4

    .line 259
    :goto_2f
    return v2

    .line 232
    .restart local v0       #power:Landroid/os/IPowerManager;
    .restart local v1       #state:I
    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_2e

    .line 234
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :catch_36
    move-exception v2

    goto :goto_2e

    .line 238
    :cond_38
    const/16 v2, 0x39

    if-eq p3, v2, :cond_44

    const/16 v2, 0x3a

    if-eq p3, v2, :cond_44

    const/16 v2, 0x4e

    if-ne p3, v2, :cond_6c

    .line 240
    :cond_44
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 242
    :try_start_49
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 244
    .restart local v0       #power:Landroid/os/IPowerManager;
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 245
    .restart local v1       #state:I
    if-eq v1, v5, :cond_5d

    if-ne v1, v6, :cond_64

    .line 246
    :cond_5d
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V

    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :goto_62
    move v2, v4

    .line 251
    goto :goto_2f

    .line 248
    .restart local v0       #power:Landroid/os/IPowerManager;
    .restart local v1       #state:I
    :cond_64
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_69} :catch_6a

    goto :goto_62

    .line 250
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :catch_6a
    move-exception v2

    goto :goto_62

    .line 254
    :cond_6c
    const/16 v2, 0x3f

    if-ne p3, v2, :cond_77

    .line 255
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v2, v4

    .line 256
    goto :goto_2f

    :cond_77
    move v2, v3

    .line 259
    goto :goto_2f
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 299
    const/16 v0, 0x3b

    if-eq p3, v0, :cond_9

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_10

    .line 300
    :cond_9
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 315
    :goto_f
    return v0

    .line 304
    :cond_10
    const/16 v0, 0x39

    if-eq p3, v0, :cond_1c

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_1c

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_23

    .line 306
    :cond_1c
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 307
    goto :goto_f

    .line 310
    :cond_23
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_2e

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 312
    goto :goto_f

    .line 315
    :cond_2e
    const/4 v0, 0x0

    goto :goto_f
.end method
