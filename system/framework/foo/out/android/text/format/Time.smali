.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field private static final DAYS_PER_MONTH:[I = null

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static sAm:Ljava/lang/String;

.field private static sDateCommand:Ljava/lang/String;

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLongMonths:[Ljava/lang/String;

.field private static sLongStandaloneMonths:[Ljava/lang/String;

.field private static sLongWeekdays:[Ljava/lang/String;

.field private static sPm:Ljava/lang/String;

.field private static sShortMonths:[Ljava/lang/String;

.field private static sShortWeekdays:[Ljava/lang/String;

.field private static final sThursdayOffset:[I

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    const-string v0, "%a %b %e %H:%M:%S %Z %Y"

    sput-object v0, Landroid/text/format/Time;->sDateCommand:Ljava/lang/String;

    .line 209
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 634
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    .line 209
    :array_16
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 634
    :array_32
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 171
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .registers 2
    .parameter "other"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "timezone"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-nez p1, :cond_d

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_d
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 159
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 164
    return-void
.end method

.method public static native compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
.end method

.method private native format1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .registers 1

    .prologue
    .line 472
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .parameter "millis"
    .parameter "gmtoff"

    .prologue
    .line 728
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 729
    .local v2, offsetMillis:J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 730
    .local v0, julianDay:J
    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .registers 6
    .parameter "time"

    .prologue
    const/4 v4, 0x1

    .line 707
    invoke-virtual {p0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 708
    .local v0, millis:J
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    const v3, 0x253d8c

    if-ne v2, v3, :cond_12

    move v2, v4

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private native nativeParse(Ljava/lang/String;)Z
.end method

.method private native nativeParse3339(Ljava/lang/String;)Z
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .registers 3
    .parameter "that"

    .prologue
    .line 626
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public before(Landroid/text/format/Time;)Z
    .registers 3
    .parameter "that"

    .prologue
    .line 614
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public clear(Ljava/lang/String;)V
    .registers 4
    .parameter "timezone"

    .prologue
    const/4 v0, 0x0

    .line 260
    if-nez p1, :cond_b

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_b
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 264
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 265
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 266
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 267
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 268
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 269
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 270
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 271
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 272
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 275
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "format"

    .prologue
    .line 291
    const-class v2, Landroid/text/format/Time;

    monitor-enter v2

    .line 292
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 294
    .local v0, locale:Ljava/util/Locale;
    sget-object v3, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    if-eqz v3, :cond_15

    if-eqz v0, :cond_15

    sget-object v3, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_264

    .line 295
    :cond_15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 297
    .local v1, r:Landroid/content/res/Resources;
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x1040033

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x1040034

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x1040035

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x1040036

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x1040037

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x1040038

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x1040039

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const v5, 0x104003a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x104003b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x104003c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const v5, 0x104003d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const v5, 0x104003e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Landroid/text/format/Time;->sShortMonths:[Ljava/lang/String;

    .line 311
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x1040027

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x1040028

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x1040029

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x104002a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x104002b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x104002c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x104002d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const v5, 0x104002e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x104002f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x1040030

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const v5, 0x1040031

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const v5, 0x1040032

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Landroid/text/format/Time;->sLongMonths:[Ljava/lang/String;

    .line 325
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x104001b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x104001c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x104001d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x104001e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x104001f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x1040020

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x1040021

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const v5, 0x1040022

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x1040023

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x1040024

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const v5, 0x1040025

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const v5, 0x1040026

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Landroid/text/format/Time;->sLongStandaloneMonths:[Ljava/lang/String;

    .line 339
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x1040052

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x1040053

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x1040054

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x1040055

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x1040056

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x1040057

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x1040058

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Landroid/text/format/Time;->sShortWeekdays:[Ljava/lang/String;

    .line 348
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x104004b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x104004c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x104004d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x104004e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x104004f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x1040050

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x1040051

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Landroid/text/format/Time;->sLongWeekdays:[Ljava/lang/String;

    .line 357
    const v3, 0x1040076

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sTimeOnlyFormat:Ljava/lang/String;

    .line 358
    const v3, 0x1040075

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sDateOnlyFormat:Ljava/lang/String;

    .line 359
    const v3, 0x1040077

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sDateTimeFormat:Ljava/lang/String;

    .line 360
    const v3, 0x1040067

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sAm:Ljava/lang/String;

    .line 361
    const v3, 0x1040068

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sPm:Ljava/lang/String;

    .line 363
    sput-object v0, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    .line 366
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_264
    invoke-direct {p0, p1}, Landroid/text/format/Time;->format1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 367
    .end local v0           #locale:Ljava/util/Locale;
    :catchall_26a
    move-exception v3

    monitor-exit v2
    :try_end_26c
    .catchall {:try_start_3 .. :try_end_26c} :catchall_26a

    throw v3
.end method

.method public native format2445()Ljava/lang/String;
.end method

.method public format3339(Z)Ljava/lang/String;
    .registers 11
    .parameter "allDay"

    .prologue
    .line 684
    if-eqz p1, :cond_9

    .line 685
    const-string v5, "%Y-%m-%d"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 695
    :goto_8
    return-object v5

    .line 686
    :cond_9
    const-string v5, "UTC"

    iget-object v6, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 687
    const-string v5, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 689
    :cond_1a
    const-string v5, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, base:Ljava/lang/String;
    iget-wide v5, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_56

    const-string v5, "-"

    move-object v4, v5

    .line 691
    .local v4, sign:Ljava/lang/String;
    :goto_2b
    iget-wide v5, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    long-to-int v3, v5

    .line 692
    .local v3, offset:I
    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v2, v5, 0x3c

    .line 693
    .local v2, minutes:I
    div-int/lit16 v1, v3, 0xe10

    .line 695
    .local v1, hours:I
    const-string v5, "%s%s%02d:%02d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 690
    .end local v1           #hours:I
    .end local v2           #minutes:I
    .end local v3           #offset:I
    .end local v4           #sign:Ljava/lang/String;
    :cond_56
    const-string v5, "+"

    move-object v4, v5

    goto :goto_2b
.end method

.method public getActualMaximum(I)I
    .registers 7
    .parameter "field"

    .prologue
    const/16 v2, 0x3b

    const/16 v4, 0x1c

    .line 220
    packed-switch p1, :pswitch_data_64

    .line 250
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :pswitch_20
    const/16 v2, 0x17

    .line 245
    :goto_22
    :pswitch_22
    return v2

    .line 228
    :pswitch_23
    sget-object v2, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v3, p0, Landroid/text/format/Time;->month:I

    aget v0, v2, v3

    .line 229
    .local v0, n:I
    if-eq v0, v4, :cond_2d

    move v2, v0

    .line 230
    goto :goto_22

    .line 232
    :cond_2d
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 233
    .local v1, y:I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_3e

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_3b

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_3e

    :cond_3b
    const/16 v2, 0x1d

    goto :goto_22

    :cond_3e
    move v2, v4

    goto :goto_22

    .line 237
    .end local v0           #n:I
    .end local v1           #y:I
    :pswitch_40
    const/16 v2, 0xb

    goto :goto_22

    .line 239
    :pswitch_43
    const/16 v2, 0x7f5

    goto :goto_22

    .line 241
    :pswitch_46
    const/4 v2, 0x6

    goto :goto_22

    .line 243
    :pswitch_48
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 245
    .restart local v1       #y:I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_59

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_56

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_59

    :cond_56
    const/16 v2, 0x16d

    goto :goto_22

    :cond_59
    const/16 v2, 0x16c

    goto :goto_22

    .line 248
    .end local v1           #y:I
    :pswitch_5c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "WEEK_NUM not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_20
        :pswitch_23
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_48
        :pswitch_5c
    .end packed-switch
.end method

.method public getWeekNumber()I
    .registers 6

    .prologue
    .line 658
    iget v2, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int v0, v2, v3

    .line 661
    .local v0, closestThursday:I
    if-ltz v0, :cond_15

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_15

    .line 662
    div-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    .line 669
    :goto_14
    return v2

    .line 666
    :cond_15
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 667
    .local v1, temp:Landroid/text/format/Time;
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 668
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 669
    iget v2, v1, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method public native normalize(Z)J
.end method

.method public parse(Ljava/lang/String;)Z
    .registers 3
    .parameter "s"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/text/format/Time;->nativeParse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 416
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 417
    const/4 v0, 0x1

    .line 419
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public parse3339(Ljava/lang/String;)Z
    .registers 3
    .parameter "s"

    .prologue
    .line 459
    invoke-direct {p0, p1}, Landroid/text/format/Time;->nativeParse3339(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 460
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public set(III)V
    .registers 6
    .parameter "monthDay"
    .parameter "month"
    .parameter "year"

    .prologue
    const/4 v1, 0x0

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 594
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 595
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 596
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 597
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 598
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 599
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 600
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 601
    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    .line 602
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 604
    return-void
.end method

.method public set(IIIIII)V
    .registers 9
    .parameter "second"
    .parameter "minute"
    .parameter "hour"
    .parameter "monthDay"
    .parameter "month"
    .parameter "year"

    .prologue
    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 571
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 572
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 573
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 574
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 575
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 576
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 577
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 578
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 579
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 581
    return-void
.end method

.method public native set(J)V
.end method

.method public set(Landroid/text/format/Time;)V
    .registers 4
    .parameter "that"

    .prologue
    .line 551
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 552
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 553
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 554
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 555
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 556
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 557
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 558
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 559
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 560
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 561
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 562
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 563
    return-void
.end method

.method public setJulianDay(I)J
    .registers 11
    .parameter "julianDay"

    .prologue
    const/4 v8, 0x0

    .line 757
    const v4, 0x253d8c

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 758
    .local v2, millis:J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 762
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 763
    .local v0, approximateDay:I
    sub-int v1, p1, v0

    .line 764
    .local v1, diff:I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 767
    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 768
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 769
    iput v8, p0, Landroid/text/format/Time;->second:I

    .line 770
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 771
    return-wide v2
.end method

.method public native setToNow()V
.end method

.method public native switchTimezone(Ljava/lang/String;)V
.end method

.method public native toMillis(Z)J
.end method

.method public native toString()Ljava/lang/String;
.end method
