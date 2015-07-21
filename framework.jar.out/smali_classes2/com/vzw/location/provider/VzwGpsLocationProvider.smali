.class public Lcom/vzw/location/provider/VzwGpsLocationProvider;
.super Ljava/lang/Object;
.source "VzwGpsLocationProvider.java"

# interfaces
.implements Lcom/vzw/location/VzwLocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/provider/VzwGpsLocationProvider$1;,
        Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;,
        Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;,
        Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;
    }
.end annotation


# static fields
.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EXT_PROPERTIES_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "VzwGpsLocationProvider"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwGpsLocationProvider"

.field static sLogEngineStautsStrings:[Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

.field private mContext:Landroid/content/Context;

.field private mCredentials:Ljava/lang/String;

.field private mCriteria:Lcom/vzw/location/VzwCriteria;

.field private mEngineOn:Z

.field private mEngineStatus:I

.field private mGpsIconFix:Z

.field private mGpsServerHost:Ljava/lang/String;

.field private mGpsServerHostPort:I

.field private mHalFixMode:I

.field mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

.field private mHorizontalAccuracy:J

.field private mHybridMode:I

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLastFixTime:J

.field private mLocMgrSrv:Lcom/vzw/location/IVzwLocationManager;

.field private mLocSvrAddress:Ljava/net/InetSocketAddress;

.field private mLocation:Lcom/vzw/location/VzwLocation;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mMaximumResponseTime:J

.field private mNavigating:Z

.field private mNumSvInView:I

.field private mNumSvUsedInView:I

.field private mPdeAddress:Ljava/net/InetSocketAddress;

.field public mServerType:I

.field private mStatusUpdateTime:J

.field private mSvCount:I

.field private mSvInViewAzimuths:[F

.field private mSvInViewElevation:[F

.field private mSvInViewSnr:[F

.field private mSvsInView:[I

.field private mVerticalAccuracy:J

.field private mVzwGpsEnabled:Z

.field private final mVzwLocationProviderThread:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;

.field private mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

.field private mVzwProperties:Ljava/util/Properties;

.field private mVzwStatus:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 953
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GPS_STATUS_NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GPS_STATUS_SESSION_BEGIN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GPS_STATUS_SESSION_END"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GPS_STATUS_ENGINE_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPS_STATUS_ENGINE_OFF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->sLogEngineStautsStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lm"    # Lcom/vzw/location/IVzwLocationManager;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v4, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    .line 72
    iput v4, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalFixMode:I

    .line 82
    const/4 v2, 0x2

    iput v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    .line 108
    new-instance v2, Lcom/vzw/location/VzwLocation;

    const-string/jumbo v3, "vzw_lbs"

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    .line 109
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 116
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    .line 129
    new-instance v2, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-direct {v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .line 294
    iput-boolean v5, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsIconFix:Z

    .line 324
    iput v4, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mStatusUpdateTime:J

    .line 132
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "[VzwGpsLocationProvider] Start create VzwLGProvider."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->loadConfig()V

    .line 137
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocMgrSrv:Lcom/vzw/location/IVzwLocationManager;

    .line 139
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    iget-object v3, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwLocation;->setExtras(Landroid/os/Bundle;)V

    .line 141
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 142
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "VzwGpsLocationProvider"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 145
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "[VzwGpsLocationProvider] getInstance of VzwHalQCTProvider."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-static {}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->getInstance()Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    .line 148
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "[VzwGpsLocationProvider] Start create & start VzwGpsLocationProviderThread."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;

    invoke-direct {v2, p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;-><init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V

    iput-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThread:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;

    .line 150
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThread:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;

    invoke-virtual {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;->start()V

    .line 153
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I

    return p1
.end method

.method static synthetic access$102(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;)Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vzw/location/provider/VzwGpsLocationProvider;)J
    .locals 2
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/vzw/location/provider/VzwGpsLocationProvider;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvUsedInView:I

    return v0
.end method

.method static synthetic access$1302(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvUsedInView:I

    return p1
.end method

.method static synthetic access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I

    return v0
.end method

.method static synthetic access$1500(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvInView:I

    return v0
.end method

.method static synthetic access$1802(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvInView:I

    return p1
.end method

.method static synthetic access$1900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)[I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvsInView:[I

    return-object v0
.end method

.method static synthetic access$1902(Lcom/vzw/location/provider/VzwGpsLocationProvider;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # [I

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvsInView:[I

    return-object p1
.end method

.method static synthetic access$2000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewSnr:[F

    return-object v0
.end method

.method static synthetic access$2002(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # [F

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewSnr:[F

    return-object p1
.end method

.method static synthetic access$2102(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # [F

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewElevation:[F

    return-object p1
.end method

.method static synthetic access$2202(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # [F

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewAzimuths:[F

    return-object p1
.end method

.method static synthetic access$300(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$600(Lcom/vzw/location/provider/VzwGpsLocationProvider;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->handleEnableLocationTracking(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z

    return p1
.end method

.method static getStringForEngineStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 962
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->sLogEngineStautsStrings:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_STATUS_(STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->sLogEngineStautsStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[handleDisable]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwGpsEnabled:Z

    if-nez v0, :cond_1

    .line 661
    :goto_0
    return-void

    .line 656
    :cond_1
    iput-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwGpsEnabled:Z

    .line 657
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J

    .line 659
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->shutdown()V

    .line 660
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V

    goto :goto_0
.end method

.method private handleEnable()V
    .locals 3

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[handleEnable]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwGpsEnabled:Z

    if-eqz v0, :cond_2

    .line 629
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[handleEnable] VzwLGProvider already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1
    :goto_0
    return-void

    .line 633
    :cond_2
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[handleEnable] Enable provider with QCTHalProvider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    new-instance v1, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocMgrSrv:Lcom/vzw/location/IVzwLocationManager;

    invoke-direct {v1, p0, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;-><init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/IVzwLocationManager;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwGpsEnabled:Z

    goto :goto_0
.end method

.method private handleEnableLocationTracking(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "sessionId"    # I

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleEnableLocationTracking] Start. enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    if-eqz p1, :cond_1

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J

    .line 667
    invoke-direct {p0, p2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->startNavigating(I)V

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-direct {p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->stopNavigating()V

    goto :goto_0
.end method

.method private loadConfig()V
    .locals 15

    .prologue
    .line 162
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    iput-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwProperties:Ljava/util/Properties;

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 169
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/ext_gps.conf"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 171
    const-string v12, "VzwGpsLocationProvider"

    const-string v13, "[loadConfig] loaded from ext_gps.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 176
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_0
    :try_start_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v11, "stream":Ljava/io/FileInputStream;
    :try_start_3
    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwProperties:Ljava/util/Properties;

    invoke-virtual {v12, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 179
    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwProperties:Ljava/util/Properties;

    const-string v13, "SUPL_VER"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "mProtocolMode":Ljava/lang/String;
    const-string v12, "0x20000"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 182
    const-string v12, "VzwGpsLocationProvider"

    const-string v13, "mServerType is SUPL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v12, 0x1

    iput v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    .line 186
    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwProperties:Ljava/util/Properties;

    const-string v13, "SUPL_HOST"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "mDefaultSuplServerString":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 189
    iput-object v7, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHost:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwProperties:Ljava/util/Properties;

    const-string v13, "SUPL_PORT"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    .line 194
    .local v6, "mDefaultSuplPortString":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 196
    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHostPort:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 213
    .end local v6    # "mDefaultSuplPortString":Ljava/lang/String;
    .end local v7    # "mDefaultSuplServerString":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v11, :cond_6

    .line 215
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v10, v11

    .line 221
    .end local v8    # "mProtocolMode":Ljava/lang/String;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-void

    .line 173
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v12, "/etc/gps.conf"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 174
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :try_start_7
    const-string v12, "VzwGpsLocationProvider"

    const-string v13, "[loadConfig] loaded from gps.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v9

    .line 207
    .local v9, "npe":Ljava/lang/NullPointerException;
    :goto_3
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 213
    if-eqz v10, :cond_2

    .line 215
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 216
    :catch_1
    move-exception v5

    .line 217
    .local v5, "ioe2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 197
    .end local v5    # "ioe2":Ljava/io/IOException;
    .end local v9    # "npe":Ljava/lang/NullPointerException;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "mDefaultSuplPortString":Ljava/lang/String;
    .restart local v7    # "mDefaultSuplServerString":Ljava/lang/String;
    .restart local v8    # "mProtocolMode":Ljava/lang/String;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v12, "VzwGpsLocationProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unable to parse SUPL_PORT: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "mDefaultSuplPortString":Ljava/lang/String;
    .end local v7    # "mDefaultSuplServerString":Ljava/lang/String;
    .end local v8    # "mProtocolMode":Ljava/lang/String;
    :catch_3
    move-exception v9

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 203
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "mProtocolMode":Ljava/lang/String;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :cond_4
    const-string v12, "VzwGpsLocationProvider"

    const-string v13, "mServerType is PDE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v12, 0x2

    iput v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    .line 208
    .end local v8    # "mProtocolMode":Ljava/lang/String;
    :catch_4
    move-exception v3

    move-object v10, v11

    .line 209
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_4
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 213
    if-eqz v10, :cond_2

    .line 215
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_2

    .line 216
    :catch_5
    move-exception v5

    .line 217
    .restart local v5    # "ioe2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 216
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v5    # "ioe2":Ljava/io/IOException;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "mProtocolMode":Ljava/lang/String;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    .line 217
    .restart local v5    # "ioe2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .line 218
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 210
    .end local v5    # "ioe2":Ljava/io/IOException;
    .end local v8    # "mProtocolMode":Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 211
    .local v4, "ioe1":Ljava/io/IOException;
    :goto_5
    :try_start_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 213
    if-eqz v10, :cond_2

    .line 215
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_2

    .line 216
    :catch_8
    move-exception v5

    .line 217
    .restart local v5    # "ioe2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v4    # "ioe1":Ljava/io/IOException;
    .end local v5    # "ioe2":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v10, :cond_5

    .line 215
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 218
    :cond_5
    :goto_7
    throw v12

    .line 216
    :catch_9
    move-exception v5

    .line 217
    .restart local v5    # "ioe2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 213
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "ioe2":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_6

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 210
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_a
    move-exception v4

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v4

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 208
    :catch_c
    move-exception v3

    goto :goto_4

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_d
    move-exception v3

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_4

    .line 206
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_e
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "mProtocolMode":Ljava/lang/String;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :cond_6
    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private requestIconFix(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsIconFix:Z

    .line 300
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[requestIconFix] SendBroadcast IconFix="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 307
    return-void
.end method

.method private requestIconRemove()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    iput-boolean v3, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsIconFix:Z

    .line 313
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "[requestIconRemove] SendBroadcast IconRemove"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 320
    return-void
.end method

.method private setProviderWithCriteriaInformation(Lcom/vzw/location/VzwCriteria;Z)Z
    .locals 8
    .param p1, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p2, "isFinalFix"    # Z

    .prologue
    const-wide/16 v6, 0xff

    const/4 v4, 0x1

    .line 834
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "[setProviderWithCriteriaInformation] Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    .line 838
    iget v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 839
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalFixMode:I

    .line 843
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVerticalAccuracy:J

    .line 844
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHorizontalAccuracy:J

    .line 845
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mMaximumResponseTime:J

    .line 846
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getHybridMode()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHybridMode:I

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalFixMode:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_1
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHorizontalAccuracy:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setPreferredHorizontalAccuracy(I)V

    .line 855
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVerticalAccuracy:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setPreferredVerticalAccuracy(I)V

    .line 858
    :try_start_1
    iget-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mMaximumResponseTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 859
    const-wide/16 v2, 0xff

    iput-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mMaximumResponseTime:J

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget-wide v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mMaximumResponseTime:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setMaximumResponseTime(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 866
    :goto_2
    if-nez p2, :cond_3

    .line 867
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "[setProviderWithCriteriaInformation] Not SingleShot. Set Hints (nextFixArrive)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-virtual {v1, v4}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHintNextFixArriveInSec(I)V

    .line 871
    :cond_3
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 872
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "[setProviderWithCriteriaInformation] Not SingleShot. Set Hints (NextFixHorizontalAccuracy, NextFixMode)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_4
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixHorizontalAccuracy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHintNextFixHorizontalAccuracy(I)V

    .line 874
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalFixMode:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHintNextFixMode(I)V

    .line 876
    :cond_5
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    iget v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHybridMode:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHybridMode(I)V

    .line 878
    return v4

    .line 841
    :cond_6
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalFixMode:I

    goto/16 :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "mHalcriteria.setFixMode() fail - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 862
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 863
    .restart local v0    # "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "mHalcriteria.setMaximumResponseTime() fail - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setVzwConfigInit(Lcom/vzw/location/VzwGpsConfigInit;II)Z
    .locals 8
    .param p1, "init"    # Lcom/vzw/location/VzwGpsConfigInit;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 761
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 762
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] setServerInformation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v0, "VzwGpsLocationProvider"

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->log()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] ERROR in updating server infomration with VzwGpsConfigInit - provider is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCredentials:Ljava/lang/String;

    .line 773
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVzwConfigInit] Set Credentials. Credentials="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCredentials:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCredentials:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->setCredentials(Ljava/lang/String;)V

    .line 776
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 777
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Server Type = VzwHalGpsLocationProviderImp.AGPS_SERVER_ADDR_TYPE_PDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 779
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Fix Mode is Standalone. ==> Set PDE address as null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_4
    iput-object v7, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mPdeAddress:Ljava/net/InetSocketAddress;

    .line 801
    :goto_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[set_engine_server] Calling setPdeAddress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mPdeAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->setPdeAddress(Ljava/net/InetSocketAddress;)V

    .line 829
    :cond_6
    :goto_1
    return v5

    .line 782
    :cond_7
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 783
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set User\'s MpcHost."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_8
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHost:Ljava/lang/String;

    .line 791
    :goto_2
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 792
    :cond_9
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set Default MpcHostport"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_a
    const/16 v0, 0x22b8

    iput v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHostPort:I

    .line 799
    :goto_3
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHostPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mPdeAddress:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 787
    :cond_b
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set Default MpcHost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_c
    const-string v0, "15.178.174.131"

    iput-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHost:Ljava/lang/String;

    goto :goto_2

    .line 796
    :cond_d
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set User\'s MpcHostPort."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHostPort:I

    goto :goto_3

    .line 803
    :cond_e
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    if-ne v0, v5, :cond_6

    .line 804
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v0

    if-ne v0, v6, :cond_10

    .line 805
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Fix Mode is Standalone. ==> Set SUPL address as null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_f
    iput-object v7, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocSvrAddress:Ljava/net/InetSocketAddress;

    goto :goto_1

    .line 809
    :cond_10
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Server Type = VzwHalGpsLocationProviderImp.AGPS_SERVER_ADDR_TYPE_SUPL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_11
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 811
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set User\'s LocSvrHost."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_12
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHost:Ljava/lang/String;

    .line 818
    :cond_13
    :goto_4
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 819
    :cond_14
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set Default LocSvrHostport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_15
    :goto_5
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHostPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocSvrAddress:Ljava/net/InetSocketAddress;

    .line 826
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocSvrAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->setLocSrvAddress(Ljava/net/InetSocketAddress;)V

    goto/16 :goto_1

    .line 815
    :cond_16
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set Default LocSvrHost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 822
    :cond_17
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[setVzwConfigInit] Set User\'s LocSvrHostPort."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_18
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsServerHostPort:I

    goto :goto_5
.end method

.method private startNavigating(I)V
    .locals 6
    .param p1, "uId"    # I

    .prologue
    const/4 v5, 0x1

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "engine_result":Z
    move v1, p1

    .line 677
    .local v1, "sessionId":I
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startNavigating] VzwHalQCTProvider.start will be called. sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    iget-object v3, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mHalcriteria:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-virtual {v2, v3, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z

    move-result v0

    .line 679
    if-nez v0, :cond_2

    .line 680
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "native_start failed in startNavigating()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 684
    :cond_2
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startNavigating] IconFix = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsIconFix:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_3
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsIconFix:Z

    if-nez v2, :cond_4

    .line 687
    invoke-direct {p0, v5}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->requestIconFix(Z)V

    .line 691
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v5, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V

    goto :goto_0
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 696
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[stopNavigating] VzwHalQCTProvider.stop() will be called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J

    .line 699
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->VzwHalQCTProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->stop()Z

    .line 702
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mGpsIconFix:Z

    if-eqz v0, :cond_1

    .line 703
    invoke-direct {p0, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->requestIconFix(Z)V

    .line 704
    invoke-direct {p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->requestIconRemove()V

    .line 707
    :cond_1
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "[stopNavigating] updateStatus with TEMPORARILY_UNAVAILABLE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V

    .line 710
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 882
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 883
    :cond_0
    iput p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I

    .line 884
    iput p2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I

    .line 885
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 886
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mStatusUpdateTime:J

    .line 888
    :cond_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 641
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 643
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->removeMessages(I)V

    .line 644
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 645
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 646
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    monitor-exit v2

    .line 648
    return-void

    .line 647
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 615
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "[enable] enabling provider --- sending message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 619
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->removeMessages(I)V

    .line 620
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 621
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 622
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 623
    monitor-exit v2

    .line 624
    return-void

    .line 623
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableLocationTracking(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "sessionId"    # I

    .prologue
    .line 714
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[enableLocationTracking] SendMessage to handler. enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 716
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 717
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->removeMessages(I)V

    .line 718
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 719
    .local v0, "m":Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 720
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 721
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    monitor-exit v2

    .line 723
    return-void

    .line 719
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 722
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    const-string/jumbo v0, "vzw_lbs"

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 942
    if-eqz p1, :cond_0

    .line 943
    const-string v0, "satellites"

    iget v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    :cond_0
    iget v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 950
    iget-wide v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwGpsEnabled:Z

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x1

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 729
    .local v4, "identity":J
    const/4 v7, 0x0

    .line 734
    .local v7, "result":Z
    :try_start_0
    const-string/jumbo v9, "set_up_server_info"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 736
    iget-boolean v9, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "VzwGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sendExtraCommand] set_up_server_info equals(command). handling extraCommand: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    const-string v9, "configInit"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwGpsConfigInit;

    .line 739
    .local v0, "conf":Lcom/vzw/location/VzwGpsConfigInit;
    const-string v9, "pid"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 740
    .local v6, "pid":I
    const-string/jumbo v9, "uid"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 742
    .local v8, "uid":I
    invoke-direct {p0, v0, v6, v8}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->setVzwConfigInit(Lcom/vzw/location/VzwGpsConfigInit;II)Z

    move-result v7

    .line 745
    .end local v0    # "conf":Lcom/vzw/location/VzwGpsConfigInit;
    .end local v6    # "pid":I
    .end local v8    # "uid":I
    :cond_1
    const-string/jumbo v9, "set_provider_with_criteria"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 746
    iget-boolean v9, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "VzwGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sendExtraCommand] set_provider_with_criteria equals(command). handling extraCommand: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_2
    const-string v9, "criteria"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwCriteria;

    .line 749
    .local v1, "criteria":Lcom/vzw/location/VzwCriteria;
    const-string v9, "is_finalFix"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v3, :cond_4

    .line 750
    .local v3, "isFinalFix":Z
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->setProviderWithCriteriaInformation(Lcom/vzw/location/VzwCriteria;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 756
    .end local v1    # "criteria":Lcom/vzw/location/VzwCriteria;
    .end local v3    # "isFinalFix":Z
    :cond_3
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    return v7

    .line 749
    .restart local v1    # "criteria":Lcom/vzw/location/VzwCriteria;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 752
    .end local v1    # "criteria":Lcom/vzw/location/VzwCriteria;
    :catch_0
    move-exception v2

    .line 753
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x1

    return v0
.end method
