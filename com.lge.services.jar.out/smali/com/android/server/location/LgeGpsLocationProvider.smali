.class public Lcom/android/server/location/LgeGpsLocationProvider;
.super Lcom/android/server/location/GpsLocationProvider;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
    }
.end annotation


# static fields
.field private static final ACTION_VERIZON_GPS_FIELD_DATA:Ljava/lang/String; = "com.lge.LgeGpsLocationProvider.ACTION_VERIZON_GPS_FIELD_DATA"

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final CMCC_AGPS_SET_ALL:I = 0x2

.field private static final CMCC_AGPS_SET_HOMENETWORK:I = 0x1

.field private static final CMCC_AGPS_SET_OFF:I = 0x0

.field private static final DEBUG:Z = true

.field private static final GNSS_LOCK:I = 0x1

.field private static final GNSS_LOCK_NOT_SET:I = 0x2

.field private static final GNSS_UNLOCK:I = 0x0

.field public static final GPS_DISABLED:I = 0x1

.field public static final GPS_ENABLED:I = 0x0

.field private static final GPS_ENGINE_STATUS:Ljava/lang/String; = "com.lge.location.GPS_ENGINE_STATUS"

.field private static final GPS_ENGINE_STATUS_CHANGE:Ljava/lang/String; = "com.lge.location.GPS_ENGINE_STATUS_CHANGE"

.field public static final GPS_FORCED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_XTRA_DATA_DOWNLOAD:Ljava/lang/String; = "com.lge.location.GPS_XTRA_DATA_DOWNLOAD"

.field private static final INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String; = "com.lge.location.xtra_setting_changed"

.field private static final KEY_VERIZON_GPS_FIELD_DATA:Ljava/lang/String; = "com.lge.LgeGpsLocationProvider.KEY_VERIZON_GPS_FIELD_DATA"

.field private static final MESSAGE_ASSISTED_GPS_ENABLE:I = 0x2

.field private static final MESSAGE_GPS_PROVIDER_ENABLE:I = 0x1

.field private static final MESSAGE_REQUEST_CERT:I = 0x3

.field private static final MESSAGE_VERIZON_FIELD_DATA:I = 0x4

.field private static NTCODE:Ljava/lang/String; = null

.field private static NTCODEMCC:Ljava/lang/String; = null

.field private static NTCODEMCCMNC:Ljava/lang/String; = null

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final STATE_CERT_DONTTRY:I = 0x3

.field private static final STATE_CERT_IDLE:I = 0x2

.field private static final STATE_CERT_INJECTING:I = 0x1

.field private static final STATE_CERT_PENDING:I = 0x0

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LgeGpsLocationProvider"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LgeGpsLocationProvider"

.field private static integratedSW:Ljava/lang/String;

.field private static mLgeSuplServerHost:Ljava/lang/String;

.field private static mSettingGpsEnable:Z

.field private static mVendorName:Ljava/lang/String;

.field private static sChipVendor:Ljava/lang/String;

.field private static sIsEngineON:Z

.field private static sIsOperatorSUPLMode:Z

.field private static sTempPositionMode:I

.field private static sTempSuplServerHost:Ljava/lang/String;

.field private static sTempSuplServerPort:I

.field private static sTempSuplType:I

.field private static sTempSuplVer:I

.field private static sTempTlsMode:I

.field private static targetCountry:Ljava/lang/String;

.field private static targetDefaultCountry:Ljava/lang/String;

.field private static targetOperator:Ljava/lang/String;

.field private static targetRegion:Ljava/lang/String;


# instance fields
.field private isGpsRecorveryMode:Z

.field private mCMCCAGPS_SessionID_num:I

.field private mGPSSettingObserver:Landroid/database/ContentObserver;

.field private mGpevtMode:Z

.field mGpsConst:Lcom/android/server/location/LgeGpsConstants;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectCertPending:I

.field private final mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mLgeContext:Landroid/content/Context;

.field private mLgeHandler:Landroid/os/Handler;

.field private mLgeSuplServerPort:I

.field private mLgeSuplType:I

.field private mLgeSuplVer:I

.field private mLgeTlsMode:I

.field mMapGpsState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigating:Z

.field private final mThread:Ljava/lang/Thread;

.field mToastText:Ljava/lang/CharSequence;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtraDownloadDate:J

