.class public Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;
.super Ljava/lang/Object;
.source "WifiApDisableIfNotUsed.java"

# interfaces
.implements Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;


# static fields
.field private static final ACTION_STAT_AP_TIMEOUT:Ljava/lang/String; = "com.lge.wifi.impl.WifiApDisableIfNotUsed.action.STAT_AP_TIMEOUT"

.field private static final LOCAL_LOGD:Z = true

.field private static final MESSAGE_STATS_AP_TIMEOUT_CHECK:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "WifiApDisableIfNotUsed"

.field private static final TETHERING_TIME_VALUE:I = 0x493e0

.field private static sStopApWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private ApOffTime:I

.field private final BATTERY_PLUGGED_NONE:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private mNotification:Landroid/app/Notification;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftApIface:Ljava/lang/String;

.field private mStatApTimeoutIntent:Landroid/app/PendingIntent;

.field private mWiFiAPRxStat:J

.field private mWiFiAPRxStat_old:J

.field private mWiFiAPTxStat:J

.field private mWiFiAPTxStat_old:J

.field private final mWifiHandler:Landroid/os/Handler;

.field private mWifiService:Landroid/net/wifi/IWifiManager;

.field private remainTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiHandler"    # Landroid/os/Handler;
    .param p3, "softApIface"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiService:Landroid/net/wifi/IWifiManager;

    .line 56
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mIsReceiverRegistered:Z

    .line 63
    iput v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->BATTERY_PLUGGED_NONE:I

    .line 73
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J

    .line 74
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat:J

    .line 75
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat_old:J

    .line 76
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat_old:J

    .line 78
    iput v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 79
    iput v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 83
    new-instance v2, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;

    invoke-direct {v2, p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;-><init>(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;)V

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    .line 113
    iput-object p3, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mSoftApIface:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 120
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v2, "WifiApDisableIfNotUsed"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    const-string v2, "WifiApStopping"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->sStopApWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iput-object p2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    .line 130
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.wifi.impl.WifiApDisableIfNotUsed.action.STAT_AP_TIMEOUT"

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v1, "statApTimeoutIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mStatApTimeoutIntent:Landroid/app/PendingIntent;

    .line 145
    return-void
.end method

.method private declared-synchronized GetWiFiAPStats()V
    .locals 6

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiApDisableIfNotUsed"

    const-string v2, "GetWiFiAPStats start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat:J

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat_old:J

    .line 261
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat_old:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mSoftApIface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mSoftApIface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :goto_1
    :try_start_3
    const-string v1, "WifiApDisableIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWiFiAPStats : mWiFiAPRxStat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v1, "WifiApDisableIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWiFiAPStats : mWiFiAPTxStat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "WifiApDisableIfNotUsed"

    const-string v2, "Exception in getInterfaceRxCounter()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 274
    :catch_1
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "WifiApDisableIfNotUsed"

    const-string v2, "Exception in getInterfaceTxCounter()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized IsWiFiApUsed()Z
    .locals 11

    .prologue
    const v10, 0x493e0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 286
    monitor-enter p0

    :try_start_0
    const-string v5, "WifiApDisableIfNotUsed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsWiFiApUsed : old Tx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat_old:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old Rx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat_old:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v5, "WifiApDisableIfNotUsed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsWiFiApUsed : Tx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPTxStat:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Rx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/wifi/extension/IWifiSoftAP;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 296
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/wifi/extension/IWifiSoftAP;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 299
    .local v2, "i":I
    const-string v5, "WifiApDisableIfNotUsed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsWiFiApUsed : connected :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-lez v2, :cond_0

    .line 326
    .end local v2    # "i":I
    :goto_0
    monitor-exit p0

    return v3

    .restart local v2    # "i":I
    :cond_0
    move v3, v4

    .line 305
    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat_old:J

    iget-wide v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 310
    const-string v4, "WifiApDisableIfNotUsed"

    const-string v5, "IsWiFiApUsed : AP is used (old value is larger than now one)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 316
    :cond_2
    const-wide/16 v0, 0x1388

    .line 317
    .local v0, "WiFiApRxThreshold":J
    :try_start_2
    iget v5, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    if-ge v10, v5, :cond_3

    .line 319
    iget v5, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    const v6, 0x493e0

    div-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x1388

    int-to-long v0, v5

    .line 321
    :cond_3
    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat:J

    iget-wide v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWiFiAPRxStat_old:J

    sub-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-lez v5, :cond_4

    .line 322
    const-string v4, "WifiApDisableIfNotUsed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsWiFiApUsed : AP is used. threshold = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_4
    const-string v3, "WifiApDisableIfNotUsed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsWiFiApUsed : AP is not used. threshold = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    .line 326
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->updateTetherState(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mPluggedType:I

    return p1
.end method

.method private cancelAlarmStatApTimeout()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mStatApTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 338
    return-void
.end method

.method private registerBReceiver()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "com.lge.wifi.impl.WifiApDisableIfNotUsed.action.STAT_AP_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mIsReceiverRegistered:Z

    .line 237
    return-void
.end method

.method private setAlarmStatApTimeout(J)V
    .locals 5
    .param p1, "idleMillis"    # J

    .prologue
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 332
    .local v0, "triggerTime":J
    const-string v2, "WifiApDisableIfNotUsed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting ACTION_STAT_AP_TIMEOUT timer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mStatApTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 334
    return-void
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 341
    const-string v6, "tablet"

    const-string v7, "ro.build.characteristics"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 348
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 357
    .local v3, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 358
    .local v4, "r":Landroid/content/res/Resources;
    sget v6, Lcom/lge/internal/R$string;->wifi_tether_off_notification_title:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 359
    .local v5, "title":Ljava/lang/CharSequence;
    sget v6, Lcom/lge/internal/R$string;->wifi_tether_off_notification_message:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 361
    .local v1, "message":Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    .line 362
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 363
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 364
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 365
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 366
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    sget v7, Lcom/lge/internal/R$drawable;->stat_sys_hotspot_off:I

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 367
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 368
    const-string v6, "WifiApDisableIfNotUsed"

    const-string v7, "Notification : call notifyAsUser FLAG_AUTO_CANCEL & notify "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private unregisterBReceiver()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mIsReceiverRegistered:Z

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mIsReceiverRegistered:Z

    .line 244
    return-void
.end method

.method private updateTetherState(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mCm:Landroid/net/ConnectivityManager;

    if-nez v8, :cond_2

    .line 192
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mCm:Landroid/net/ConnectivityManager;

    .line 195
    :cond_2
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 198
    .local v3, "intf":Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 199
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 200
    const-string v8, "WifiApDisableIfNotUsed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTetherState ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->GetWiFiAPStats()V

    goto :goto_1

    .line 198
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v6    # "regex":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 213
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    if-eqz v8, :cond_0

    .line 214
    const-string v8, "WifiApDisableIfNotUsed"

    const-string v9, "[updateTetherState]mNotification is already show clear it"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 217
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 218
    const-string v8, "WifiApDisableIfNotUsed"

    const-string v9, "[updateTetherState]mNotification is canceled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    invoke-virtual {v5, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public beginWifiApStart()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_0

    .line 150
    const-string v1, "wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiService:Landroid/net/wifi/IWifiManager;

    .line 153
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->cancelAlarmStatApTimeout()V

    .line 154
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->registerBReceiver()V

    .line 156
    return-void
.end method

.method public beginWifiApStop()V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->unregisterBReceiver()V

    .line 175
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->cancelAlarmStatApTimeout()V

    .line 176
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    return-void
.end method

.method public endWifiApStart()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_time"

    const v2, 0x493e0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 167
    iget v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    iput v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 170
    const-wide/32 v0, 0xea60

    invoke-direct {p0, v0, v1}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->setAlarmStatApTimeout(J)V

    .line 171
    return-void
.end method

.method public endWifiApStop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 183
    iput v0, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 184
    return-void
.end method

.method public wifiApStatsHandler()V
    .locals 10

    .prologue
    const v5, 0xea60

    const-wide/32 v8, 0xea60

    const/4 v6, 0x0

    .line 374
    const-string v2, "WifiApDisableIfNotUsed"

    const-string v3, "MESSAGE_STATS_AP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "newTime":I
    sget-object v2, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 379
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tethering_time"

    const v4, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 382
    if-gez v1, :cond_0

    .line 383
    iput v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 384
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 399
    :goto_0
    const-string v2, "WifiApDisableIfNotUsed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApOffTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remain time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    if-nez v2, :cond_9

    .line 404
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->GetWiFiAPStats()V

    .line 406
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->IsWiFiApUsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 411
    invoke-direct {p0, v8, v9}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->setAlarmStatApTimeout(J)V

    .line 466
    :goto_1
    sget-object v2, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 468
    return-void

    .line 386
    :cond_0
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    if-gez v2, :cond_1

    .line 387
    iput v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 388
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    goto :goto_0

    .line 390
    :cond_1
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    if-ne v2, v1, :cond_2

    .line 391
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    goto :goto_0

    .line 393
    :cond_2
    iput v1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 394
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    goto :goto_0

    .line 413
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MPCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mPluggedType:I

    if-eqz v2, :cond_6

    .line 416
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 417
    invoke-direct {p0, v8, v9}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->setAlarmStatApTimeout(J)V

    .line 418
    const-string v2, "WifiApDisableIfNotUsed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB Connected : ApOffTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remain time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 423
    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 424
    const-string v2, "WifiApDisableIfNotUsed"

    const-string v3, "ATT & US -> call showNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->showNotification()V

    .line 429
    :cond_7
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->cancelAlarmStatApTimeout()V

    .line 430
    sget-object v2, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->sStopApWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 431
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiService:Landroid/net/wifi/IWifiManager;

    if-eqz v2, :cond_8

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_8
    :goto_2
    iput v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    .line 447
    iput v6, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    goto/16 :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiApDisableIfNotUsed"

    const-string v3, "error in setWifiEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 454
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->IsWiFiApUsed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 455
    iget v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    iput v2, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    .line 456
    const-string v2, "WifiApDisableIfNotUsed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device count : ApOffTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->ApOffTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remain time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->remainTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_a
    invoke-direct {p0, v8, v9}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->setAlarmStatApTimeout(J)V

    goto/16 :goto_1
.end method
