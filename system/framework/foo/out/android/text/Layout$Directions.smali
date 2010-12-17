.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field private mDirections:[S


# direct methods
.method constructor <init>([S)V
    .registers 2
    .parameter "dirs"

    .prologue
    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[S

    .line 1823
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout$Directions;)[S
    .registers 2
    .parameter "x0"

    .prologue
    .line 1813
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[S

    return-object v0
.end method


# virtual methods
.method hasRTL()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1826
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[S

    array-length v0, v0

    if-le v0, v1, :cond_e

    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[S

    aget-short v0, v0, v1

    if-lez v0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
