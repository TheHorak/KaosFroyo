.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Ljava/lang/Object;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ArrowKeyMovementMethod$1;,
        Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;,
        Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;
    }
.end annotation


# static fields
.field private static final LAST_TAP_DOWN:Ljava/lang/Object;

.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 535
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    return-void
.end method

.method private down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 63
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2a

    :cond_10
    move v1, v4

    .line 67
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_2c

    move v0, v4

    .line 69
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 71
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_33

    .line 72
    if-eqz v0, :cond_2e

    .line 73
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 83
    :goto_29
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_2a
    move v1, v5

    .line 63
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_2c
    move v0, v5

    .line 67
    goto :goto_19

    .line 76
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2e
    invoke-static {p2, v2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_29

    .line 79
    :cond_33
    if-eqz v0, :cond_3e

    .line 80
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 81
    goto :goto_29

    .line 83
    :cond_3e
    invoke-static {p2, v2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_29
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, handled:Z
    packed-switch p3, :pswitch_data_36

    .line 203
    :cond_4
    :goto_4
    if-eqz v0, :cond_c

    .line 204
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 205
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 208
    :cond_c
    return v0

    .line 180
    :pswitch_d
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 181
    goto :goto_4

    .line 184
    :pswitch_13
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 185
    goto :goto_4

    .line 188
    :pswitch_19
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 189
    goto :goto_4

    .line 192
    :pswitch_1f
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 193
    goto :goto_4

    .line 196
    :pswitch_25
    const/high16 v1, 0x1

    invoke-static {p2, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    const/4 v0, 0x1

    goto :goto_4

    .line 178
    nop

    :pswitch_data_36
    .packed-switch 0x13
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method

.method private static findWordEnd(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "text"
    .parameter "end"

    .prologue
    .line 473
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 475
    .local v1, len:I
    :goto_4
    if-ge p1, v1, :cond_22

    .line 476
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 477
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 479
    .local v2, type:I
    const/16 v3, 0x27

    if-eq v0, v3, :cond_23

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    const/4 v3, 0x4

    if-eq v2, v3, :cond_23

    const/16 v3, 0x9

    if-eq v2, v3, :cond_23

    .line 489
    .end local v0           #c:C
    .end local v2           #type:I
    :cond_22
    return p1

    .line 475
    .restart local v0       #c:C
    .restart local v2       #type:I
    :cond_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_4
.end method

.method private static findWordStart(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "text"
    .parameter "start"

    .prologue
    const/4 v3, 0x1

    .line 454
    :goto_1
    if-lez p1, :cond_20

    .line 455
    sub-int v2, p1, v3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 456
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 458
    .local v1, type:I
    const/16 v2, 0x27

    if-eq v0, v2, :cond_21

    if-eq v1, v3, :cond_21

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    const/4 v2, 0x3

    if-eq v1, v2, :cond_21

    const/4 v2, 0x4

    if-eq v1, v2, :cond_21

    const/16 v2, 0x9

    if-eq v1, v2, :cond_21

    .line 468
    .end local v0           #c:C
    .end local v1           #type:I
    :cond_20
    return p1

    .line 454
    .restart local v0       #c:C
    .restart local v1       #type:I
    :cond_21
    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .prologue
    .line 528
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_b

    .line 529
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 531
    :cond_b
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private getOffset(IILandroid/widget/TextView;)I
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "widget"

    .prologue
    const/4 v5, 0x1

    .line 140
    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 141
    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    .line 144
    if-gez p1, :cond_29

    .line 145
    const/4 p1, 0x0

    .line 149
    :cond_e
    :goto_e
    if-gez p2, :cond_40

    .line 150
    const/4 p2, 0x0

    .line 155
    :cond_11
    :goto_11
    invoke-virtual {p3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 156
    invoke-virtual {p3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 158
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 159
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 161
    .local v1, line:I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 162
    .local v2, offset:I
    return v2

    .line 146
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #offset:I
    :cond_29
    invoke-virtual {p3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_e

    .line 147
    invoke-virtual {p3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int p1, v3, v5

    goto :goto_e

    .line 151
    :cond_40
    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p2, v3, :cond_11

    .line 152
    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int p2, v3, v5

    goto :goto_11
.end method

.method private left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 89
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    move v1, v4

    .line 93
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_28

    move v0, v4

    .line 95
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 97
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_2f

    .line 98
    if-eqz v0, :cond_2a

    .line 99
    invoke-static {p2, v2}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    .line 107
    :goto_25
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_26
    move v1, v5

    .line 89
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_28
    move v0, v5

    .line 93
    goto :goto_19

    .line 101
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 104
    :cond_2f
    if-eqz v0, :cond_36

    .line 105
    invoke-static {p2, v2}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 107
    :cond_36
    invoke-static {p2, v2}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25
.end method

.method private right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 113
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    move v1, v4

    .line 117
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_28

    move v0, v4

    .line 119
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 121
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_2f

    .line 122
    if-eqz v0, :cond_2a

    .line 123
    invoke-static {p2, v2}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    .line 131
    :goto_25
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_26
    move v1, v5

    .line 113
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_28
    move v0, v5

    .line 117
    goto :goto_19

    .line 125
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 128
    :cond_2f
    if-eqz v0, :cond_36

    .line 129
    invoke-static {p2, v2}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 131
    :cond_36
    invoke-static {p2, v2}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25
.end method

.method private static sameWord(Ljava/lang/CharSequence;II)Z
    .registers 7
    .parameter "text"
    .parameter "one"
    .parameter "two"

    .prologue
    const/4 v3, 0x0

    .line 441
    invoke-static {p0, p1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 442
    .local v1, start:I
    invoke-static {p0, p1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 444
    .local v0, end:I
    if-ne v0, v1, :cond_d

    move v2, v3

    .line 448
    :goto_c
    return v2

    :cond_d
    invoke-static {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ne v1, v2, :cond_1b

    invoke-static {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ne v0, v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    move v2, v3

    goto :goto_c
.end method

.method private up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    move v1, v4

    .line 41
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_28

    move v0, v4

    .line 43
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 45
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_2f

    .line 46
    if-eqz v0, :cond_2a

    .line 47
    invoke-static {p2, v5}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 57
    :goto_25
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_26
    move v1, v5

    .line 37
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_28
    move v0, v5

    .line 41
    goto :goto_19

    .line 50
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 53
    :cond_2f
    if-eqz v0, :cond_36

    .line 54
    invoke-static {p2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 55
    goto :goto_25

    .line 57
    :cond_36
    invoke-static {p2, v2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .registers 2

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 498
    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 167
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 168
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 169
    const/4 v0, 0x1

    .line 172
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 216
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 217
    .local v0, code:I
    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    .line 219
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 220
    .local v2, repeat:I
    const/4 v1, 0x0

    .line 221
    .local v1, handled:Z
    :goto_12
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_1c

    .line 222
    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_12

    :cond_1c
    move v3, v1

    .line 226
    .end local v1           #handled:Z
    .end local v2           #repeat:I
    :goto_1d
    return v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 7
    .parameter "view"
    .parameter "text"
    .parameter "dir"

    .prologue
    const/4 v2, 0x1

    .line 501
    and-int/lit16 v1, p3, 0x82

    if-eqz v1, :cond_2a

    .line 502
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 504
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_13

    .line 508
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 525
    .end local v0           #layout:Landroid/text/Layout;
    :goto_12
    return-void

    .line 516
    .restart local v0       #layout:Landroid/text/Layout;
    :cond_13
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ne v1, v2, :cond_21

    .line 517
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12

    .line 519
    :cond_21
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12

    .line 523
    .end local v0           #layout:Landroid/text/Layout;
    :cond_2a
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 29
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 236
    const/4 v9, -0x1

    .local v9, initialScrollX:I
    const/4 v10, -0x1

    .line 237
    .local v10, initialScrollY:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 238
    invoke-static/range {p1 .. p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v9

    .line 239
    invoke-static/range {p1 .. p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v10

    .line 242
    :cond_16
    invoke-static/range {p1 .. p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    .line 244
    .local v7, handled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v21

    if-eqz v21, :cond_86

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v21

    if-nez v21, :cond_86

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_13e

    .line 246
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4a

    const/high16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    if-eqz v21, :cond_89

    :cond_4a
    const/16 v21, 0x1

    move/from16 v5, v21

    .line 250
    .local v5, cap:Z
    :goto_4e
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 251
    .local v19, x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 252
    .local v20, y:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/ArrowKeyMovementMethod;->getOffset(IILandroid/widget/TextView;)I

    move-result v14

    .line 254
    .local v14, offset:I
    if-eqz v5, :cond_8e

    .line 255
    sget-object v21, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v22, 0x22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move v2, v14

    move v3, v14

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v5           #cap:Z
    .end local v14           #offset:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_86
    :goto_86
    move/from16 v21, v7

    .line 420
    :goto_88
    return v21

    .line 246
    :cond_89
    const/16 v21, 0x0

    move/from16 v5, v21

    goto :goto_4e

    .line 264
    .restart local v5       #cap:Z
    .restart local v14       #offset:I
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_8e
    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v22

    const-class v23, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    .line 267
    .local v18, tap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_10e

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v21

    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->mWhen:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gtz v21, :cond_fe

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    move-object/from16 v0, p2

    move v1, v14

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/method/ArrowKeyMovementMethod;->sameWord(Ljava/lang/CharSequence;II)Z

    move-result v21

    if-eqz v21, :cond_fe

    .line 272
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->active:Z

    .line 273
    invoke-static/range {p1 .. p2}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 275
    sget-object v21, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v22, 0x22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move v2, v14

    move v3, v14

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 279
    :cond_fe
    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->mWhen:J

    goto/16 :goto_86

    .line 281
    :cond_10e
    new-instance v12, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    const/16 v21, 0x0

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;-><init>(Landroid/text/method/ArrowKeyMovementMethod$1;)V

    .line 282
    .local v12, newtap:Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object v2, v12

    iput-wide v0, v2, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->mWhen:J

    .line 283
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v12

    iput-boolean v0, v1, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->active:Z

    .line 284
    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, p2

    move-object v1, v12

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_86

    .line 288
    .end local v5           #cap:Z
    .end local v12           #newtap:Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    .end local v14           #offset:I
    .end local v18           #tap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_13e
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1fc

    .line 289
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_168

    const/high16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    if-eqz v21, :cond_1e1

    :cond_168
    const/16 v21, 0x1

    move/from16 v5, v21

    .line 294
    .restart local v5       #cap:Z
    :goto_16c
    if-eqz v5, :cond_86

    if-eqz v7, :cond_86

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 307
    .restart local v19       #x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 308
    .restart local v20       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/ArrowKeyMovementMethod;->getOffset(IILandroid/widget/TextView;)I

    move-result v14

    .line 310
    .restart local v14       #offset:I
    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v22

    const-class v23, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    .line 313
    .restart local v18       #tap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_1f5

    const/16 v21, 0x0

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->active:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1f5

    .line 316
    sget-object v21, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 321
    .local v11, lastDownOffset:I
    if-lt v14, v11, :cond_1e6

    .line 324
    move-object/from16 v0, p2

    move v1, v11

    invoke-static {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 325
    .local v17, spanstart:I
    move-object/from16 v0, p2

    move v1, v14

    invoke-static {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v16

    .line 335
    .local v16, spanend:I
    :goto_1d4
    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 339
    .end local v11           #lastDownOffset:I
    .end local v16           #spanend:I
    .end local v17           #spanstart:I
    :goto_1dd
    const/16 v21, 0x1

    goto/16 :goto_88

    .line 289
    .end local v5           #cap:Z
    .end local v14           #offset:I
    .end local v18           #tap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_1e1
    const/16 v21, 0x0

    move/from16 v5, v21

    goto :goto_16c

    .line 332
    .restart local v5       #cap:Z
    .restart local v11       #lastDownOffset:I
    .restart local v14       #offset:I
    .restart local v18       #tap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_1e6
    move-object/from16 v0, p2

    move v1, v11

    invoke-static {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 333
    .restart local v17       #spanstart:I
    move-object/from16 v0, p2

    move v1, v14

    invoke-static {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v16

    .restart local v16       #spanend:I
    goto :goto_1d4

    .line 337
    .end local v11           #lastDownOffset:I
    .end local v16           #spanend:I
    .end local v17           #spanstart:I
    :cond_1f5
    move-object/from16 v0, p2

    move v1, v14

    invoke-static {v0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1dd

    .line 341
    .end local v5           #cap:Z
    .end local v14           #offset:I
    .end local v18           #tap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_1fc
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_86

    .line 346
    if-ltz v10, :cond_213

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_21e

    :cond_213
    if-ltz v9, :cond_225

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_225

    .line 348
    :cond_21e
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    .line 349
    const/16 v21, 0x1

    goto/16 :goto_88

    .line 352
    :cond_225
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 353
    .restart local v19       #x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 354
    .restart local v20       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/ArrowKeyMovementMethod;->getOffset(IILandroid/widget/TextView;)I

    move-result v13

    .line 358
    .local v13, off:I
    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v22

    const-class v23, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;

    .line 360
    .local v15, onepointfivetap:[Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_29b

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->active:Z

    move/from16 v21, v0

    if-eqz v21, :cond_29b

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v21

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29b

    .line 365
    invoke-static/range {p1 .. p2}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 366
    const/4 v8, 0x0

    .local v8, i:I
    :goto_27d
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_292

    .line 367
    aget-object v21, v15, v8

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 366
    add-int/lit8 v8, v8, 0x1

    goto :goto_27d

    .line 369
    :cond_292
    sget-object v21, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 371
    .end local v8           #i:I
    :cond_29b
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2b9

    const/high16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    if-eqz v21, :cond_340

    :cond_2b9
    const/16 v21, 0x1

    move/from16 v5, v21

    .line 376
    .restart local v5       #cap:Z
    :goto_2bd
    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v22

    const-class v23, Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;

    .line 378
    .local v18, tap:[Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;
    const/4 v6, 0x0

    .line 380
    .local v6, doubletap:Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_346

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v21

    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;->mWhen:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gtz v21, :cond_308

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    move-object/from16 v0, p2

    move v1, v13

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/method/ArrowKeyMovementMethod;->sameWord(Ljava/lang/CharSequence;II)Z

    move-result v21

    if-eqz v21, :cond_308

    .line 385
    const/4 v6, 0x1

    .line 388
    :cond_308
    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;->mWhen:J

    .line 396
    :goto_316
    if-eqz v5, :cond_375

    .line 397
    sget-object v21, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 398
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_36e

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;->active:Z

    move/from16 v21, v0

    if-eqz v21, :cond_36e

    .line 401
    invoke-static/range {p1 .. p2}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 413
    :goto_336
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 414
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 416
    const/16 v21, 0x1

    goto/16 :goto_88

    .line 371
    .end local v5           #cap:Z
    .end local v6           #doubletap:Z
    .end local v18           #tap:[Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;
    :cond_340
    const/16 v21, 0x0

    move/from16 v5, v21

    goto/16 :goto_2bd

    .line 390
    .restart local v5       #cap:Z
    .restart local v6       #doubletap:Z
    .restart local v18       #tap:[Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;
    :cond_346
    new-instance v12, Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;

    const/16 v21, 0x0

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;-><init>(Landroid/text/method/ArrowKeyMovementMethod$1;)V

    .line 391
    .local v12, newtap:Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object v2, v12

    iput-wide v0, v2, Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;->mWhen:J

    .line 392
    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, p2

    move-object v1, v12

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_316

    .line 403
    .end local v12           #newtap:Landroid/text/method/ArrowKeyMovementMethod$DoubleTapState;
    :cond_36e
    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_336

    .line 405
    :cond_375
    if-eqz v6, :cond_38f

    .line 406
    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v21

    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Landroid/text/method/ArrowKeyMovementMethod;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_336

    .line 410
    :cond_38f
    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_336
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method
