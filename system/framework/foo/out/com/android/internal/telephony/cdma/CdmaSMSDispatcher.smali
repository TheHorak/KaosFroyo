.class final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 68
    return-void
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .registers 9
    .parameter "sms"

    .prologue
    .line 83
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v2, v0, :cond_32

    .line 84
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 85
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v5, v6, :cond_33

    .line 87
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 89
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 92
    :try_start_2c
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_32
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2c .. :try_end_32} :catch_36

    .line 97
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_32
    :goto_32
    return-void

    .line 83
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 93
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_36
    move-exception v5

    goto :goto_32
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 492
    packed-switch p1, :pswitch_data_e

    .line 503
    :pswitch_3
    const/16 v0, 0x60

    :goto_5
    return v0

    .line 496
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 498
    :pswitch_8
    const/16 v0, 0x23

    goto :goto_5

    .line 500
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_5

    .line 492
    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 8
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 460
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, inEcm:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 474
    :cond_10
    :goto_10
    return-void

    .line 465
    :cond_11
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_10

    .line 466
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 467
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 469
    if-nez v0, :cond_24

    .line 470
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 472
    :cond_24
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_10
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p1, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    .line 479
    return-void

    .line 478
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 15
    .parameter "smsb"

    .prologue
    .line 103
    if-nez p1, :cond_b

    .line 104
    const-string v10, "CDMA"

    const-string v11, "dispatchMessage: message is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v10, 0x2

    .line 215
    .end local p1
    :goto_a
    return v10

    .line 108
    .restart local p1
    :cond_b
    const-string v10, "ril.cdma.inecmmode"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, inEcm:Ljava/lang/String;
    const-string v10, "true"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 110
    const/4 v10, -0x1

    goto :goto_a

    .line 114
    :cond_1d
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v5, v0

    .line 115
    .local v5, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 116
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v10, :cond_37

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 118
    const/4 v10, 0x1

    goto :goto_a

    .line 121
    :cond_37
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 122
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v8

    .line 123
    .local v8, teleService:I
    const/4 v2, 0x0

    .line 125
    .local v2, handled:Z
    const/16 v10, 0x1003

    if-eq v10, v8, :cond_47

    const/high16 v10, 0x4

    if-ne v10, v8, :cond_87

    .line 128
    :cond_47
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v9

    .line 129
    .local v9, voicemailCount:I
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Voicemail count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 133
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "vm_count_key_cdma"

    invoke-interface {v1, v10, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 137
    const/4 v2, 0x1

    .line 150
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    .end local v9           #voicemailCount:I
    :cond_83
    :goto_83
    if-eqz v2, :cond_a9

    .line 151
    const/4 v10, 0x1

    goto :goto_a

    .line 138
    .restart local p1
    :cond_87
    const/16 v10, 0x1002

    if-eq v10, v8, :cond_8f

    const/16 v10, 0x1005

    if-ne v10, v8, :cond_9a

    :cond_8f
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 141
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 142
    const/4 v2, 0x1

    goto :goto_83

    .line 143
    :cond_9a
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v10

    if-nez v10, :cond_83

    .line 145
    const-string v10, "CDMA"

    const-string v11, "Received SMS without user data"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x1

    goto :goto_83

    .line 154
    .end local p1
    :cond_a9
    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageAvailable:Z

    if-nez v10, :cond_b8

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v10

    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v10, v11, :cond_b8

    .line 158
    const/4 v10, 0x3

    goto/16 :goto_a

    .line 161
    :cond_b8
    const/16 v10, 0x1004

    if-ne v10, v8, :cond_cc

    .line 162
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v10

    goto/16 :goto_a

    .line 169
    :cond_cc
    const/16 v10, 0x1002

    if-eq v10, v8, :cond_de

    const/16 v10, 0x1005

    if-eq v10, v8, :cond_de

    const/4 v10, 0x1

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v11

    if-eq v10, v11, :cond_de

    .line 172
    const/4 v10, 0x4

    goto/16 :goto_a

    .line 186
    :cond_de
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    .line 195
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v6, :cond_e8

    iget-object v10, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v10, :cond_11a

    .line 197
    :cond_e8
    const/4 v10, 0x1

    new-array v4, v10, [[B

    .line 198
    .local v4, pdus:[[B
    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v11

    aput-object v11, v4, v10

    .line 200
    if-eqz v6, :cond_116

    iget-object v10, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v10, :cond_116

    .line 201
    iget-object v10, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v11, 0xb84

    if-ne v10, v11, :cond_10c

    .line 203
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v10

    goto/16 :goto_a

    .line 206
    :cond_10c
    iget-object v10, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v4, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 212
    :goto_113
    const/4 v10, -0x1

    goto/16 :goto_a

    .line 210
    :cond_116
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_113

    .line 215
    .end local v4           #pdus:[[B
    :cond_11a
    iget-object v10, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v11, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v5, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v10

    goto/16 :goto_a
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaBroadcastConfig(Landroid/os/Message;)V

    .line 484
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 79
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .registers 34
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 232
    const/16 v18, 0x0

    .line 235
    .local v18, index:I
    const/16 v26, 0x0

    .line 236
    .local v26, sourcePort:I
    const/4 v14, 0x0

    .line 238
    .local v14, destinationPort:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v20, p1, v18

    .line 239
    .local v20, msgType:I
    if-eqz v20, :cond_16

    .line 240
    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v4, 0x1

    move/from16 v18, v19

    .line 337
    .end local v19           #index:I
    .restart local v18       #index:I
    :cond_15
    :goto_15
    return v4

    .line 243
    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_16
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v27, p1, v19

    .line 244
    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v24, p1, v18

    .line 247
    .local v24, segment:I
    if-nez v24, :cond_239

    .line 249
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v26, v4, 0x8

    .line 250
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int v26, v26, v4

    .line 251
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 252
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    move/from16 v18, v19

    .line 256
    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_41
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v29, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v4, " AND address = ?"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v8, v4

    .line 261
    .local v8, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v23, 0x0

    check-cast v23, [[B

    .line 266
    .local v23, pdus:[[B
    const/4 v10, 0x0

    .line 268
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 269
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 270
    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v27, v4

    if-eq v11, v4, :cond_16d

    .line 272
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v28, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v4, "address"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v4, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v4, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_165
    .catchall {:try_start_cb .. :try_end_165} :catchall_1fd
    .catch Landroid/database/SQLException; {:try_start_cb .. :try_end_165} :catch_1ea

    .line 283
    const/4 v4, 0x1

    .line 310
    if-eqz v10, :cond_15

    .end local v11           #cursorCount:I
    .end local v28           #values:Landroid/content/ContentValues;
    :goto_168
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_15

    .line 287
    .restart local v11       #cursorCount:I
    :cond_16d
    :try_start_16d
    const-string v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 288
    .local v22, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 290
    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 291
    const/16 v17, 0x0

    .local v17, i:I
    :goto_181
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_1ae

    .line 292
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 293
    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 295
    .local v12, cursorSequence:I
    if-nez v12, :cond_19e

    .line 296
    const-string v4, "destination_port"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 297
    .local v15, destinationPortColumn:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v14, v4

    .line 299
    .end local v15           #destinationPortColumn:I
    :cond_19e
    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v23, v12

    .line 291
    add-int/lit8 v17, v17, 0x1

    goto :goto_181

    .line 305
    .end local v12           #cursorSequence:I
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1bf
    .catchall {:try_start_16d .. :try_end_1bf} :catchall_1fd
    .catch Landroid/database/SQLException; {:try_start_16d .. :try_end_1bf} :catch_1ea

    .line 310
    if-eqz v10, :cond_1c4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_1c4
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_1cb
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_213

    .line 317
    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_204

    .line 319
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 315
    :goto_1e7
    add-int/lit8 v17, v17, 0x1

    goto :goto_1cb

    .line 306
    .end local v11           #cursorCount:I
    .end local v17           #i:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v25           #sequenceColumn:I
    :catch_1ea
    move-exception v4

    move-object/from16 v16, v4

    .line 307
    .local v16, e:Landroid/database/SQLException;
    :try_start_1ed
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f8
    .catchall {:try_start_1ed .. :try_end_1f8} :catchall_1fd

    .line 308
    const/4 v4, 0x2

    .line 310
    if-eqz v10, :cond_15

    goto/16 :goto_168

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_1fd
    move-exception v4

    if-eqz v10, :cond_203

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_203
    throw v4

    .line 321
    .restart local v11       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #pduColumn:I
    .restart local v25       #sequenceColumn:I
    :cond_204
    aget-object v4, v23, v17

    const/4 v5, 0x0

    aget-object v6, v23, v17

    array-length v6, v6

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e7

    .line 325
    :cond_213
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 327
    .local v13, datagram:[B
    packed-switch v14, :pswitch_data_23e

    .line 333
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 334
    const/4 v4, 0x0

    aput-object v13, v23, v4

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 337
    const/4 v4, -0x1

    goto/16 :goto_15

    .line 330
    :pswitch_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_15

    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cursorCount:I
    .end local v13           #datagram:[B
    .end local v17           #i:I
    .end local v18           #index:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v23           #pdus:[[B
    .end local v25           #sequenceColumn:I
    .end local v29           #where:Ljava/lang/StringBuilder;
    .restart local v19       #index:I
    :cond_239
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_41

    .line 327
    nop

    :pswitch_data_23e
    .packed-switch 0xb84
        :pswitch_22e
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 345
    if-eqz p6, :cond_b

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 347
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p5, p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 348
    return-void

    .line 345
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_b
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4
    .parameter "tracker"

    .prologue
    .line 453
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 20
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v13

    and-int/lit16 v8, v13, 0xff

    .line 371
    .local v8, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 372
    .local v7, msgCount:I
    const/4 v5, 0x0

    .line 374
    .local v5, encoding:I
    const/4 v6, 0x0

    .end local p2
    .local v6, i:I
    :goto_c
    if-ge v6, v7, :cond_2d

    .line 375
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 376
    .local v4, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v13, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v13, :cond_2a

    if-eqz v5, :cond_28

    const/4 v13, 0x1

    if-ne v5, v13, :cond_2a

    .line 379
    :cond_28
    iget v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 374
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 383
    .end local v4           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v7, :cond_a2

    .line 384
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 385
    .local v2, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v8, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 386
    add-int/lit8 v13, v6, 0x1

    iput v13, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 387
    iput v7, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 388
    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 389
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 390
    .local v10, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 392
    const/4 v9, 0x0

    .line 393
    .local v9, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_59

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_59

    .line 394
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 397
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_59
    const/4 v3, 0x0

    .line 398
    .local v3, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6b

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_6b

    .line 399
    move-object/from16 v0, p5

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v3, Landroid/app/PendingIntent;

    .line 402
    .restart local v3       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6b
    new-instance v12, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 403
    .local v12, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v12

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 404
    iput-object v10, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 405
    const/4 v13, 0x1

    if-ne v5, v13, :cond_9c

    .line 406
    const/16 v13, 0x9

    iput v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 410
    :goto_87
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 416
    if-eqz v3, :cond_a0

    const/4 v13, 0x1

    sub-int v13, v7, v13

    if-ne v6, v13, :cond_a0

    const/4 v13, 0x1

    :goto_92
    invoke-static {p1, v12, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 419
    .local v11, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v11, v9, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 408
    .end local v11           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_9c
    const/4 v13, 0x4

    iput v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_87

    .line 416
    :cond_a0
    const/4 v13, 0x0

    goto :goto_92

    .line 421
    .end local v2           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .end local v10           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v12           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_a2
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 8
    .parameter "tracker"

    .prologue
    .line 441
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 443
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 444
    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 446
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 448
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 449
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 425
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 426
    if-eqz p2, :cond_f

    .line 428
    const/4 v0, 0x4

    :try_start_c
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_f} :catch_1f

    .line 432
    :cond_f
    :goto_f
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_16
    return-void

    .line 436
    :cond_17
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_16

    .line 429
    :catch_1f
    move-exception v0

    goto :goto_f
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 353
    if-eqz p5, :cond_c

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 355
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 356
    return-void

    .line 353
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_c
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .registers 4
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([ILandroid/os/Message;)V

    .line 489
    return-void
.end method
