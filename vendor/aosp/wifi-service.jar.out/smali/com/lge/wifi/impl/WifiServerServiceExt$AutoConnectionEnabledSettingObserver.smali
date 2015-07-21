.class Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoConnectionEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 7723
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 7724
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7725
    return-void
.end method

.method private getValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7813
    const-string v1, "WifiServerServiceExt"

    const-string v2, "AutoConnectionEnabledSettingObserver  getValue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7814
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connect"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x0

    .line 7735
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7742
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoConnectionEnabledSettingObserver onChange selfChange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7743
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->getValue()Z

    move-result v4

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z
    invoke-static {v3, v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9402(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7750
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 7751
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 7752
    const-string v3, "WifiServerServiceExt"

    const-string v4, "AutoConnectionEnabledSettingObserver::onChange(), wifiManager is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7810
    :goto_0
    return-void

    .line 7755
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 7756
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 7757
    const-string v3, "WifiServerServiceExt"

    const-string v4, "AutoConnectionEnabledSettingObserver::onChange(), wifiInfo is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7760
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 7766
    .local v0, "netId":I
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoConnectionEnabledSettingObserver::onChange(), netId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mAutoConnectionEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7772
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7774
    if-nez v0, :cond_2

    .line 7775
    const-string v3, "disabled"

    new-instance v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setNetworkVariableCommand_byte(ILjava/lang/String;[B)Z

    .line 7805
    :goto_1
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto :goto_0

    .line 7787
    :cond_2
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    goto :goto_1

    .line 7798
    :cond_3
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    goto :goto_1
.end method

.method public register()V
    .locals 3

    .prologue
    .line 7728
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7729
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_auto_connect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7730
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->getValue()Z

    move-result v2

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9402(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7731
    return-void
.end method
