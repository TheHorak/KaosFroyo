.class public Lcom/android/internal/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;,
        Lcom/android/internal/location/GpsLocationProvider$Listener;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_NTP_SYSTEM_TIME_OFFSET:J = 0x493e0L

.field private static final MAX_SVS:I = 0x20

.field private static final MIN_FIX_COUNT:I = 0xa

.field private static final NO_FIX_TIMEOUT:I = 0x3c

.field private static final NTP_INTERVAL:J = 0xdbba00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0xaL

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataPending:Z

.field private volatile mEnabled:Z

.field private mEngineOn:Z

.field private mEventThread:Ljava/lang/Thread;

.field private mFixCount:I

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Z

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpServer:Ljava/lang/String;

.field private mProperties:Ljava/util/Properties;

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1441
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 14
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/16 v9, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v10, "GpsLocationProvider"

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 179
    iput v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 201
    iput-boolean v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 202
    iput-boolean v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 211
    iput v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    .line 220
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    .line 222
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 236
    new-instance v5, Landroid/location/Location;

    const-string v6, "gps"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 237
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 245
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 266
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 279
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$1;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$1;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 330
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$2;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$2;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1260
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$3;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$3;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 1432
    new-array v5, v9, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    .line 1433
    new-array v5, v9, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    .line 1434
    new-array v5, v9, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    .line 1435
    new-array v5, v9, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 1436
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    .line 1439
    const/16 v5, 0x78

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 349
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 350
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 355
    new-instance v5, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v5, p1, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 357
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 360
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 361
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "GpsLocationProvider"

    invoke-virtual {v3, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 363
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 364
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 365
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 367
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 370
    const-string v5, "batteryinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 372
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 374
    :try_start_ec
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 376
    .local v4, stream:Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 377
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 378
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "NTP_SERVER"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    .line 380
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 381
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, portString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_11f} :catch_174

    if-eqz v5, :cond_129

    if-eqz v2, :cond_129

    .line 384
    :try_start_123
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_129
    .catch Ljava/lang/NumberFormatException; {:try_start_123 .. :try_end_129} :catch_159
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_129} :catch_174

    .line 390
    :cond_129
    :goto_129
    :try_start_129
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "C2K_HOST"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 391
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "C2K_PORT"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_13d} :catch_174

    if-eqz v5, :cond_147

    if-eqz v2, :cond_147

    .line 394
    :try_start_141
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_147
    .catch Ljava/lang/NumberFormatException; {:try_start_141 .. :try_end_147} :catch_17e
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_147} :catch_174

    .line 404
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :cond_147
    :goto_147
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 405
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 408
    :goto_153
    :try_start_153
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_158
    .catch Ljava/lang/InterruptedException; {:try_start_153 .. :try_end_158} :catch_199

    .line 414
    return-void

    .line 385
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #portString:Ljava/lang/String;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_159
    move-exception v5

    move-object v0, v5

    .line 386
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_15b
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to parse SUPL_PORT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_173} :catch_174

    goto :goto_129

    .line 399
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :catch_174
    move-exception v5

    move-object v0, v5

    .line 400
    .local v0, e:Ljava/io/IOException;
    const-string v5, "GpsLocationProvider"

    const-string v5, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 395
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #portString:Ljava/lang/String;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_17e
    move-exception v5

    move-object v0, v5

    .line 396
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_180
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to parse C2K_PORT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_198} :catch_174

    goto :goto_147

    .line 410
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :catch_199
    move-exception v5

    move-object v0, v5

    .line 411
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_153
.end method

.method static synthetic access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/location/GpsLocationProvider;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/internal/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/location/GpsLocationProvider;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_wait_for_event()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "extras"

    .prologue
    .line 882
    if-nez p1, :cond_c

    .line 883
    const v0, 0xffff

    .line 901
    .local v0, flags:I
    :cond_5
    :goto_5
    if-eqz v0, :cond_95

    .line 902
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 903
    const/4 v1, 0x1

    .line 906
    :goto_b
    return v1

    .line 885
    .end local v0           #flags:I
    :cond_c
    const/4 v0, 0x0

    .line 886
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x1

    .line 887
    :cond_17
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x2

    .line 888
    :cond_21
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x4

    .line 889
    :cond_2b
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    or-int/lit8 v0, v0, 0x8

    .line 890
    :cond_35
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    or-int/lit8 v0, v0, 0x10

    .line 891
    :cond_3f
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    or-int/lit8 v0, v0, 0x20

    .line 892
    :cond_49
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 893
    :cond_53
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    or-int/lit16 v0, v0, 0x80

    .line 894
    :cond_5d
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    or-int/lit16 v0, v0, 0x100

    .line 895
    :cond_67
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    or-int/lit16 v0, v0, 0x200

    .line 896
    :cond_71
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x400

    .line 897
    :cond_7b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 898
    :cond_87
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_5

    .line 906
    :cond_95
    const/4 v1, 0x0

    goto/16 :goto_b
