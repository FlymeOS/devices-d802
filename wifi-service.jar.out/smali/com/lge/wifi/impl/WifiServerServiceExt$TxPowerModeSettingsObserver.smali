.class Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxPowerModeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 7822
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 7823
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7824
    return-void
.end method

.method private getValue()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7846
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mbIsUsbConnected:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7600()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 7847
    const-string v1, "WifiServerServiceExt"

    const-string v2, "[txPowerMode] TxPowerModeSettingObserver getValue (mbIsUsbConnected)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7848
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_power_mode_high_with_usb"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7853
    .local v0, "res":I
    :goto_0
    return v0

    .line 7850
    .end local v0    # "res":I
    :cond_0
    const-string v1, "WifiServerServiceExt"

    const-string v2, "[txPowerMode] TxPowerModeSettingObserver getValue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7851
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_power_mode_high"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "res":I
    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 7835
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7836
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[txPowerMode] TxPowerModeSettingObserver onChange selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->getValue()I

    move-result v1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerMode:I
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9502(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    .line 7838
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_broadcast_channel"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mDefaultChannel:I
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9602(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    .line 7841
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerMode:I
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9500(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mDefaultChannel:I
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9600(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/wifi/config/LgeWifiConfig;->getTxPowerValue(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/wifi/extension/IWifiSoftAP;->setTxPower(I)I

    .line 7842
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7827
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7828
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_ap_power_mode_high"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7829
    const-string v1, "wifi_ap_power_mode_high_with_usb"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7830
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->getValue()I

    move-result v2

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerMode:I
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9502(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    .line 7831
    return-void
.end method
