.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem; = null

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .registers 3

    .prologue
    .line 164
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 166
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 170
    .end local v1           #u:Landroid/net/Uri;
    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static final getDefaultPort()I
    .registers 3

    .prologue
    .line 180
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 182
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 185
    .end local v1           #u:Landroid/net/Uri;
    :goto_10
    return v2

    :cond_11
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 58
    const-string v3, "http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_28

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 62
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 63
    .local v2, i:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 67
    const/4 v3, 0x0

    .line 71
    .end local v2           #i:I
    :goto_21
    return-object v3

    .line 69
    .restart local v2       #i:I
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 71
    .end local v2           #i:I
    :cond_28
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_21
.end method

.method public static final getPort(Landroid/content/Context;)I
    .registers 6
    .parameter "ctx"

    .prologue
    const/4 v4, -0x1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 82
    const-string v3, "http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 86
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 87
    .local v2, i:I
    if-ne v2, v4, :cond_1a

    move v3, v4

    .line 98
    .end local v2           #i:I
    :goto_19
    return v3

    .line 96
    .restart local v2       #i:I
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_19

    .line 98
    .end local v2           #i:I
    :cond_25
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    goto :goto_19
.end method

.method public static final getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .registers 6
    .parameter "context"
    .parameter "url"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, proxyHost:Ljava/lang/String;
    const/4 v1, 0x0

    .line 211
    .local v1, proxyPort:I
    invoke-static {p1}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 212
    invoke-static {p0}, Landroid/net/Proxy;->isNetworkWifi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 213
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 221
    :cond_16
    :goto_16
    if-eqz v0, :cond_35

    .line 222
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v3, "http"

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    :goto_1f
    return-object v2

    .line 216
    :cond_20
    invoke-static {p0}, Landroid/net/Proxy;->isProxyForWifiOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {p0}, Landroid/net/Proxy;->isNetworkWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 217
    invoke-static {p0}, Landroid/net/Proxy;->getWifiHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {p0}, Landroid/net/Proxy;->getWifiPort(Landroid/content/Context;)I

    move-result v1

    goto :goto_16

    .line 226
    :cond_35
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public static final getWifiHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 113
    const-string v3, "http_proxy_wifi"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 117
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 118
    .local v2, i:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    move-object v3, v4

    .line 126
    .end local v2           #i:I
    :goto_22
    return-object v3

    .line 124
    .restart local v2       #i:I
    :cond_23
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .end local v2           #i:I
    :cond_29
    move-object v3, v4

    .line 126
    goto :goto_22
.end method

.method public static final getWifiPort(Landroid/content/Context;)I
    .registers 6
    .parameter "ctx"

    .prologue
    const/4 v4, -0x1

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 139
    const-string v3, "http_proxy_wifi"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 143
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 144
    .local v2, i:I
    if-ne v2, v4, :cond_1a

    move v3, v4

    .line 155
    .end local v2           #i:I
    :goto_19
    return v3

    .line 153
    .restart local v2       #i:I
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_19

    .line 155
    .end local v2           #i:I
    :cond_25
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .registers 6
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    if-nez p0, :cond_6

    move v2, v3

    .line 252
    :goto_5
    return v2

    .line 235
    :cond_6
    :try_start_6
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 236
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 238
    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v4

    .line 239
    goto :goto_5

    .line 241
    :cond_1a
    sget-object v2, Landroid/net/Proxy;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v2, v0}, Lorg/apache/harmony/luni/platform/INetworkSystem;->ipStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_27} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_27} :catch_2c

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v4

    .line 243
    goto :goto_5

    .line 248
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :catch_2c
    move-exception v2

    :cond_2d
    :goto_2d
    move v2, v3

    .line 252
    goto :goto_5

    .line 246
    :catch_2f
    move-exception v2

    goto :goto_2d
.end method

.method private static final isNetworkWifi(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    if-nez p0, :cond_6

    move v2, v3

    .line 270
    :goto_5
    return v2

    .line 260
    :cond_6
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 262
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1e

    .line 263
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 264
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1e

    move v2, v4

    .line 266
    goto :goto_5

    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1e
    move v2, v3

    .line 270
    goto :goto_5
.end method

.method public static final isProxyForWifiOn(Landroid/content/Context;)Z
    .registers 5
    .parameter "ctx"

    .prologue
    const/4 v3, 0x1

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "http_proxy_wifi_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    move v0, v3

    .line 281
    .local v0, ret:Z
    :goto_e
    return v0

    .line 279
    .end local v0           #ret:Z
    :cond_f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e
.end method
