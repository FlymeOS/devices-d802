.class Lcom/android/internal/telephony/RIL$1;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v8, v8, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    if-nez v8, :cond_1

    .line 577
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V
    invoke-static {v8, v10}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v8, v8, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    if-nez v8, :cond_2

    .line 579
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V
    invoke-static {v8, v11}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 582
    :cond_3
    const-string v8, "vzw_modem_data_logging"

    invoke-static {v12, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 583
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v8}, Lcom/android/internal/telephony/RIL;->sendLoggingRequestToRIL()V

    goto :goto_0

    .line 588
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.lge.qcril_log"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 589
    const-string v8, "enable"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 590
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/RIL;->setQcril(I)V

    goto :goto_0

    .line 592
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/RIL;->setQcril(I)V

    goto :goto_0

    .line 597
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 598
    const-string v8, "RILB"

    const-string v9, "received BOOT_COMPLETED"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v8, "wlan.lge.gons.scan.completed"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # setter for: Lcom/android/internal/telephony/RIL;->needWifiScan:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/RIL;->access$102(Lcom/android/internal/telephony/RIL;Z)Z

    goto :goto_0

    .line 601
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wifi_scan_available"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 602
    const-string v8, "RILB"

    const-string v9, "received WIFI_SCAN_AVAILABLE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->needWifiScan:Z
    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 604
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 605
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 606
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # setter for: Lcom/android/internal/telephony/RIL;->needWifiScan:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/RIL;->access$102(Lcom/android/internal/telephony/RIL;Z)Z

    goto/16 :goto_0

    .line 608
    .end local v3    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 609
    const-string v8, "RILB"

    const-string v9, "received WIFI_STATE_CHANGED"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 611
    .local v7, "wifiState":I
    packed-switch v7, :pswitch_data_0

    .line 619
    const-string v8, "RILB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI_STATE_UNKNOWN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 613
    :pswitch_0
    const-string v8, "RILB"

    const-string v9, "WIFI_STATE_ENABLING"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 616
    :pswitch_1
    const-string v8, "RILB"

    const-string v9, "WIFI_STATE_ENABLED"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 621
    .end local v7    # "wifiState":I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.lge.intent.action.SCAN_EXT_RESULTS_AVAILABLE_ACTION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 622
    const-string v8, "RILB"

    const-string v9, "received SCAN_EXT_RESULTS_AVAILABLE_ACTION"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v1, Lcom/android/internal/telephony/RIL$GONS;

    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {v1, v8, v12}, Lcom/android/internal/telephony/RIL$GONS;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RIL$1;)V

    .line 624
    .local v1, "gons":Lcom/android/internal/telephony/RIL$GONS;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "com.lge.intent.EXTRA_SCAN_EXT_RESULT"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 627
    .local v6, "scanExtList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/impl/ScanExtResult;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/wifi/impl/ScanExtResult;

    .line 628
    .local v5, "result":Lcom/lge/wifi/impl/ScanExtResult;
    const-string v8, "RILB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v8, v5, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v5, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 633
    iget-object v8, v5, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/RIL$GONS;->addCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 636
    .end local v5    # "result":Lcom/lge/wifi/impl/ScanExtResult;
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RIL$GONS;->getBestCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "country":Ljava/lang/String;
    const-string v8, "RILB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gons "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->needCountryInject:Z
    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 640
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 641
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v9, 0x64

    invoke-virtual {v8, v9, v0, v12}, Lcom/android/internal/telephony/RIL;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    .line 644
    :cond_c
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.lge.intent.action.GONS_WIFI_SCAN_COMPLETED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v4, "notifyScanCompleted":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    const-string v8, "wlan.lge.gons.scan.completed"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # setter for: Lcom/android/internal/telephony/RIL;->needCountryInject:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/RIL;->access$302(Lcom/android/internal/telephony/RIL;Z)Z

    goto/16 :goto_0

    .line 649
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "gons":Lcom/android/internal/telephony/RIL$GONS;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "notifyScanCompleted":Landroid/content/Intent;
    .end local v6    # "scanExtList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/impl/ScanExtResult;>;"
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 650
    const-string v8, "RILB"

    const-string v9, "received SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 652
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.GONS_WIFI_SCAN_REQUEST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 653
    const-string v8, "RILB"

    const-string v9, "received GONS_WIFI_SCAN_REQUEST"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 654
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.GONS_DEBUG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 655
    const-string v8, "RILB"

    const-string v9, "received GONS_DEBUG"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v8, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v9, 0x65

    const-string v10, "1"

    invoke-virtual {v8, v9, v10, v12}, Lcom/android/internal/telephony/RIL;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 659
    :cond_10
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RIL received unexpected Intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
