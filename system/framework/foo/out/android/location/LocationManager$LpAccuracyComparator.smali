.class Landroid/location/LocationManager$LpAccuracyComparator;
.super Landroid/location/LocationManager$LpComparator;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpAccuracyComparator"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .registers 3
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Landroid/location/LocationManager$LpAccuracyComparator;->this$0:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager$LpComparator;-><init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Landroid/location/LocationManager$LpAccuracyComparator;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/location/LocationProvider;Landroid/location/LocationProvider;)I
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    .line 402
    .local v0, a1:I
    invoke-virtual {p2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v1

    .line 403
    .local v1, a2:I
    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$LpAccuracyComparator;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    check-cast p1, Landroid/location/LocationProvider;

    .end local p1
    check-cast p2, Landroid/location/LocationProvider;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager$LpAccuracyComparator;->compare(Landroid/location/LocationProvider;Landroid/location/LocationProvider;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/location/LocationProvider;Landroid/location/LocationProvider;)Z
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    .line 408
    .local v0, a1:I
    invoke-virtual {p2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v1

    .line 409
    .local v1, a2:I
    if-ne v0, v1, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method
