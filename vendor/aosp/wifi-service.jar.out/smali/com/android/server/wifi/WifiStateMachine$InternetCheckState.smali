.class Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternetCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8388
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8391
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8392
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x200c8

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8394
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 8398
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 8433
    :goto_0
    return v3

    .line 8400
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 8401
    .local v1, "result":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8402
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 2lee CMD_CAPTIVE_ICD_CHECK_COMPLETED, result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8404
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v6, 0x200c8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$23500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8406
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/lge/wifi/extension/IWifiDataContinuityService;->isCaptiveProfile(I)Z

    move-result v0

    .line 8407
    .local v0, "isCaptive":Z
    if-ne v1, v8, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v5, -0x2

    if-ne v1, v5, :cond_5

    .line 8408
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8409
    .local v2, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 8410
    if-ne v1, v8, :cond_4

    .line 8411
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .end local v0    # "isCaptive":Z
    .end local v1    # "result":I
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_3
    :goto_1
    move v3, v4

    .line 8433
    goto :goto_0

    .line 8413
    .restart local v0    # "isCaptive":Z
    .restart local v1    # "result":I
    .restart local v2    # "ssid":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 8414
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-interface {v5, v6, v2, v3}, Lcom/lge/wifi/extension/IWifiDataContinuityService;->bookEnableProfile(ILjava/lang/String;I)V

    goto :goto_1

    .line 8418
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8419
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8420
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8421
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 8426
    .end local v0    # "isCaptive":Z
    .end local v1    # "result":I
    :sswitch_1
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_3

    .line 8427
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InternetCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startDhcpL2ConnectedState(ILjava/lang/String;)V
    invoke-static {v5, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$23400(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)V

    goto :goto_1

    .line 8398
    nop

    :sswitch_data_0
    .sparse-switch
        0x200c8 -> :sswitch_0
        0x24003 -> :sswitch_1
    .end sparse-switch
.end method
