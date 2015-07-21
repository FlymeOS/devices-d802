.class public Lcom/lge/server/wfds/P2pWfdsExt;
.super Ljava/lang/Object;
.source "P2pWfdsExt.java"

# interfaces
.implements Lcom/lge/server/wfds/P2pWfdsExtIface;


# static fields
.field private static final CONNECT_FAILURE:I = -0x1

.field private static final NEEDS_PROVISION_REQ:I = 0x1

.field private static final TAG:Ljava/lang/String; = "P2pWfdsExt"

.field private static mWifiNative:Lcom/android/server/wifi/WifiNativeEx;


# instance fields
.field private mP2pStateMachine:Lcom/android/internal/util/StateMachine;

.field private mWfdsManager:Lcom/lge/wfds/WfdsManager;

.field private mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/lge/wfds/WfdsDeviceList;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDeviceList;-><init>()V

    iput-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    .line 46
    return-void
.end method

.method private addWfdsPeerDevice(Lcom/lge/wfds/WfdsDevice;)V
    .locals 2
    .param p1, "wfdsDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 447
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDeviceList;->update(Lcom/lge/wfds/WfdsDevice;)V

    .line 446
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCurrentClientsFromClientList([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "currentClients"    # [Ljava/lang/String;
    .param p2, "p2pClients"    # [Ljava/lang/String;

    .prologue
    .line 210
    const/4 v6, 0x0

    .line 212
    .local v6, "includedClients":I
    const-string v9, "P2pWfdsExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentClients number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v9, "P2pWfdsExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p2p clients number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    .line 216
    .local v3, "currentClient":Ljava/lang/String;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v2, v1, v4

    .line 217
    .local v2, "client":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 218
    add-int/lit8 v6, v6, 0x1

    .line 215
    .end local v2    # "client":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 216
    .end local v5    # "i$":I
    .restart local v2    # "client":Ljava/lang/String;
    .restart local v4    # "i$":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "client":Ljava/lang/String;
    .end local v3    # "currentClient":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .restart local v5    # "i$":I
    :cond_2
    const-string v9, "P2pWfdsExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentClients "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " are included in p2p clients list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v6
.end method

.method private clearWfdsPeerDevice()V
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDeviceList;->clear()Z

    .line 462
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getGroupFromClientList(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Ljava/lang/String;)I
    .locals 15
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p3, "clientsAddress"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v9, -0x2

    .line 251
    .local v9, "netId":I
    const/4 v3, 0x0

    .line 253
    .local v3, "currentClients":[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 254
    :cond_0
    const-string v12, "P2pWfdsExt"

    const-string v13, "GetGroupFromClientList: dev or groups is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v12, -0x1

    .line 291
    :goto_0
    return v12

    .line 258
    :cond_1
    const-string v12, "P2pWfdsExt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GetGroupFromClientList: device : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v12, "P2pWfdsExt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GetGroupFromClientList: groups : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz p3, :cond_2

    .line 262
    const-string v12, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 263
    const-string v12, "P2pWfdsExt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current Clients: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v4

    .line 267
    .local v4, "gc":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 268
    .local v5, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v9

    .line 269
    sget-object v12, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    if-eqz v12, :cond_4

    .line 270
    sget-object v12, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    const-string v13, "p2p_client_list"

    invoke-virtual {v12, v9, v13}, Lcom/android/server/wifi/WifiNativeEx;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "p2pClients":Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_3

    .line 277
    const-string v12, "P2pWfdsExt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GetGroupFromClientList: Client List: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 279
    .local v10, "p2pClientList":[Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_3

    aget-object v2, v1, v7

    .line 280
    .local v2, "client":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 281
    if-eqz v3, :cond_5

    .line 282
    invoke-direct {p0, v3, v10}, Lcom/lge/server/wfds/P2pWfdsExt;->checkCurrentClientsFromClientList([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    array-length v13, v3

    if-ne v12, v13, :cond_6

    move v12, v9

    .line 283
    goto/16 :goto_0

    .line 272
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "client":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "p2pClientList":[Ljava/lang/String;
    .end local v11    # "p2pClients":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "p2pClients":Ljava/lang/String;
    goto :goto_1

    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "client":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "p2pClientList":[Ljava/lang/String;
    :cond_5
    move v12, v9

    .line 286
    goto/16 :goto_0

    .line 279
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 291
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "client":Ljava/lang/String;
    .end local v5    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "p2pClientList":[Ljava/lang/String;
    .end local v11    # "p2pClients":Ljava/lang/String;
    :cond_7
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method private getGroupFromOwnerList(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;)I
    .locals 7
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    const/4 v3, -0x1

    .line 229
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 230
    :cond_0
    const-string v4, "P2pWfdsExt"

    const-string v5, "GetGroupFromClientList: dev or groups is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    :goto_0
    return v3

    .line 234
    :cond_2
    const-string v4, "P2pWfdsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetGroupFromOwnerList: device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v4, "P2pWfdsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetGroupFromOwnerList: groups : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v0

    .line 238
    .local v0, "gc":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 239
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    const-string v4, "P2pWfdsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetGroupFromOwnerList: device address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", group owner address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 242
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v3

    goto/16 :goto_0
.end method

.method private getWfdsPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-nez p1, :cond_0

    .line 429
    const/4 v1, 0x0

    .line 436
    :goto_0
    return-object v1

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v2

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/WfdsDeviceList;->get(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    .line 434
    monitor-exit v2

    move-object v1, v0

    .line 436
    goto :goto_0

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "num":I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 407
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 411
    :goto_0
    return v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "P2pWfdsExt"

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

    goto :goto_0
.end method

.method private processWfdsPdChanged(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "savedPeerConfig"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 152
    const-string v2, "wfdsPdEvent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    const-string v2, "P2pWfdsExt"

    const-string v3, "PD_CHANGED_ACTION failed because data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v1, v0}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "provDiscEvent":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iput-boolean v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    .line 163
    const-string v2, "P2pWfdsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiP2pProvDiscEventEx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    if-ne v2, v5, :cond_1

    .line 169
    iget-object v2, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x24021

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    if-ne v2, v6, :cond_2

    .line 174
    iget-object v2, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x24022

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v4, v0}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_2
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 180
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 181
    const-string v2, "12345670"

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x22400

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_4
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 188
    iget-object v2, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x24024

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_5
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 193
    if-eqz p2, :cond_6

    .line 194
    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 195
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 196
    const/4 v2, -0x1

    iput v2, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 197
    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 200
    :cond_6
    iget-object v2, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x24023

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    :cond_7
    const-string v2, "P2pWfdsExt"

    const-string v3, "Invalid Config_Method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private removeWfdsPeerDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "wfdsDeviceAddress"    # Ljava/lang/String;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDeviceList;->remove(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    .line 456
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private selectNetId(II)I
    .locals 5
    .param p1, "gcNetId"    # I
    .param p2, "goNetId"    # I

    .prologue
    .line 380
    const/4 v1, -0x1

    .line 381
    .local v1, "netId":I
    const/4 v0, 0x0

    .line 383
    .local v0, "isGo":Z
    sget-object v2, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNativeEx;->getWfdsRequestRole()Z

    move-result v0

    .line 384
    const-string v2, "P2pWfdsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDS is GO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 387
    move v1, p2

    .line 396
    :cond_0
    :goto_0
    return v1

    .line 389
    :cond_1
    if-ltz p1, :cond_2

    .line 390
    move v1, p1

    goto :goto_0

    .line 391
    :cond_2
    if-ltz p2, :cond_0

    .line 392
    move v1, p2

    goto :goto_0
.end method


# virtual methods
.method public addWfdsFilters(Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 70
    const-string v0, "com.lge.wfds.DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v0, "com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v0, "com.lge.wfds.PERSISTENT_UNKNOWN_GROUP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v0, "com.lge.wfds.DEVICE_LOST"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v0, "com.lge.wfds.DEVICE_INFO_LOST"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v0, "com.lge.wfds.PERSISTENT_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v0, "com.lge.wfds.CREATE_GROUP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public connectForWfds(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroup;Z)I
    .locals 17
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p4, "grp"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p5, "currentlyGroupExist"    # Z

    .prologue
    .line 296
    const/4 v7, -0x2

    .line 297
    .local v7, "gcNetId":I
    const/4 v8, -0x2

    .line 299
    .local v8, "goNetId":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 300
    :cond_0
    const/4 v14, -0x1

    .line 376
    :goto_0
    return v14

    .line 303
    :cond_1
    const-string v14, "P2pWfdsExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Try to connect to device "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v14, v14, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v15, 0x5

    if-eq v14, v15, :cond_2

    .line 306
    const-string v14, "P2pWfdsExt"

    const-string v15, "WPS Method is not DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v14, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v11

    .line 311
    .local v11, "join":Z
    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 312
    const-string v14, "P2pWfdsExt"

    const-string v15, "Target device reaches group limit."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v11, 0x0

    .line 335
    :cond_3
    if-nez v11, :cond_9

    .line 336
    const/4 v5, 0x0

    .line 337
    .local v5, "clientsAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/lge/server/wfds/P2pWfdsExt;->getGroupFromOwnerList(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;)I

    move-result v7

    .line 338
    if-eqz p5, :cond_b

    if-eqz p4, :cond_b

    .line 339
    invoke-virtual/range {p4 .. p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    .line 340
    .local v4, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 341
    .local v3, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    goto :goto_1

    .line 314
    .end local v3    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v5    # "clientsAddress":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v11, :cond_3

    .line 315
    const/4 v12, -0x1

    .line 316
    .local v12, "netId":I
    const-string v14, "P2pWfdsExt"

    const-string v15, "WFDS Join Case: check whether the persistent group is existed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v6

    .line 319
    .local v6, "gc":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 320
    .local v9, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 321
    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v12

    .line 326
    .end local v6    # "gc":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    .end local v9    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v14, "P2pWfdsExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WFDS Join Case: Network ID is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-ltz v12, :cond_7

    .line 328
    sget-object v14, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    if-eqz v14, :cond_7

    sget-object v14, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v12, v15}, Lcom/android/server/wifi/WifiNativeEx;->wfdsReinvoke(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 329
    const-string v14, "P2pWfdsExt"

    const-string v15, "WFDS Join Case: Reinvocation is successfull"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 343
    .end local v12    # "netId":I
    .restart local v4    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .restart local v5    # "clientsAddress":Ljava/lang/String;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    const-string v14, "P2pWfdsExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WFDS: current client list: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v5}, Lcom/lge/server/wfds/P2pWfdsExt;->getGroupFromClientList(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Ljava/lang/String;)I

    move-result v8

    .line 348
    .end local v4    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    const-string v14, "P2pWfdsExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WFDS: gcNetId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", goNetId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v5    # "clientsAddress":Ljava/lang/String;
    :cond_9
    if-eqz p5, :cond_c

    .line 352
    const-string v14, "P2pWfdsExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NetId related with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-ltz v8, :cond_a

    sget-object v14, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    if-eqz v14, :cond_a

    sget-object v14, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v8, v15}, Lcom/android/server/wifi/WifiNativeEx;->wfdsReinvoke(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 355
    const-string v14, "P2pWfdsExt"

    const-string v15, "WFDS Reinvocation is successfull"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_a
    :goto_3
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 346
    .restart local v5    # "clientsAddress":Ljava/lang/String;
    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/lge/server/wfds/P2pWfdsExt;->getGroupFromClientList(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    .line 358
    .end local v5    # "clientsAddress":Ljava/lang/String;
    :cond_c
    const/4 v12, -0x1

    .line 359
    .restart local v12    # "netId":I
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lge/server/wfds/P2pWfdsExt;->getWfdsPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v13

    .line 361
    .local v13, "wfdsDev":Lcom/lge/wfds/WfdsDevice;
    if-eqz v13, :cond_d

    iget-object v14, v13, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v14, :cond_d

    .line 362
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/lge/server/wfds/P2pWfdsExt;->selectNetId(II)I

    move-result v12

    .line 367
    :goto_4
    if-ltz v12, :cond_e

    sget-object v14, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    if-eqz v14, :cond_e

    sget-object v14, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v12, v15}, Lcom/android/server/wifi/WifiNativeEx;->wfdsReinvoke(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 369
    const-string v14, "P2pWfdsExt"

    const-string v15, "WFDS Invocation is successfull"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p1

    iput v12, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    goto :goto_3

    .line 364
    :cond_d
    const-string v14, "P2pWfdsExt"

    const-string v15, "connectForWfds() devWfdsInfo field is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 372
    :cond_e
    const-string v14, "P2pWfdsExt"

    const-string v15, "WFDS Invocation is failed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public getWfdsManagerInstance()Lcom/lge/wfds/WfdsManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lge/wfds/WfdsManager;->getInstance()Lcom/lge/wfds/WfdsManager;

    move-result-object v0

    goto :goto_0
.end method

.method public initP2pWfdsExt(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 2
    .param p1, "p2pStateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    .line 60
    invoke-static {}, Lcom/lge/wfds/WfdsManager;->getInstance()Lcom/lge/wfds/WfdsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    .line 61
    iget-object v0, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "P2pWfdsExt"

    const-string v1, "WfdsManager is acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    new-instance v0, Lcom/android/server/wifi/WifiNativeEx;

    invoke-direct {v0, p2}, Lcom/android/server/wifi/WifiNativeEx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/server/wfds/P2pWfdsExt;->mWifiNative:Lcom/android/server/wifi/WifiNativeEx;

    .line 67
    return-void

    .line 64
    :cond_0
    const-string v0, "P2pWfdsExt"

    const-string v1, "WfdsManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isWfdsDevice(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 415
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/server/wfds/P2pWfdsExt;->getWfdsPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processWfdsIntents(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mSavedPeerConfig"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const v6, 0x24015

    const/4 v3, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.lge.wfds.DEVICE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string v4, "P2pWfdsExt"

    const-string v5, "Receive intent: com.lge.wfds.DEVICE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v4, "wifiP2pDevice"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/WfdsDevice;

    .line 89
    .local v2, "device":Lcom/lge/wfds/WfdsDevice;
    invoke-direct {p0, v2}, Lcom/lge/server/wfds/P2pWfdsExt;->addWfdsPeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 90
    iget-object v4, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDevice;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 149
    .end local v2    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v4, "com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const-string v4, "P2pWfdsExt"

    const-string v5, "Receive intent: com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/lge/server/wfds/P2pWfdsExt;->processWfdsPdChanged(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v4, "com.lge.wfds.PERSISTENT_UNKNOWN_GROUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    const-string v4, "wfdsUnknownGroupId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "data":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x22401

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    .end local v1    # "data":Ljava/lang/String;
    :cond_3
    const-string v4, "com.lge.wfds.DEVICE_LOST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    const-string v4, "P2pWfdsExt"

    const-string v5, "Receive intent: com.lge.wfds.DEVICE_LOST"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v4, "wifiP2pDevice"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .restart local v1    # "data":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lge/server/wfds/P2pWfdsExt;->removeWfdsPeerDevice(Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x24016

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "P2P-DEVICE-LOST p2p_dev_addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v1    # "data":Ljava/lang/String;
    :cond_4
    const-string v4, "com.lge.wfds.DEVICE_INFO_LOST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    const-string v4, "P2pWfdsExt"

    const-string v5, "Receive intent: com.lge.wfds.DEVICE_INFO_LOST"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v4, "wifiP2pDevice"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/WfdsDevice;

    .line 119
    .restart local v2    # "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, v2, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/lge/server/wfds/P2pWfdsExt;->removeWfdsPeerDevice(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDevice;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 125
    .end local v2    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_5
    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 126
    const-string v4, "wifi_p2p_state"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 129
    .local v3, "p2pEnabled":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/lge/server/wfds/P2pWfdsExt;->clearWfdsPeerDevice()V

    goto/16 :goto_0

    .line 126
    .end local v3    # "p2pEnabled":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 135
    :cond_7
    const-string v4, "com.lge.wfds.PERSISTENT_RESULT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    const-string v4, "wifiP2pDevice"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/WfdsDevice;

    .line 137
    .restart local v2    # "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x22402

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_8
    const-string v4, "com.lge.wfds.CREATE_GROUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 142
    iget-object v4, p0, Lcom/lge/server/wfds/P2pWfdsExt;->mP2pStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x22403

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 147
    :cond_9
    const-string v4, "P2pWfdsExt"

    const-string v5, "Receive intent: but this intent does not be related to WFDS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
