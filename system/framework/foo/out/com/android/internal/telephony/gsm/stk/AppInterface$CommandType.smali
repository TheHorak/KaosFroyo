.class public final enum Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 47
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "DISPLAY_TEXT"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_INKEY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_INPUT"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "LAUNCH_BROWSER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "PLAY_TONE"

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SELECT_ITEM"

    const/4 v2, 0x6

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_SS"

    const/4 v2, 0x7

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_USSD"

    const/16 v2, 0x8

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_SMS"

    const/16 v2, 0x9

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_DTMF"

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_EVENT_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xc

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_MENU"

    const/16 v2, 0xd

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_CALL"

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    .line 67
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .registers 6
    .parameter "value"

    .prologue
    .line 82
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 83
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_10

    move-object v4, v1

    .line 87
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :goto_f
    return-object v4

    .line 82
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 87
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .registers 2
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    return v0
.end method
