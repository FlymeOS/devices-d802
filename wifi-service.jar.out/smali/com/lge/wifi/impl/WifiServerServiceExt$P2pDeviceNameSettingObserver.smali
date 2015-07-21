.class Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pDeviceNameSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 7995
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 7996
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7997
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, -0x2

    .line 8012
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 8013
    const-string v1, "WifiServerServiceExt"

    const-string v2, "P2P device name changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8014
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2PConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8015
    :cond_0
    const-string v1, "WifiServerServiceExt"

    const-string v2, "P2P is connected or GO. Delay change p2p device name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8016
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v2, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 8029
    :goto_0
    return-void

    .line 8020
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8021
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_device_name"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8026
    .local v0, "device_name":Ljava/lang/String;
    :goto_1
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change p2p device Name to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8027
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 8023
    .end local v0    # "device_name":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_device_name"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "device_name":Ljava/lang/String;
    goto :goto_1
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 8000
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8002
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8003
    const-string v1, "lg_device_name"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 8008
    :goto_0
    return-void

    .line 8005
    :cond_0
    const-string v1, "lg_device_name"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 8032
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8033
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8034
    return-void
.end method
