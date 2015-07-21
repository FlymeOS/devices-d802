.class public Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;
.super Ljava/lang/Object;
.source "WifiP2pOffDelayIfNotUsed.java"

# interfaces
.implements Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pOffDelayIfNotUsed"


# instance fields
.field private mInterface:Ljava/lang/String;

.field private mWiFiDirectRxStat:J

.field private mWiFiDirectRxStat_old:J

.field private mWiFiDirectTxStat:J

.field private mWiFiDirectTxStat_old:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat:J

    .line 37
    iput-wide v0, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J

    .line 38
    iput-wide v0, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat_old:J

    .line 39
    iput-wide v0, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat_old:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mInterface:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized GetWiFiP2pStats()V
    .locals 6

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "-----------------------------GetWiFiP2pStats start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "GetWiFiAPStats start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat_old:J

    .line 61
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat:J

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat_old:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mInterface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mInterface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_1
    :try_start_3
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWiFiDirectStats : mWiFiDirectRxStat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetWiFiDirectStats : mWiFiDirectTxStat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "Exception in getRxPackets()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "Exception in getInterfaceTxCounter()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized IsWiFiP2pUsed()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 88
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "-------------------------------IsWiFiP2pUsed start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsWiFiDirectUsed : old Tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat_old:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old Rx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat_old:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsWiFiDirectUsed : Tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Rx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectRxStat:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat_old:J

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 107
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "IsWiFiDirectUsed : Direct is used (old value is larger than now one)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat:J

    iget-wide v4, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mWiFiDirectTxStat_old:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 112
    const-string v1, "WifiP2pOffDelayIfNotUsed"

    const-string v2, "IsWiFiDirectUsed : Direct is used"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_1
    :try_start_2
    const-string v0, "WifiP2pOffDelayIfNotUsed"

    const-string v1, "IsWiFiDirectUsed : Direct is not used"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkState()Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->IsWiFiP2pUsed()Z

    move-result v0

    return v0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupInterface"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->mInterface:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public startMonitoring()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;->GetWiFiP2pStats()V

    .line 45
    return-void
.end method

.method public stopMonitoring()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
