.class abstract Lcom/android/internal/telephony/gsm/stk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 277
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 278
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 279
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 281
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 287
    :goto_12
    return-object v4

    .line 283
    :catch_13
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 287
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .line 41
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 42
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 44
    .local v3, valueIndex:I
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    .line 45
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    .line 46
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 47
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_29} :catch_2a

    .line 48
    return-object v0

    .line 49
    :catch_2a
    move-exception v4

    move-object v1, v4

    .line 50
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;-><init>()V

    .line 66
    .local v0, devIds:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 67
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 69
    .local v3, valueIndex:I
    :try_start_d
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->sourceId:I

    .line 70
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 71
    return-object v0

    .line 72
    :catch_1c
    move-exception v4

    move-object v1, v4

    .line 73
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .line 89
    .local v3, timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 90
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 93
    .local v4, valueIndex:I
    :try_start_b
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 94
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_19} :catch_21

    and-int/lit16 v2, v5, 0xff

    .line 98
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    return-object v5

    .line 95
    :catch_21
    move-exception v5

    move-object v0, v5

    .line 96
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/IconId;-><init>()V

    .line 163
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 164
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 166
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_f
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    :goto_16
    iput-boolean v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    .line 167
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_1e} :catch_21

    .line 172
    return-object v1

    .line 166
    :cond_1f
    const/4 v5, 0x0

    goto :goto_16

    .line 168
    :catch_21
    move-exception v5

    move-object v0, v5

    .line 169
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;
    .registers 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 112
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 113
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 115
    .local v3, length:I
    if-eqz v3, :cond_21

    .line 116
    const/4 v8, 0x1

    sub-int v6, v3, v8

    .line 119
    .local v6, textLen:I
    :try_start_12
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 120
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/gsm/stk/Item;-><init>(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_21} :catch_22

    .line 128
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_21
    return-object v2

    .line 123
    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    .restart local v6       #textLen:I
    :catch_22
    move-exception v8

    move-object v0, v8

    .line 124
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 142
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 145
    .local v3, valueIndex:I
    :try_start_9
    aget-byte v4, v2, v3
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_b} :catch_e

    and-int/lit16 v1, v4, 0xff

    .line 150
    return v1

    .line 146
    :catch_e
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 185
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;-><init>()V

    .line 188
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 189
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 190
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    sub-int v4, v8, v10

    .line 191
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    .line 195
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_21
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_3b

    move v8, v10

    :goto_28
    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    .line 197
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_2c
    if-ge v3, v4, :cond_48

    .line 198
    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I
    :try_end_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_30} :catch_3d

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_34
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_38} :catch_49

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_2c

    .line 195
    .end local v3           #index:I
    :cond_3b
    const/4 v8, 0x0

    goto :goto_28

    .line 200
    :catch_3d
    move-exception v8

    move-object v0, v8

    move v6, v7

    .line 201
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_40
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 203
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_48
    return-object v1

    .line 200
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_49
    move-exception v8

    move-object v0, v8

    goto :goto_40
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/util/List;
    .registers 19
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v14, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v15

    .line 219
    .local v15, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 220
    .local v2, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result p0

    .line 222
    .local p0, length:I
    if-eqz p0, :cond_ad

    .line 224
    div-int/lit8 v13, p0, 0x4

    .line 227
    .local v13, itemCount:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v12, p0

    .end local p0           #i:I
    .local v12, i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .local v16, valueIndex:I
    :goto_1b
    if-ge v12, v13, :cond_9d

    .line 228
    :try_start_1d
    aget-byte p0, v15, v16

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .line 229
    .local v3, start:I
    add-int/lit8 p0, v16, 0x1

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 230
    .local v4, textLength:I
    add-int/lit8 p0, v16, 0x2

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    .line 231
    .local v10, format:I
    add-int/lit8 p0, v16, 0x3

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 233
    .local v2, colorValue:I
    and-int/lit8 p0, v10, 0x3

    .line 234
    .local p0, alignValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextAlignment;

    move-result-object v5

    .line 236
    .local v5, align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    shr-int/lit8 p0, v10, 0x2

    and-int/lit8 p0, p0, 0x3

    .line 237
    .local p0, sizeValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/FontSize;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/FontSize;

    move-result-object v6

    .line 238
    .local v6, size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    if-nez v6, :cond_51

    .line 240
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/FontSize;->NORMAL:Lcom/android/internal/telephony/gsm/stk/FontSize;

    .line 243
    :cond_51
    and-int/lit8 p0, v10, 0x10

    if-eqz p0, :cond_89

    .end local p0           #sizeValue:I
    const/16 p0, 0x1

    move/from16 v7, p0

    .line 244
    .local v7, bold:Z
    :goto_59
    and-int/lit8 p0, v10, 0x20

    if-eqz p0, :cond_8e

    const/16 p0, 0x1

    move/from16 v8, p0

    .line 245
    .local v8, italic:Z
    :goto_61
    and-int/lit8 p0, v10, 0x40

    if-eqz p0, :cond_93

    const/16 p0, 0x1

    move/from16 v9, p0

    .line 246
    .local v9, underlined:Z
    :goto_69
    move v0, v10

    and-int/lit16 v0, v0, 0x80

    move/from16 p0, v0

    if-eqz p0, :cond_98

    const/16 p0, 0x1

    move/from16 v10, p0

    .line 248
    .local v10, strikeThrough:Z
    :goto_74
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/TextColor;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextColor;

    move-result-object v11

    .line 250
    .local v11, color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextAttribute;

    .end local v2           #colorValue:I
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/gsm/stk/TextAttribute;-><init>(IILcom/android/internal/telephony/gsm/stk/TextAlignment;Lcom/android/internal/telephony/gsm/stk/FontSize;ZZZZLcom/android/internal/telephony/gsm/stk/TextColor;)V

    .line 253
    .local v2, attr:Lcom/android/internal/telephony/gsm/stk/TextAttribute;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_80} :catch_a1

    .line 227
    add-int/lit8 p0, v12, 0x1

    .end local v12           #i:I
    .local p0, i:I
    add-int/lit8 v2, v16, 0x4

    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    move/from16 v12, p0

    .end local p0           #i:I
    .restart local v12       #i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .restart local v16       #valueIndex:I
    goto :goto_1b

    .line 243
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v11           #color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    .local v2, colorValue:I
    .local v10, format:I
    :cond_89
    const/16 p0, 0x0

    move/from16 v7, p0

    goto :goto_59

    .line 244
    .restart local v7       #bold:Z
    :cond_8e
    const/16 p0, 0x0

    move/from16 v8, p0

    goto :goto_61

    .line 245
    .restart local v8       #italic:Z
    :cond_93
    const/16 p0, 0x0

    move/from16 v9, p0

    goto :goto_69

    .line 246
    .restart local v9       #underlined:Z
    :cond_98
    const/16 p0, 0x0

    move/from16 v10, p0

    goto :goto_74

    .end local v2           #colorValue:I
    .end local v3           #start:I
    .end local v4           #textLength:I
    .end local v5           #align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    .end local v6           #size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v10           #format:I
    :cond_9d
    move/from16 p0, v16

    .end local v16           #valueIndex:I
    .local p0, valueIndex:I
    move-object v2, v14

    .line 262
    .end local v12           #i:I
    .end local v13           #itemCount:I
    :goto_a0
    return-object v2

    .line 258
    .end local p0           #valueIndex:I
    .restart local v12       #i:I
    .restart local v13       #itemCount:I
    .restart local v16       #valueIndex:I
    :catch_a1
    move-exception p0

    .line 259
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 262
    .end local v12           #i:I
    .end local v13           #itemCount:I
    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    .local p0, length:I
    :cond_ad
    const/16 p0, 0x0

    move/from16 v17, v2

    .end local v2           #valueIndex:I
    .local v17, valueIndex:I
    move-object/from16 v2, p0

    move/from16 p0, v17

    .end local v17           #valueIndex:I
    .local p0, valueIndex:I
    goto :goto_a0
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 300
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 301
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 302
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 303
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 306
    .local v5, textLen:I
    if-nez v5, :cond_12

    move-object v4, v3

    .line 328
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_11
    return-object v4

    .line 310
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, -0x1

    .line 314
    :try_start_14
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 316
    if-nez v0, :cond_27

    .line 317
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_25
    move-object v4, v3

    .line 328
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_11

    .line 319
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_27
    const/4 v7, 0x4

    if-ne v0, v7, :cond_31

    .line 320
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 322
    :cond_31
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3f

    .line 323
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_25

    .line 325
    :cond_3f
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_47} :catch_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_47} :catch_51

    .line 329
    .end local v3           #text:Ljava/lang/String;
    :catch_47
    move-exception v7

    move-object v1, v7

    .line 330
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 331
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_51
    move-exception v7

    move-object v1, v7

    .line 333
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
.end method
