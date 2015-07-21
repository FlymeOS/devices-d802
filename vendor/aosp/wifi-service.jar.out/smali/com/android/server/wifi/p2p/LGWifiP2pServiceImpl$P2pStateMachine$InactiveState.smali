.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;->invalidate()V

    .line 1238
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 1513
    const/16 v18, 0x0

    .line 1515
    :goto_0
    return v18

    .line 1245
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sending connect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1247
    .local v4, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Dropping connect requeset "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22008

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1515
    .end local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_1
    :sswitch_1
    const/16 v18, 0x1

    goto :goto_0

    .line 1253
    .restart local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1260
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22009

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1258
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1266
    .end local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$6202(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22006

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1275
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22005

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1280
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1281
    .restart local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Dropping GO neg request "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1285
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mJoinExistingGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$6302(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1291
    .end local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1292
    .local v6, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v12

    .line 1294
    .local v12, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v12, :cond_5

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const-string v19, "Ignored invitation from null owner"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1299
    :cond_5
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1300
    .restart local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Dropping invitation request "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1306
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1311
    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1320
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mJoinExistingGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$6302(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1313
    :cond_8
    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_3

    .line 1315
    :cond_9
    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_3

    .line 1332
    .end local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v12    # "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    .line 1333
    .local v14, "prov":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-boolean v0, v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_a

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1337
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    iget-object v0, v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    iget-object v0, v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WFDS: WFDS ENTER PIN EVENT: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfig;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1353
    .end local v14    # "prov":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :cond_b
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    .line 1354
    .local v16, "provShowPin":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_c

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1358
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WFDS: WFDS DIPLAY EVENT: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfig;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1370
    .end local v16    # "provShowPin":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    .line 1371
    .local v15, "provDiscEx":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-boolean v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    iget v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 1373
    :cond_d
    const-string v18, "LGWifiP2pService"

    const-string v19, "WFDS: Not WFDS Provision Discovery"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1376
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_f

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1379
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    iget-object v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const-string v19, "12345670"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1382
    iget-boolean v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    iget-boolean v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    .line 1385
    :cond_10
    iget-boolean v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->go:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1388
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1393
    .end local v15    # "provDiscEx":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1394
    .local v5, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v5, :cond_0

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_12

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1400
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1401
    const-string v18, "LGWifiP2pService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WFDS: InactiveState: Received PERSISTENT_RESULT_EVENT from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1407
    .end local v5    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_9
    const-string v18, "LGWifiP2pService"

    const-string v19, "WFDS: InactiveState: Received WFDS_CREATE_GROUP_EVENT"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1413
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1414
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1415
    .local v10, "netId":I
    const/16 v17, 0x0

    .line 1416
    .local v17, "ret":Z
    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_14

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v10

    .line 1419
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_13

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v17

    .line 1428
    :goto_4
    if-eqz v17, :cond_15

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200f

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1422
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v17

    goto :goto_4

    .line 1425
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v17

    goto :goto_4

    .line 1432
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200e

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1438
    .end local v10    # "netId":I
    .end local v17    # "ret":Z
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " group started"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v18

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1447
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected group creation, remove "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1452
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " start listen mode"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1f4

    const/16 v21, 0x1f4

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22043

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1457
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22042

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1461
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " stop listen mode"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22046

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1467
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    goto/16 :goto_1

    .line 1465
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22045

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_5

    .line 1470
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    .line 1471
    .local v13, "p2pChannels":Landroid/os/Bundle;
    const-string v18, "lc"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1472
    .local v9, "lc":I
    const-string v18, "oc"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1473
    .local v11, "oc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " set listen and operating channel"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v11}, Lcom/android/server/wifi/WifiNative;->p2pSetChannel(II)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22049

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1477
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22048

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1481
    .end local v9    # "lc":I
    .end local v11    # "oc":I
    .end local v13    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_f
    const/4 v8, 0x0

    .line 1483
    .local v8, "handoverSelect":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a

    .line 1484
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    const-string v19, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1488
    :cond_1a
    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiNative;->initiatorReportNfcHandover(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22050

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1493
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22051

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1497
    .end local v8    # "handoverSelect":Ljava/lang/String;
    :sswitch_10
    const/4 v7, 0x0

    .line 1499
    .local v7, "handoverRequest":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 1500
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    const-string v19, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1504
    :cond_1c
    if-eqz v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiNative;->responderReportNfcHandover(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22050

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$7900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1509
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22051

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1243
    nop

    :sswitch_data_0
    .sparse-switch
        0x22004 -> :sswitch_2
        0x22007 -> :sswitch_0
        0x2200d -> :sswitch_a
        0x22041 -> :sswitch_c
        0x22044 -> :sswitch_d
        0x22047 -> :sswitch_e
        0x2204e -> :sswitch_f
        0x2204f -> :sswitch_10
        0x22400 -> :sswitch_7
        0x22402 -> :sswitch_8
        0x22403 -> :sswitch_9
        0x24017 -> :sswitch_3
        0x2401d -> :sswitch_b
        0x2401f -> :sswitch_4
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_5
        0x24024 -> :sswitch_6
    .end sparse-switch
.end method
