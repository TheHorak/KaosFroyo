.class final Landroid/app/ActivityThread$ResourcesKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourcesKey"
.end annotation


# instance fields
.field private final mHash:I

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .registers 6
    .parameter "resDir"
    .parameter "scale"

    .prologue
    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2198
    iput-object p1, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    .line 2199
    iput p2, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    .line 2200
    iget-object v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    shl-int/2addr v0, v1

    iput v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mHash:I

    .line 2201
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 2210
    instance-of v2, p1, Landroid/app/ActivityThread$ResourcesKey;

    if-nez v2, :cond_7

    move v2, v4

    .line 2214
    :goto_6
    return v2

    .line 2213
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityThread$ResourcesKey;

    move-object v1, v0

    .line 2214
    .local v1, peer:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    iget v3, v1, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_6

    :cond_1f
    move v2, v4

    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2205
    iget v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mHash:I

    return v0
.end method
