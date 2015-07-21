.class public Lcom/lge/wfds/WfdsPeerList;
.super Ljava/lang/Object;
.source "WfdsPeerList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsPeerList"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPeers:Lcom/lge/wfds/WfdsDeviceList;

.field private mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsNative;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfdsEvent"    # Lcom/lge/wfds/WfdsEvent;
    .param p3, "wfdsNative"    # Lcom/lge/wfds/WfdsNative;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 20
    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 21
    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    .line 24
    iput-object p1, p0, Lcom/lge/wfds/WfdsPeerList;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 26
    iput-object p3, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 27
    new-instance v0, Lcom/lge/wfds/WfdsDeviceList;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDeviceList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    .line 28
    return-void
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "num":I
    if-nez p1, :cond_0

    .line 151
    const/4 v2, 0x0

    .line 162
    :goto_0
    return v2

    .line 153
    :cond_0
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_2
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WfdsPeerList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendWfdsPeerLostBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceAddr"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v1, "WfdsPeerList"

    const-string v2, "WfdsPeersLostBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public addPeerDevice(Lcom/lge/wfds/WfdsDevice;)V
    .locals 2
    .param p1, "wfdsDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDeviceList;->update(Lcom/lge/wfds/WfdsDevice;)V

    .line 51
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearPeerDevice()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDeviceList;->clear()Z

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getP2pPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .locals 8
    .param p1, "peerAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 102
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-virtual {v5, p1}, Lcom/lge/wfds/WfdsNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "info":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 111
    const-string v5, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2})\\npri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+)\\ndevice_name=(.*)\\nmanufacturer=(.*)\\nmodel_name=(.*)\\nmodel_number=(.*)\\nserial_number=(.*)\\nconfig_methods=(0x[0-9a-fA-F]+)\\ndev_capab=(0x[0-9a-fA-F]+)\\ngroup_capab=(0x[0-9a-fA-F]+)($|\\n.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 124
    .local v0, "detailedDevicePattern":Ljava/util/regex/Pattern;
    const-string v5, "[ \n]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v6, :cond_2

    .line 126
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Malformed Peer Info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 130
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_3

    .line 131
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Malformed Peer Info Pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_3
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1}, Lcom/lge/wfds/WfdsDevice;-><init>()V

    .line 135
    .local v1, "dev":Lcom/lge/wfds/WfdsDevice;
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    .line 136
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    .line 137
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    .line 138
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsPeerList;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    .line 139
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsPeerList;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    .line 140
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsPeerList;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    .line 142
    const-string v5, "WfdsPeerList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get Device Info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-nez p1, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/WfdsDeviceList;->get(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    .line 39
    monitor-exit v2

    move-object v1, v0

    .line 41
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePeerDevice(Lcom/lge/wfds/WfdsDevice;)V
    .locals 2
    .param p1, "wfdsDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDeviceList;->remove(Lcom/lge/wfds/WfdsDevice;)Z

    .line 69
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePeerList(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 12
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 79
    iget-object v6, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v6

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDevice;

    .line 81
    .local v1, "devEx":Lcom/lge/wfds/WfdsDevice;
    iget-object v3, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 82
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_2

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    sub-long v4, v8, v10

    .line 84
    .local v4, "timeDiff":J
    const-wide/16 v8, 0x7d0

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 85
    const-string v3, "WfdsPeerList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WFDS device is lost (updatePeersList) ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 88
    iget-object v3, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const/4 v7, 0x2

    iput v7, v3, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 90
    iget-object v3, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v1}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    .line 92
    :cond_1
    iget-object v3, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/lge/wfds/WfdsPeerList;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "devEx":Lcom/lge/wfds/WfdsDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "timeDiff":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 95
    .restart local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v1    # "devEx":Lcom/lge/wfds/WfdsDevice;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v3, v0}, Lcom/lge/wfds/WfdsDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 98
    .end local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "devEx":Lcom/lge/wfds/WfdsDevice;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    return-void
.end method
