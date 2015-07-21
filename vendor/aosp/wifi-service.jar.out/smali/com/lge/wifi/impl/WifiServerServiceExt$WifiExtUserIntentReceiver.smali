.class Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiExtUserIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0

    .prologue
    .line 7429
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 7430
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 7431
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/16 v5, -0x2710

    const/4 v7, 0x0

    .line 7436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7437
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 7439
    .local v3, "userId":I
    if-ne v3, v5, :cond_0

    .line 7440
    const-string v4, "WifiServerServiceExt"

    const-string v5, "WifiExtUserIntentReceiver userId = NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7450
    :cond_0
    const-string v4, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7451
    const-string v4, "powersave_activation"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7452
    .local v2, "doActivation":I
    const-string v4, "powersave_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7454
    .local v1, "deviceName":Ljava/lang/String;
    const-string v5, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_POWERSAVE_ACTIVATION_TO_OTHERS : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    const-string v4, "Restore"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7459
    if-lez v2, :cond_3

    if-eqz v1, :cond_3

    .line 7460
    const-string v4, "power_save_wifi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7461
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v5

    invoke-static {v5, v9, v7, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7464
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setWiFiPowerSaveModeEnabled(Z)V
    invoke-static {v4, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8600(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V

    .line 7494
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "doActivation":I
    :cond_1
    :goto_1
    return-void

    .line 7454
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local v2    # "doActivation":I
    :cond_2
    const-string v4, "Activation"

    goto :goto_0

    .line 7469
    :cond_3
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v9, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7472
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setWiFiPowerSaveModeEnabled(Z)V
    invoke-static {v4, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8600(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V

    goto :goto_1

    .line 7478
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "doActivation":I
    :cond_4
    const-string v4, "com.lge.wifi.hidden.ENABLE_OTA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7479
    const-string v4, "WifiServerServiceExt"

    const-string v5, "enable ota"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7480
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->enableOta()V

    goto :goto_1

    .line 7482
    :cond_5
    const-string v4, "com.lge.wifi.hidden.DISABLE_OTA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7483
    const-string v4, "WifiServerServiceExt"

    const-string v5, "disable ota"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7484
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->disableOta()V

    goto :goto_1

    .line 7486
    :cond_6
    const-string v4, "com.lge.wifi.setting.RESET_WPA_SUPPLICANT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7487
    const-string v4, "WifiServerServiceExt"

    const-string v5, "reset wpa_supplicant.conf and disable"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7488
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSetResetWifiConf:Z
    invoke-static {v4, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3402(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7489
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3800()Landroid/net/wifi/WifiManagerProxy;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    goto :goto_1

    .line 7492
    :cond_7
    const-string v4, "WifiServerServiceExt"

    const-string v5, "Unknown User Intent is received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
