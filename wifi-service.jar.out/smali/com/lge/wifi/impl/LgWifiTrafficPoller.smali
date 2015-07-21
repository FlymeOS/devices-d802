.class public Lcom/lge/wifi/impl/LgWifiTrafficPoller;
.super Ljava/lang/Object;
.source "LgWifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final MESSAGE_TPUT_NORMAL_MODE:I = 0x3

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LgWifiTrafficPoller"

.field private static final TPUT_KEEP_PERFORMANCE_MODE_TIME_MSECS:I = 0xea60

.field private static final TPUT_NORMAL_MODE:I = 0x0

.field private static final TPUT_PERFORMANCE_MODE:I = 0x1

.field private static final TPUT_PERFORMANCE_MODE_CNT:I = 0x3

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEnableSoftap:Z

.field private mEnableTrafficStatsPoll:Z

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field private final mInterface:Ljava/lang/String;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mRxBytes:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTputCntPoll:J

.field private mTputMode:J

.field private final mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTriggeringTput:J

.field private mTxBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 46
    iput v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 53
    iput-boolean v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    .line 63
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iput-object v5, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 71
    iput-object v5, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 74
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 76
    new-instance v3, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    invoke-direct {v3, p0, v5}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;-><init>(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;)V

    iput-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    .line 78
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mNwService:Landroid/os/INetworkManagementService;

    .line 82
    :try_start_0
    new-instance v3, Lcom/lge/loader/LGContextHelper;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 83
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v4, "lgpowermanagerhelper"

    invoke-virtual {v3, v4}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    :cond_1
    const-string v3, "com.lge.wifi.sap.ENABLED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v3, "com.lge.wifi.sap.DISABLED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;

    invoke-direct {v3, p0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;-><init>(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void

    .line 86
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LgWifiTrafficPoller"

    const-string v4, "can\'t get boost loader!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->setCPUOverClock(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$708(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputMode:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputMode:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->monitoringWifiTraffic()V

    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-boolean v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    :goto_1
    return-void

    .line 193
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 197
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-boolean v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 205
    .restart local v0    # "msg":Landroid/os/Message;
    :goto_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 203
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_2
.end method

.method private monitoringWifiTraffic()V
    .locals 13

    .prologue
    .line 213
    iget-wide v2, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTxBytes:J

    .line 214
    .local v2, "preTxBytes":J
    iget-wide v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mRxBytes:J

    .line 215
    .local v0, "preRxBytes":J
    iget-object v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTxBytes:J

    .line 216
    iget-object v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mRxBytes:J

    .line 218
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    .line 219
    :cond_0
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTxBytes:J

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long v6, v8, v10

    .line 220
    .local v6, "sent":J
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mRxBytes:J

    sub-long/2addr v8, v0

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long v4, v8, v10

    .line 222
    .local v4, "received":J
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputMode:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 223
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J

    cmp-long v8, v8, v6

    if-ltz v8, :cond_1

    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_3

    .line 224
    :cond_1
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    .line 229
    :goto_0
    const-wide/16 v8, 0x3

    iget-wide v10, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .line 230
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    .line 231
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputMode:J

    .line 232
    iget-object v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->removeMessages(I)V

    .line 233
    iget-object v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    iget-object v9, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficHandler:Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v9, v10, v11}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->setCPUOverClock(Z)V

    .line 243
    .end local v4    # "received":J
    .end local v6    # "sent":J
    :cond_2
    :goto_1
    return-void

    .line 226
    .restart local v4    # "received":J
    .restart local v6    # "sent":J
    :cond_3
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    goto :goto_0

    .line 238
    :cond_4
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J

    cmp-long v8, v8, v6

    if-ltz v8, :cond_5

    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_2

    .line 239
    :cond_5
    iget-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J

    goto :goto_1
.end method

.method private declared-synchronized setCPUOverClock(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v5, 0x1

    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v2, :cond_2

    .line 266
    const-string v2, "LgWifiTrafficPoller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCPUOverClock enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEnableSoftap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-ne p1, v5, :cond_1

    .line 269
    iget-object v2, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-boolean v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    if-ne v3, v5, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    :goto_0
    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/lge/loader/power/ILGPowerManagerLoader;->setPowerModePolicy(IZ)I

    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->setRps(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_1
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    move v0, v1

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->setRps(Z)V

    .line 274
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->setPowerModePolicy(IZ)I

    .line 275
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->setPowerModePolicy(IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 278
    :cond_2
    :try_start_2
    const-string v0, "LgWifiTrafficPoller"

    const-string v1, "setCPUOverClock: can\'t access PowerModePolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private setRps(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 246
    const-string v1, "bcm4356"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getWlanChipsetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-boolean v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    const-string v1, "LgWifiTrafficPoller"

    const-string v2, "Skip RPS setup for QCT MHS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_1
    const-string v1, "LgWifiTrafficPoller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRps enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnableSoftap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mNwService:Landroid/os/INetworkManagementService;

    iget-boolean v2, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->setWifiHighTrafficMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LgWifiTrafficPoller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail setRps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
