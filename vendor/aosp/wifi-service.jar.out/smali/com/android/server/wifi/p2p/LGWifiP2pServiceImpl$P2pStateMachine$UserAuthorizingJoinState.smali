.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
.super Lcom/android/internal/util/State;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAuthorizingJoinState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2431
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2435
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$8700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V

    .line 2436
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 2473
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 2440
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2441
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2465
    const/4 v0, 0x0

    .line 2467
    :goto_0
    :sswitch_0
    return v0

    .line 2449
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    .line 2450
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v1, :cond_0

    .line 2451
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2456
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$12602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 2457
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$13900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2453
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v3, v3, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 2460
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v2, "User rejected incoming request"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2461
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$12602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z

    .line 2462
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$11000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$14000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2441
    :sswitch_data_0
    .sparse-switch
        0x23002 -> :sswitch_1
        0x23003 -> :sswitch_2
        0x24021 -> :sswitch_0
        0x24023 -> :sswitch_0
        0x24024 -> :sswitch_0
    .end sparse-switch
.end method
