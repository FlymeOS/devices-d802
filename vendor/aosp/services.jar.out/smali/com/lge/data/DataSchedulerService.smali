.class public Lcom/lge/data/DataSchedulerService;
.super Landroid/net/IDataSchedulerManager$Stub;
.source "DataSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/data/DataSchedulerService$InternalHandler;
    }
.end annotation


# static fields
.field public static final EVENT_POLLING_PACKETS:I = 0x3

.field public static final EVENT_UPDATE_APP_INFORMATION:I = 0x1

.field public static final EVENT_UPDATE_SOCK_INFORMATION:I = 0x2

.field private static final SOCK_EVENT_PROCESS_TRESHOLD_TIME:J

.field private static final TIMEOUT_DIFF_TRESHOLD_TIME:J

.field private static mNetworkStatsService:Landroid/net/INetworkStatsService;


# instance fields
.field private mAppPolicyContainer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/data/DataSchedulerPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/data/DataSchedulerService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 68
    const-string v0, "persist.lg.dsgs.timeout_thresh"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/lge/data/DataSchedulerService;->TIMEOUT_DIFF_TRESHOLD_TIME:J

    .line 69
    const-string v0, "persist.lg.dsgs.sock_thresh"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/lge/data/DataSchedulerService;->SOCK_EVENT_PROCESS_TRESHOLD_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/net/IDataSchedulerManager$Stub;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/lge/data/DataSchedulerService;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/lge/data/DataSchedulerService$1;

    const-string v1, "DataSchedulerServiceThread"

    invoke-direct {v0, p0, v1}, Lcom/lge/data/DataSchedulerService$1;-><init>(Lcom/lge/data/DataSchedulerService;Ljava/lang/String;)V

    .line 81
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    return-void
.end method

