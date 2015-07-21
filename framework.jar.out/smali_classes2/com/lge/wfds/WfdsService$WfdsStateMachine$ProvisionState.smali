.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    .line 1110
    const-string v0, "WfdsService"

    const-string v1, "STATE : ProvisionState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-nez v0, :cond_1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 1130
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v0, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1120
    const/4 v6, 0x4

    .line 1125
    .local v6, "connectionCapa":I
    :goto_1
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v3, v3, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v5, v5, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->requestP2pConnection(Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z
    invoke-static/range {v0 .. v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z

    .line 1129
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionReceivedTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$9200(Lcom/lge/wfds/WfdsService;)V

    goto :goto_0

    .line 1122
    .end local v6    # "connectionCapa":I
    :cond_2
    const/4 v6, 0x1

    .restart local v6    # "connectionCapa":I
    goto :goto_1
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3800(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v1, 0x0

    # setter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$3802(Lcom/lge/wfds/WfdsService;Z)Z

    .line 1328
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v12, 0x900021

    const/4 v11, 0x5

    const/4 v13, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1138
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    move v8, v9

    .line 1320
    :goto_0
    return v8

    .line 1140
    :sswitch_0
    const-string v8, "WfdsService"

    const-string v9, "The connection request is ignored from WifiP2pService"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v8, v10

    .line 1320
    goto :goto_0

    .line 1147
    :sswitch_2
    const-string v8, "WfdsService"

    const-string v9, "Received the WFDS Provision Discovery Request from peer"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1152
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1153
    .local v4, "eventStr":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1156
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v6, v4}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v6, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v1, v6, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1158
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v8, "WfdsService"

    const-string v9, "Received the WFDS Provision Discovery Response from peer"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v8, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v9

    iget-object v9, v9, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1162
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v8, v4}, Lcom/lge/wfds/WfdsService;->access$9400(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 1163
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1168
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4    # "eventStr":Ljava/lang/String;
    .end local v6    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_4
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1169
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 1170
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6000(Lcom/lge/wfds/WfdsService;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1171
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6100(Lcom/lge/wfds/WfdsService;)V

    .line 1172
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1174
    :cond_1
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1179
    :sswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1180
    .restart local v4    # "eventStr":Ljava/lang/String;
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v6, v4}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 1182
    .restart local v6    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1184
    const-string v8, "WfdsService"

    const-string v9, "Process the WFDS_PROV_DISC_KEYPAD_EVENT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v8, v8, Landroid/net/wifi/WpsInfo;->setup:I

    if-ne v8, v13, :cond_0

    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v9, v6, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1188
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v11, v11, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v8, v9, v11}, Lcom/lge/wfds/WfdsDialog;->showProvDiscEnterPinDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1190
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;
    invoke-static {v8, v4}, Lcom/lge/wfds/WfdsService;->access$9802(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1191
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v8

    const/16 v9, 0x2ee0

    invoke-virtual {v8, v9}, Lcom/lge/wfds/WfdsNative;->p2pListen(I)Z

    .line 1192
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1198
    .end local v4    # "eventStr":Ljava/lang/String;
    .end local v6    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_6
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$10000(Lcom/lge/wfds/WfdsService;)V

    .line 1199
    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDisplay(Ljava/lang/String;Z)Z
    invoke-static {v11, v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;Z)Z

    .line 1200
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1204
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .line 1205
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    const-string v8, "WfdsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Seeker: DEFER_EVENT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigEx;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v11, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1208
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v8, v10}, Lcom/lge/wfds/WfdsService;->access$3802(Lcom/lge/wfds/WfdsService;Z)Z

    .line 1209
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1210
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$10200(Lcom/lge/wfds/WfdsService;)V

    .line 1211
    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v8, v8, Landroid/net/wifi/WpsInfo;->setup:I

    if-ne v8, v10, :cond_2

    .line 1212
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v10, v8, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1213
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v11, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    iput-object v11, v8, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1215
    :try_start_0
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v11, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    # setter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static {v8, v11}, Lcom/lge/wfds/WfdsService;->access$3902(Lcom/lge/wfds/WfdsService;I)I

    .line 1216
    const-string v8, "WfdsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Display Pin Number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v12, v12, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static {v12}, Lcom/lge/wfds/WfdsService;->access$3900(Lcom/lge/wfds/WfdsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_2
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v11, v11, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v11, v11, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Lcom/lge/wfds/WfdsDialog;->showProvDiscShowPinDialog(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1217
    :catch_0
    move-exception v3

    .line 1218
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "WfdsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberFormatException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService;->access$3902(Lcom/lge/wfds/WfdsService;I)I

    goto :goto_2

    .line 1224
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v8, v9, v13}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_1

    .line 1230
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1231
    .local v2, "deviceAddr":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1232
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    # setter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService;->access$3002(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .line 1233
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iput-object v2, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1235
    :cond_3
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3800(Lcom/lge/wfds/WfdsService;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1236
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$10000(Lcom/lge/wfds/WfdsService;)V

    .line 1240
    :goto_3
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService;->access$7300(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1241
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1238
    :cond_4
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    goto :goto_3

    .line 1246
    .end local v2    # "deviceAddr":Ljava/lang/String;
    :sswitch_9
    const-string v8, "WfdsService"

    const-string v9, "WFDS_PD_DEFERRED/RECEIVED_TIMEOUT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1248
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1252
    :sswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1253
    .local v5, "peerAddr":Ljava/lang/String;
    const-string v8, "WfdsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received WFDS_PROV_DISC_ACCEPT_EVENT: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$10000(Lcom/lge/wfds/WfdsService;)V

    .line 1255
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v9

    const/4 v11, 0x3

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v8, v9, v11}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1258
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->dismissAllDialog()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto/16 :goto_1

    .line 1262
    .end local v5    # "peerAddr":Ljava/lang/String;
    :sswitch_b
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v8, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1263
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1268
    :sswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-class v11, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1269
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/lge/wfds/session/AspSession;

    .line 1271
    .local v7, "session":Lcom/lge/wfds/session/AspSession;
    const-string v8, "WfdsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received CMD_CANCEL_CONNECT_SESSION: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1277
    :cond_5
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v9, 0x90001f

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v9, v13}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1282
    :cond_6
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1284
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v11, 0x900020

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v8, p1, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 1286
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v8

    iget-object v8, v8, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v11, v11, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService;->access$4100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1287
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v8

    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v11, v11, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/lge/wfds/WfdsNative;->provisionTimeoutOccurred(Ljava/lang/String;)Z

    .line 1290
    :cond_7
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService;->access$3802(Lcom/lge/wfds/WfdsService;Z)Z

    .line 1291
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1292
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v8}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/wfds/WfdsNative;->p2pFlush()Z

    .line 1294
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v8, v8, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, v9, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v9

    const/16 v11, 0x9

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v8, v9, v11}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1297
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10800(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1302
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_d
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v12, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1306
    :sswitch_e
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v12, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1310
    :sswitch_f
    iget-object v8, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v9, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v9, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1138
    nop

    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_d
        0x900004 -> :sswitch_e
        0x900005 -> :sswitch_f
        0x90000f -> :sswitch_c
        0x901007 -> :sswitch_0
        0x901008 -> :sswitch_9
        0x901009 -> :sswitch_9
        0x902006 -> :sswitch_a
        0x902007 -> :sswitch_b
        0x902008 -> :sswitch_2
        0x902009 -> :sswitch_3
        0x90200a -> :sswitch_4
        0x90200b -> :sswitch_6
        0x90200c -> :sswitch_5
        0x90200d -> :sswitch_8
        0x90200f -> :sswitch_1
        0x902011 -> :sswitch_7
    .end sparse-switch
.end method