.end method

.method private handleAddListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 816
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 817
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_27

    .line 819
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    monitor-exit v1

    .line 831
    :goto_26
    return-void

    .line 822
    :cond_27
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_38

    if-eqz v2, :cond_36

    .line 825
    :try_start_31
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_3b

    .line 830
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v1

    goto :goto_26

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v2

    .line 826
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 827
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3d
    const-string v2, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_38

    goto :goto_36
.end method

.method private handleDisable()V
    .registers 4

    .prologue
    const-string v2, "GpsLocationProvider"

    .line 697
    const-string v1, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-nez v1, :cond_e

    .line 725
    :cond_d
    :goto_d
    return-void

    .line 700
    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 701
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    .line 702
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_disable()V

    .line 705
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    if-eqz v1, :cond_23

    .line 707
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_37

    .line 711
    :goto_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    .line 715
    :cond_23
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_cleanup()V

    .line 719
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_2e

    .line 720
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->reportStatus(I)V

    .line 722
    :cond_2e
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v1, :cond_d

    .line 723
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->reportStatus(I)V

    goto :goto_d

    .line 708
    :catch_37
    move-exception v1

    move-object v0, v1

    .line 709
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GpsLocationProvider"

    const-string v1, "InterruptedException when joining mEventThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private handleDownloadXtraData()V
    .registers 7

    .prologue
    const/4 v4, 0x6

    .line 530
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-nez v2, :cond_9

    .line 532
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 550
    :goto_8
    return-void

    .line 535
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 538
    new-instance v1, Lcom/android/internal/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 539
    .local v1, xtraDownloader:Lcom/android/internal/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/internal/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 540
    .local v0, data:[B
    if-eqz v0, :cond_27

    .line 542
    const-string v2, "GpsLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    goto :goto_8

    .line 547
    :cond_27
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method

.method private handleEnable()V
    .registers 4

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 662
    const-string v0, "GpsLocationProvider"

    const-string v0, "handleEnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_e

    .line 680
    :goto_d
    return-void

    .line 664
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 666
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_3d

    .line 667
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 668
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 670
    :cond_24
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 671
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 675
    :cond_30
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    .line 676
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_d

    .line 678
    :cond_3d
    const-string v0, "GpsLocationProvider"

    const-string v0, "Failed to enable location provider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private handleEnableLocationTracking(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 761
    if-eqz p1, :cond_d

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 763
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 764
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->startNavigating()V

    .line 770
    :goto_c
    return-void

    .line 766
    :cond_d
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 767
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 768
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_c
.end method

.method private handleInjectNtpTime()V
    .registers 20

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    move v2, v0

    if-nez v2, :cond_e

    .line 486
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 527
    :goto_d
    return-void

    .line 489
    :cond_e
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 491
    new-instance v8, Landroid/net/SntpClient;

    invoke-direct {v8}, Landroid/net/SntpClient;-><init>()V

    .line 494
    .local v8, client:Landroid/net/SntpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    move-object v2, v0

    const/16 v3, 0x2710

    invoke-virtual {v8, v2, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 495
    invoke-virtual {v8}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    .line 496
    .local v3, time:J
    invoke-virtual {v8}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v5

    .line 497
    .local v5, timeReference:J
    invoke-virtual {v8}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v15

    const-wide/16 v17, 0x2

    div-long v15, v15, v17

    long-to-int v7, v15

    .line 498
    .local v7, certainty:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 499
    .local v11, now:J
    sub-long v13, v3, v11

    .line 501
    .local v13, systemTimeOffset:J
    const-string v2, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #client:Landroid/net/SntpClient;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NTP server returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") reference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " certainty: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " system time offset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gez v2, :cond_89

    .line 509
    neg-long v13, v13

    :cond_89
    move-object/from16 v2, p0

    .line 511
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 513
    const-wide/32 v15, 0x493e0

    cmp-long v2, v13, v15

    if-lez v2, :cond_b3

    .line 514
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #time:J
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NTP time differs from system time by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Injecting NTP time anyway as it is guranteed to be accurate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_b3
    const-wide/32 v9, 0xdbba00

    .line 525
    .end local v5           #timeReference:J
    .end local v7           #certainty:I
    .end local v11           #now:J
    .end local v13           #systemTimeOffset:J
    .local v9, delay:J
    :goto_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_d

    .line 520
    .end local v9           #delay:J
    .restart local v8       #client:Landroid/net/SntpClient;
    :cond_d3
    const-string v2, "GpsLocationProvider"

    const-string v3, "requestTime failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-wide/32 v9, 0x493e0

    .restart local v9       #delay:J
    goto :goto_b6
.end method

.method private handleRemoveListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 840
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 841
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_27

    .line 843
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit v1

    .line 855
    :goto_26
    return-void

    .line 846
    :cond_27
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 847
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_37

    if-eqz v2, :cond_35

    .line 849
    :try_start_30
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_3a

    .line 854
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v1

    goto :goto_26

    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v2

    .line 850
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 851
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3c
    const-string v2, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_37

    goto :goto_35
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 565
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 568
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 11
    .parameter "state"
    .parameter "info"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "GpsLocationProvider"

    .line 448
    if-ne p1, v6, :cond_8d

    move v1, v5

    :goto_9
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 451
    const-string v1, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v2, :cond_90

    const-string v2, "available"

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5e

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-ne v1, v5, :cond_5e

    .line 457
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, apnName:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_93

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_93

    .line 459
    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 460
    const-string v1, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 462
    iput v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 471
    .end local v0           #apnName:Ljava/lang/String;
    :cond_5e
    :goto_5e
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_8c

    .line 472
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    if-eqz v1, :cond_76

    .line 473
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    :cond_76
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-eqz v1, :cond_8c

    .line 477
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    :cond_8c
    return-void

    :cond_8d
    move v1, v4

    .line 448
    goto/16 :goto_9

    .line 451
    :cond_90
    const-string v2, "unavailable"

    goto :goto_1e

    .line 464
    .restart local v0       #apnName:Ljava/lang/String;
    :cond_93
    const-string v1, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 466
    iput v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 467
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_5e
.end method

.method private hibernate()V
    .registers 9

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    .line 957
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    .line 958
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 959
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 960
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 961
    .local v0, now:J
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 963
    return-void
.end method

.method private initialize()V
    .registers 4

    .prologue
    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    return-void
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 345
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_disable()V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea(I[BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_fix_frequency(I)V
.end method

.method private native native_start(IZI)Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_wait_for_event()V
.end method

.method private reportAGpsStatus(II)V
    .registers 9
    .parameter "type"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "enableSUPL"

    .line 1184
    packed-switch p2, :pswitch_data_44

    .line 1220
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1186
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1188
    .local v0, result:I
    if-nez v0, :cond_2a

    .line 1189
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 1190
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 1191
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_7

    .line 1193
    :cond_1f
    const-string v1, "GpsLocationProvider"

    const-string v2, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_7

    .line 1196
    :cond_2a
    if-ne v0, v4, :cond_2f

    .line 1197
    iput v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_7

    .line 1199
    :cond_2f
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_7

    .line 1203
    .end local v0           #result:I
    :pswitch_33
    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v1, :cond_7

    .line 1204
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1206
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1207
    iput v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_7

    .line 1184
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_8
        :pswitch_33
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 25
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 975
    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    if-nez v8, :cond_61

    and-int/lit8 v8, p1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_61

    .line 976
    iget-wide v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 977
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTFF: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 981
    :try_start_34
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 982
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3b
    if-ge v4, v7, :cond_60

    .line 983
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_107

    .line 985
    .local v6, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_45
    iget-object v9, v6, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v9, v10}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_107
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4f

    .line 982
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 986
    :catch_4f
    move-exception v9

    move-object v3, v9

    .line 987
    .local v3, e:Landroid/os/RemoteException;
    :try_start_51
    const-string v9, "GpsLocationProvider"

    const-string v10, "RemoteException in stopNavigating"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 990
    add-int/lit8 v7, v7, -0x1

    goto :goto_4c

    .line 993
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_60
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_107

    .line 996
    .end local v4           #i:I
    .end local v7           #size:I
    :cond_61
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v8

    .line 997
    :try_start_64
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 998
    and-int/lit8 v9, p1, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_80

    .line 999
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1000
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1001
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 1003
    :cond_80
    and-int/lit8 v9, p1, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10a

    .line 1004
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 1008
    :goto_8d
    and-int/lit8 v9, p1, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_114

    .line 1009
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 1013
    :goto_9a
    and-int/lit8 v9, p1, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_11a

    .line 1014
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 1018
    :goto_a8
    and-int/lit8 v9, p1, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_120

    .line 1019
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_b6
    .catchall {:try_start_64 .. :try_end_b6} :catchall_111

    .line 1025
    :goto_b6
    :try_start_b6
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_111
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_be} :catch_126

    .line 1029
    :goto_be
    :try_start_be
    monitor-exit v8
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_111

    .line 1031
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-eqz v8, :cond_ed

    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_ed

    .line 1034
    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    const/16 v9, 0x3c

    if-ge v8, v9, :cond_d5

    .line 1035
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1039
    :cond_d5
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1042
    const/4 v8, 0x2

    iget v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v8, v9}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1045
    .end local v5           #intent:Landroid/content/Intent;
    :cond_ed
    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    const/16 v9, 0xa

    if-lt v8, v9, :cond_106

    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_106

    .line 1046
    const-string v8, "GpsLocationProvider"

    const-string v9, "exceeded MIN_FIX_COUNT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->hibernate()V

    .line 1049
    :cond_106
    return-void

    .line 993
    :catchall_107
    move-exception v9

    :try_start_108
    monitor-exit v8
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v9

    .line 1006
    :cond_10a
    :try_start_10a
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_8d

    .line 1029
    :catchall_111
    move-exception v9

    monitor-exit v8
    :try_end_113
    .catchall {:try_start_10a .. :try_end_113} :catchall_111

    throw v9

    .line 1011
    :cond_114
    :try_start_114
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeSpeed()V

    goto :goto_9a

    .line 1016
    :cond_11a
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeBearing()V

    goto :goto_a8

    .line 1021
    :cond_120
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeAccuracy()V

    goto :goto_b6

    .line 1026
    :catch_126
    move-exception v9

    move-object v3, v9

    .line 1027
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v9, "GpsLocationProvider"

    const-string v10, "RemoteException calling reportLocation"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catchall {:try_start_114 .. :try_end_12f} :catchall_111

    goto :goto_be
.end method

.method private reportNmea(IJ)V
    .registers 13
    .parameter "index"
    .parameter "timestamp"

    .prologue
    .line 1226
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1227
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1228
    .local v5, size:I
    if-lez v5, :cond_40

    .line 1230
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, p1, v7, v8}, Lcom/android/internal/location/GpsLocationProvider;->native_read_nmea(I[BI)I

    move-result v2

    .line 1231
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1233
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v5, :cond_40

    .line 1234
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_42

    .line 1236
    .local v3, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_27
    iget-object v7, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7, p2, p3, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2f

    .line 1233
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1237
    :catch_2f
    move-exception v7

    move-object v0, v7

    .line 1238
    .local v0, e:Landroid/os/RemoteException;
    :try_start_31
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1241
    add-int/lit8 v5, v5, -0x1

    goto :goto_2c

    .line 1245
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_40
    monitor-exit v6

    .line 1246
    return-void

    .line 1245
    .end local v5           #size:I
    :catchall_42
    move-exception v7

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_42

    throw v7
.end method

.method private reportStatus(I)V
    .registers 13
    .parameter "status"

    .prologue
    const/4 v10, 0x1

    const-string v7, "RemoteException in reportStatus"

    const-string v7, "GpsLocationProvider"

    .line 1057
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1058
    :try_start_8
    iget-boolean v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 1060
    .local v6, wasNavigating:Z
    packed-switch p1, :pswitch_data_d6

    .line 1078
    :goto_d
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-nez v8, :cond_15

    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v8, :cond_29

    :cond_15
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_29

    .line 1079
    const-string v8, "GpsLocationProvider"

    const-string v9, "Acquiring wakelock"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1083
    :cond_29
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eq v6, v8, :cond_b8

    .line 1084
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1085
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    if-ge v1, v4, :cond_7a

    .line 1086
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_51

    .line 1088
    .local v3, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_3e
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_63

    .line 1089
    iget-object v8, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_47} :catch_69

    .line 1085
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 1062
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_4a
    const/4 v8, 0x1

    :try_start_4b
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 1063
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_d

    .line 1126
    .end local v6           #wasNavigating:Z
    :catchall_51
    move-exception v8

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_51

    throw v8

    .line 1066
    .restart local v6       #wasNavigating:Z
    :pswitch_54
    const/4 v8, 0x0

    :try_start_55
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_d

    .line 1069
    :pswitch_58
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_d

    .line 1072
    :pswitch_5c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    .line 1073
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_51

    goto :goto_d

    .line 1091
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_63
    :try_start_63
    iget-object v8, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_47

    .line 1093
    :catch_69
    move-exception v8

    move-object v0, v8

    .line 1094
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6b
    const-string v8, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_51

    .line 1097
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 1103
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_7a
    :try_start_7a
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int v1, v8, v10

    :goto_82
    if-ltz v1, :cond_a5

    .line 1104
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1105
    .local v5, uid:I
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_96

    .line 1106
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 1103
    :goto_93
    add-int/lit8 v1, v1, -0x1

    goto :goto_82

    .line 1108
    :cond_96
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_9b} :catch_9c

    goto :goto_93

    .line 1111
    .end local v5           #uid:I
    :catch_9c
    move-exception v8

    move-object v0, v8

    .line 1112
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_9e
    const-string v8, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_a5
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    iget-boolean v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1122
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_b8
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-nez v8, :cond_d4

    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    if-nez v8, :cond_d4

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 1123
    const-string v8, "GpsLocationProvider"

    const-string v9, "Releasing wakelock"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1126
    :cond_d4
    monitor-exit v7
    :try_end_d5
    .catchall {:try_start_9e .. :try_end_d5} :catchall_51

    .line 1127
    return-void

    .line 1060
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_54
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 15

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 1136
    .local v1, svCount:I
    iget-object v11, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1137
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1138
    .local v13, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_19
    if-ge v10, v13, :cond_53

    .line 1139
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_90

    .line 1141
    .local v12, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_23
    iget-object v0, v12, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3f} :catch_42

    .line 1138
    :goto_3f
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 1144
    :catch_42
    move-exception v0

    move-object v9, v0

    .line 1145
    .local v9, e:Landroid/os/RemoteException;
    :try_start_44
    const-string v0, "GpsLocationProvider"

    const-string v2, "RemoteException in reportSvInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1148
    add-int/lit8 v13, v13, -0x1

    goto :goto_3f

    .line 1151
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v12           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_53
    monitor-exit v11
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_90

    .line 1168
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1170
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_8f

    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8f

    .end local v1           #svCount:I
    iget-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_8f

    .line 1173
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1175
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1176
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1178
    .end local v11           #intent:Landroid/content/Intent;
    :cond_8f
    return-void

    .line 1151
    .end local v10           #i:I
    .end local v13           #size:I
    .restart local v1       #svCount:I
    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v11
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v0
.end method

