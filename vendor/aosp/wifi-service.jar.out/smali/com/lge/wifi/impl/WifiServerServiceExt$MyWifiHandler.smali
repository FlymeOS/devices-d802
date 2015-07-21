.class Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
.super Landroid/os/Handler;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 7498
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 7499
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7500
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 7504
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 7672
    :cond_0
    :goto_0
    return-void

    .line 7510
    :sswitch_0
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7511
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v6

    check-cast v6, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v6}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->wifiStatsHandler()V

    goto :goto_0

    .line 7519
    :sswitch_1
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7520
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    move-result-object v6

    check-cast v6, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    invoke-virtual {v6}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->wifiApStatsHandler()V

    goto :goto_0

    .line 7524
    :sswitch_2
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->batteryPsActivateMsgHandler(I)V
    invoke-static {v6, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8900(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V

    goto :goto_0

    .line 7528
    :sswitch_3
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage  mPollingCnt : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I
    invoke-static {v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7529
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    .line 7530
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v6

    if-lez v6, :cond_1

    .line 7531
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkUpdatePhoneNumber()V
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7900(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 7533
    :cond_1
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # operator-- for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9010(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    goto :goto_0

    .line 7540
    :sswitch_4
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 7542
    .local v3, "info":Landroid/net/wifi/WifiInfo;
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4700()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7543
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1400()I

    move-result v6

    if-ne v6, v11, :cond_8

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLcdOnState:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4000()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7544
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1600()I

    move-result v6

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    if-le v6, v7, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    const/16 v7, -0xc8

    if-le v6, v7, :cond_5

    .line 7545
    # operator++ for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4808()I

    .line 7551
    :goto_1
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPollTimer Cnt= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4800()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rssi ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " threshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1600()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7555
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiDisconnectCnt:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9100()I

    move-result v6

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4800()I

    move-result v7

    if-gt v6, v7, :cond_4

    .line 7556
    const-string v6, "WifiServerServiceExt"

    const-string v7, "checkPollTimer disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7557
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4802(I)I

    .line 7558
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z
    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4702(Z)Z

    .line 7559
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 7562
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CMCC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 7564
    const/4 v5, 0x0

    .line 7565
    .local v5, "row_riss_disconnected_msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/lge/internal/R$string;->sp_wifi_low_rssi_and_disconnect:I

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 7568
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 7571
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_connect_select"

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3000()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 7574
    .local v2, "how_to_connect":I
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3000()I

    move-result v6

    if-eq v2, v6, :cond_3

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->MANUAL_CONNECT:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3100()I

    move-result v6

    if-ne v2, v6, :cond_6

    .line 7576
    :cond_3
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    .line 7577
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v6

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v12, v8, v9}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7592
    .end local v2    # "how_to_connect":I
    .end local v5    # "row_riss_disconnected_msg":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v6

    const/4 v7, 0x5

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7548
    :cond_5
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4802(I)I

    goto/16 :goto_1

    .line 7580
    .restart local v2    # "how_to_connect":I
    .restart local v5    # "row_riss_disconnected_msg":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    goto :goto_2

    .line 7584
    .end local v2    # "how_to_connect":I
    .end local v5    # "row_riss_disconnected_msg":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    goto :goto_2

    .line 7590
    :cond_8
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4802(I)I

    goto :goto_2

    .line 7596
    :cond_9
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4802(I)I

    goto/16 :goto_0

    .line 7608
    .end local v3    # "info":Landroid/net/wifi/WifiInfo;
    :sswitch_5
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiInfo;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->saveConnectionList(IILandroid/net/wifi/WifiInfo;)V
    invoke-static {v7, v8, v9, v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9200(Lcom/lge/wifi/impl/WifiServerServiceExt;IILandroid/net/wifi/WifiInfo;)V

    goto/16 :goto_0

    .line 7611
    :sswitch_6
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->deleteConnectionList(I)V
    invoke-static {v6, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9300(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V

    goto/16 :goto_0

    .line 7623
    :sswitch_7
    const-string v6, "WifiServerServiceExt"

    const-string v7, "MESSAGE_LGE_EAP"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7624
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lge.eap.action"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7625
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 7626
    const-string v6, "eapEvent"

    const/16 v7, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 7635
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_8
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v11, :cond_a

    .line 7636
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v6, v11}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setShowKTPayPopup(Z)V

    goto/16 :goto_0

    .line 7639
    :cond_a
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v6, v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setShowKTPayPopup(Z)V

    goto/16 :goto_0

    .line 7648
    :sswitch_9
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 7650
    :try_start_0
    const-string v6, "WifiServerServiceExt"

    const-string v7, "send intent to WifiSettingsDialogActivity "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7651
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7652
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7653
    const/high16 v6, 0x34000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7656
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$WifiSettingsDialogActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7657
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7658
    .end local v0    # "dialogIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 7659
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "WifiServerServiceExt"

    const-string v7, "WifiSettingsDialogActivity not found!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7504
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xfa0 -> :sswitch_7
    .end sparse-switch
.end method
