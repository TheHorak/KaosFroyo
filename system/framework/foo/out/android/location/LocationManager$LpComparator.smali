.class abstract Landroid/location/LocationManager$LpComparator;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LpComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/location/LocationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Landroid/location/LocationManager$LpComparator;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/location/LocationManager$LpComparator;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method public compare(FF)I
    .registers 4
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 375
    cmpg-float v0, p1, p2

    if-gez v0, :cond_6

    .line 376
    const/4 v0, -0x1

    .line 380
    :goto_5
    return v0

    .line 377
    :cond_6
    cmpl-float v0, p1, p2

    if-lez v0, :cond_c

    .line 378
    const/4 v0, 0x1

    goto :goto_5

    .line 380
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public compare(II)I
    .registers 4
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 365
    if-ge p1, p2, :cond_4

    .line 366
    const/4 v0, -0x1

    .line 370
    :goto_3
    return v0

    .line 367
    :cond_4
    if-le p1, p2, :cond_8

    .line 368
    const/4 v0, 0x1

    goto :goto_3

    .line 370
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method
