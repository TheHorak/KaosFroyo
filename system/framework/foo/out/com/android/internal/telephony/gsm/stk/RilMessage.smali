.class Lcom/android/internal/telephony/gsm/stk/RilMessage;
.super Ljava/lang/Object;
.source "StkService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    .line 103
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .line 104
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 105
    return-void
.end method