.method private startNavigating()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "GpsLocationProvider"

    .line 910
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-nez v1, :cond_2f

    .line 911
    const-string v1, "GpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput-boolean v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 914
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_30

    .line 916
    const/4 v0, 0x1

    .line 921
    .local v0, positionMode:I
    :goto_20
    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move-result v1

    if-nez v1, :cond_32

    .line 922
    iput-boolean v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 923
    const-string v1, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .end local v0           #positionMode:I
    :cond_2f
    :goto_2f
    return-void

    .line 918
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #positionMode:I
    goto :goto_20

    .line 928
    :cond_32
    invoke-direct {p0, v4, v3}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 929
    iput v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    .line 933
    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_2f

    .line 934
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2f
.end method

.method private stopNavigating()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 941
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1d

    .line 943
    iput-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 944
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_stop()Z

    .line 945
    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 946
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 947
    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 950
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 952
    :cond_1d
    return-void
.end method

.method private updateStatus(II)V
    .registers 5
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 739
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_19

    .line 740
    :cond_8
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    .line 741
    iput p2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    .line 742
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 745
    :cond_19
    return-void
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    const/4 v2, 0x6

    .line 1252
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1255
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 812
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 813
    return-void
.end method

.method public disable()V
    .registers 5

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 689
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 691
    .local v0, m:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 692
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    monitor-exit v1

    .line 694
    return-void

    .line 693
    .end local v0           #m:Landroid/os/Message;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 654
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 656
    .local v0, m:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 657
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    monitor-exit v1

    .line 659
    return-void

    .line 658
    .end local v0           #m:Landroid/os/Message;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public enableLocationTracking(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 753
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 755
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    :goto_13
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 756
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    monitor-exit v1

    .line 758
    return-void

    .line 755
    :cond_1c
    const/4 v2, 0x0

    goto :goto_13

    .line 757
    .end local v0           #m:Landroid/os/Message;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 634
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .parameter "extras"

    .prologue
    .line 732
    if-eqz p1, :cond_9

    .line 733
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    :cond_9
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 748
    iget-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public removeListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 835
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 836
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 837
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 22
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 1296
    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: entered"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notificationId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", niType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", notifyFlags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", defaultResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestorId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", requestorIdEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1310
    .local v7, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1311
    iput p2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1312
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_102

    const/4 v8, 0x1

    :goto_9a
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1313
    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_104

    const/4 v8, 0x1

    :goto_a1
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1314
    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_106

    const/4 v8, 0x1

    :goto_a8
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1315
    iput p4, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1316
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1317
    move-object/from16 v0, p6

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1318
    move-object/from16 v0, p7

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1319
    move/from16 v0, p8

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1320
    move/from16 v0, p9

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1324
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1326
    .local v2, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_ce

    const-string p10, ""

    .line 1327
    :cond_ce
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1330
    .local v5, extraProp:Ljava/util/Properties;
    :try_start_d3
    new-instance v8, Ljava/io/StringBufferInputStream;

    move-object v0, v8

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_de} :catch_108

    .line 1337
    :goto_de
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1
    .end local p2
    .local v6, i$:Ljava/util/Iterator;
    :goto_e6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_126

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1339
    .local v4, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e6

    .line 1312
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5           #extraProp:Ljava/util/Properties;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p1
    .restart local p2
    :cond_102
    const/4 v8, 0x0

    goto :goto_9a

    .line 1313
    :cond_104
    const/4 v8, 0x0

    goto :goto_a1

    .line 1314
    :cond_106
    const/4 v8, 0x0

    goto :goto_a8

    .line 1332
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v5       #extraProp:Ljava/util/Properties;
    :catch_108
    move-exception v8

    move-object v3, v8

    .line 1334
    .local v3, e:Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 1342
    .end local v3           #e:Ljava/io/IOException;
    .end local p1
    .end local p2
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_126
    iput-object v2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 1344
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1345
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 859
    const-string v0, "delete_aiding_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 860
    invoke-direct {p0, p2}, Lcom/android/internal/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v0

    .line 876
    :goto_f
    return v0

    .line 862
    :cond_10
    const-string v0, "force_time_injection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 863
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    .line 865
    goto :goto_f

    .line 867
    :cond_2a
    const-string v0, "force_xtra_injection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 868
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 869
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraDownloadRequest()V

    move v0, v2

    .line 870
    goto :goto_f

    :cond_3d
    move v0, v3

    .line 872
    goto :goto_f

    .line 875
    :cond_3f
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendExtraCommand: unknown command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 876
    goto :goto_f
.end method

.method public setMinTime(J)V
    .registers 7
    .parameter "minTime"

    .prologue
    .line 773
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_29

    .line 776
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 777
    .local v0, interval:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_27

    .line 778
    const/4 v0, 0x1

    .line 780
    :cond_27
    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    .line 782
    .end local v0           #interval:I
    :cond_29
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 604
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 614
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    const/4 v2, 0x7

    .line 557
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 6
    .parameter "state"
    .parameter "info"

    .prologue
    const/4 v2, 0x4

    .line 440
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 442
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 443
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    return-void
.end method
