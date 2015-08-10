.class public Lcom/android/nfc/LNfcService$LNfcServiceHandler;
.super Lcom/android/nfc/NfcService$NfcServiceHandler;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LNfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method protected dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 7
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v6, 0x1

    .line 1800
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    if-ne v0, v6, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    const/16 v2, 0x20

    const-wide/32 v4, 0x493e0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/LNfcService;->sendMessageDelay(ILjava/lang/Object;JZ)V

    .line 1803
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 1804
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x1

    .line 1681
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1758
    const-string v4, "LNfcService"

    const-string v5, "Unknown message received"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1684
    :sswitch_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v4

    if-eq v4, v6, :cond_1

    .line 1685
    const-string v4, "LNfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RW mode disabled, so Tag message not handled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_0

    .line 1687
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1688
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    goto :goto_0

    .line 1692
    .end local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1695
    :sswitch_1
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v4, :cond_2

    .line 1696
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v4}, Lcom/android/nfc/handover/LHandoverManager;->handoverLLCPDeactivated()V

    .line 1698
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 1699
    .local v1, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v4

    if-eq v4, v6, :cond_4

    .line 1700
    :cond_3
    const-string v4, "LNfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Restart Polling loop(only Android Beam UI finished) device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getDiscoveryEnable() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v4}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto :goto_0

    .line 1705
    :cond_4
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1709
    .end local v1    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :sswitch_2
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v4, v6}, Lcom/android/nfc/LNfcService;->applyWirelessChargingMode(Z)V

    goto/16 :goto_0

    .line 1713
    :sswitch_3
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-virtual {v5, v4}, Lcom/android/nfc/LNfcService;->applyNfcTagLongTimePopup(Lcom/android/nfc/DeviceHost$TagEndpoint;)Z

    goto/16 :goto_0

    .line 1717
    :sswitch_4
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getPrefHcePopupvalue()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    if-eqz v4, :cond_0

    .line 1724
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I

    move-result v0

    .line 1726
    .local v0, "defaultRoute":I
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getRequireHCEConfirmvalue()Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/nfc/LNfcPopupList;->applyHostCardEmulationExceedAidTablePopup(IZ)Z

    .line 1728
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v4, v6}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    goto/16 :goto_0

    .line 1732
    .end local v0    # "defaultRoute":I
    :sswitch_5
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-eqz v4, :cond_0

    .line 1735
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    .line 1736
    .local v3, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->sendCEMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1741
    .end local v3    # "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    :sswitch_6
    sget-object v5, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-eqz v5, :cond_6

    .line 1742
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v4, :cond_5

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->sendCEMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0xa

    goto :goto_1

    .line 1745
    :cond_6
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1681
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
        0x21 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method protected llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 1786
    const-string v0, "LNfcService"

    const-string v1, "LLCP Activation message"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeP2pDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    move-result v0

    return v0
.end method

.method public sendCEMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1668
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v1}, Lcom/android/nfc/LNfcService;->access$000(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1670
    const-string v1, "NfcAccessControl"

    const-string v2, "mCeHandler is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :goto_0
    return-void

    .line 1673
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v1}, Lcom/android/nfc/LNfcService;->access$000(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1674
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1675
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1676
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v1}, Lcom/android/nfc/LNfcService;->access$000(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1766
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1767
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1769
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 1771
    monitor-enter p0

    .line 1772
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1773
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1774
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.permission.NFC"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1775
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1780
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1781
    return-void
.end method