.method private static MAP_KEY(ILjava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p0, "uid"    # I
    .param p1, "alarm"    # Ljava/lang/String;
    .param p2, "repeat"    # J

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method

.method private static MAP_KEY(Landroid/net/DataSchedulerAppInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "appInfo"    # Landroid/net/DataSchedulerAppInfo;

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "key":Ljava/lang/String;
    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method private static MAP_KEY(Lcom/lge/data/DataSchedulerPolicyInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "policyInfo"    # Lcom/lge/data/DataSchedulerPolicyInfo;

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "key":Ljava/lang/String;
    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/data/DataSchedulerService;Lcom/lge/data/DataSchedulerService$InternalHandler;)Lcom/lge/data/DataSchedulerService$InternalHandler;
    .locals 0
    .param p0, "x0"    # Lcom/lge/data/DataSchedulerService;
    .param p1, "x1"    # Lcom/lge/data/DataSchedulerService$InternalHandler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/data/DataSchedulerService;[Landroid/net/DataSchedulerAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/data/DataSchedulerService;
    .param p1, "x1"    # [Landroid/net/DataSchedulerAppInfo;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lge/data/DataSchedulerService;->onUpdateApplicatoinInformation([Landroid/net/DataSchedulerAppInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/data/DataSchedulerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/data/DataSchedulerService;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lge/data/DataSchedulerService;->onUpdateSocketInformation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/data/DataSchedulerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/data/DataSchedulerService;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lge/data/DataSchedulerService;->onPollingPackets()V

    return-void
.end method

.method private dumpPolicyInfo()V
    .locals 4

    .prologue
    .line 348
    const-string v2, "===== DUMP all DataSchedulerPolicies ====="

    invoke-static {v2}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 350
    const-string v2, "===== dump Unknown DataSchedulerPolicies ====="

    invoke-static {v2}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/data/DataSchedulerPolicyInfo;

    .line 352
    .local v1, "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    iget-object v2, v1, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v3, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v2, v3, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/lge/data/DataSchedulerPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v1    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    :cond_1
    const-string v2, "===== dump Other DataSchedulerPolicies ====="

    invoke-static {v2}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/data/DataSchedulerPolicyInfo;

    .line 359
    .restart local v1    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    iget-object v2, v1, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v3, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-eq v2, v3, :cond_2

    .line 360
    invoke-virtual {v1}, Lcom/lge/data/DataSchedulerPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    .end local v1    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    :cond_3
    const-string v2, "===== END of DataSchedulerPolicies ====="

    invoke-static {v2}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 8
    .param p1, "uID"    # I

    .prologue
    .line 417
    const-string v4, ""

    .line 419
    .local v4, "processName":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/data/DataSchedulerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 420
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    move-object v5, v4

    .line 438
    .end local v4    # "processName":Ljava/lang/String;
    .local v5, "processName":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 422
    .end local v5    # "processName":Ljava/lang/String;
    .restart local v4    # "processName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 425
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    if-nez v1, :cond_2

    move-object v5, v4

    .line 426
    .end local v4    # "processName":Ljava/lang/String;
    .restart local v5    # "processName":Ljava/lang/String;
    goto :goto_0

    .line 423
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "processName":Ljava/lang/String;
    .restart local v4    # "processName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 429
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 432
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, p1, :cond_2

    .line 433
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    move-object v5, v4

    .line 438
    .end local v4    # "processName":Ljava/lang/String;
    .restart local v5    # "processName":Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v5    # "processName":Ljava/lang/String;
    .restart local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lcom/lge/data/DataSchedulerService;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    .line 145
    const-class v1, Lcom/lge/data/DataSchedulerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/data/DataSchedulerService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Lcom/lge/data/DataSchedulerService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 149
    :cond_0
    sget-object v0, Lcom/lge/data/DataSchedulerService;->mNetworkStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onPollingPackets()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    .line 264
    iget-object v6, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 265
    const-string v5, "onPollingPackets mAppPolicyContainer is empty"

    invoke-static {v5}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void

    .line 268
    :cond_1
    const/4 v6, -0x1

    invoke-static {v6}, Lcom/lge/data/DataSchedulerService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 269
    .local v2, "networkStats":Landroid/net/NetworkStats;
    iget-object v6, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/data/DataSchedulerPolicyInfo;

    .line 270
    .local v3, "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    iget-wide v6, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_2

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPollingPackets uid ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") No Alarm expired."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v4, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->entry:Landroid/net/NetworkStats$Entry;

    .line 276
    .local v4, "prevNetStats":Landroid/net/NetworkStats$Entry;
    if-eqz v2, :cond_3

    iget v6, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v2, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 278
    .local v0, "curNetStats":Landroid/net/NetworkStats$Entry;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPollingPackets uid ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") before NetworkStats="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " last_expired="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPollingPackets uid ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") after NetworkStats="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 281
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v8, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPollingPackets Tx/Rx is detected, uid ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 286
    iget-object v6, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    iget-object v7, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    const/4 v8, 0x2

    iget v9, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lge/data/DataSchedulerService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/data/DataSchedulerService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v0    # "curNetStats":Landroid/net/NetworkStats$Entry;
    :cond_3
    move-object v0, v5

    .line 276
    goto/16 :goto_1

    .line 288
    .restart local v0    # "curNetStats":Landroid/net/NetworkStats$Entry;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPollingPackets Tx or Rx is NOT detected, uid ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 289
    iput-wide v12, v3, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    goto/16 :goto_0
.end method

.method private onUpdateApplicatoinInformation([Landroid/net/DataSchedulerAppInfo;)V
    .locals 14
    .param p1, "appInfos"    # [Landroid/net/DataSchedulerAppInfo;

    .prologue
    .line 163
    const/4 v9, 0x0

    .line 164
    .local v9, "updated":Z
    const/4 v3, 0x0

    .line 165
    .local v3, "isExistUnTargetAlarm":Z
    const/4 v10, -0x1

    invoke-static {v10}, Lcom/lge/data/DataSchedulerService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v5

    .line 166
    .local v5, "networkStats":Landroid/net/NetworkStats;
    invoke-virtual {v5}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    .line 167
    .local v6, "nowElapsedRealtime":J
    move-object v1, p1

    .local v1, "arr$":[Landroid/net/DataSchedulerAppInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_9

    aget-object v0, v1, v2

    .line 168
    .local v0, "appInfo":Landroid/net/DataSchedulerAppInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateApplicatoinInformation uid ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), alarm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", repeat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 170
    iget-object v10, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/lge/data/DataSchedulerService;->MAP_KEY(Landroid/net/DataSchedulerAppInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/data/DataSchedulerPolicyInfo;

    .line 171
    .local v8, "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    if-nez v8, :cond_1

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateApplicatoinInformation New Alarm for uid ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 174
    new-instance v8, Lcom/lge/data/DataSchedulerPolicyInfo;

    .end local v8    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    invoke-direct {v8, v0}, Lcom/lge/data/DataSchedulerPolicyInfo;-><init>(Landroid/net/DataSchedulerAppInfo;)V

    .line 175
    .restart local v8    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    iget v10, v0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-direct {p0, v10}, Lcom/lge/data/DataSchedulerService;->getAppName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/data/DataSchedulerPolicyInfo;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/lge/data/DataSchedulerPolicyInfo$State;->WHITE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v8, v10}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    .line 176
    :cond_0
    iget-object v10, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/lge/data/DataSchedulerService;->MAP_KEY(Landroid/net/DataSchedulerAppInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    iget-object v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v11, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v10, v11, :cond_3

    .line 214
    :cond_2
    :goto_1
    iget-object v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v11, Lcom/lge/data/DataSchedulerPolicyInfo$State;->TARGET:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v10, v11, :cond_8

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateApplicatoinInformation uid ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is already TARGETED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 222
    :goto_2
    iget v10, v0, Landroid/net/DataSchedulerAppInfo;->pid:I

    iput v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->pid:I

    .line 223
    iget-wide v10, v0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    iput-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    .line 224
    iget-wide v10, v0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    iput-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    .line 225
    iget-wide v10, v0, Landroid/net/DataSchedulerAppInfo;->window:J

    iput-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->window:J

    .line 226
    iput-wide v6, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    .line 227
    const/4 v10, 0x0

    iget v11, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v5, v10, v11}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    iput-object v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->entry:Landroid/net/NetworkStats$Entry;

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateApplicatoinInformation uid ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") policy="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 182
    :cond_3
    iget-object v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v11, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v10, v11, :cond_4

    .line 184
    iget-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    iget-wide v12, v0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sget-wide v12, Lcom/lge/data/DataSchedulerService;->TIMEOUT_DIFF_TRESHOLD_TIME:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    sget-object v10, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v8, v10}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 186
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 188
    :cond_4
    iget-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    iget-wide v10, v0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    :cond_5
    iget-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    iget-wide v12, v0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 190
    sget-object v10, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v8, v10}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 191
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 193
    :cond_6
    iget-object v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v11, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v10, v11, :cond_7

    .line 195
    iget-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    iget-wide v12, v0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sget-wide v12, Lcom/lge/data/DataSchedulerService;->TIMEOUT_DIFF_TRESHOLD_TIME:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    sget-object v10, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v8, v10}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 197
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 199
    :cond_7
    iget-object v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v11, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v10, v11, :cond_2

    .line 201
    iget-wide v10, v8, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    iget-wide v12, v0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sget-wide v12, Lcom/lge/data/DataSchedulerService;->TIMEOUT_DIFF_TRESHOLD_TIME:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    sget-object v10, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v8, v10}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 203
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 217
    :cond_8
    const/4 v3, 0x1

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateApplicatoinInformation uid ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") Start monitoring packet, ElapsedRealtime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 233
    .end local v0    # "appInfo":Landroid/net/DataSchedulerAppInfo;
    .end local v8    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    :cond_9
    if-eqz v9, :cond_a

    .line 234
    invoke-direct {p0}, Lcom/lge/data/DataSchedulerService;->dumpPolicyInfo()V

    .line 236
    :cond_a
    if-eqz v3, :cond_b

    .line 237
    iget-object v10, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    iget-object v11, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    const/4 v12, 0x3

    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v11, v12, v13}, Lcom/lge/data/DataSchedulerService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    sget-wide v12, Lcom/lge/data/DataSchedulerService;->SOCK_EVENT_PROCESS_TRESHOLD_TIME:J

    invoke-virtual {v10, v11, v12, v13}, Lcom/lge/data/DataSchedulerService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 241
    :goto_3
    return-void

    .line 239
    :cond_b
    const-string v10, "onUpdateApplicatoinInformation All alarm is targeted"

    invoke-static {v10}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onUpdateSocketInformation(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateSocketInformation for uid ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), received packet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "found":Z
    const/4 v3, 0x0

    .line 250
    .local v3, "updated":Z
    iget-object v4, p0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/data/DataSchedulerPolicyInfo;

    .line 251
    .local v2, "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    iget v4, v2, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    if-ne v4, p1, :cond_0

    .line 252
    invoke-direct {p0, v2}, Lcom/lge/data/DataSchedulerService;->updatePolicyWithSockInformation(Lcom/lge/data/DataSchedulerPolicyInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 253
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 257
    .end local v2    # "policy":Lcom/lge/data/DataSchedulerPolicyInfo;
    :cond_3
    if-eqz v3, :cond_4

    .line 258
    invoke-direct {p0}, Lcom/lge/data/DataSchedulerService;->dumpPolicyInfo()V

    .line 260
    :cond_4
    return-void
.end method

.method private updatePolicyWithSockInformation(Lcom/lge/data/DataSchedulerPolicyInfo;)Z
    .locals 12
    .param p1, "policy"    # Lcom/lge/data/DataSchedulerPolicyInfo;

    .prologue
    const-wide/16 v10, 0x0

    .line 296
    const/4 v6, 0x0

    .line 297
    .local v6, "updated":Z
    iget-wide v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePolicyWithSockInformation uid ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") sent, but no last expire information"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    move v7, v6

    .line 342
    .end local v6    # "updated":Z
    .local v7, "updated":I
    :goto_0
    return v7

    .line 302
    .end local v7    # "updated":I
    .restart local v6    # "updated":Z
    :cond_0
    iget-object v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v9, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v8, v9, :cond_2

    .line 305
    sget-object v8, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {p1, v8}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v6

    .line 340
    :cond_1
    :goto_1
    iput-wide v10, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePolicyWithSockInformation Updating Policy for uid ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is complete, policy="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    move v7, v6

    .line 342
    .restart local v7    # "updated":I
    goto :goto_0

    .line 307
    .end local v7    # "updated":I
    :cond_2
    iget-object v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v9, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v8, v9, :cond_3

    .line 310
    sget-object v8, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {p1, v8}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v6

    goto :goto_1

    .line 312
    :cond_3
    iget-object v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v9, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v8, v9, :cond_6

    .line 315
    sget-object v8, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {p1, v8}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v6

    .line 317
    iget v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->gate_period:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v0, v8

    .line 318
    .local v0, "gate_period":J
    iget-wide v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v4, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    .line 320
    .local v4, "period":J
    :goto_2
    rem-long v2, v4, v0

    .line 322
    .local v2, "modulo":J
    const-wide/16 v8, 0x2

    div-long v8, v0, v8

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 323
    sub-long v8, v0, v2

    add-long/2addr v8, v4

    iput-wide v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    .line 329
    :goto_3
    iget-wide v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    cmp-long v8, v8, v0

    if-gez v8, :cond_1

    .line 331
    iput-wide v0, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    goto :goto_1

    .line 318
    .end local v2    # "modulo":J
    .end local v4    # "period":J
    :cond_4
    iget-wide v4, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    goto :goto_2

    .line 326
    .restart local v2    # "modulo":J
    .restart local v4    # "period":J
    :cond_5
    sub-long v8, v4, v2

    iput-wide v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    goto :goto_3

    .line 334
    .end local v0    # "gate_period":J
    .end local v2    # "modulo":J
    .end local v4    # "period":J
    :cond_6
    iget-object v8, p1, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v9, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v8, v9, :cond_1

    .line 337
    sget-object v8, Lcom/lge/data/DataSchedulerPolicyInfo$State;->TARGET:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {p1, v8}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    move-result v6

    goto :goto_1
.end method


# virtual methods
.method public getPolicy(ILjava/lang/String;JJ)Landroid/net/DataSchedulerPolicy;
    .locals 17
    .param p1, "uid"    # I
    .param p2, "alarm"    # Ljava/lang/String;
    .param p3, "repeat"    # J
    .param p5, "triggerAt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/data/DataSchedulerService;->mAppPolicyContainer:Ljava/util/HashMap;

    invoke-static/range {p1 .. p4}, Lcom/lge/data/DataSchedulerService;->MAP_KEY(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/data/DataSchedulerPolicyInfo;

    .line 373
    .local v10, "ret":Lcom/lge/data/DataSchedulerPolicyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 374
    .local v2, "currentElapsedRealtime":J
    const-wide/16 v8, 0x0

    .line 376
    .local v8, "original_triggerAt":J
    if-eqz v10, :cond_0

    iget v11, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    if-nez v11, :cond_1

    .line 377
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPolicy: uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", alarm="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", repeat="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", triggerAt="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p5

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", no policy, return default policy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 378
    new-instance v11, Landroid/net/DataSchedulerPolicy;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct {v11, v12, v14, v15}, Landroid/net/DataSchedulerPolicy;-><init>(IJ)V

    .line 408
    :goto_0
    return-object v11

    .line 381
    :cond_1
    iget v11, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->gate_period:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v6, v11

    .line 383
    .local v6, "gate_period":J
    sub-long v12, p5, v2

    cmp-long v11, v12, v6

    if-gez v11, :cond_2

    .line 384
    move-wide/from16 v8, p5

    .line 385
    add-long p5, v2, v6

    .line 388
    :cond_2
    iget-wide v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_5

    iget-wide v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    rem-long v4, p5, v12

    .line 390
    .local v4, "delay":J
    :goto_1
    iget-wide v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    cmp-long v11, v4, v12

    if-lez v11, :cond_6

    .line 391
    iget-wide v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    sub-long/2addr v12, v4

    const-wide/16 v14, 0x2710

    sub-long v4, v12, v14

    .line 397
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-gez v11, :cond_3

    add-long v12, p5, v4

    cmp-long v11, v12, v2

    if-gtz v11, :cond_3

    .line 398
    iget-wide v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    add-long/2addr v4, v12

    .line 401
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    .line 402
    add-long v12, p5, v4

    sub-long v4, v12, v8

    .line 403
    move-wide/from16 p5, v8

    .line 406
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPolicy: uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", alarm="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", repeat="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", triggerAt="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p5

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", policy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", delay="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/data/DataSchedulerUtil;->logi(Ljava/lang/String;)V

    .line 408
    new-instance v11, Landroid/net/DataSchedulerPolicy;

    iget v12, v10, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    invoke-direct {v11, v12, v4, v5}, Landroid/net/DataSchedulerPolicy;-><init>(IJ)V

    goto/16 :goto_0

    .line 388
    .end local v4    # "delay":J
    :cond_5
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    .line 394
    .restart local v4    # "delay":J
    :cond_6
    const-wide/16 v12, -0x1

    mul-long/2addr v4, v12

    goto/16 :goto_2
.end method

.method public setDataSchedulerEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLlkklkEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 445
    const-string v1, "persist.lg.data.llkklk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.ACTION_LLKKLK_ENABED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/data/DataSchedulerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 449
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAppInfo([Landroid/net/DataSchedulerAppInfo;)V
    .locals 3
    .param p1, "appInfos"    # [Landroid/net/DataSchedulerAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    iget-object v1, p0, Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/lge/data/DataSchedulerService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/data/DataSchedulerService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method
