.class Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;
.super Ljava/lang/Object;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/ArrowKeyMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnePointFiveTapState"
.end annotation


# instance fields
.field active:Z

.field mWhen:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/method/ArrowKeyMovementMethod$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 435
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod$OnePointFiveTapState;-><init>()V

    return-void
.end method
