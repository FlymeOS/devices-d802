.class public Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;
.super Ljava/lang/Object;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FDSBandwidthTracker"
.end annotation


# instance fields
.field private mAccumulatedMobileBandwidth:D

.field private mAccumulatedWifiBandwidth:D

.field private mBestMobileBandwidth:D

.field private mBestWifiBandwidth:D

.field private mElapsedTime:J

.field private mMobileBandwidth:D

.field private mMobileReceived:J

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mTotalBandwidth:D

.field private mWifiBandwidth:D

.field private mWifiReceived:J

.field protected preRxBytesSum:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;)V
    .locals 1

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    new-instance v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker$1;

    invoke-direct {v0, p0}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker$1;-><init>(Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;)V

    iput-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 1044
    return-void
.end method


# virtual methods
.method public getAccumulatedMobileBandwidth()D
    .locals 2

    .prologue
    .line 1059
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedMobileBandwidth:D

    return-wide v0
.end method

.method public getAccumulatedWifiBandwidth()D
    .locals 2

    .prologue
    .line 1055
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedWifiBandwidth:D

    return-wide v0
.end method

.method public getBestMobileBandwidth()D
    .locals 2

    .prologue
    .line 1067
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestMobileBandwidth:D

    return-wide v0
.end method

.method public getBestWifiBandwidth()D
    .locals 2

    .prologue
    .line 1063
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestWifiBandwidth:D

    return-wide v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 1075
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    const-wide/16 v2, 0x1f4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMobileBandwidth()D
    .locals 2

    .prologue
    .line 1051
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    return-wide v0
.end method

.method public getTotalBandwidth()D
    .locals 4

    .prologue
    .line 1071
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getWifiBandwidth()D
    .locals 2

    .prologue
    .line 1047
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    return-wide v0
.end method

