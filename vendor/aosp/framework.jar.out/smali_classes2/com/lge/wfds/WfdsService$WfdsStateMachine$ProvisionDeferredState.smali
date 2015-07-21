.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionDeferredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1334
    const-string v0, "WfdsService"

    const-string v1, "STATE : ProvisionDeferredState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10200(Lcom/lge/wfds/WfdsService;)V

    .line 1336
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1459
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v7, 0x900021

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x5

    .line 1340
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1452
    const/4 v5, 0x0

    .line 1454
    :goto_0
    return v5

    .line 1342
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "confirmMsg"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "confirmMsg":Ljava/lang/String;
    const-string v5, "WfdsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_CONFIRM_SESSION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1345
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1346
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v9, :cond_2

    .line 1347
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    if-nez v5, :cond_1

    .end local v0    # "confirmMsg":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_1
    :sswitch_1
    move v5, v6

    .line 1454
    goto :goto_0

    .line 1350
    .restart local v0    # "confirmMsg":Ljava/lang/String;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    aget-object v7, v4, v6

    iput-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1352
    :cond_2
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v7, 0x901029

    invoke-virtual {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1353
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_3
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1354
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v7, 0x90102a

    invoke-virtual {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1356
    :cond_4
    const-string v5, "WfdsService"

    const-string v7, "Invaild confirm message"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1361
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :sswitch_2
    const-string v5, "WfdsService"

    const-string v7, "Provision Discovery: user accept"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserAccept(Landroid/os/Message;)Z
    invoke-static {v5, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1363
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1368
    :sswitch_3
    const-string v5, "WfdsService"

    const-string v7, "Provision Discovery: user reject"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserReject()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1370
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1375
    :sswitch_4
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1376
    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 1377
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$6000(Lcom/lge/wfds/WfdsService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1378
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$6100(Lcom/lge/wfds/WfdsService;)V

    .line 1379
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1381
    :cond_5
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1387
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1388
    .local v2, "eventStr":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v3, v2}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v3, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1392
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    if-ne v5, v9, :cond_0

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v7, v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v5, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1396
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, v7, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lge/wfds/WfdsNative;->deviceAuth(Landroid/net/wifi/p2p/WifiP2pConfigEx;)Ljava/lang/String;

    .line 1397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, v7, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v7, v7, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, "event":Ljava/lang/String;
    const-string v5, "WfdsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KEYPAD Event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/lge/wfds/WfdsService;->access$9400(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 1400
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1406
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "eventStr":Ljava/lang/String;
    .end local v3    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_6
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 1407
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, v5, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, v7, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService;->access$7300(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1408
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1412
    :sswitch_7
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1413
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1418
    :sswitch_8
    const-string v5, "WfdsService"

    const-string v7, "WFDS_PD_DEFERRED/RECEIVED_TIMEOUT"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1420
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11800(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1424
    :sswitch_9
    const-string v5, "WfdsService"

    const-string v7, "ProvisionDeferredState - P2P Group Removed.."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1429
    :sswitch_a
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1434
    :sswitch_b
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1439
    :sswitch_c
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v7, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1444
    :sswitch_d
    const-string v5, "WfdsService"

    const-string v7, "Invaild Event (WFDS_PROV_DISC_DEFER_EVENT)"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1340
    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_a
        0x900004 -> :sswitch_b
        0x900005 -> :sswitch_c
        0x90000d -> :sswitch_0
        0x901008 -> :sswitch_8
        0x901009 -> :sswitch_8
        0x901029 -> :sswitch_2
        0x90102a -> :sswitch_3
        0x902007 -> :sswitch_7
        0x90200a -> :sswitch_4
        0x90200c -> :sswitch_5
        0x90200d -> :sswitch_6
        0x90200f -> :sswitch_1
        0x902011 -> :sswitch_d
        0x902012 -> :sswitch_9
    .end sparse-switch
.end method
