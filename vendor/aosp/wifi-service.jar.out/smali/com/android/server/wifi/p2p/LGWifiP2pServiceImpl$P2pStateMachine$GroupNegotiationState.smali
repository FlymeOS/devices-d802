.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
.super Lcom/android/internal/util/State;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupNegotiationState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1828
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, -0x2

    .line 1832
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1833
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    move v6, v7

    .line 1994
    :goto_0
    return v6

    .line 1838
    :sswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " go success"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v6, v8

    .line 1994
    goto :goto_0

    .line 1841
    :sswitch_1
    iget-object v9, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9, v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1842
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " group started"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1844
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 1848
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$10500()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V
    invoke-static {v6, v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 1849
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1850
    .local v0, "devAddr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 1854
    .end local v0    # "devAddr":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1864
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1865
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v12}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 1867
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V

    .line 1895
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1869
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v12}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 1870
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    iget-object v9, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v9, v9, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v11, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v9

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$10802(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1873
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Lcom/android/server/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    .line 1874
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$10800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v9, 0x30001

    invoke-virtual {v6, v9}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1875
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    .line 1876
    .local v1, "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    iget-object v9, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 1877
    .local v3, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v3, :cond_5

    .line 1879
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1881
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1882
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1884
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    iget-object v9, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v9, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1885
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 1893
    :goto_3
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v6

    invoke-interface {v6, v8}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->setWifiP2pNotificationIcon(Z)V

    goto/16 :goto_2

    .line 1891
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown group owner "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 1898
    .end local v1    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1899
    .local v5, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v5, v6, :cond_6

    .line 1900
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1905
    .end local v5    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_6
    :sswitch_3
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " go failure"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1906
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$8200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 1907
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1913
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1914
    .restart local v5    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v5, v6, :cond_0

    .line 1915
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1920
    .end local v5    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1921
    .restart local v5    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-eq v5, v6, :cond_0

    .line 1926
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invitation result "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1927
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v5, v6, :cond_8

    .line 1930
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget v2, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1931
    .local v2, "netId":I
    if-ltz v2, :cond_7

    .line 1932
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v7, "Remove unknown client from the list"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1933
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z
    invoke-static {v6, v2, v7, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z

    .line 1937
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iput v11, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1938
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_1

    .line 1943
    .end local v2    # "netId":I
    :cond_8
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v5, v6, :cond_b

    .line 1951
    :cond_9
    sget-boolean v6, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_a

    .line 1952
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1955
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iput v11, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1956
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_1

    .line 1959
    :cond_b
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v5, v6, :cond_d

    .line 1961
    sget-boolean v6, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_c

    .line 1962
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1965
    :cond_c
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1969
    :cond_d
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$8200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 1970
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1976
    .end local v5    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    .line 1977
    .local v4, "provDiscEx":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v6, v6, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1978
    iget-boolean v6, v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    if-nez v6, :cond_0

    .line 1981
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v6, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v6, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    const-string v7, "12345670"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1983
    :cond_e
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const-string v7, "12345670"

    iput-object v7, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1985
    :cond_f
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iput v11, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1986
    iget-object v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-boolean v9, v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    goto/16 :goto_1

    .line 1833
    nop

    :sswitch_data_0
    .sparse-switch
        0x22400 -> :sswitch_6
        0x24019 -> :sswitch_0
        0x2401a -> :sswitch_2
        0x2401b -> :sswitch_0
        0x2401c -> :sswitch_4
        0x2401d -> :sswitch_1
        0x2401e -> :sswitch_3
        0x24020 -> :sswitch_5
    .end sparse-switch
.end method
