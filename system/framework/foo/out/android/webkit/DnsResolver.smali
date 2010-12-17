.class final Landroid/webkit/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field private static mDnsResolverRefCount:I

.field private static mThreadPoolLock:Ljava/lang/Object;

.field private static sDnsResolver:Landroid/webkit/DnsResolver;


# instance fields
.field private final MAX_DNS_RESOLVER_THREAD_POOL_SIZE:I

.field private final MAX_PARALLEL_DNS_QUERIES_PER_PAGE:I

.field private mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;

.field private volatile mDnsResolverThreadPoolRunning:Z

.field private mHostNamesToBeResolved:Ljava/util/HashMap;

.field private volatile mShutDownInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/DnsResolver;->MAX_DNS_RESOLVER_THREAD_POOL_SIZE:I

    .line 57
    const/16 v0, 0x40

    iput v0, p0, Landroid/webkit/DnsResolver;->MAX_PARALLEL_DNS_QUERIES_PER_PAGE:I

    .line 59
    iput-boolean v1, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    .line 61
    iput-boolean v1, p0, Landroid/webkit/DnsResolver;->mShutDownInProgress:Z

    .line 87
    invoke-direct {p0}, Landroid/webkit/DnsResolver;->createDnsResolverThreadPool()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/DnsResolver;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$002(Landroid/webkit/DnsResolver;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/webkit/DnsResolver;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/webkit/DnsResolver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/webkit/DnsResolver;->mShutDownInProgress:Z

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/DnsResolver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    return v0
.end method

.method static synthetic access$302(Landroid/webkit/DnsResolver;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Landroid/webkit/DnsResolver;)Landroid/webkit/DnsResolver;
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    sput-object p0, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    return-object p0
.end method

.method public static declared-synchronized createDnsResolver()Landroid/webkit/DnsResolver;
    .registers 2

    .prologue
    .line 75
    const-class v0, Landroid/webkit/DnsResolver;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    if-nez v1, :cond_e

    .line 76
    new-instance v1, Landroid/webkit/DnsResolver;

    invoke-direct {v1}, Landroid/webkit/DnsResolver;-><init>()V

    sput-object v1, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    .line 78
    :cond_e
    sget v1, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    .line 79
    sget-object v1, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    .line 75
    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private createDnsResolverThreadPool()V
    .registers 4

    .prologue
    .line 91
    new-instance v1, Landroid/webkit/DnsResolver$1;

    invoke-direct {v1, p0}, Landroid/webkit/DnsResolver$1;-><init>(Landroid/webkit/DnsResolver;)V

    .line 150
    .local v1, startDnsResolver:Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    .local v0, dnsResolver:Ljava/lang/Thread;
    const-string v2, "DNS resolver"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method public static getInstance()Landroid/webkit/DnsResolver;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized destroyDnsResolver()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 156
    monitor-enter p0

    :try_start_2
    sget v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    .line 157
    sget v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    if-nez v0, :cond_1a

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mShutDownInProgress:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    .line 160
    sget-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_1f

    .line 161
    :try_start_14
    sget-object v1, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    .line 164
    :cond_1a
    monitor-exit p0

    return-void

    .line 162
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 156
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxParallelDnsQueryPerPage()I
    .registers 2

    .prologue
    .line 204
    const/16 v0, 0x40

    return v0
.end method

.method public pauseDnsResolverThreadPool()V
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    .line 192
    return-void
.end method

.method public resolveDnsForHost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "hostName"
    .parameter "priority"

    .prologue
    .line 167
    if-nez p1, :cond_3

    .line 177
    :goto_2
    return-void

    .line 170
    :cond_3
    iget-object v0, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    monitor-enter v0

    .line 171
    :try_start_6
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 172
    monitor-exit v0

    goto :goto_2

    .line 175
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1

    .line 174
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_10

    .line 176
    invoke-virtual {p0}, Landroid/webkit/DnsResolver;->resumeDnsResolverThreadPool()V

    goto :goto_2
.end method

.method public resolveDnsForHostMap(Ljava/util/HashMap;)V
    .registers 4
    .parameter "hostMap"

    .prologue
    .line 180
    if-nez p1, :cond_3

    .line 187
    :goto_2
    return-void

    .line 183
    :cond_3
    iget-object v0, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    monitor-enter v0

    .line 184
    :try_start_6
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 185
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    .line 186
    invoke-virtual {p0}, Landroid/webkit/DnsResolver;->resumeDnsResolverThreadPool()V

    goto :goto_2

    .line 185
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public resumeDnsResolverThreadPool()V
    .registers 3

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    .line 197
    sget-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_6
    sget-object v1, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method
