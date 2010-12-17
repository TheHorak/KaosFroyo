.class final Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurCode:I

.field private mCurData:Ljava/lang/String;

.field private mCurIntent:Landroid/content/Intent;

.field private mCurMap:Landroid/os/Bundle;

.field private mCurOrdered:Z

.field private mCurSticky:Z

.field final synthetic this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$302(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 846
    iget v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    return v0
.end method

.method static synthetic access$402(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    iput p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    return p1
.end method

.method static synthetic access$500(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 846
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 846
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$702(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    iput-boolean p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    return p1
.end method

.method static synthetic access$802(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    iput-boolean p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurSticky:Z

    return p1
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 855
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v9, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 864
    .local v9, receiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 865
    .local v0, mgr:Landroid/app/IActivityManager;
    iget-object v8, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 866
    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 868
    if-nez v9, :cond_28

    .line 869
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_27

    .line 873
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    iget v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_dd

    .line 922
    :cond_27
    :goto_27
    return-void

    .line 882
    :cond_28
    :try_start_28
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 883
    .local v6, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 884
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    if-eqz v1, :cond_40

    .line 885
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 887
    :cond_40
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 888
    iget v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 889
    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->clearAbortBroadcast()V

    .line 890
    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 891
    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurSticky:Z

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setInitialStickyHint(Z)V

    .line 892
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_61} :catch_86

    .line 910
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :cond_61
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_27

    .line 914
    :try_start_6b
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_83} :catch_84

    goto :goto_27

    .line 919
    :catch_84
    move-exception v1

    goto :goto_27

    .line 893
    :catch_86
    move-exception v1

    move-object v7, v1

    .line 894
    .local v7, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_a0

    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_a0

    .line 898
    :try_start_92
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    iget v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a0} :catch_db

    .line 903
    :cond_a0
    :goto_a0
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v1, :cond_b4

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v2, v2, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 905
    :cond_b4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error receiving broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v3, v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 900
    :catch_db
    move-exception v1

    goto :goto_a0

    .line 875
    .end local v7           #e:Ljava/lang/Exception;
    :catch_dd
    move-exception v1

    goto/16 :goto_27
.end method
