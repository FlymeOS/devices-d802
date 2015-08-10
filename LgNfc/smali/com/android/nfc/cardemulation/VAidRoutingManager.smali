.class public Lcom/android/nfc/cardemulation/VAidRoutingManager;
.super Lcom/android/nfc/cardemulation/LAidRoutingManager;
.source "VAidRoutingManager.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "VAidRoutingManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public adjustDefaultRoutes(II)V
    .locals 2
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iput p1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    .line 57
    iput p2, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultOffHostRoute:I

    .line 59
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/VNfcService;->adjustDefaultRoutes(II)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearNfcRoutingTableLocked()V
    .locals 6

    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "aid":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    iget v3, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    if-nez v3, :cond_1

    .line 80
    const-string v3, "VAidRoutingManager"

    const-string v4, "This device does not support prefix AIDs."

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget v3, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 82
    sget-boolean v3, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "VAidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrouting prefix AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/VNfcService;->unrouteAids(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    iget v3, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 86
    sget-boolean v3, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "VAidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrouting prefix AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_4
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/nfc/VNfcService;->unrouteAids(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_5
    sget-boolean v3, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "VAidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrouting exact AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_6
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/nfc/VNfcService;->unrouteAids(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    return-void
.end method

.method public getPaymentAidBlockingMode()I
    .locals 6

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v3, "VAidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPaymentAidBlockingMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 70
    monitor-exit v2

    .line 71
    return v0

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reRouteAllAids()V
    .locals 11

    .prologue
    .line 26
    iget-object v6, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 30
    :try_start_0
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v5

    const-string v7, "00"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/nfc/VNfcService;->reRouteAid(Ljava/lang/String;IZZ)V

    .line 39
    iget-object v5, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 41
    .local v4, "route":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "aid":Ljava/lang/String;
    sget-boolean v5, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v7, "VAidRoutingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reRouteAllAids; sec elem id = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " aid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v4, v7, v8}, Lcom/android/nfc/VNfcService;->reRouteAid(Ljava/lang/String;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "route":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 50
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "VAidRoutingManager"

    const-string v7, "reRouteAllAids: thread interrupted"

    invoke-static {v5, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 35
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 45
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_4
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v5

    const-string v7, "00"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/nfc/VNfcService;->reRouteAid(Ljava/lang/String;IZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :try_start_5
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
