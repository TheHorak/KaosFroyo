.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .parameter "mainLooper"
    .parameter "conn"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 79
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 80
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 81
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2

    .prologue
    .line 147
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .registers 4
    .parameter "states"

    .prologue
    .line 138
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 110
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 106
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 4
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 142
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_f

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 173
    :goto_e
    return-void

    .line 172
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e
.end method

.method public endBatchEdit()V
    .registers 2

    .prologue
    .line 151
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 152
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "IInputConnectionWrapper"

    .line 176
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_2f6

    .line 374
    const-string v3, "IInputConnectionWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local p0
    :goto_23
    return-void

    .line 178
    .restart local p0
    :sswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 180
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_28
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 181
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_52

    .line 182
    :cond_38
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_47} :catch_48

    goto :goto_23

    .line 188
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_48
    move-exception v3

    move-object v1, v3

    .line 189
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 186
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_52
    :try_start_52
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_61} :catch_48

    goto :goto_23

    .line 194
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 196
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_66
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 197
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_76

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_90

    .line 198
    :cond_76
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_85} :catch_86

    goto :goto_23

    .line 204
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_86
    move-exception v3

    move-object v1, v3

    .line 205
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 202
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_90
    :try_start_90
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9f} :catch_86

    goto :goto_23

    .line 210
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_a0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 212
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_a4
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 213
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_b4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_d0

    .line 214
    :cond_b4
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_c3} :catch_c5

    goto/16 :goto_23

    .line 220
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_c5
    move-exception v3

    move-object v1, v3

    .line 221
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 218
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_d0
    :try_start_d0
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_dd} :catch_c5

    goto/16 :goto_23

    .line 226
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_df
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 228
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_e3
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 229
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_f3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_10f

    .line 230
    :cond_f3
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getExtractedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_102} :catch_104

    goto/16 :goto_23

    .line 236
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .end local p0
    :catch_104
    move-exception v3

    move-object v1, v3

    .line 237
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setExtractedText"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 234
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_10f
    :try_start_10f
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget-object p0, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p0, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_120} :catch_104

    goto/16 :goto_23

    .line 242
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_122
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 243
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_132

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_13b

    .line 244
    :cond_132
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "commitText on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 247
    :cond_13b
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_23

    .line 251
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_146
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 252
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_156

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_15f

    .line 253
    :cond_156
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "setSelection on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 256
    :cond_15f
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_23

    .line 260
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_168
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 261
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_178

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_181

    .line 262
    :cond_178
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "performEditorAction on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 265
    :cond_181
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_23

    .line 269
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_188
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 270
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_198

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1a1

    .line 271
    :cond_198
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "performContextMenuAction on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 274
    :cond_1a1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_23

    .line 278
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1a8
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 279
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1b8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1c1

    .line 280
    :cond_1b8
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "commitCompletion on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 283
    :cond_1c1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v2, p0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_23

    .line 287
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_1ca
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 288
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1da

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1e3

    .line 289
    :cond_1da
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "setComposingText on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 292
    :cond_1e3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p0, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_23

    .line 296
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_1ee
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 301
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_201

    .line 302
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "finishComposingText on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 305
    :cond_201
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_23

    .line 309
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_206
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 310
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_216

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_21f

    .line 311
    :cond_216
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "sendKeyEvent on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 314
    :cond_21f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    invoke-interface {v2, p0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_23

    .line 318
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_228
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 319
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_238

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_241

    .line 320
    :cond_238
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 323
    :cond_241
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_23

    .line 327
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_248
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 328
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_258

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_261

    .line 329
    :cond_258
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 332
    :cond_261
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_23

    .line 336
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_26a
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 337
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_27a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_283

    .line 338
    :cond_27a
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "beginBatchEdit on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 341
    :cond_283
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/16 :goto_23

    .line 345
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_288
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 346
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_298

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2a1

    .line 347
    :cond_298
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "endBatchEdit on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 350
    :cond_2a1
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_23

    .line 354
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2a6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 355
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2b6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2bf

    .line 356
    :cond_2b6
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "showStatusIcon on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 359
    :cond_2bf
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_2c9

    move v3, v5

    :goto_2c4
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    goto/16 :goto_23

    :cond_2c9
    move v3, v4

    goto :goto_2c4

    .line 363
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2cb
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 364
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2db

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2e4

    .line 365
    :cond_2db
    const-string v3, "IInputConnectionWrapper"

    const-string v3, "performPrivateCommand on inactive InputConnection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 368
    :cond_2e4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 369
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object p0, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v2, p0, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_23

    .line 176
    nop

    :sswitch_data_2f6
    .sparse-switch
        0xa -> :sswitch_24
        0x14 -> :sswitch_62
        0x1e -> :sswitch_a0
        0x28 -> :sswitch_df
        0x32 -> :sswitch_122
        0x37 -> :sswitch_1a8
        0x39 -> :sswitch_146
        0x3a -> :sswitch_168
        0x3b -> :sswitch_188
        0x3c -> :sswitch_1ca
        0x41 -> :sswitch_1ee
        0x46 -> :sswitch_206
        0x50 -> :sswitch_248
        0x5a -> :sswitch_26a
        0x5f -> :sswitch_288
        0x64 -> :sswitch_2a6
        0x78 -> :sswitch_2cb
        0x82 -> :sswitch_228
    .end sparse-switch
.end method

.method public finishComposingText()V
    .registers 2

    .prologue
    .line 130
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5
    .parameter "reqModes"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 96
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 97
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "request"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 101
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 103
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 88
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 89
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 92
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 93
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 397
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 398
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 399
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 400
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 405
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 406
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 407
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 408
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 409
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 390
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 391
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 392
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 393
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 417
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 418
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 419
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public performContextMenuAction(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 122
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 123
    return-void
.end method

.method public performEditorAction(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 118
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 159
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 155
    const/16 v0, 0x64

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 156
    return-void

    :cond_e
    move v1, v2

    .line 155
    goto :goto_6
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 134
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 135
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 126
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 127
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 114
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 115
    return-void
.end method
