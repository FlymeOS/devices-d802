.class Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;
.super Landroid/os/Handler;
.source "MHPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MHPRcvLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .line 1233
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1234
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0xa

    .line 1239
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$000(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1241
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHPRcvLoop::handleMesage >>>>> msg.what=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_READY:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1245
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg value=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_READY:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetNetDynamicInterface()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetNetDynamicInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMssChange(Ljava/lang/String;)I

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 1254
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    const/4 v2, 0x1

    # setter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$202(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Z)Z

    .line 1308
    :cond_1
    :goto_0
    return-void

    .line 1257
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STOP:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_FAIL:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1260
    :cond_3
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCMP2P_NOTIF_SOFTAP_FAIL/BCMP2P_NOTIF_SOFTAP_STOP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STOP:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1268
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_STOP while SoftAP is enabling!!  --> ignore!"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_4
    const-string v1, "MHPManager"

    const-string v2, "close softap\n"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->closeSoftAP()I

    .line 1282
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 1283
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    const/4 v2, 0x0

    # setter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$202(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Z)Z

    goto :goto_0

    .line 1286
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_ASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1288
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_STA_ASSOC"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1291
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_CREATE_LINK_COMPLETE:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1293
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_CREATE_LINK_COMPLETE"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onStationStatusChanged(I)V

    goto/16 :goto_0

    .line 1297
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_DISASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 1300
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_STA_DISASSOC"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onStationStatusChanged(I)V

    goto/16 :goto_0

    .line 1304
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_HOSTAPD_CONNECTED:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1305
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_HOSTAPD_CONNECTED"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onHostapdConnected()V

    goto/16 :goto_0
.end method
