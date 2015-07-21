.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
.super Lcom/android/internal/util/State;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2101
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2103
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;->invalidate()V

    .line 2105
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$12600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2106
    const-string v0, "LGWifiP2pService"

    const-string v1, "[LGE_WLAN] skip enter() already in GroupCreatedState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$12602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2110
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$12602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 2112
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$2900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$12700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;I)V

    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v1, "192.168.49.1"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$12800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V

    .line 2123
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2418
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$12600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2419
    const-string v0, "LGWifiP2pService"

    const-string v1, "[LGE_WLAN] skip exit() in GroupCreatedState 20121213"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2423
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$12700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;I)V

    .line 2424
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2425
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$2900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2427
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->setWifiP2pNotificationIcon(Z)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2131
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2411
    const/4 v1, 0x0

    .line 2413
    :goto_0
    return v1

    .line 2134
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2135
    .local v10, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v11, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2137
    .local v11, "deviceAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v4, 0x2402a

    if-ne v1, v4, :cond_0

    .line 2138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [LGE]legacy wifi connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, v11}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    .line 2140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, v11}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2144
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 2145
    if-eqz v11, :cond_4

    .line 2146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2151
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->setWifiP2pNotificationIcon(Z)V

    .line 2152
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v11, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ap sta connected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2158
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2413
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11    # "deviceAddress":Ljava/lang/String;
    :cond_2
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2149
    .restart local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v11    # "deviceAddress":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Ljava/lang/String;)V

    goto :goto_1

    .line 2156
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "Connect on null device address, ignore"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2161
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11    # "deviceAddress":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2162
    .restart local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v11, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2163
    .restart local v11    # "deviceAddress":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 2164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v11, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2167
    .local v9, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    .line 2173
    .end local v9    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->setWifiP2pNotificationIcon(Z)V

    .line 2176
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "Client list empty, remove non-persistent p2p group"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 2191
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ap sta disconnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2183
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    goto :goto_4

    .line 2186
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2188
    .local v7, "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 2194
    .end local v7    # "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect on unknown device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2198
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11    # "deviceAddress":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/DhcpResults;

    .line 2199
    .local v12, "dhcpResults":Landroid/net/DhcpResults;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    if-eqz v12, :cond_c

    .line 2201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DhcpResults: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v12, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$12800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    .line 2207
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v16

    .line 2208
    .local v16, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v4}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 2210
    .end local v16    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 2211
    .local v13, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add iface to local network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2212
    .end local v13    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 2213
    .local v13, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add iface to local network(LGE_PATCH) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2216
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "DHCP failed"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 2221
    .end local v12    # "dhcpResults":Landroid/net/DhcpResults;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remove group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$12900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 2225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22012

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_3

    .line 2227
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->handleGroupRemoved()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22011

    const/4 v5, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_3

    .line 2245
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " group removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->handleGroupRemoved()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2250
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2252
    .restart local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add device to lost list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$8400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2255
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2258
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2260
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22010

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 2266
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/net/wifi/WpsInfo;

    .line 2267
    .local v23, "wps":Landroid/net/wifi/WpsInfo;
    if-nez v23, :cond_f

    .line 2268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x2203f

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_3

    .line 2271
    :cond_f
    const/16 v21, 0x1

    .line 2272
    .local v21, "ret":Z
    move-object/from16 v0, v23

    iget v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v1, :cond_10

    .line 2273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 2288
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    if-eqz v21, :cond_12

    const v1, 0x22040

    :goto_7
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_3

    .line 2275
    :cond_10
    move-object/from16 v0, v23

    iget-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 2276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2278
    .local v19, "pin":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "any"

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 2280
    :catch_2
    move-exception v17

    .line 2281
    .local v17, "ignore":Ljava/lang/NumberFormatException;
    const/16 v21, 0x0

    goto :goto_6

    .line 2284
    .end local v17    # "ignore":Ljava/lang/NumberFormatException;
    .end local v19    # "pin":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    goto :goto_6

    .line 2288
    :cond_12
    const v1, 0x2203f

    goto :goto_7

    .line 2292
    .end local v21    # "ret":Z
    .end local v23    # "wps":Landroid/net/wifi/WpsInfo;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->isBtWifiP2pPreventState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "BT and WiFi are connected."

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2295
    :cond_13
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2296
    .local v2, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping connect requeset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22008

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_3

    .line 2301
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inviting device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 2305
    .local v3, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    iget-object v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->isWfdsDevice(Ljava/lang/String;)Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v14

    .line 2307
    .local v14, "gc":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v14}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 2309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/server/wfds/P2pWfdsExtIface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/server/wfds/P2pWfdsExtIface;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/lge/server/wfds/P2pWfdsExtIface;->connectForWfds(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroup;Z)I

    move-result v1

    if-gez v1, :cond_15

    .line 2311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22008

    const/4 v5, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_3

    .line 2315
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    .line 2316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22009

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 2317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_3

    .line 2324
    .end local v14    # "gc":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22009

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_3

    .line 2329
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22008

    const/4 v5, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_3

    .line 2335
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v3    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 2336
    .local v22, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-object/from16 v0, v22

    if-eq v0, v1, :cond_2

    .line 2340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invitation result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2341
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_2

    .line 2344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v18

    .line 2345
    .local v18, "netId":I
    if-ltz v18, :cond_2

    .line 2346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "Remove unknown client from the list"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v18

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "Already removed the client, ignore"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2354
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22007

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 2361
    .end local v18    # "netId":I
    .end local v22    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 2362
    .local v20, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v4, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2364
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v4, 0x24023

    if-ne v1, v4, :cond_19

    .line 2365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x2

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2372
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2366
    :cond_19
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v4, 0x24024

    if-ne v1, v4, :cond_1a

    .line 2367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x1

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iput-object v4, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_8

    .line 2370
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x0

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_8

    .line 2375
    .end local v20    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "Duplicate group creation event notice, ignore"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2379
    :sswitch_c
    const/4 v8, 0x0

    .line 2380
    .local v8, "connected":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2381
    .restart local v9    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget v1, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x1

    if-gt v1, v4, :cond_1b

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 2383
    .end local v9    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1c
    const-string v1, "LGWifiP2pService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_WLAN]DISCOVER_PEERS GroupCreatedState connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    if-nez v8, :cond_1d

    .line 2385
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2387
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22002

    const/4 v5, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_3

    .line 2393
    .end local v8    # "connected":I
    .end local v15    # "i$":Ljava/util/Iterator;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2394
    .restart local v9    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget v1, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e

    .line 2395
    const/4 v1, 0x2

    iput v1, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    goto :goto_a

    .line 2400
    .end local v9    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x2200c

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_3

    .line 2405
    .end local v15    # "i$":Ljava/util/Iterator;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->sendWPSOverlapToastMessage()V

    goto/16 :goto_3

    .line 2131
    :sswitch_data_0
    .sparse-switch
        0x20084 -> :sswitch_6
        0x22001 -> :sswitch_c
        0x22007 -> :sswitch_8
        0x2200a -> :sswitch_d
        0x22010 -> :sswitch_3
        0x2203e -> :sswitch_7
        0x2400a -> :sswitch_e
        0x24016 -> :sswitch_5
        0x2401d -> :sswitch_b
        0x2401e -> :sswitch_4
        0x24020 -> :sswitch_9
        0x24021 -> :sswitch_a
        0x24023 -> :sswitch_a
        0x24024 -> :sswitch_a
        0x24029 -> :sswitch_1
        0x2402a -> :sswitch_0
        0x2402c -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method