.method protected resetPollStats()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 1087
    iput-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiReceived:J

    .line 1088
    iput-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileReceived:J

    .line 1089
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    .line 1090
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    .line 1091
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedWifiBandwidth:D

    .line 1092
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedMobileBandwidth:D

    .line 1093
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestWifiBandwidth:D

    .line 1094
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestMobileBandwidth:D

    .line 1095
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mTotalBandwidth:D

    .line 1096
    iput-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    .line 1097
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1100
    sget-boolean v0, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startNetStatPoll"

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v0, v2}, Lcom/lge/net/FastDownloadService;->access$702(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1102
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->resetPollStats()V

    .line 1103
    new-instance v0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {v0, v1}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;-><init>(Lcom/lge/net/FastDownloadService;)V

    iput-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->preRxBytesSum:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    .line 1104
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->preRxBytesSum:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    invoke-virtual {v0}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->updateRxBytesSum()V

    .line 1105
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1107
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    const-string v1, "lge.fds.detectslowbearerenable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/lge/net/FastDownloadService;->mDetectSlowBearerEnable:Z
    invoke-static {v0, v1}, Lcom/lge/net/FastDownloadService;->access$1802(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1108
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    const-string v1, "lge.fds.severaltimesfaster"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/lge/net/FastDownloadService;->mSeveralTimesFaster:I
    invoke-static {v0, v1}, Lcom/lge/net/FastDownloadService;->access$1902(Lcom/lge/net/FastDownloadService;I)I

    .line 1109
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 2

    .prologue
    .line 1112
    sget-boolean v0, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stopNetStatPoll"

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    const/4 v1, 0x0

    # setter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v0, v1}, Lcom/lge/net/FastDownloadService;->access$702(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1114
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1115
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v0, v0, Lcom/lge/net/FastDownloadService;->mUIHander:Lcom/lge/net/FastDownloadService$FDSUIHandler;

    invoke-virtual {v0}, Lcom/lge/net/FastDownloadService$FDSUIHandler;->removeNotificationArea()V

    .line 1116
    return-void
.end method

.method public updateAccumulatedDataActivity(JJJJ)V
    .locals 7
    .param p1, "totalWifiReceived"    # J
    .param p3, "totalMobileReceived"    # J
    .param p5, "currentWifiReceived"    # J
    .param p7, "currentMobileReceived"    # J

    .prologue
    .line 1174
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    .line 1175
    long-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedWifiBandwidth:D

    .line 1177
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-eqz v0, :cond_1

    .line 1178
    long-to-double v0, p3

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedMobileBandwidth:D

    .line 1180
    :cond_1
    sget-boolean v0, Lcom/lge/net/FastDownloadService;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WiFi Accumulated Bandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedWifiBandwidth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mobile Accumulated Bandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedMobileBandwidth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ElapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    const-wide/16 v4, 0x1f4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1181
    :cond_2
    return-void
.end method

.method public updateBestDataActivity(DD)V
    .locals 7
    .param p1, "currentWifiBandwidth"    # D
    .param p3, "currentMobileBandwidth"    # D

    .prologue
    .line 1184
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestWifiBandwidth:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    .line 1185
    iput-wide p1, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestWifiBandwidth:D

    .line 1187
    :cond_0
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestMobileBandwidth:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1

    .line 1188
    iput-wide p3, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestMobileBandwidth:D

    .line 1190
    :cond_1
    sget-boolean v0, Lcom/lge/net/FastDownloadService;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Best Wifi Bandwidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestWifiBandwidth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Best Mobile Bandwidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mBestMobileBandwidth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ElapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    const-wide/16 v4, 0x1f4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1191
    :cond_2
    return-void
.end method

.method public updateDataActivity()V
    .locals 20

    .prologue
    .line 1119
    const-wide/16 v8, 0x0

    .line 1120
    .local v8, "wifiReceived":J
    const-wide/16 v10, 0x0

    .line 1121
    .local v10, "mobileReceived":J
    const-wide/16 v16, 0x0

    .line 1122
    .local v16, "wifiBandwidth":D
    const-wide/16 v12, 0x0

    .line 1124
    .local v12, "mobielBandwidth":D
    new-instance v2, Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {v2, v3}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;-><init>(Lcom/lge/net/FastDownloadService;)V

    .line 1125
    .local v2, "curRxBytesSum":Lcom/lge/net/FastDownloadService$FDSTrafficStats;
    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->updateRxBytesSum()V

    .line 1127
    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J
    invoke-static {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2000(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiReceived:J

    sub-long v8, v4, v6

    .line 1128
    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J
    invoke-static {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2100(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileReceived:J

    sub-long v10, v4, v6

    .line 1129
    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J
    invoke-static {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2000(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiReceived:J

    .line 1130
    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J
    invoke-static {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2100(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileReceived:J

    .line 1132
    sget-boolean v3, Lcom/lge/net/FastDownloadService;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDataActivity: curTxRxSum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preTxRxSum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->preRxBytesSum:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1133
    :cond_0
    sget-boolean v3, Lcom/lge/net/FastDownloadService;->VDBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifiReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mobileReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1135
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 1136
    long-to-double v4, v8

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    .line 1137
    long-to-double v4, v10

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    .line 1139
    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J
    invoke-static {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2000(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->preRxBytesSum:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J
    invoke-static {v3}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2000(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J
    invoke-static {v2}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2100(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->preRxBytesSum:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    # getter for: Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J
    invoke-static {v3}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->access$2100(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J

    move-result-wide v18

    sub-long v6, v6, v18

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->updateAccumulatedDataActivity(JJJJ)V

    .line 1143
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->updateBestDataActivity(DD)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mDetectSlowBearerEnable:Z
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1800(Lcom/lge/net/FastDownloadService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2200(Lcom/lge/net/FastDownloadService;)I

    move-result v3

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2200(Lcom/lge/net/FastDownloadService;)I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2300(Lcom/lge/net/FastDownloadService;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2400(Lcom/lge/net/FastDownloadService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1149
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2400(Lcom/lge/net/FastDownloadService;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedWifiBandwidth:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedMobileBandwidth:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mSeveralTimesFaster:I
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1900(Lcom/lge/net/FastDownloadService;)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1151
    .local v14, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v14, Landroid/os/Message;->arg1:I

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    const/4 v4, 0x0

    # setter for: Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z
    invoke-static {v3, v4}, Lcom/lge/net/FastDownloadService;->access$2402(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1163
    .end local v14    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # operator++ for: Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2208(Lcom/lge/net/FastDownloadService;)I

    .line 1166
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    .line 1168
    sget-boolean v3, Lcom/lge/net/FastDownloadService;->VDBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi Bandwidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Mobile Bandwidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ElapsedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mElapsedTime:J

    const-wide/16 v6, 0x1f4

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1170
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v3, v3, Lcom/lge/net/FastDownloadService;->mUIHander:Lcom/lge/net/FastDownloadService$FDSUIHandler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mWifiBandwidth:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mMobileBandwidth:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lge/net/FastDownloadService$FDSUIHandler;->showNotificationArea(DD)V

    .line 1171
    return-void

    .line 1155
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$2300(Lcom/lge/net/FastDownloadService;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedMobileBandwidth:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->mAccumulatedWifiBandwidth:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mSeveralTimesFaster:I
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1900(Lcom/lge/net/FastDownloadService;)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1157
    .restart local v14    # "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v14, Landroid/os/Message;->arg1:I

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    const/4 v4, 0x0

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z
    invoke-static {v3, v4}, Lcom/lge/net/FastDownloadService;->access$2302(Lcom/lge/net/FastDownloadService;Z)Z

    goto/16 :goto_0
.end method
