.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
.super Lcom/android/internal/util/State;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionDiscoveryState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    .line 1696
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1700
    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1703
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 1820
    :cond_0
    :goto_0
    return v5

    .line 1705
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1706
    .local v2, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v1, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1707
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :cond_1
    :goto_1
    move v5, v6

    .line 1820
    goto :goto_0

    .line 1709
    .restart local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v2    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v5, :cond_1

    .line 1710
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1711
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1712
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1716
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1717
    .restart local v2    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v1, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1718
    .restart local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v7, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1720
    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v7, v7, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1721
    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1723
    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v7, v7, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1724
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1725
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1727
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mJoinExistingGroup:Z
    invoke-static {v7, v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$6302(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1728
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1737
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    .line 1739
    .local v3, "provDisc2":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v1, v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1740
    .restart local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1742
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    if-ne v5, v6, :cond_1

    .line 1743
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1744
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v7, v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    iput-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1746
    iget-boolean v5, v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    if-ne v5, v6, :cond_4

    .line 1747
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1751
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$6800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1752
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    iget-object v8, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1759
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "provDisc2":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    .line 1760
    .local v4, "provDiscEx":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v1, v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1761
    .restart local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1765
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    .line 1766
    iget-boolean v5, v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    if-eqz v5, :cond_5

    .line 1767
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v7, "WFDS: ProvisionDiscoveryState - WFDS_PROV_DISC_DEF_PIN_EVENT ignored"

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1768
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$9900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1772
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WFDS: Found a match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1774
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v5, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v5, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    const-string v7, "12345670"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1776
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const-string v7, "12345670"

    iput-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1778
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    if-eq v5, v10, :cond_8

    .line 1779
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iput v10, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1781
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-boolean v8, v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    .line 1782
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1787
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4    # "provDiscEx":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    .line 1788
    .restart local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->isWfdsDevice(Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$8000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1789
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1791
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 1793
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10100(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    .line 1794
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1801
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1802
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1806
    const-string v5, "LGWifiP2pService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WFDS: ProvisionDiscoveryState: Received PERSISTENT_RESULT_EVENT from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1813
    .end local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_6
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v7, "provision discovery failed"

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1814
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v5}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$8200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 1815
    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$10400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1703
    nop

    :sswitch_data_0
    .sparse-switch
        0x22400 -> :sswitch_3
        0x22402 -> :sswitch_5
        0x2401d -> :sswitch_4
        0x24022 -> :sswitch_0
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_2
        0x24027 -> :sswitch_6
    .end sparse-switch
.end method
