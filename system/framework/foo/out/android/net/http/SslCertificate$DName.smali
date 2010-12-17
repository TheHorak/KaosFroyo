.class public Landroid/net/http/SslCertificate$DName;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/SslCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DName"
.end annotation


# instance fields
.field private mCName:Ljava/lang/String;

.field private mDName:Ljava/lang/String;

.field private mOName:Ljava/lang/String;

.field private mUName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "dName"

    .prologue
    .line 267
    iput-object p1, p0, Landroid/net/http/SslCertificate$DName;->this$0:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    if-eqz p2, :cond_4a

    .line 269
    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    .line 271
    :try_start_9
    new-instance v3, Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, x509Name:Lorg/bouncycastle/asn1/x509/X509Name;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v2

    .line 274
    .local v2, val:Ljava/util/Vector;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v1

    .line 276
    .local v1, oid:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_4a

    .line 277
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 278
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    .line 276
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 282
    :cond_34
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 283
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    goto :goto_31

    .line 292
    .end local v0           #i:I
    .end local v1           #oid:Ljava/util/Vector;
    .end local v2           #val:Ljava/util/Vector;
    .end local v3           #x509Name:Lorg/bouncycastle/asn1/x509/X509Name;
    :catch_49
    move-exception v4

    .line 296
    :cond_4a
    return-void

    .line 287
    .restart local v0       #i:I
    .restart local v1       #oid:Ljava/util/Vector;
    .restart local v2       #val:Ljava/util/Vector;
    .restart local v3       #x509Name:Lorg/bouncycastle/asn1/x509/X509Name;
    :cond_4b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 288
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_5f} :catch_49

    goto :goto_31
.end method


# virtual methods
.method public getCName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getDName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getOName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getUName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method
