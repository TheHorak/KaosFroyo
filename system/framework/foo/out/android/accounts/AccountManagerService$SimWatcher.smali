.class Landroid/accounts/AccountManagerService$SimWatcher;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 1600
    iput-object p1, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1604
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1605
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1606
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1608
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1619
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1621
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v7, :cond_12

    .line 1622
    const-string v8, "AccountManagerService"

    const-string v9, "failed to get TelephonyManager"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_11
    :goto_11
    return-void

    .line 1625
    :cond_12
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, imsi:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1631
    iget-object v8, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    const-string v9, "imsi"

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->access$1100(Landroid/accounts/AccountManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1632
    .local v5, storedImsi:Ljava/lang/String;
    const-string v8, "AccountManagerService"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1633
    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current IMSI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; stored IMSI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_4f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1641
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b7

    .line 1642
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1643
    .local v4, service:Landroid/os/IBinder;
    if-nez v4, :cond_6c

    .line 1644
    const-string v8, "AccountManagerService"

    const-string v9, "call to checkService(TELEPHONY_SERVICE) failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1647
    :cond_6c
    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1648
    .local v6, telephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v6, :cond_7a

    .line 1649
    const-string v8, "AccountManagerService"

    const-string v9, "failed to get ITelephony interface"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1654
    :cond_7a
    :try_start_7a
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getCdmaNeedsProvisioning()Z
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7d} :catch_ad

    move-result v3

    .line 1660
    .local v3, needsProvisioning:Z
    :goto_7e
    if-eqz v3, :cond_b7

    .line 1662
    const-string v8, "AccountManagerService"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1663
    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current IMSI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (needs provisioning); stored IMSI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1655
    .end local v3           #needsProvisioning:Z
    :catch_ad
    move-exception v1

    .line 1656
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "AccountManagerService"

    const-string v9, "exception while checking provisioning"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1658
    const/4 v3, 0x1

    .restart local v3       #needsProvisioning:Z
    goto :goto_7e

    .line 1670
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #needsProvisioning:Z
    .end local v4           #service:Landroid/os/IBinder;
    .end local v6           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10d

    .line 1671
    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wiping all passwords and authtokens because IMSI changed (stored="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v8, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v8}, Landroid/accounts/AccountManagerService;->access$1200(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1674
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1676
    :try_start_f8
    const-string v8, "DELETE from authtokens"

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1677
    const-string v8, "UPDATE accounts SET password = \'\'"

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    iget-object v8, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v8}, Landroid/accounts/AccountManagerService;->access$1300(Landroid/accounts/AccountManagerService;)V

    .line 1679
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10a
    .catchall {:try_start_f8 .. :try_end_10a} :catchall_116

    .line 1681
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1684
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_10d
    iget-object v8, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    const-string v9, "imsi"

    invoke-static {v8, v9, v2}, Landroid/accounts/AccountManagerService;->access$1400(Landroid/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1681
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_116
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method
