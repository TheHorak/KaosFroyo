.class Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;
.super Ljava/lang/ClassLoader;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningContextClassLoader"
.end annotation


# static fields
.field private static warned:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 543
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warned:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;-><init>()V

    return-void
.end method

.method private warn(Ljava/lang/String;)V
    .registers 5
    .parameter "methodName"

    .prologue
    .line 546
    sget-boolean v0, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warned:Z

    if-eqz v0, :cond_5

    .line 557
    :goto_4
    return-void

    .line 549
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warned:Z

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 551
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassLoader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The class loader returned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thread.getContextClassLoader() may fail for processes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "that host multiple applications. You should explicitly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "specify a context class loader. For example: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thread.setContextClassLoader(getClass().getClassLoader());"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public clearAssertionStatus()V
    .registers 2

    .prologue
    .line 595
    const-string v0, "clearAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->clearAssertionStatus()V

    .line 597
    return-void
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .parameter "resName"

    .prologue
    .line 560
    const-string v0, "getResource"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter "resName"

    .prologue
    .line 570
    const-string v0, "getResourceAsStream"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const-string v0, "getResources"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 575
    const-string v0, "loadClass"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .registers 4
    .parameter "cname"
    .parameter "enable"

    .prologue
    .line 580
    const-string v0, "setClassAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    .line 582
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 590
    const-string v0, "setDefaultAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->setDefaultAssertionStatus(Z)V

    .line 592
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .registers 4
    .parameter "pname"
    .parameter "enable"

    .prologue
    .line 585
    const-string v0, "setPackageAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    .line 587
    return-void
.end method
