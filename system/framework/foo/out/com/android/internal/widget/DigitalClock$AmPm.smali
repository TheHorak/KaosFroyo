.class Lcom/android/internal/widget/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .registers 5
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const v1, 0x10201ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 79
    if-eqz p2, :cond_15

    .line 80
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    :cond_15
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 85
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 93
    :cond_a
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_6
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    return-void

    .line 89
    :cond_9
    const/16 v1, 0x8

    goto :goto_5
.end method