.field private oldGnssLockMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    .line 110
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    .line 111
    const-string v0, "ro.build.target_region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->targetRegion:Ljava/lang/String;

    .line 112
    const-string v0, "ro.build.default_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->targetDefaultCountry:Ljava/lang/String;

    .line 113
    const-string v0, "ro.build.sbp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    .line 115
    const-string v0, "persist.sys.ntcode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->NTCODE:Ljava/lang/String;

    .line 116
    const-string v0, "persist.sys.mcc-list"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->NTCODEMCC:Ljava/lang/String;

    .line 117
    const-string v0, "persist.sys.mccmnc-list"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->NTCODEMCCMNC:Ljava/lang/String;

    .line 120
    const-string v0, "ro.lge.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->sChipVendor:Ljava/lang/String;

    .line 155
    const-string v0, ""

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 189
    sput-boolean v1, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    .line 192
    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempPositionMode:I

    .line 196
    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplType:I

    .line 198
    sput-boolean v1, Lcom/android/server/location/LgeGpsLocationProvider;->sIsOperatorSUPLMode:Z

    .line 202
    sput-boolean v1, Lcom/android/server/location/LgeGpsLocationProvider;->sIsEngineON:Z

    .line 1852
    const-string v0, "lge_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1853
    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_class_init_native()V

    .line 1854
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 142
    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    .line 150
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 173
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 187
    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    .line 205
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 220
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    .line 221
    new-instance v5, Lcom/android/server/location/LgeGpsConstants;

    invoke-direct {v5}, Lcom/android/server/location/LgeGpsConstants;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    .line 225
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpevtMode:Z

    .line 228
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mMapGpsState:Ljava/util/HashMap;

    .line 236
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    .line 244
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 255
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$1;

    invoke-direct {v5, p0}, Lcom/android/server/location/LgeGpsLocationProvider$1;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1552
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider$3;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingObserver:Landroid/database/ContentObserver;

    .line 318
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LgeGpsLocationProvider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Properties Information : OPERATOR-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " COUNTRY-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " REGION-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->targetRegion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DEFAULT_COUNTRY-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->targetDefaultCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SBP-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NTCODE-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->NTCODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NTCODEMCC-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->NTCODEMCC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NTCODEMCCMNC-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->NTCODEMCCMNC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v5, "VZW"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VZW_TABLET"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CDMA_TRF"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SPR"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ATT"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "AIO"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    :cond_0
    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectNtpTimePending:I

    .line 333
    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mDownloadXtraDataPending:I

    .line 344
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    .line 345
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_init()Z

    .line 346
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->getConfig()V

    .line 348
    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    sput v5, Lcom/android/server/location/LgeGpsLocationProvider;->sTempPositionMode:I

    .line 349
    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    sput-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplServerHost:Ljava/lang/String;

    .line 350
    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    sput v5, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplServerPort:I

    .line 351
    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    sput v5, Lcom/android/server/location/LgeGpsLocationProvider;->sTempTlsMode:I

    .line 352
    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    sput v5, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplType:I

    .line 353
    sput-boolean v8, Lcom/android/server/location/LgeGpsLocationProvider;->sIsOperatorSUPLMode:Z

    .line 357
    new-instance v3, Lcom/android/server/location/LgeGpsIndicator;

    invoke-direct {v3, p1}, Lcom/android/server/location/LgeGpsIndicator;-><init>(Landroid/content/Context;)V

    .line 359
    .local v3, "mGpsIndicator":Lcom/android/server/location/LgeGpsIndicator;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-static {p1}, Lcom/android/server/location/LgeGpsConstants;->setContext(Landroid/content/Context;)V

    .line 364
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 365
    .local v4, "powerManager":Landroid/os/PowerManager;
    const-string v5, "LgeGpsLocationProvider"

    invoke-virtual {v4, v10, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 366
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 368
    const-string v5, "SKT"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    const-string v5, "com.skt.intent.action.AGPS_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v5, "com.skt.intent.action.AGPS_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v5, "com.skt.intent.action.GPS_TURN_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v5, "com.skt.intent.action.GPS_TURN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    :cond_2
    const-string v5, "LGU"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 376
    const-string v5, "com.android.lge.action_at_timeout_uplus"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->readLguXtraDownloadDate()V

    .line 380
    :cond_3
    const-string v5, "ATT"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ATT_MVNO"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 381
    :cond_4
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    :cond_5
    const-string v5, "VDF"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SFR"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "1"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 386
    :cond_6
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    :cond_7
    const-string v5, "DCM"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 391
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v5, "com.android.settings.gpsnotification.CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    .line 396
    .local v1, "helper":Lcom/lge/loader/LGContextHelper;
    if-eqz v1, :cond_b

    .line 397
    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v5, "volumevibrator"

    invoke-virtual {v1, v5}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iput-object v5, v6, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    .line 402
    :goto_0
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 407
    .end local v1    # "helper":Lcom/lge/loader/LGContextHelper;
    :cond_8
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->native_init()Z

    move-result v5

    if-nez v5, :cond_9

    .line 411
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "native_init() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    new-instance v5, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;

    invoke-direct {v5, p0}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 416
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 424
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 437
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    .line 438
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "GPS_LOCK set to gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_a
    return-void

    .line 399
    .restart local v1    # "helper":Lcom/lge/loader/LGContextHelper;
    :cond_b
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LGContextHelper is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    .end local v1    # "helper":Lcom/lge/loader/LGContextHelper;
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private CMCC_AGPS_Change_XTRA()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1653
    const/4 v0, -0x1

    .line 1655
    .local v0, "agps_cmcc_set":I
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled_for_cmcc"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1657
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC_AGPS_SettingControl ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    if-eqz v0, :cond_0

    .line 1660
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1661
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0
.end method

.method private CMCC_AGPS_SettingControl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1625
    const/4 v0, -0x1

    .line 1627
    .local v0, "agps_cmcc_set":I
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled_for_cmcc"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1629
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC_AGPS_SettingControl ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    if-nez v0, :cond_1

    .line 1631
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    if-ne v0, v4, :cond_3

    .line 1633
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1634
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1636
    :cond_2
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v1, :cond_0

    .line 1637
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1640
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1641
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v1, :cond_0

    .line 1642
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1645
    :cond_4
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v1, :cond_0

    .line 1646
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0
.end method

.method private CTC_AGPS_SettingControl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1672
    const/4 v0, 0x0

    .line 1674
    .local v0, "agps_ctc_set":I
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "agps_ctc"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1675
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTC_AGPS_SettingControl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    if-nez v0, :cond_0

    .line 1678
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1680
    :cond_0
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPositionMode for CTC_AGPS_SettingControl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void
.end method

.method private LM_getGpsState()I
    .locals 4

    .prologue
    .line 1085
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps_device_managerment_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1087
    .local v0, "gpsState":I
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM_getGpsState return GPS State as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return v0
.end method

.method private LM_setGpsState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1107
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LM_setGpsState sets GPS State to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    packed-switch p1, :pswitch_data_0

    .line 1146
    :goto_0
    return-void

    .line 1117
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1122
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1134
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1135
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1138
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1141
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private LgeSendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 958
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 959
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 960
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 104
    sput-boolean p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/LgeGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->gpsRilRecovery()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider;->handleSUPLConfigUpdateWithSimStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/location/LgeGpsLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/location/LgeGpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LgeGpsLocationProvider;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->handleCertRequest()V

    return-void
.end method

.method private broadcastLguXtraSettings()V
    .locals 4

    .prologue
    .line 1763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.location.xtra_setting_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "xtra_download_date"

    iget-wide v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1765
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1766
    return-void
.end method

.method private enableGpevt(Z)Z
    .locals 4
    .param p1, "gpevt_enable"    # Z

    .prologue
    .line 1514
    const/4 v1, 0x0

    .line 1516
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1517
    const-string v0, "lge.gps.extracmd.raw.gpevt.enable"

    .line 1521
    .local v0, "mGpevtEnable":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v1

    .line 1523
    return v1

    .line 1519
    .end local v0    # "mGpevtEnable":Ljava/lang/String;
    :cond_0
    const-string v0, "lge.gps.extracmd.raw.gpevt.disable"

    .restart local v0    # "mGpevtEnable":Ljava/lang/String;
    goto :goto_0
.end method

.method private getConfig()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "VendorName"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeSuplServerHost"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeSuplServerPort"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 741
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeTlsMode"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 743
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "PositionMode"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 744
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v0, "LgeSuplType"

    invoke-static {v0}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 746
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setConfig()V

    .line 747
    return-void
.end method

.method private getListenerPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 573
    .local v1, "packagesName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 574
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private gpsRilRecovery()V
    .locals 4

    .prologue
    .line 980
    const-string v1, "1"

    const-string v2, "ril.reset_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 982
    .local v0, "isRilReset":Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRilReset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    if-eqz v0, :cond_0

    .line 985
    const-string v1, "20"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 987
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-nez v1, :cond_1

    .line 988
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Set isGpsRecorveryMode flag is TRUE ......"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 992
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-eqz v1, :cond_2

    .line 993
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Network is available after CP Reset, and then GPS Recorvery Mode Start ...... "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 995
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->enable()V

    .line 998
    :cond_2
    return-void
.end method

.method private handleCertRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1729
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "handleCertRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1734
    new-instance v0, Lcom/android/server/location/LgeGpsCert;

    invoke-direct {v0}, Lcom/android/server/location/LgeGpsCert;-><init>()V

    .line 1735
    .local v0, "cert":Lcom/android/server/location/LgeGpsCert;
    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/LgeGpsCert;->getCertFromAndroid(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1738
    .local v1, "certData":[B
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1739
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1742
    :cond_0
    if-nez v1, :cond_1

    .line 1743
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "cert not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    .line 1756
    :goto_0
    return-void

    .line 1749
    :cond_1
    const/16 v2, 0x9

    array-length v3, v1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_inject_cert(I[BI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1750
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    goto :goto_0

    .line 1752
    :cond_2
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "failed to inject cert into CP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    goto :goto_0
.end method

.method private handleGpsXTRAEnable(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 1001
    if-ne p1, v2, :cond_0

    .line 1002
    const-string v0, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 1011
    :goto_0
    return v2

    .line 1006
    :cond_0
    const-string v0, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    goto :goto_0
.end method

.method private handleSUPLConfigUpdateWithSimStatus(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1457
    const-string v1, "ss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1458
    .local v15, "stateExtra":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1460
    .local v14, "numeric":Ljava/lang/String;
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAgpsConfigUpdate : state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v1, "LOADED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1464
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1466
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    const-string v1, "00101"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00102"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->Numeric:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v1, v14}, Lcom/android/server/location/LgeGpsConstants;->setSUPLConfigParamsFromXml(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iget-object v1, v1, Lcom/android/server/location/LgeGpsConstants;->contentValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_5

    .line 1475
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplVer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v2, Lcom/android/server/location/LgeGpsConstants;->SuplVersion:I

    if-eq v1, v2, :cond_2

    .line 1476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v1, Lcom/android/server/location/LgeGpsConstants;->SuplVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLVersion(Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v2, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v6, Lcom/android/server/location/LgeGpsConstants;->SuplVersion:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_agps_config(IIIIILjava/lang/String;IIIIII)V

    .line 1479
    :cond_2
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->SuplHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->SuplHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v2, Lcom/android/server/location/LgeGpsConstants;->SuplPort:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer(Ljava/lang/String;I)V

    .line 1482
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v2, Lcom/android/server/location/LgeGpsConstants;->PositionMethod:I

    if-eq v1, v2, :cond_4

    .line 1483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v1, Lcom/android/server/location/LgeGpsConstants;->PositionMethod:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1485
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v2, Lcom/android/server/location/LgeGpsConstants;->SuplTLS:I

    if-eq v1, v2, :cond_0

    .line 1486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v1, Lcom/android/server/location/LgeGpsConstants;->SuplTLS:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLTlsMode(I)V

    goto/16 :goto_0

    .line 1489
    :cond_5
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "mGpsConst.contentValues has NO matched params(NULL)!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1492
    :cond_6
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "ICC records Load is not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isCertInjectSupported()Z
    .locals 9

    .prologue
    .line 1711
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "supl.google.com"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "supl.vodafone.com"

    aput-object v7, v0, v6

    .line 1716
    .local v0, "CERT_INJECT_SUPPORT_SERVER":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1717
    .local v5, "supportCertInject":Z
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 1718
    .local v4, "server":Ljava/lang/String;
    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1719
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "support cert injection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v5, 0x1

    .line 1725
    .end local v4    # "server":Ljava/lang/String;
    :cond_0
    return v5

    .line 1717
    .restart local v4    # "server":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 778
    const/4 v4, 0x0

    .line 780
    .local v4, "result":Z
    const-string v6, "activateGPS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "deactivateGPS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 781
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 782
    .local v2, "mGpsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v6, "activateGPS"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v6, "deactivateGPS"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 786
    .local v5, "state":Ljava/lang/Integer;
    if-nez v5, :cond_2

    move v6, v7

    :goto_0
    const/4 v8, 0x0

    invoke-direct {p0, v7, v6, v8}, Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V

    .line 859
    .end local v2    # "mGpsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "state":Ljava/lang/Integer;
    :cond_1
    :goto_1
    return v7

    .line 786
    .restart local v2    # "mGpsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "state":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 789
    .end local v2    # "mGpsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "state":Ljava/lang/Integer;
    :cond_3
    const-string v6, "activateAGPS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "deactivateAGPS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 792
    const-string v6, "setNativeServer"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 793
    const-string v6, "LgeGpsLocationProvider"

    const-string v8, "KT_setNativeServer()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v6, "supl.google.com"

    const/16 v8, 0x1c6c

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer(Ljava/lang/String;I)V

    .line 804
    const/4 v4, 0x1

    .line 807
    :cond_4
    if-eqz p2, :cond_7

    .line 808
    const-string v6, "setOllehServer"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 810
    const-string v6, "host"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "KTSuplServerHost":Ljava/lang/String;
    const-string v6, "port"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 813
    .local v1, "KTSuplServerPort":I
    const-string v6, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KT_setOllehServer() -SUPL_HOST: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SUPL_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-eqz v0, :cond_6

    if-lez v1, :cond_6

    .line 818
    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 819
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    sput v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempPositionMode:I

    .line 820
    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    sput-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplServerHost:Ljava/lang/String;

    .line 821
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    sput v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplServerPort:I

    .line 822
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    sput v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempTlsMode:I

    .line 823
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    sput v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempTlsMode:I

    .line 824
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    sput v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplType:I

    .line 825
    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplVer:I

    sput v6, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplVer:I

    .line 826
    const-string v6, "LgeGpsLocationProvider"

    const-string v8, "[KT] Current SUPL setting is saved."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_5
    sput-boolean v7, Lcom/android/server/location/LgeGpsLocationProvider;->sIsOperatorSUPLMode:Z

    .line 832
    iput v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 833
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetTlsMode()V

    .line 835
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer(Ljava/lang/String;I)V

    .line 837
    :cond_6
    const/4 v4, 0x1

    .end local v0    # "KTSuplServerHost":Ljava/lang/String;
    .end local v1    # "KTSuplServerPort":I
    :cond_7
    :goto_2
    move v7, v4

    .line 859
    goto/16 :goto_1

    .line 840
    :cond_8
    const-string v6, "setMode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 842
    const-string v6, "mode"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 844
    .local v3, "mode":I
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KT_setMode() mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 846
    const/4 v4, 0x1

    .line 847
    goto :goto_2

    .line 848
    .end local v3    # "mode":I
    :cond_9
    const-string v6, "getMode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 850
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KT_getMode() mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v6, "mode"

    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 852
    const/4 v4, 0x1

    goto :goto_2

    .line 856
    :cond_a
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ktHandleExtraCmd: unknown command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 653
    const/4 v10, 0x1

    .line 655
    .local v10, "ret":Z
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v0, "lge.gps.extracmd.fmw.setgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    const-string v0, "supl_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 659
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-eqz v0, :cond_4

    .line 661
    const-string v0, "pos_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 663
    const-string v0, "supl_host"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 664
    .local v11, "supl_host":Ljava/lang/String;
    const-string v0, "supl_port"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 665
    .local v12, "supl_port":I
    if-eqz v11, :cond_0

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-eq v12, v0, :cond_2

    .line 668
    :cond_1
    sput-object v11, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 669
    iput v12, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 671
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 673
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed supl addr, after host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer()V

    .line 677
    :cond_2
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    if-eq v0, v1, :cond_3

    .line 679
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed tls mode, before mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 682
    const-string v0, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "LgeTlsMode":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v10

    .line 685
    .end local v8    # "LgeTlsMode":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LgeGpsConstants;->lgeSaveGnssConfig(IILjava/lang/String;II)V

    .line 733
    .end local v11    # "supl_host":Ljava/lang/String;
    .end local v12    # "supl_port":I
    :goto_0
    return v10

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->lgeDefaultGnssConfig()V

    .line 690
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->getConfig()V

    goto :goto_0

    .line 693
    :cond_5
    const-string v0, "lge.gps.extracmd.fmw.getgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    const-string v0, "supl_type"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    const-string v0, "supl_host"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "supl_port"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    const-string v0, "tls_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    const-string v0, "pos_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    const-string v0, "gpevt_mode"

    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpevtMode:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 703
    :cond_6
    const-string v0, "lge.gps.extracmd.fmw.dns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 705
    const-string v0, "isDnsEnabled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 707
    .local v7, "DNS_enable":Z
    if-ne v7, v4, :cond_7

    .line 708
    const-string v0, "lge.gps.extracmd.raw.dns.enable"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 714
    .local v6, "DNSMode":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v10

    .line 715
    goto :goto_0

    .line 711
    .end local v6    # "DNSMode":Ljava/lang/String;
    :cond_7
    const-string v0, "lge.gps.extracmd.raw.dns.disable"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "DNSMode":Ljava/lang/String;
    goto :goto_1

    .line 717
    .end local v6    # "DNSMode":Ljava/lang/String;
    .end local v7    # "DNS_enable":Z
    :cond_8
    const-string v0, "lge.gps.extracmd.fmw.gpevt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 718
    const-string v0, "GpevtMode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 719
    .local v9, "gpevt_enable":Z
    invoke-direct {p0, v9}, Lcom/android/server/location/LgeGpsLocationProvider;->enableGpevt(Z)Z

    move-result v10

    .line 720
    goto :goto_0

    .line 724
    .end local v9    # "gpevt_enable":Z
    :cond_9
    const-string v0, "lge.gps.extracmd.fmw.getgnss_enginestatus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 725
    const-string v0, "Engine_Status"

    sget-boolean v1, Lcom/android/server/location/LgeGpsLocationProvider;->sIsEngineON:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 730
    :cond_a
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static native lge_class_init_native()V
.end method

.method private lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 864
    .local v0, "result":Z
    const-string v1, "delete_aiding_data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 866
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->saveLguXtraDownloadDate()V

    .line 867
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0

    .line 870
    :cond_0
    const-string v1, "request_xtra_download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    const-string v1, "force_xtra_injection"

    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 872
    const/4 v0, 0x1

    goto :goto_0

    .line 874
    :cond_1
    const-string v1, "call_xtra_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastLguXtraSettings()V

    .line 876
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    :cond_2
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lguHandleExtraCmd: unknown command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native native_lge_gnss_agps_config(IIIIILjava/lang/String;IIIIII)V
.end method

.method private native native_lge_gnss_command([BI)Z
.end method

.method private native native_lge_init()Z
.end method

.method private native native_lge_inject_cert(I[BI)Z
.end method

.method private native native_lge_vzw_fieldtest_flag(I)Z
.end method

.method private readLguXtraDownloadDate()V
    .locals 9

    .prologue
    .line 1820
    const/4 v4, 0x0

    .line 1822
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/lge_gps_xtra.data"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1824
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 1825
    .local v3, "properties":Ljava/util/Properties;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1828
    const-string v6, "LGE_XTRA_DOWNLOAD_DATE"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1829
    .local v0, "date":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1831
    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v5

    .line 1840
    .end local v0    # "date":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 1842
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1848
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 1832
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1833
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse LGE_XTRA_DOWNLOAD_DATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1843
    .end local v0    # "date":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :catch_1
    move-exception v1

    .line 1844
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "Closing FileInputStream for lge_gps_xtra.data is fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1837
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 1838
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, " LG GNSS Ext lge_gps_xtra.data File does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1840
    if-eqz v4, :cond_1

    .line 1842
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 1843
    :catch_3
    move-exception v1

    .line 1844
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "Closing FileInputStream for lge_gps_xtra.data is fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1840
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    .line 1842
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1845
    :cond_3
    :goto_4
    throw v6

    .line 1843
    :catch_4
    move-exception v1

    .line 1844
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "LgeGpsLocationProvider"

    const-string v8, "Closing FileInputStream for lge_gps_xtra.data is fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1840
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1837
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private requestCert()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1695
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "requestCert called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isCertInjectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support cert injection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectCertPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1704
    :cond_1
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "ignore cert request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->LgeSendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method private saveLguXtraDownloadDate()V
    .locals 10

    .prologue
    .line 1796
    const/4 v3, 0x0

    .line 1798
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/lge_gps_xtra.data"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "%s=%d\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "LGE_XTRA_DOWNLOAD_DATE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1805
    if-eqz v4, :cond_2

    .line 1807
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 1813
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 1808
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "config":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 1809
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "lge_gps_xtra.data File save Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1810
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 1802
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 1803
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "lge_gps_xtra.data File save Fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1805
    if-eqz v3, :cond_0

    .line 1807
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1808
    :catch_2
    move-exception v1

    .line 1809
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "lge_gps_xtra.data File save Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1805
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 1807
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1810
    :cond_1
    :goto_3
    throw v5

    .line 1808
    :catch_3
    move-exception v1

    .line 1809
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "lge_gps_xtra.data File save Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1805
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 1802
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "config":Ljava/lang/String;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :cond_2
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method private setConfig()V
    .locals 14

    .prologue
    .line 1410
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1411
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerPort:I

    .line 1412
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig ( host? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , port? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1418
    .local v13, "objContentResolver":Landroid/content/ContentResolver;
    const-string v0, "assisted_gps_supl_host"

    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1419
    const-string v0, "assisted_gps_supl_port"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerPort:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1420
    const-string v0, "assisted_gps_position_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1423
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v0, Lcom/android/server/location/LgeGpsConstants;->SuplVersion:I

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplVer:I

    .line 1428
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig() mVendorName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /mLgeSuplVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplVer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /mLgeSuplServerHost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /mLgeSuplServerPort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /mLgeTlsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /mLgeSuplType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /mPositionMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iget-object v0, v0, Lcom/android/server/location/LgeGpsConstants;->contentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 1437
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "mGpsConst.getParams() has AgpsConfParams params."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v2, Lcom/android/server/location/LgeGpsConstants;->IntermediatePos:I

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v3, Lcom/android/server/location/LgeGpsConstants;->Accuracythres:I

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v4, Lcom/android/server/location/LgeGpsConstants;->NmeaProvider:I

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplVer:I

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v9, Lcom/android/server/location/LgeGpsConstants;->LppProfile:I

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v11, Lcom/android/server/location/LgeGpsConstants;->AglonassPosProtocolSelect:I

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    sget v12, Lcom/android/server/location/LgeGpsConstants;->Capabilites:I

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_agps_config(IIIIILjava/lang/String;IIIIII)V

    .line 1454
    :goto_0
    return-void

    .line 1452
    :cond_0
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "mGpsConst.getParams() has NO AgpsConfParams params(NULL)!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSUPLServer()V
    .locals 3

    .prologue
    .line 460
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 463
    :cond_0
    return-void
.end method

.method private setSUPLServer(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 466
    sput-object p1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 467
    iput p2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iput p2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSuplServerPort:I

    .line 468
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer()V

    .line 469
    return-void
.end method

.method private setSUPLTlsMode(I)V
    .locals 5
    .param p1, "supltls"    # I

    .prologue
    .line 1497
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "LgeTlsMode":Ljava/lang/String;
    iput p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1499
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 1500
    return-void
.end method

.method private setSUPLVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "suplver"    # Ljava/lang/String;

    .prologue
    .line 1504
    if-eqz p1, :cond_0

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lge.gps.extracmd.raw.supl.version#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "mSuplversion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 1508
    .end local v0    # "mSuplversion":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, "result":Z
    if-eqz p2, :cond_1

    .line 753
    const-string v3, "opType"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "str_opType":Ljava/lang/String;
    const-string v3, "cmdType"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "str_cmdType":Ljava/lang/String;
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.skt.intent.action.AGPS :cmdType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", opType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 759
    const-string v3, "msBased"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 764
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 774
    .end local v1    # "str_cmdType":Ljava/lang/String;
    .end local v2    # "str_opType":Ljava/lang/String;
    :cond_1
    :goto_1
    return v0

    .line 761
    .restart local v1    # "str_cmdType":Ljava/lang/String;
    .restart local v2    # "str_opType":Ljava/lang/String;
    :cond_2
    const-string v3, "msAssisted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 765
    :cond_3
    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 766
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 767
    const/4 v0, 0x1

    goto :goto_1

    .line 769
    :cond_4
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid sktHandleExtraCmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sprHandleCarrierAppExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1016
    const/4 v0, 0x1

    .line 1018
    .local v0, "ret":Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPR Framework Carrier App Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v1, "spr.gps.extracmd.fmw.dm_set_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_set_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v1, "mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_setGpsState(I)V

    .line 1034
    :goto_0
    return v0

    .line 1024
    :cond_0
    const-string v1, "spr.gps.extracmd.fmw.dm_get_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_get_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v1, "mode"

    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_getGpsState()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1030
    :cond_1
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SPR Framework Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private vzwFielddatacallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "FieldData"    # Ljava/lang/String;

    .prologue
    .line 1686
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vzwFielddatacallback ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1689
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1690
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1691
    return-void
.end method


# virtual methods
.method protected broadcastLguXtraDownload([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 1772
    const-string v2, "LGU"

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1774
    if-eqz p1, :cond_1

    .line 1775
    const-string v1, "end"

    .line 1777
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 1779
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->saveLguXtraDownloadDate()V

    .line 1783
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.location.GPS_XTRA_DATA_DOWNLOAD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1784
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "xtra_download"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1785
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1787
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xtra_download : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    return-void

    .line 1781
    :cond_1
    const-string v1, "fail"

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method protected checkWapSuplInit(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1879
    const-string v1, "mtk"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->sChipVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1880
    invoke-virtual {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider;->isWapPushLegal(Landroid/content/Intent;)Z

    move-result v0

    .line 1881
    .local v0, "ret":Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[agps] WARNING: checkWapSuplInit ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    if-nez v0, :cond_0

    .line 1887
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 1886
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public cmccHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1574
    const-string v6, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmccHandleExtraCmd= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-string v6, "lge.gps.extracmd.cmcc.get_agpssessionid"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1576
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC get AGPSsessionID : extras = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v5, "agps_session_id"

    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1620
    :goto_0
    return v4

    .line 1583
    :cond_0
    const-string v6, "cmcc_dm_set_agps_addr"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1585
    const-string v6, "slp"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1586
    .local v3, "slp":Ljava/lang/String;
    const-string v6, "addr"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "addr":Ljava/lang/String;
    const-string v6, "port"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1588
    .local v2, "port":I
    if-eqz v0, :cond_2

    if-ltz v2, :cond_2

    .line 1589
    if-eqz v3, :cond_1

    .line 1590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1591
    goto :goto_0

    .line 1594
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1595
    .local v1, "param":Landroid/os/Bundle;
    const-string v5, "supl_type"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1596
    const-string v4, "supl_host"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-string v4, "supl_port"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1598
    const-string v4, "pos_mode"

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1599
    const-string v4, "tls_mode"

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1600
    const-string v4, "lge.gps.extracmd.fmw.setgnss_settinginfo"

    invoke-direct {p0, v4, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    goto :goto_0

    .line 1605
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "param":Landroid/os/Bundle;
    .end local v2    # "port":I
    .end local v3    # "slp":Ljava/lang/String;
    :cond_2
    const-string v6, "cmcc_dm_get_agps_addr"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1607
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1608
    .restart local v1    # "param":Landroid/os/Bundle;
    const-string v6, "lge.gps.extracmd.fmw.getgnss_settinginfo"

    invoke-direct {p0, v6, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1610
    const-string v5, "supl_host"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    .restart local v0    # "addr":Ljava/lang/String;
    const-string v5, "supl_port"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1612
    .restart local v2    # "port":I
    const-string v5, "slp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v5, "addr"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v5, "port"

    invoke-virtual {p2, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "port":I
    :cond_3
    move v4, v5

    .line 1617
    goto/16 :goto_0

    .end local v1    # "param":Landroid/os/Bundle;
    :cond_4
    move v4, v5

    .line 1620
    goto/16 :goto_0
.end method

.method public dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 886
    const/4 v0, 0x0

    .line 888
    .local v0, "result":Z
    const-string v3, "com.lge.extraCommand.AGPS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agpsTestSetting() : extras = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-eqz p2, :cond_1

    .line 893
    const-string v3, "supl_address"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "str_supl_address":Ljava/lang/String;
    const-string v3, "supl_Port"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 896
    .local v2, "supl_port":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 897
    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 898
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 900
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer()V

    .line 901
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set supl address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agpsTestSetting() : mSuplServerHost = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Host Port ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x1

    .line 908
    .end local v0    # "result":Z
    .end local v1    # "str_supl_address":Ljava/lang/String;
    .end local v2    # "supl_port":I
    :cond_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1858
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1861
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, " integratedSW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    const-string v1, " targetOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    const-string v1, " targetCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    const-string v1, " mLgeSuplServerHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    const-string v1, " mLgeSuplServerPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    const-string v1, " mLgeTlsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    const-string v1, " mLgeSuplType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    const-string v1, " mVendorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    const-string v1, " mPositionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1874
    return-void
.end method

.method public handleEnable()V
    .locals 5

    .prologue
    .line 447
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    .line 449
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer()V

    .line 451
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "LgeTlsMode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 455
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEnable :native_set_agps_server ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TlsMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "LgeTlsMode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected handleInjectNtpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1330
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_0

    .line 1393
    :goto_0
    return-void

    .line 1334
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 1336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectNtpTimePending:I

    goto :goto_0

    .line 1339
    :cond_1
    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInjectNtpTimePending:I

    .line 1343
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1348
    :cond_2
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/LgeGpsLocationProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/LgeGpsLocationProvider$2;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected isWapPushLegal(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1891
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 1892
    .local v2, "type":Ljava/lang/String;
    const-string v5, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1893
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] ERR: content type is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], but we expect [application/vnd.omaloc-supl-init]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return v4

    .line 1897
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "wspHeaders"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1898
    .local v3, "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 1899
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "[agps] ERR: wspHeader is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1913
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1902
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v5, "X-Wap-Application-Id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1903
    .local v0, "appId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1904
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "[agps] ERR: appId(X-Wap-Application-Id) is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1907
    :cond_2
    const-string v5, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1908
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] ERR: appId is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], but we expect [x-oma-application:ulp.ua]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1912
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public lgeSetSlpFromSim(II)V
    .locals 7
    .param p1, "mcc_i"    # I
    .param p2, "mnc_i"    # I

    .prologue
    const/16 v6, 0x1c6b

    const/16 v5, 0xa

    const/16 v4, 0xd6

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1202
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-ne v0, v2, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1204
    :cond_0
    if-ne p1, v2, :cond_1

    if-eq p2, v2, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p2, v3, :cond_3

    .line 1206
    :cond_2
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "Spirent SIM inserted, ignore Slp setting from SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_3
    const-string v0, "VDF"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1211
    const/16 v0, 0x106

    if-ne p1, v0, :cond_4

    if-eq p2, v3, :cond_e

    :cond_4
    if-ne p1, v4, :cond_5

    if-eq p2, v2, :cond_e

    :cond_5
    if-ne p1, v4, :cond_6

    const/4 v0, 0x6

    if-eq p2, v0, :cond_e

    :cond_6
    const/16 v0, 0xde

    if-ne p1, v0, :cond_7

    if-eq p2, v5, :cond_e

    :cond_7
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p2, v0, :cond_e

    :cond_8
    const/16 v0, 0x10c

    if-ne p1, v0, :cond_9

    if-eq p2, v2, :cond_e

    :cond_9
    const/16 v0, 0xe2

    if-ne p1, v0, :cond_a

    if-eq p2, v2, :cond_e

    :cond_a
    const/16 v0, 0xca

    if-ne p1, v0, :cond_b

    const/4 v0, 0x5

    if-eq p2, v0, :cond_e

    :cond_b
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_e

    :cond_c
    const/16 v0, 0x114

    if-ne p1, v0, :cond_d

    if-eq p2, v3, :cond_e

    :cond_d
    const/16 v0, 0xea

    if-ne p1, v0, :cond_14

    const/16 v0, 0xf

    if-ne p2, v0, :cond_14

    .line 1223
    :cond_e
    const-string v0, "supl.vodafone.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1224
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1225
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1228
    const/16 v0, 0x106

    if-ne p1, v0, :cond_f

    if-eq p2, v3, :cond_12

    :cond_f
    if-ne p1, v4, :cond_10

    if-eq p2, v2, :cond_12

    :cond_10
    if-ne p1, v4, :cond_11

    const/4 v0, 0x6

    if-eq p2, v0, :cond_12

    :cond_11
    const/16 v0, 0xde

    if-ne p1, v0, :cond_13

    if-ne p2, v5, :cond_13

    .line 1229
    :cond_12
    const-string v0, "0x20000"

    invoke-virtual {p0, v0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSuplVer(Ljava/lang/String;)V

    .line 1230
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, " SUPL Ver= 0x20000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_13
    :goto_1
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer()V

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetTlsMode()V

    .line 1253
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPositionMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SUPL_HOST ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SUPL_PORT ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TLS_MODE ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",VendorName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1235
    :cond_14
    const-string v0, "supl.google.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1236
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1237
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1240
    :cond_15
    const-string v0, "SFR"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1241
    const/16 v0, 0xd0

    if-ne p1, v0, :cond_13

    if-ne p2, v5, :cond_13

    .line 1243
    const-string v0, "supl.google.com"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1244
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1245
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1
.end method

.method public lgeSetSlpFromSimGlobal(II)V
    .locals 11
    .param p1, "mcc_i"    # I
    .param p2, "mnc_i"    # I

    .prologue
    const/4 v10, 0x1

    .line 1258
    const-string v8, "LgeGpsLocationProvider"

    const-string v9, "lgeSetSlpFromSimGlobal called!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-ne v8, v10, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1262
    :cond_0
    if-ne p1, v10, :cond_1

    if-eq p2, v10, :cond_2

    :cond_1
    if-ne p1, v10, :cond_3

    const/4 v8, 0x2

    if-ne p2, v8, :cond_3

    .line 1264
    :cond_2
    const-string v8, "LgeGpsLocationProvider"

    const-string v9, "Spirent SIM inserted, ignore Slp setting from SIM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1268
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1269
    .local v5, "mcc":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1270
    .local v6, "mnc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1271
    .local v4, "mLgeSuplVersion":Ljava/lang/String;
    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    .line 1273
    .local v2, "Vendor_Name":Ljava/lang/String;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1274
    .local v0, "LgeGlobalProperties":Ljava/util/Properties;
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "/etc/gps.conf"

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1275
    const-string v8, "VDF"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "VDA"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "SFR"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1276
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_HOST_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1277
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_PORT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1278
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGE_TLS_MODE_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1279
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_VER_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1297
    :cond_5
    :goto_1
    sget-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-eq v8, v10, :cond_6

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-nez v8, :cond_7

    .line 1298
    :cond_6
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "LgeSuplServerHost"

    invoke-static {v8}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1299
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "LgeSuplServerPort"

    invoke-static {v8}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1300
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "LgeTlsMode"

    invoke-static {v8}, Lcom/android/server/location/LgeGpsConstants;->loadIntConfig(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1305
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer()V

    .line 1314
    const/16 v7, 0x32

    .line 1316
    .local v7, "sleepTime":I
    int-to-long v8, v7

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    .end local v7    # "sleepTime":I
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetTlsMode()V

    .line 1323
    invoke-virtual {p0, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSuplVer(Ljava/lang/String;)V

    .line 1324
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gps.conf - mPositionMode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SUPL_HOST ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SUPL_PORT ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", TLS_MODE ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",VendorName ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",SUPL Ver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1280
    :cond_9
    const-string v8, "UNF"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1281
    const-string v8, "SUPL_HOST_UNF"

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1282
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "SUPL_PORT_UNF"

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1283
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "LGE_TLS_MODE_UNF"

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1284
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v8, "LGE_GPS_POSITION_MODE_UNF"

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1285
    const-string v8, "SUPL_VER_UNF"

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1286
    :cond_a
    const-string v8, "OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "AME"

    sget-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_HOST_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "LgeSuplServerHost":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1290
    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1291
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_PORT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1292
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGE_TLS_MODE_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_VER_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1317
    .end local v1    # "LgeSuplServerHost":Ljava/lang/String;
    .restart local v7    # "sleepTime":I
    :catch_0
    move-exception v3

    .line 1318
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v8, "LgeGpsLocationProvider"

    const-string v9, "InterruptedException occurred in providing sleep between native_set_agps_server() and lgeSetTlsMode()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public lgeSetSuplVer(Ljava/lang/String;)V
    .locals 5
    .param p1, "suplver"    # Ljava/lang/String;

    .prologue
    .line 1530
    const-string v2, "0x20000"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1531
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old Version suplver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :try_start_0
    const-string v2, "lge.gps.extracmd.raw.set_supl_version"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "lge.gps.extracmd.raw.set_supl_version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lge.gps.extracmd.raw.set_supl_version#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1542
    .local v1, "mSuplversion":Ljava/lang/String;
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Version mSuplversion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1549
    .end local v1    # "mSuplversion":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to parse SUPL_VER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1545
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "mSuplversion":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1546
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to parse SUPL_VER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public lgeSetTlsMode()V
    .locals 6

    .prologue
    .line 1397
    const-string v2, "lge.gps.extracmd.raw.tls.mode#%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "LgeTlsMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1400
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1401
    :catch_0
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to parse LGE_TLS_MODE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lgeUpdateSimState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1162
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, "stateExtra":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1166
    .local v3, "numeric":Ljava/lang/String;
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lgeUpdateSimState : state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1172
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1173
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getMccCode numeric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    .line 1177
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1178
    .local v1, "mcc_i":I
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1179
    .local v2, "mnc_i":I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- getMccCode mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const-string v5, "1"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->integratedSW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "GLOBAL"

    sget-object v6, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1182
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSlpFromSimGlobal(II)V

    .line 1198
    .end local v1    # "mcc_i":I
    .end local v2    # "mnc_i":I
    :goto_0
    return-void

    .line 1184
    .restart local v1    # "mcc_i":I
    .restart local v2    # "mnc_i":I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSlpFromSim(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1188
    .end local v1    # "mcc_i":I
    .end local v2    # "mnc_i":I
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception parsing mcc/mnc: ex-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1193
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "- getMccCode numeric is null or length is less than 4\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1197
    :cond_2
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "ICC records Load is not complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reportStatus(I)V
    .locals 8
    .param p1, "status"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 524
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->reportStatus(I)V

    .line 527
    packed-switch p1, :pswitch_data_0

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 531
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.location.GPS_ENGINE_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.lge.location.GPS_ENGINE_STATUS"

    if-ne p1, v6, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    const-string v4, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportStatus, [LGE] GPS_ENGINE_STATUS_CHANGE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p1, v6, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-ne p1, v7, :cond_2

    const-string v1, "KT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    sget-boolean v1, Lcom/android/server/location/LgeGpsLocationProvider;->sIsOperatorSUPLMode:Z

    if-ne v1, v2, :cond_1

    .line 540
    sget v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempPositionMode:I

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 541
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplServerHost:Ljava/lang/String;

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 542
    sget v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplServerPort:I

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 543
    sget v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempTlsMode:I

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 544
    sget v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplType:I

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 545
    sget v1, Lcom/android/server/location/LgeGpsLocationProvider;->sTempSuplVer:I

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplVer:I

    .line 546
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetTlsMode()V

    .line 547
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-direct {p0, v1, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->setSUPLServer(Ljava/lang/String;I)V

    .line 548
    const-string v1, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SKT/KT] Return to SUPL Setting for non-operator.  host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", port : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_1
    sput-boolean v3, Lcom/android/server/location/LgeGpsLocationProvider;->sIsOperatorSUPLMode:Z

    .line 557
    :cond_2
    if-ne p1, v6, :cond_5

    .line 558
    sput-boolean v2, Lcom/android/server/location/LgeGpsLocationProvider;->sIsEngineON:Z

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 532
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 534
    goto :goto_2

    .line 559
    :cond_5
    if-ne p1, v7, :cond_0

    .line 560
    sput-boolean v3, Lcom/android/server/location/LgeGpsLocationProvider;->sIsEngineON:Z

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 600
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 602
    .local v2, "result":Z
    const-string v3, "lge.gps.extracmd.fmw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 644
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    if-nez v2, :cond_1

    .line 647
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 649
    .end local v2    # "result":Z
    :cond_1
    return v2

    .line 606
    .restart local v2    # "result":Z
    :cond_2
    const-string v3, "lge.gps.extracmd.raw.vzwfield"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    const-string v3, "enable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 608
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_vzw_fieldtest_flag(I)Z

    move-result v2

    goto :goto_0

    .line 610
    :cond_3
    const-string v3, "disable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_vzw_fieldtest_flag(I)Z

    move-result v2

    goto :goto_0

    .line 615
    :cond_4
    const-string v3, "lge.gps.extracmd.raw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 617
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v2

    goto :goto_0

    .line 619
    :cond_5
    const-string v3, "SKT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 620
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 622
    :cond_6
    const-string v3, "KT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 625
    :cond_7
    const-string v3, "LGU"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 628
    :cond_8
    const-string v3, "DCM"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 631
    :cond_9
    const-string v3, "SPR"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sprHandleCarrierAppExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0

    .line 634
    :cond_a
    const-string v3, "UNF"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->targetOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "MX"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->targetCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->unfMxHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0

    .line 638
    :cond_b
    const-string v3, "CMCC"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "CMO"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    :cond_c
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand : CMCC ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->cmccHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 473
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocationTracking - mPositionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_6

    .line 477
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v3, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 479
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->soundVibControl()V

    .line 517
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 518
    return-void

    .line 482
    :cond_1
    const-string v0, "CMCC"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CMO"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v3, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 484
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-eqz v0, :cond_3

    .line 485
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMCC setRequest - local session id :  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mCMCCAGPS_SessionID_num:I

    .line 488
    :cond_3
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "CMCC setRequest:setting Control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->CMCC_AGPS_SettingControl()V

    goto :goto_0

    .line 493
    :cond_4
    const-string v0, "CTC"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CTO"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v3, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 495
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->CTC_AGPS_SettingControl()V

    goto :goto_0

    .line 501
    :cond_6
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 502
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v4, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 503
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsConstants;->soundVibControl()V

    goto :goto_0

    .line 506
    :cond_7
    const-string v0, "CMCC"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "CMO"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 507
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v4, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    goto/16 :goto_0

    .line 511
    :cond_9
    const-string v0, "CTC"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CTO"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    iput-boolean v4, v0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 513
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto/16 :goto_0
.end method

.method public unfMxHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1039
    const/4 v6, 0x1

    .line 1040
    .local v6, "result":Z
    const-string v0, "ms_based_mode"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1043
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mPositionMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v6, 0x1

    .line 1064
    :goto_0
    if-ne v6, v4, :cond_0

    .line 1066
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    const/16 v3, 0x3e8

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    const/4 v6, 0x0

    .line 1072
    :cond_0
    return v6

    .line 1046
    :cond_1
    const-string v0, "ms_assisted_mode"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1048
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1049
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mPositionMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v6, 0x1

    goto :goto_0

    .line 1052
    :cond_2
    const-string v0, "ms_standalone_mode"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1054
    iput v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 1055
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mPositionMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v6, 0x1

    goto :goto_0

    .line 1060
    :cond_3
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "Error!!! no position mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v6, 0x0

    goto :goto_0
.end method
