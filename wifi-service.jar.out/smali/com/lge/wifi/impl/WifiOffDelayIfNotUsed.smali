.class public Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;
.super Ljava/lang/Object;
.source "WifiOffDelayIfNotUsed.java"

# interfaces
.implements Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$2;
    }
.end annotation


# static fields
.field private static final DEFAULT_IDLE_MILLIS:J = 0x7d0L

.field private static final MESSAGE_CHECK_WIFISTATS_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiOffDelayIfNotUsed"

.field private static sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final BATTERY_PLUGGED_NONE:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHasWifiLocks:Z

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPluggedType:I

.field private mPowerSaveActivated:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOff:Z

.field private mShouldWifiStopped:Z

.field private mWiFiRxStat:J

.field private mWiFiRxStat_old:J

.field private mWiFiTxStat:J

.field private mWiFiTxStat_old:J

.field private final mWifiHandler:Landroid/os/Handler;

.field private mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIsReceiverRegistered:Z

    .line 45
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 49
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIdleIntent:Landroid/app/PendingIntent;

    .line 52
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mHasWifiLocks:Z

    .line 53
    iput v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->BATTERY_PLUGGED_NONE:I

    .line 67
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    .line 68
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J

    .line 69
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat_old:J

    .line 70
    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat_old:J

    .line 77
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mShouldWifiStopped:Z

    .line 79
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPowerSaveActivated:Z

    .line 81
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 83
    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, "WIFI"

    const-string v3, ""

    invoke-direct {v1, v5, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 410
    new-instance v1, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;

    invoke-direct {v1, p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;-><init>(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 96
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mInterfaceName:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 103
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "WifiOffDelayIfNotUsed"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;

    .line 108
    iput-object p3, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    .line 109
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 111
    return-void
.end method

.method private declared-synchronized GetWiFiStats()V
    .locals 6

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "GetWiFiStats start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mInterfaceName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 220
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "InterfaceName is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat_old:J

    .line 222
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat_old:J

    .line 223
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    .line 224
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat_old:J

    .line 229
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat_old:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :goto_2
    :try_start_4
    const-string v1, "WifiOffDelayIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWiFiStats : mWiFiRxStat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v1, "WifiOffDelayIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWiFiStats : mWiFiTxStat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "Exception in getInterfaceRxCounter()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "Exception in getInterfaceTxCounter()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized IsWiFiUsed()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 257
    const-string v2, "WifiOffDelayIfNotUsed"

    const-string v3, "IsWiFiUsed : DetailedState.DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_0
    monitor-exit p0

    return v1

    .line 261
    :cond_0
    :try_start_1
    const-string v3, "WifiOffDelayIfNotUsed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsWiFiUsed : old Tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat_old:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old Rx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat_old:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v3, "WifiOffDelayIfNotUsed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsWiFiUsed : Tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiTxStat:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Rx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 266
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat_old:J

    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_1

    .line 268
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v3, "IsWiFiUsed : Keep wake lock (old value is larger than now one)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 269
    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat:J

    iget-wide v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWiFiRxStat_old:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 275
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v3, "IsWiFiUsed : Keep wake lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_2
    const-string v2, "WifiOffDelayIfNotUsed"

    const-string v3, "IsWiFiUsed : release wake lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 254
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->releaseWiFiStopWakeLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I

    return v0
.end method

.method static synthetic access$602(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I

    return p1
.end method

.method static synthetic access$700(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Landroid/net/wifi/SupplicantState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method private declared-synchronized getPowerSaveActivated()Z
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPowerSaveActivated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isConnecting(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 287
    sget-object v0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$2;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_0
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private releaseWiFiStopWakeLock()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    sget-object v1, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 210
    const-string v0, "WifiOffDelayIfNotUsed"

    const-string v2, "releaseWiFiStopWakeLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wifiStatsHandlerOnPsActivated()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 309
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "OnPowerSaveActivated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->GetWiFiStats()V

    .line 313
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->IsWiFiUsed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->isP2PConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "OnPowerSaveActivated : disable WiFi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->unregister()V

    .line 320
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setPowerSaveActivated(Z)V

    .line 321
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 322
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 331
    .end local v0    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "OnPowerSaveActivated : There are wifi data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public getShouldWifiStopped()Z
    .locals 3

    .prologue
    .line 187
    const-string v0, "WifiOffDelayIfNotUsed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShouldWifiStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mShouldWifiStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mShouldWifiStopped:Z

    return v0
.end method

.method public init(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "idleIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIdleIntent:Landroid/app/PendingIntent;

    .line 120
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setPowerSaveActivated(Z)V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIsReceiverRegistered:Z

    .line 139
    return-void
.end method

.method public setHasWifiLocks(Z)V
    .locals 3
    .param p1, "hasLocks"    # Z

    .prologue
    .line 171
    const-string v0, "WifiOffDelayIfNotUsed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasWifiLocks("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mHasWifiLocks:Z

    .line 173
    return-void
.end method

.method public declared-synchronized setPowerSaveActivated(Z)V
    .locals 3
    .param p1, "isPsActivated"    # Z

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiOffDelayIfNotUsed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveActivated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPowerSaveActivated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShouldWifiStopped(Z)V
    .locals 3
    .param p1, "wifiStop"    # Z

    .prologue
    .line 182
    const-string v0, "WifiOffDelayIfNotUsed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShouldWifiStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mShouldWifiStopped:Z

    .line 184
    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .locals 4

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "WifiOffDelayIfNotUsed"

    const-string v1, "already traffic monitoring is started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    const-string v0, "WifiOffDelayIfNotUsed"

    const-string v1, "startMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 160
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->GetWiFiStats()V

    .line 161
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiOffDelayIfNotUsed"

    const-string v1, "stopMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->releaseWiFiStopWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 142
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIsReceiverRegistered:Z

    if-ne v1, v2, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIsReceiverRegistered:Z

    .line 150
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiOffDelayIfNotUsed"

    const-string v2, "unregisterReceiver() : Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wifiStatsHandler()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 335
    const-string v5, "WifiOffDelayIfNotUsed"

    const-string v6, "MESSAGE_CHECK_WIFISTATS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->wifiStatsHandlerOnPsActivated()V

    .line 405
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z

    if-nez v5, :cond_1

    .line 347
    const-string v5, "WifiOffDelayIfNotUsed"

    const-string v6, "Screen is already on"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->releaseWiFiStopWakeLock()V

    goto :goto_0

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->GetWiFiStats()V

    .line 357
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->IsWiFiUsed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 358
    const-string v5, "WifiOffDelayIfNotUsed"

    const-string v6, "MESSAGE_CHECK_WIFISTATS : no wifi data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_sleep_policy"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 369
    .local v4, "wifiSleepPolicy":I
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v5}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->isP2PConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    const-string v5, "WifiOffDelayIfNotUsed"

    const-string v6, "MESSAGE_CHECK_WIFISTATS : P2p is connected. Retain monitoring state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 377
    :cond_2
    if-eq v4, v7, :cond_3

    if-ne v4, v8, :cond_4

    iget v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I

    if-eqz v5, :cond_4

    .line 380
    :cond_3
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->releaseWiFiStopWakeLock()V

    goto :goto_0

    .line 382
    :cond_4
    const-wide/16 v0, 0x7d0

    .line 383
    .local v0, "idleMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, v0

    .line 385
    .local v2, "triggerTime":J
    invoke-virtual {p0, v8}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setShouldWifiStopped(Z)V

    .line 386
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v2, v3, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 400
    .end local v0    # "idleMillis":J
    .end local v2    # "triggerTime":J
    .end local v4    # "wifiSleepPolicy":I
    :cond_5
    const-string v5, "WifiOffDelayIfNotUsed"

    const-string v6, "MESSAGE_CHECK_WIFISTATS : There are wifi data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
