.class Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
.super Landroid/os/Handler;
.source "WifiDataContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiDataContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataContinuityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiDataContinuityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    .line 695
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 696
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 700
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 703
    :pswitch_0
    const-string v4, "WifiDataContinuityService"

    const-string v5, "MESSAGE_RESTORE_DISABLED_NETS_BY_DCF received"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # invokes: Lcom/lge/wifi/impl/WifiDataContinuityService;->getWifiState()I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$400(Lcom/lge/wifi/impl/WifiDataContinuityService;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 706
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$500(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$500(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x20405

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v9, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 712
    :pswitch_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_data_continuity_enabled"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 715
    .local v3, "isChecked":I
    const-string v4, "WifiDataContinuityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_CHANGE_DUAL_CONNECTION_SETTING received isChecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$600(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 718
    if-nez v3, :cond_1

    .line 719
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$500(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiStateMachine;->reportWifiStatus(I)V

    .line 720
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-virtual {v4, v9}, Lcom/lge/wifi/impl/WifiDataContinuityService;->reportWiFiNetworkisValid(Z)V

    goto :goto_0

    .line 723
    :cond_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$500(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->reportWifiStatus(I)V

    goto :goto_0

    .line 729
    .end local v3    # "isChecked":I
    :pswitch_2
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # invokes: Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionToastPopup()V
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$100(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    goto/16 :goto_0

    .line 733
    :pswitch_3
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$500(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 734
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 735
    .local v2, "isCaptive":Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 736
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/WifiDataContinuityService;->isCaptiveProfile(I)Z

    move-result v2

    .line 738
    :cond_2
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # setter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableL3MonitoringTemporally:Z
    invoke-static {v4, v7}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$702(Lcom/lge/wifi/impl/WifiDataContinuityService;Z)Z

    .line 739
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-virtual {v4, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService;->reportWiFiNetworkisValid(Z)V

    .line 740
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 741
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$800(Lcom/lge/wifi/impl/WifiDataContinuityService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 742
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x34000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 744
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 746
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LGU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # invokes: Lcom/lge/wifi/impl/WifiDataContinuityService;->showWifiNetworkOnlyConnectionToastPopup()V
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$900(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    goto/16 :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
